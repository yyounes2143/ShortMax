.class public Lr3/q;
.super Ljava/lang/Object;
.source "EncodedCountingMemoryCacheFactory.java"


# direct methods
.method public static a(Lk2/k;Ln2/c;Lr3/w$a;)Lr3/m;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk2/k<",
            "Lr3/x;",
            ">;",
            "Ln2/c;",
            "Lr3/w$a;",
            ")",
            "Lr3/m<",
            "Lf2/a;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v1, Lr3/q$a;

    .line 2
    .line 3
    invoke-direct {v1}, Lr3/q$a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v7, Lr3/v;

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    move-object v0, v7

    .line 12
    move-object v2, p2

    .line 13
    move-object v3, p0

    .line 14
    invoke-direct/range {v0 .. v6}, Lr3/v;-><init>(Lr3/c0;Lr3/w$a;Lk2/k;Lr3/m$b;ZZ)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v7}, Ln2/c;->a(Ln2/b;)V

    .line 18
    .line 19
    .line 20
    return-object v7
.end method
