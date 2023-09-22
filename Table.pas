unit Table;

interface

type
    TField = object
    Name: String;
    Width: Real;
    BodyFormat: String;
    public
          constructor Create;
end;

implementation

constructor TField.Create;
begin
     BodyFormat := '>';
     Width := 0.826;
end;

end.
