using System;
using System.IO;
using iText.Kernel.Pdf;
using iText.Layout;
using iText.Layout.Element;
using iText.Layout.Properties;
using iText.Kernel.Colors;
using newEmpty.Models;
using iText.Kernel.Pdf.Canvas.Draw;
using iText.Layout.Borders;

namespace newEmpty.Models;

public class OrdonnancePdfGenerateur
{
    public void GenerateOrdonnance(string filePath, Medecin medecin, Patient patient, Ordonnance ordonnance)
    {
        using (var writer = new PdfWriter(filePath))
        {
            var pdf = new PdfDocument(writer);

            var document = new Document(pdf);

            var bold = iText.Kernel.Font.PdfFontFactory.CreateFont(iText.IO.Font.Constants.StandardFonts.HELVETICA_BOLD);

            var regular = iText.Kernel.Font.PdfFontFactory.CreateFont(iText.IO.Font.Constants.StandardFonts.HELVETICA);


            DeviceRgb Bleu = new DeviceRgb(52, 83, 148);
            SolidLine solidLine = new SolidLine();
            solidLine.SetColor(Bleu);
            LineSeparator lineSeparator = new LineSeparator(solidLine);
            lineSeparator.SetWidth(UnitValue.CreatePercentValue(50));

            Table table = new Table(2);
            table.SetWidth(UnitValue.CreatePercentValue(100));
            table.SetBorder(Border.NO_BORDER);

            Cell leftCell = new Cell();
            leftCell.SetBorder(Border.NO_BORDER);

            leftCell.Add(new Paragraph($"Docteur {medecin.Nom_m}")
            .SetFont(bold)
            .SetFontSize(12)
            .SetFontColor(Bleu));

            leftCell.Add(lineSeparator);

            table.AddCell(leftCell);

            document.Add(table);

            document.Add(new Paragraph("\n"));
            document.Add(new Paragraph("\n"));
            document.Add(new Paragraph("\n"));

            document.Add(new Paragraph($"Fait le {DateTime.Now:dd/MM/yyyy}")  //document.Add(new Paragraph($"À {medecin.Ville}, le {DateTime.Now:dd/MM/yyyy}")
            .SetFontSize(10)
            .SetTextAlignment(TextAlignment.RIGHT));

            document.Add(new Paragraph("\n"));

            string civilite;
            if (patient.Sexe_p == "M")
                civilite = "Monsieur";
            else if (patient.Sexe_p == "F")
                civilite = "Madame";
            else
                civilite = "";

            document.Add(new Paragraph($"{civilite} {patient.Nom_p}")
                .SetFont(bold)
                .SetFontSize(12));

            document.Add(new Paragraph("\n"));
            document.Add(new Paragraph("\n"));

            
            document.Add(new Paragraph($"{ordonnance.Posologie}")
                .SetFontSize(10));
            document.Add(new Paragraph($"{ordonnance.Instructions_specifique}")
                .SetFontSize(10));

            foreach (var medicament in ordonnance.Medicaments)
            {
                document.Add(new Paragraph($"{medicament.Nom_med}")
                    .SetFont(bold)
                    .SetFontSize(12));
                document.Add(new Paragraph($" Sauf si : {medicament.Contre_indication}")
                    .SetFontSize(10));
            }

            document.Close();
        }
    }
}