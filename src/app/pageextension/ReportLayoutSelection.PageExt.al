pageextension 50101 "ReportLayoutSelection" extends "Report Layout Selection"
{
    actions
    {
        addlast(processing)
        {
            action(MiniReportInspector)
            {
                ApplicationArea = All;
                Image = CreateXMLFile;
                Caption = 'Mini Report Inspector';
                Promoted = true;
                PromotedCategory = "Report";
                trigger OnAction()
                var
                    DatasetExportMgt: Codeunit "Dataset Export Mgt.";
                begin
                    DatasetExportMgt.RunReportInspector(Rec);
                end;
            }
        }
    }
}