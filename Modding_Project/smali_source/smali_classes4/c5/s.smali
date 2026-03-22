.class final Lc5/s;
.super Ljava/lang/Object;
.source "TransportImpl.java"

# interfaces
.implements La5/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La5/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lc5/p;

.field private final b:Ljava/lang/String;

.field private final c:La5/c;

.field private final d:La5/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La5/g<",
            "TT;[B>;"
        }
    .end annotation
.end field

.field private final e:Lc5/t;


# direct methods
.method constructor <init>(Lc5/p;Ljava/lang/String;La5/c;La5/g;Lc5/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/p;",
            "Ljava/lang/String;",
            "La5/c;",
            "La5/g<",
            "TT;[B>;",
            "Lc5/t;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc5/s;->a:Lc5/p;

    .line 5
    .line 6
    iput-object p2, p0, Lc5/s;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lc5/s;->c:La5/c;

    .line 9
    .line 10
    iput-object p4, p0, Lc5/s;->d:La5/g;

    .line 11
    .line 12
    iput-object p5, p0, Lc5/s;->e:Lc5/t;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic c(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lc5/s;->e(Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic e(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public a(La5/d;La5/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La5/d<",
            "TT;>;",
            "La5/j;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/s;->e:Lc5/t;

    .line 2
    .line 3
    invoke-static {}, Lc5/o;->a()Lc5/o$a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lc5/s;->a:Lc5/p;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lc5/o$a;->e(Lc5/p;)Lc5/o$a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Lc5/o$a;->c(La5/d;)Lc5/o$a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Lc5/s;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lc5/o$a;->f(Ljava/lang/String;)Lc5/o$a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v1, p0, Lc5/s;->d:La5/g;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lc5/o$a;->d(La5/g;)Lc5/o$a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v1, p0, Lc5/s;->c:La5/c;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lc5/o$a;->b(La5/c;)Lc5/o$a;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lc5/o$a;->a()Lc5/o;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {v0, p1, p2}, Lc5/t;->a(Lc5/o;La5/j;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public b(La5/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La5/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lc5/r;

    .line 2
    .line 3
    invoke-direct {v0}, Lc5/r;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lc5/s;->a(La5/d;La5/j;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method d()Lc5/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/s;->a:Lc5/p;

    .line 2
    .line 3
    return-object v0
.end method
