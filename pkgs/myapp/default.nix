{ stdenv, python3Packages }:

python3Packages.buildPythonApplication rec {
  pname = "myapp";
  src = ./.;
  version = "0.1";
  propagatedBuildInputs = [ python3Packages.flask ];
}