.class public Lb4/b0;
.super Ljava/lang/Object;
.source "PoolConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb4/b0$a;
    }
.end annotation


# instance fields
.field private final a:Lb4/e0;

.field private final b:Lb4/f0;

.field private final c:Lb4/e0;

.field private final d:Ln2/c;

.field private final e:Lb4/e0;

.field private final f:Lb4/f0;

.field private final g:Lb4/e0;

.field private final h:Lb4/f0;

.field private final i:Ljava/lang/String;

.field private final j:I

.field private final k:I

.field private final l:Z

.field private final m:Z


# direct methods
.method private constructor <init>(Lb4/b0$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lf4/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    const-string v0, "PoolConfig()"

    invoke-static {v0}, Lf4/b;->a(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {p1}, Lb4/b0$a;->c(Lb4/b0$a;)Lb4/e0;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Lb4/n;->a()Lb4/e0;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1}, Lb4/b0$a;->c(Lb4/b0$a;)Lb4/e0;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lb4/b0;->a:Lb4/e0;

    .line 8
    invoke-static {p1}, Lb4/b0$a;->d(Lb4/b0$a;)Lb4/f0;

    move-result-object v0

    if-nez v0, :cond_2

    .line 9
    invoke-static {}, Lb4/z;->h()Lb4/z;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p1}, Lb4/b0$a;->d(Lb4/b0$a;)Lb4/f0;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lb4/b0;->b:Lb4/f0;

    .line 11
    invoke-static {p1}, Lb4/b0$a;->f(Lb4/b0$a;)Lb4/e0;

    move-result-object v0

    if-nez v0, :cond_3

    .line 12
    invoke-static {}, Lb4/p;->b()Lb4/e0;

    move-result-object v0

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {p1}, Lb4/b0$a;->f(Lb4/b0$a;)Lb4/e0;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lb4/b0;->c:Lb4/e0;

    .line 14
    invoke-static {p1}, Lb4/b0$a;->i(Lb4/b0$a;)Ln2/c;

    move-result-object v0

    if-nez v0, :cond_4

    .line 15
    invoke-static {}, Ln2/d;->b()Ln2/d;

    move-result-object v0

    goto :goto_3

    .line 16
    :cond_4
    invoke-static {p1}, Lb4/b0$a;->i(Lb4/b0$a;)Ln2/c;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lb4/b0;->d:Ln2/c;

    .line 17
    invoke-static {p1}, Lb4/b0$a;->g(Lb4/b0$a;)Lb4/e0;

    move-result-object v0

    if-nez v0, :cond_5

    .line 18
    invoke-static {}, Lb4/q;->a()Lb4/e0;

    move-result-object v0

    goto :goto_4

    .line 19
    :cond_5
    invoke-static {p1}, Lb4/b0$a;->g(Lb4/b0$a;)Lb4/e0;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lb4/b0;->e:Lb4/e0;

    .line 20
    invoke-static {p1}, Lb4/b0$a;->h(Lb4/b0$a;)Lb4/f0;

    move-result-object v0

    if-nez v0, :cond_6

    .line 21
    invoke-static {}, Lb4/z;->h()Lb4/z;

    move-result-object v0

    goto :goto_5

    .line 22
    :cond_6
    invoke-static {p1}, Lb4/b0$a;->h(Lb4/b0$a;)Lb4/f0;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lb4/b0;->f:Lb4/f0;

    .line 23
    invoke-static {p1}, Lb4/b0$a;->k(Lb4/b0$a;)Lb4/e0;

    move-result-object v0

    if-nez v0, :cond_7

    .line 24
    invoke-static {}, Lb4/o;->a()Lb4/e0;

    move-result-object v0

    goto :goto_6

    .line 25
    :cond_7
    invoke-static {p1}, Lb4/b0$a;->k(Lb4/b0$a;)Lb4/e0;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lb4/b0;->g:Lb4/e0;

    .line 26
    invoke-static {p1}, Lb4/b0$a;->l(Lb4/b0$a;)Lb4/f0;

    move-result-object v0

    if-nez v0, :cond_8

    .line 27
    invoke-static {}, Lb4/z;->h()Lb4/z;

    move-result-object v0

    goto :goto_7

    .line 28
    :cond_8
    invoke-static {p1}, Lb4/b0$a;->l(Lb4/b0$a;)Lb4/f0;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lb4/b0;->h:Lb4/f0;

    .line 29
    invoke-static {p1}, Lb4/b0$a;->e(Lb4/b0$a;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "legacy"

    goto :goto_8

    :cond_9
    invoke-static {p1}, Lb4/b0$a;->e(Lb4/b0$a;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lb4/b0;->i:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lb4/b0$a;->b(Lb4/b0$a;)I

    move-result v0

    iput v0, p0, Lb4/b0;->j:I

    .line 31
    invoke-static {p1}, Lb4/b0$a;->a(Lb4/b0$a;)I

    move-result v0

    if-lez v0, :cond_a

    .line 32
    invoke-static {p1}, Lb4/b0$a;->a(Lb4/b0$a;)I

    move-result v0

    goto :goto_9

    :cond_a
    const/high16 v0, 0x400000

    .line 33
    :goto_9
    iput v0, p0, Lb4/b0;->k:I

    .line 34
    invoke-static {p1}, Lb4/b0$a;->j(Lb4/b0$a;)Z

    move-result v0

    iput-boolean v0, p0, Lb4/b0;->l:Z

    .line 35
    invoke-static {}, Lf4/b;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 36
    invoke-static {}, Lf4/b;->b()V

    .line 37
    :cond_b
    iget-boolean p1, p1, Lb4/b0$a;->m:Z

    iput-boolean p1, p0, Lb4/b0;->m:Z

    return-void
.end method

.method synthetic constructor <init>(Lb4/b0$a;Lb4/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb4/b0;-><init>(Lb4/b0$a;)V

    return-void
.end method

.method public static n()Lb4/b0$a;
    .locals 2

    .line 1
    new-instance v0, Lb4/b0$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lb4/b0$a;-><init>(Lb4/c0;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lb4/b0;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lb4/b0;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public c()Lb4/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lb4/b0;->a:Lb4/e0;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lb4/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lb4/b0;->b:Lb4/f0;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb4/b0;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Lb4/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lb4/b0;->c:Lb4/e0;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Lb4/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lb4/b0;->e:Lb4/e0;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Lb4/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lb4/b0;->f:Lb4/f0;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ln2/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lb4/b0;->d:Ln2/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Lb4/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lb4/b0;->g:Lb4/e0;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Lb4/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lb4/b0;->h:Lb4/f0;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb4/b0;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb4/b0;->l:Z

    .line 2
    .line 3
    return v0
.end method
