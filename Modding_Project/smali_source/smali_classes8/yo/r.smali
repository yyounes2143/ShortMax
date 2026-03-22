.class public interface abstract Lyo/r;
.super Ljava/lang/Object;
.source "SubtitleParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyo/r$b;,
        Lyo/r$a;
    }
.end annotation


# virtual methods
.method public abstract a([BIILyo/r$b;Lcn/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lyo/r$b;",
            "Lcn/l<",
            "Lyo/e;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b()I
.end method

.method public c([BII)Lyo/k;
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lyo/r$b;->a()Lyo/r$b;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    new-instance v6, Lyo/q;

    .line 13
    .line 14
    invoke-direct {v6, v0}, Lyo/q;-><init>(Lcom/google/common/collect/ImmutableList$a;)V

    .line 15
    .line 16
    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p1

    .line 19
    move v3, p2

    .line 20
    move v4, p3

    .line 21
    invoke-interface/range {v1 .. v6}, Lyo/r;->a([BIILyo/r$b;Lcn/l;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lyo/g;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->k()Lcom/google/common/collect/ImmutableList;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-direct {p1, p2}, Lyo/g;-><init>(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    return-object p1
.end method

.method public reset()V
    .locals 0

    .line 1
    return-void
.end method
