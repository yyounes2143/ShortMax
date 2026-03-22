.class public final Lcom/moloco/sdk/internal/ilrd/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lcom/moloco/sdk/internal/ilrd/a;)Lcom/moloco/sdk/internal/services/bidtoken/providers/q;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/internal/ilrd/j;->b(Lcom/moloco/sdk/internal/ilrd/a;)Lcom/moloco/sdk/internal/services/bidtoken/providers/q;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Lcom/moloco/sdk/internal/ilrd/a;)Lcom/moloco/sdk/internal/services/bidtoken/providers/q;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/ilrd/a;->g()Lcom/moloco/sdk/internal/ilrd/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v12, Lcom/moloco/sdk/internal/services/bidtoken/providers/q;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/ilrd/a;->i()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/ilrd/a;->j()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ilrd/a$b;->f()J

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ilrd/a$b;->d()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ilrd/a$b;->g()I

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ilrd/a$b;->h()I

    .line 28
    .line 29
    .line 30
    move-result v9

    .line 31
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ilrd/a$b;->e()I

    .line 32
    .line 33
    .line 34
    move-result v10

    .line 35
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ilrd/a$b;->i()I

    .line 36
    .line 37
    .line 38
    move-result v11

    .line 39
    move-object v1, v12

    .line 40
    invoke-direct/range {v1 .. v11}, Lcom/moloco/sdk/internal/services/bidtoken/providers/q;-><init>(Ljava/lang/String;JJIIIII)V

    .line 41
    .line 42
    .line 43
    return-object v12
.end method
