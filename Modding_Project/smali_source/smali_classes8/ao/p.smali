.class public interface abstract Lao/p;
.super Ljava/lang/Object;
.source "Extractor.java"


# virtual methods
.method public abstract b(Lao/r;)V
.end method

.method public c()Lao/p;
    .locals 0

    .line 1
    return-object p0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lao/n0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public abstract e(Lao/q;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract f(Lao/q;Lao/i0;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract seek(JJ)V
.end method
