1. download `apollo-ios-cli` from github
   ```
   curl -LO https://github.com/apollographql/apollo-ios/releases/download/1.1.3/apollo-ios-cli.tar.gz
   tar xzfv apollo-ios-cli.tar.gz
   ```
2. generate code for each schema:

   ```
   cd TwoClientApp/Countries
   ../../apollo-ios-cli generate

   cd ../SpaceX
   ../../apollo-ios-cli generate
   ```
