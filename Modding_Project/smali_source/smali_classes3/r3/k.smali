.class public Lr3/k;
.super Ljava/lang/Object;
.source "CountingLruBitmapMemoryCacheFactory.java"

# interfaces
.implements Lr3/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lk2/k;Ln2/c;Lr3/w$a;ZZLr3/m$b;)Lr3/m;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk2/k<",
            "Lr3/x;",
            ">;",
            "Ln2/c;",
            "Lr3/w$a;",
            "ZZ",
            "Lr3/m$b<",
            "Lf2/a;",
            ">;)",
            "Lr3/m<",
            "Lf2/a;",
            "Ly3/e;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v1, Lr3/k$a;

    .line 2
    .line 3
    invoke-direct {v1, p0}, Lr3/k$a;-><init>(Lr3/k;)V

    .line 4
    .line 5
    .line 6
    new-instance v7, Lr3/v;

    .line 7
    .line 8
    move-object v0, v7

    .line 9
    move-object v2, p3

    .line 10
    move-object v3, p1

    .line 11
    move-object v4, p6

    .line 12
    move v5, p4

    .line 13
    move v6, p5

    .line 14
    invoke-direct/range {v0 .. v6}, Lr3/v;-><init>(Lr3/c0;Lr3/w$a;Lk2/k;Lr3/m$b;ZZ)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, v7}, Ln2/c;->a(Ln2/b;)V

    .line 18
    .line 19
    .line 20
    return-object v7
.end method
