# go-config-server

[![Actions Status](https://github.com/go-zen-chu/go-graphql-server/workflows/ci/badge.svg)](https://github.com/go-zen-chu/go-graphql-server/actions)
[![GitHub issues](https://img.shields.io/github/issues/go-zen-chu/go-graphql-server.svg)](https://github.com/go-zen-chu/go-graphql-server/issues)

golang config server example using graphQL.

## Develop GraphQL server

1. update files in ./graph
1. run command below to generate

    ```bash
    make gen-gql-resolver
    ```

1. check it works as expected (using `open` command for Mac)

    ```bash
    make run-gql-playground
    ```

    ![](./docs/gql-playground.png)

## Generate API Docs

```bash
make run-gql-doc
```

![](./docs/spectaql.png)
