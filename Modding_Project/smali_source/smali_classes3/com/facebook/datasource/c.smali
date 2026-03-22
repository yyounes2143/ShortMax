.class public Lcom/facebook/datasource/c;
.super Ljava/lang/Object;
.source "DataSources.java"


# direct methods
.method public static a(Ljava/lang/Throwable;)Lk2/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lk2/k<",
            "Lcom/facebook/datasource/b<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/datasource/c$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/datasource/c$a;-><init>(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static b(Ljava/lang/Throwable;)Lcom/facebook/datasource/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/facebook/datasource/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/datasource/h;->v()Lcom/facebook/datasource/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/facebook/datasource/h;->n(Ljava/lang/Throwable;)Z

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
