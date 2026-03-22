.class public Lcom/facebook/imagepipeline/producers/i1;
.super Ljava/lang/Object;
.source "ResizeAndRotateProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/b1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/i1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/b1<",
        "Ly3/k;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ln2/g;

.field private final c:Lcom/facebook/imagepipeline/producers/b1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Ly3/k;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Lg4/d;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ln2/g;Lcom/facebook/imagepipeline/producers/b1;ZLg4/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ln2/g;",
            "Lcom/facebook/imagepipeline/producers/b1<",
            "Ly3/k;",
            ">;Z",
            "Lg4/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/i1;->a:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    invoke-static {p2}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ln2/g;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/i1;->b:Ln2/g;

    .line 19
    .line 20
    invoke-static {p3}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/facebook/imagepipeline/producers/b1;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/i1;->c:Lcom/facebook/imagepipeline/producers/b1;

    .line 27
    .line 28
    invoke-static {p5}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lg4/d;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/i1;->e:Lg4/d;

    .line 35
    .line 36
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/producers/i1;->d:Z

    .line 37
    .line 38
    return-void
.end method

.method static bridge synthetic c(Lcom/facebook/imagepipeline/producers/i1;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/i1;->a:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Lcom/facebook/imagepipeline/producers/i1;)Ln2/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/i1;->b:Ln2/g;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic e(Lcom/facebook/imagepipeline/request/ImageRequest;Ly3/k;Lg4/c;)Lcom/facebook/common/util/TriState;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/i1;->h(Lcom/facebook/imagepipeline/request/ImageRequest;Ly3/k;Lg4/c;)Lcom/facebook/common/util/TriState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static f(Ls3/g;Ly3/k;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls3/g;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p0, p1}, Lg4/e;->e(Ls3/g;Ly3/k;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/producers/i1;->g(Ls3/g;Ly3/k;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method private static g(Ls3/g;Ly3/k;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls3/g;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ls3/g;->e()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p0, Lg4/e;->b:Lcom/facebook/common/internal/ImmutableList;

    .line 15
    .line 16
    invoke-virtual {p1}, Ly3/k;->H()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 30
    invoke-virtual {p1, p0}, Ly3/k;->c0(I)V

    .line 31
    .line 32
    .line 33
    return p0
.end method

.method private static h(Lcom/facebook/imagepipeline/request/ImageRequest;Ly3/k;Lg4/c;)Lcom/facebook/common/util/TriState;
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p1}, Ly3/k;->q()Lcom/facebook/imageformat/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/facebook/imageformat/c;->d:Lcom/facebook/imageformat/c;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    invoke-virtual {p1}, Ly3/k;->q()Lcom/facebook/imageformat/c;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p2, v0}, Lg4/c;->a(Lcom/facebook/imageformat/c;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-object p0, Lcom/facebook/common/util/TriState;->NO:Lcom/facebook/common/util/TriState;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->u()Ls3/g;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/producers/i1;->f(Ls3/g;Ly3/k;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->u()Ls3/g;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->s()Ls3/f;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p2, p1, v0, p0}, Lg4/c;->b(Ly3/k;Ls3/g;Ls3/f;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 p0, 0x0

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 53
    :goto_1
    invoke-static {p0}, Lcom/facebook/common/util/TriState;->valueOf(Z)Lcom/facebook/common/util/TriState;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :cond_4
    :goto_2
    sget-object p0, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    .line 59
    .line 60
    return-object p0
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/n<",
            "Ly3/k;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/c1;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/i1;->c:Lcom/facebook/imagepipeline/producers/b1;

    .line 2
    .line 3
    new-instance v7, Lcom/facebook/imagepipeline/producers/i1$a;

    .line 4
    .line 5
    iget-boolean v5, p0, Lcom/facebook/imagepipeline/producers/i1;->d:Z

    .line 6
    .line 7
    iget-object v6, p0, Lcom/facebook/imagepipeline/producers/i1;->e:Lg4/d;

    .line 8
    .line 9
    move-object v1, v7

    .line 10
    move-object v2, p0

    .line 11
    move-object v3, p1

    .line 12
    move-object v4, p2

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/producers/i1$a;-><init>(Lcom/facebook/imagepipeline/producers/i1;Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;ZLg4/d;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v7, p2}, Lcom/facebook/imagepipeline/producers/b1;->b(Lcom/facebook/imagepipeline/producers/n;Lcom/facebook/imagepipeline/producers/c1;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
