.class final Lretrofit2/adapter/rxjava/e;
.super Ljava/lang/Object;
.source "RxJavaCallAdapter.java"

# interfaces
.implements Lfu/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lfu/e<",
        "TR;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private final b:Lku/f;

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Z


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Lku/f;ZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lretrofit2/adapter/rxjava/e;->a:Ljava/lang/reflect/Type;

    .line 5
    .line 6
    iput-object p2, p0, Lretrofit2/adapter/rxjava/e;->b:Lku/f;

    .line 7
    .line 8
    iput-boolean p3, p0, Lretrofit2/adapter/rxjava/e;->c:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lretrofit2/adapter/rxjava/e;->d:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lretrofit2/adapter/rxjava/e;->e:Z

    .line 13
    .line 14
    iput-boolean p6, p0, Lretrofit2/adapter/rxjava/e;->f:Z

    .line 15
    .line 16
    iput-boolean p7, p0, Lretrofit2/adapter/rxjava/e;->g:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Lfu/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/d<",
            "TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava/e;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lretrofit2/adapter/rxjava/b;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lretrofit2/adapter/rxjava/b;-><init>(Lfu/d;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lretrofit2/adapter/rxjava/c;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lretrofit2/adapter/rxjava/c;-><init>(Lfu/d;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava/e;->d:Z

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    new-instance p1, Lretrofit2/adapter/rxjava/d;

    .line 21
    .line 22
    invoke-direct {p1, v0}, Lretrofit2/adapter/rxjava/d;-><init>(Lku/c$a;)V

    .line 23
    .line 24
    .line 25
    :goto_1
    move-object v0, p1

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava/e;->e:Z

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    new-instance p1, Lretrofit2/adapter/rxjava/a;

    .line 32
    .line 33
    invoke-direct {p1, v0}, Lretrofit2/adapter/rxjava/a;-><init>(Lku/c$a;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_2
    invoke-static {v0}, Lku/c;->a(Lku/c$a;)Lku/c;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lretrofit2/adapter/rxjava/e;->b:Lku/f;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lku/c;->b(Lku/f;)Lku/c;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :cond_3
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava/e;->f:Z

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1}, Lku/c;->e()Lku/g;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    :cond_4
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava/e;->g:Z

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    invoke-virtual {p1}, Lku/c;->d()Lku/a;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :cond_5
    return-object p1
.end method

.method public b()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lretrofit2/adapter/rxjava/e;->a:Ljava/lang/reflect/Type;

    .line 2
    .line 3
    return-object v0
.end method
