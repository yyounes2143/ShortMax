.class Lcom/facebook/drawee/controller/a$c;
.super Lz2/d;
.source "AbstractDraweeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INFO:",
        "Ljava/lang/Object;",
        ">",
        "Lz2/d<",
        "TINFO;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz2/d;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static i(Lz2/b;Lz2/b;)Lcom/facebook/drawee/controller/a$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<INFO:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/b<",
            "-TINFO;>;",
            "Lz2/b<",
            "-TINFO;>;)",
            "Lcom/facebook/drawee/controller/a$c<",
            "TINFO;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lf4/b;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "AbstractDraweeController#createInternal"

    .line 8
    .line 9
    invoke-static {v0}, Lf4/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Lcom/facebook/drawee/controller/a$c;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/facebook/drawee/controller/a$c;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lz2/d;->f(Lz2/b;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lz2/d;->f(Lz2/b;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lf4/b;->d()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    invoke-static {}, Lf4/b;->b()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-object v0
.end method
