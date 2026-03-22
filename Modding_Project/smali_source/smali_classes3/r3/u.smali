.class public Lr3/u;
.super Ljava/lang/Object;
.source "InstrumentedMemoryCacheBitmapMemoryCacheFactory.java"


# direct methods
.method public static a(Lr3/w;Lr3/s;)Lr3/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr3/w<",
            "Lf2/a;",
            "Ly3/e;",
            ">;",
            "Lr3/s;",
            ")",
            "Lr3/t<",
            "Lf2/a;",
            "Ly3/e;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lr3/s;->n(Lr3/w;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lr3/u$a;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lr3/u$a;-><init>(Lr3/s;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lr3/t;

    .line 10
    .line 11
    invoke-direct {p1, p0, v0}, Lr3/t;-><init>(Lr3/w;Lr3/y;)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method
