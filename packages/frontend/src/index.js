const {ApolloServer, gql} = require('apollo-server');
const {buildFederatedSchema} = require('@apollo/federation');

const typeDefs = gql`
  type Library {
    name: String
    location: String
  }
  type Query {
    librarys: [Library]
  }
`;
const librarys = [
    {
        name: 'New Taipei City Library',
        location: 'Banqiao',
    },
    {
        name: 'National Central Library',
        location: 'Zhongzheng',
    },
];

const resolvers = {
    Query: {
        librarys: () => librarys,
    },
};

const server = new ApolloServer({
    schema: buildFederatedSchema([{
        typeDefs,
        resolvers
    }])
});
server.listen({
    port: 3000,
}).then(({url}) => {
    console.log(`🚀  Server ready at ${url}`);
});
