const { ApolloServer } = require('apollo-server');
const { ApolloGateway } = require('@apollo/gateway');

const main = async () => {

    const gateway = new ApolloGateway({
        serviceList: [
            { name: 'backend', url: `http://backend.backoffice:3000/graphql` },
            { name: 'frontend', url: `http://frontend.backoffice:3000/graphql` },
        ],
    });
    const server = new ApolloServer({
        gateway,
        subscriptions: false,
        debug: true
    });

    server.listen({ port: 3000 }).then(({ url }) => {
        console.log(`🚀 Server ready at ${url}`);
    });
};

main();
