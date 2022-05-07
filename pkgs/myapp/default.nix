{ stdenv }:

python3Packages.buildPythonApplication rec {
  pname = "myapp";
  src = ./.;
  version = "0.1";
  propagatedBuildInputs = [ pkgs.python3Packages.flask ];
}