import {ApolloLink, HttpLink, InMemoryCache} from "apollo-boost";
import ApolloClient from "apollo-client";

const endPoint = 'http://localhost:3030/graphiql';
const httpLink = new HttpLink({uri: endPoint});
const link = ApolloLink.from([httpLink])

export default new ApolloClient({
    link,
    cache: new InMemoryCache()
})
