.class public Lt3/v;
.super Ljava/lang/Object;
.source "ImagePipelineFactory.java"


# static fields
.field private static final p:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static q:Lt3/v;

.field private static r:Lt3/r;

.field private static s:Z


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/n1;

.field private final b:Lt3/t;

.field private final c:Lt3/a;

.field private final d:Lk2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2/k<",
            "Lt3/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lr3/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/m<",
            "Lf2/a;",
            "Ly3/e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lr3/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/t<",
            "Lf2/a;",
            "Ly3/e;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lr3/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/m<",
            "Lf2/a;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lr3/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/t<",
            "Lf2/a;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lw3/b;

.field private j:Lg4/d;

.field private k:Lt3/z;

.field private l:Lt3/s0;

.field private m:Lq3/d;

.field private n:Lc4/d;

.field private o:Lm3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lt3/v;

    .line 2
    .line 3
    sput-object v0, Lt3/v;->p:Ljava/lang/Class;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lt3/t;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lf4/b;->d()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "ImagePipelineConfig()"

    .line 11
    .line 12
    invoke-static {v0}, Lf4/b;->a(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p1}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lt3/t;

    .line 20
    .line 21
    iput-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 22
    .line 23
    invoke-interface {v0}, Lt3/t;->n()Lt3/u;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lt3/u;->G()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    new-instance v1, Lcom/facebook/imagepipeline/producers/b0;

    .line 34
    .line 35
    invoke-interface {p1}, Lt3/t;->H()Lt3/o;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v2}, Lt3/o;->a()Ljava/util/concurrent/Executor;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/producers/b0;-><init>(Ljava/util/concurrent/Executor;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance v1, Lcom/facebook/imagepipeline/producers/o1;

    .line 48
    .line 49
    invoke-interface {p1}, Lt3/t;->H()Lt3/o;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-interface {v2}, Lt3/o;->a()Ljava/util/concurrent/Executor;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/producers/o1;-><init>(Ljava/util/concurrent/Executor;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    iput-object v1, p0, Lt3/v;->a:Lcom/facebook/imagepipeline/producers/n1;

    .line 61
    .line 62
    new-instance v1, Lt3/a;

    .line 63
    .line 64
    invoke-interface {p1}, Lt3/t;->j()Lv3/a;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v1, p1}, Lt3/a;-><init>(Lv3/a;)V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lt3/v;->c:Lt3/a;

    .line 72
    .line 73
    invoke-static {}, Lf4/b;->d()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    invoke-static {}, Lf4/b;->b()V

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-interface {v0}, Lt3/t;->A()Lk2/k;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lt3/v;->d:Lk2/k;

    .line 87
    .line 88
    invoke-interface {v0}, Lt3/t;->n()Lt3/u;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Lt3/u;->A()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    invoke-static {}, Lcom/facebook/imageformat/e;->e()Lcom/facebook/imageformat/e;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const/4 v0, 0x1

    .line 103
    invoke-virtual {p1, v0}, Lcom/facebook/imageformat/e;->g(Z)Lcom/facebook/imageformat/e;

    .line 104
    .line 105
    .line 106
    :cond_3
    return-void
.end method

.method private a()Lt3/r;
    .locals 15

    .line 1
    new-instance v14, Lt3/r;

    .line 2
    .line 3
    invoke-direct {p0}, Lt3/v;->p()Lt3/s0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 8
    .line 9
    invoke-interface {v0}, Lt3/t;->q()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 14
    .line 15
    invoke-interface {v0}, Lt3/t;->a()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 20
    .line 21
    invoke-interface {v0}, Lt3/t;->l()Lk2/k;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {p0}, Lt3/v;->e()Lr3/t;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {p0}, Lt3/v;->h()Lr3/t;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    iget-object v7, p0, Lt3/v;->d:Lk2/k;

    .line 34
    .line 35
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 36
    .line 37
    invoke-interface {v0}, Lt3/t;->C()Lr3/j;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    iget-object v9, p0, Lt3/v;->a:Lcom/facebook/imagepipeline/producers/n1;

    .line 42
    .line 43
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 44
    .line 45
    invoke-interface {v0}, Lt3/t;->n()Lt3/u;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lt3/u;->t()Lk2/k;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 54
    .line 55
    invoke-interface {v0}, Lt3/t;->n()Lt3/u;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lt3/u;->I()Lk2/k;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 64
    .line 65
    invoke-interface {v0}, Lt3/t;->G()Lcom/facebook/callercontext/a;

    .line 66
    .line 67
    .line 68
    const/4 v12, 0x0

    .line 69
    iget-object v13, p0, Lt3/v;->b:Lt3/t;

    .line 70
    .line 71
    move-object v0, v14

    .line 72
    invoke-direct/range {v0 .. v13}, Lt3/r;-><init>(Lt3/s0;Ljava/util/Set;Ljava/util/Set;Lk2/k;Lr3/w;Lr3/w;Lk2/k;Lr3/j;Lcom/facebook/imagepipeline/producers/n1;Lk2/k;Lk2/k;Lcom/facebook/callercontext/a;Lt3/t;)V

    .line 73
    .line 74
    .line 75
    return-object v14
.end method

.method private c()Lm3/a;
    .locals 9

    .line 1
    iget-object v0, p0, Lt3/v;->o:Lm3/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lt3/v;->m()Lq3/d;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 10
    .line 11
    invoke-interface {v0}, Lt3/t;->H()Lt3/o;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lt3/v;->d()Lr3/m;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 20
    .line 21
    invoke-interface {v0}, Lt3/t;->n()Lt3/u;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lt3/u;->j()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 30
    .line 31
    invoke-interface {v0}, Lt3/t;->n()Lt3/u;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lt3/u;->v()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 40
    .line 41
    invoke-interface {v0}, Lt3/t;->n()Lt3/u;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lt3/u;->c()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 50
    .line 51
    invoke-interface {v0}, Lt3/t;->n()Lt3/u;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lt3/u;->d()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 60
    .line 61
    invoke-interface {v0}, Lt3/t;->u()Li2/g;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-static/range {v1 .. v8}, Lm3/b;->a(Lq3/d;Lt3/o;Lr3/m;ZZIILjava/util/concurrent/ExecutorService;)Lm3/a;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lt3/v;->o:Lm3/a;

    .line 70
    .line 71
    :cond_0
    iget-object v0, p0, Lt3/v;->o:Lm3/a;

    .line 72
    .line 73
    return-object v0
.end method

.method private i()Lw3/b;
    .locals 5

    .line 1
    iget-object v0, p0, Lt3/v;->i:Lw3/b;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 6
    .line 7
    invoke-interface {v0}, Lt3/t;->g()Lw3/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 14
    .line 15
    invoke-interface {v0}, Lt3/t;->g()Lw3/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lt3/v;->i:Lw3/b;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-direct {p0}, Lt3/v;->c()Lm3/a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Lm3/a;->getGifDecoder()Lw3/b;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0}, Lm3/a;->getWebPDecoder()Lw3/b;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    move-object v0, v1

    .line 39
    :goto_0
    invoke-virtual {p0}, Lt3/v;->r()Lw3/b;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, p0, Lt3/v;->b:Lt3/t;

    .line 44
    .line 45
    invoke-interface {v3}, Lt3/t;->x()Lw3/c;

    .line 46
    .line 47
    .line 48
    new-instance v3, Lw3/a;

    .line 49
    .line 50
    invoke-virtual {p0}, Lt3/v;->n()Lc4/d;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-direct {v3, v1, v0, v2, v4}, Lw3/a;-><init>(Lw3/b;Lw3/b;Lw3/b;Lc4/d;)V

    .line 55
    .line 56
    .line 57
    iput-object v3, p0, Lt3/v;->i:Lw3/b;

    .line 58
    .line 59
    :cond_2
    :goto_1
    iget-object v0, p0, Lt3/v;->i:Lw3/b;

    .line 60
    .line 61
    return-object v0
.end method

.method private k()Lg4/d;
    .locals 8

    .line 1
    iget-object v0, p0, Lt3/v;->j:Lg4/d;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 6
    .line 7
    invoke-interface {v0}, Lt3/t;->w()Lg4/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 14
    .line 15
    invoke-interface {v0}, Lt3/t;->v()Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 22
    .line 23
    invoke-interface {v0}, Lt3/t;->n()Lt3/u;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lt3/u;->J()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    new-instance v0, Lg4/h;

    .line 34
    .line 35
    iget-object v1, p0, Lt3/v;->b:Lt3/t;

    .line 36
    .line 37
    invoke-interface {v1}, Lt3/t;->n()Lt3/u;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lt3/u;->m()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-direct {v0, v1}, Lg4/h;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lt3/v;->j:Lg4/d;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Lg4/f;

    .line 52
    .line 53
    iget-object v1, p0, Lt3/v;->b:Lt3/t;

    .line 54
    .line 55
    invoke-interface {v1}, Lt3/t;->n()Lt3/u;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lt3/u;->m()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    iget-object v1, p0, Lt3/v;->b:Lt3/t;

    .line 64
    .line 65
    invoke-interface {v1}, Lt3/t;->n()Lt3/u;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lt3/u;->x()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    iget-object v1, p0, Lt3/v;->b:Lt3/t;

    .line 74
    .line 75
    invoke-interface {v1}, Lt3/t;->w()Lg4/d;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    iget-object v1, p0, Lt3/v;->b:Lt3/t;

    .line 80
    .line 81
    invoke-interface {v1}, Lt3/t;->v()Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    iget-object v1, p0, Lt3/v;->b:Lt3/t;

    .line 86
    .line 87
    invoke-interface {v1}, Lt3/t;->n()Lt3/u;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lt3/u;->F()Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    move-object v2, v0

    .line 96
    invoke-direct/range {v2 .. v7}, Lg4/f;-><init>(IZLg4/d;Ljava/lang/Integer;Z)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lt3/v;->j:Lg4/d;

    .line 100
    .line 101
    :cond_1
    :goto_0
    iget-object v0, p0, Lt3/v;->j:Lg4/d;

    .line 102
    .line 103
    return-object v0
.end method

.method public static l()Lt3/v;
    .locals 2

    .line 1
    sget-object v0, Lt3/v;->q:Lt3/v;

    .line 2
    .line 3
    const-string v1, "ImagePipelineFactory was not initialized!"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lk2/h;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lt3/v;

    .line 10
    .line 11
    return-object v0
.end method

.method private o()Lt3/z;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lt3/v;->k:Lt3/z;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lt3/v;->b:Lt3/t;

    .line 8
    .line 9
    invoke-interface {v1}, Lt3/t;->n()Lt3/u;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lt3/u;->p()Lt3/u$d;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v1, v0, Lt3/v;->b:Lt3/t;

    .line 18
    .line 19
    invoke-interface {v1}, Lt3/t;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v1, v0, Lt3/v;->b:Lt3/t;

    .line 24
    .line 25
    invoke-interface {v1}, Lt3/t;->i()Lb4/d0;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lb4/d0;->k()Ln2/a;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-direct/range {p0 .. p0}, Lt3/v;->i()Lw3/b;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object v1, v0, Lt3/v;->b:Lt3/t;

    .line 38
    .line 39
    invoke-interface {v1}, Lt3/t;->c()Lw3/d;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget-object v1, v0, Lt3/v;->b:Lt3/t;

    .line 44
    .line 45
    invoke-interface {v1}, Lt3/t;->F()Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    iget-object v1, v0, Lt3/v;->b:Lt3/t;

    .line 50
    .line 51
    invoke-interface {v1}, Lt3/t;->D()Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    iget-object v1, v0, Lt3/v;->b:Lt3/t;

    .line 56
    .line 57
    invoke-interface {v1}, Lt3/t;->n()Lt3/u;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lt3/u;->B()Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    iget-object v1, v0, Lt3/v;->b:Lt3/t;

    .line 66
    .line 67
    invoke-interface {v1}, Lt3/t;->H()Lt3/o;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    iget-object v1, v0, Lt3/v;->b:Lt3/t;

    .line 72
    .line 73
    invoke-interface {v1}, Lt3/t;->i()Lb4/d0;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v11, v0, Lt3/v;->b:Lt3/t;

    .line 78
    .line 79
    invoke-interface {v11}, Lt3/t;->z()I

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    invoke-virtual {v1, v11}, Lb4/d0;->i(I)Ln2/g;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    iget-object v1, v0, Lt3/v;->b:Lt3/t;

    .line 88
    .line 89
    invoke-interface {v1}, Lt3/t;->i()Lb4/d0;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lb4/d0;->j()Ln2/j;

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    invoke-virtual/range {p0 .. p0}, Lt3/v;->e()Lr3/t;

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    invoke-virtual/range {p0 .. p0}, Lt3/v;->h()Lr3/t;

    .line 102
    .line 103
    .line 104
    move-result-object v14

    .line 105
    iget-object v15, v0, Lt3/v;->d:Lk2/k;

    .line 106
    .line 107
    iget-object v1, v0, Lt3/v;->b:Lt3/t;

    .line 108
    .line 109
    invoke-interface {v1}, Lt3/t;->C()Lr3/j;

    .line 110
    .line 111
    .line 112
    move-result-object v16

    .line 113
    invoke-virtual/range {p0 .. p0}, Lt3/v;->m()Lq3/d;

    .line 114
    .line 115
    .line 116
    move-result-object v17

    .line 117
    iget-object v1, v0, Lt3/v;->b:Lt3/t;

    .line 118
    .line 119
    invoke-interface {v1}, Lt3/t;->n()Lt3/u;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lt3/u;->g()I

    .line 124
    .line 125
    .line 126
    move-result v18

    .line 127
    iget-object v1, v0, Lt3/v;->b:Lt3/t;

    .line 128
    .line 129
    invoke-interface {v1}, Lt3/t;->n()Lt3/u;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lt3/u;->f()I

    .line 134
    .line 135
    .line 136
    move-result v19

    .line 137
    iget-object v1, v0, Lt3/v;->b:Lt3/t;

    .line 138
    .line 139
    invoke-interface {v1}, Lt3/t;->n()Lt3/u;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1}, Lt3/u;->e()Z

    .line 144
    .line 145
    .line 146
    move-result v20

    .line 147
    iget-object v1, v0, Lt3/v;->b:Lt3/t;

    .line 148
    .line 149
    invoke-interface {v1}, Lt3/t;->n()Lt3/u;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lt3/u;->m()I

    .line 154
    .line 155
    .line 156
    move-result v21

    .line 157
    invoke-virtual/range {p0 .. p0}, Lt3/v;->f()Lt3/a;

    .line 158
    .line 159
    .line 160
    move-result-object v22

    .line 161
    iget-object v1, v0, Lt3/v;->b:Lt3/t;

    .line 162
    .line 163
    invoke-interface {v1}, Lt3/t;->n()Lt3/u;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lt3/u;->l()Z

    .line 168
    .line 169
    .line 170
    move-result v23

    .line 171
    iget-object v1, v0, Lt3/v;->b:Lt3/t;

    .line 172
    .line 173
    invoke-interface {v1}, Lt3/t;->n()Lt3/u;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lt3/u;->u()I

    .line 178
    .line 179
    .line 180
    move-result v24

    .line 181
    invoke-interface/range {v2 .. v24}, Lt3/u$d;->a(Landroid/content/Context;Ln2/a;Lw3/b;Lw3/d;Lcom/facebook/imagepipeline/core/DownsampleMode;ZZLt3/o;Ln2/g;Ln2/j;Lr3/w;Lr3/w;Lk2/k;Lr3/j;Lq3/d;IIZILt3/a;ZI)Lt3/z;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    iput-object v1, v0, Lt3/v;->k:Lt3/z;

    .line 186
    .line 187
    :cond_0
    iget-object v1, v0, Lt3/v;->k:Lt3/z;

    .line 188
    .line 189
    return-object v1
.end method

.method private p()Lt3/s0;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lt3/v;->b:Lt3/t;

    .line 4
    .line 5
    invoke-interface {v1}, Lt3/t;->n()Lt3/u;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lt3/u;->w()Z

    .line 10
    .line 11
    .line 12
    move-result v10

    .line 13
    iget-object v1, v0, Lt3/v;->l:Lt3/s0;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Lt3/s0;

    .line 18
    .line 19
    iget-object v2, v0, Lt3/v;->b:Lt3/t;

    .line 20
    .line 21
    invoke-interface {v2}, Lt3/t;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-direct/range {p0 .. p0}, Lt3/v;->o()Lt3/z;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget-object v2, v0, Lt3/v;->b:Lt3/t;

    .line 38
    .line 39
    invoke-interface {v2}, Lt3/t;->o()Lcom/facebook/imagepipeline/producers/v0;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    iget-object v2, v0, Lt3/v;->b:Lt3/t;

    .line 44
    .line 45
    invoke-interface {v2}, Lt3/t;->D()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    iget-object v2, v0, Lt3/v;->b:Lt3/t;

    .line 50
    .line 51
    invoke-interface {v2}, Lt3/t;->n()Lt3/u;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lt3/u;->L()Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    iget-object v8, v0, Lt3/v;->a:Lcom/facebook/imagepipeline/producers/n1;

    .line 60
    .line 61
    iget-object v2, v0, Lt3/v;->b:Lt3/t;

    .line 62
    .line 63
    invoke-interface {v2}, Lt3/t;->F()Lcom/facebook/imagepipeline/core/DownsampleMode;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    iget-object v2, v0, Lt3/v;->b:Lt3/t;

    .line 68
    .line 69
    invoke-interface {v2}, Lt3/t;->n()Lt3/u;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lt3/u;->K()Z

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    iget-object v2, v0, Lt3/v;->b:Lt3/t;

    .line 78
    .line 79
    invoke-interface {v2}, Lt3/t;->f()Z

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    invoke-direct/range {p0 .. p0}, Lt3/v;->k()Lg4/d;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    iget-object v2, v0, Lt3/v;->b:Lt3/t;

    .line 88
    .line 89
    invoke-interface {v2}, Lt3/t;->n()Lt3/u;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2}, Lt3/u;->E()Z

    .line 94
    .line 95
    .line 96
    move-result v14

    .line 97
    iget-object v2, v0, Lt3/v;->b:Lt3/t;

    .line 98
    .line 99
    invoke-interface {v2}, Lt3/t;->n()Lt3/u;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Lt3/u;->C()Z

    .line 104
    .line 105
    .line 106
    move-result v15

    .line 107
    iget-object v2, v0, Lt3/v;->b:Lt3/t;

    .line 108
    .line 109
    invoke-interface {v2}, Lt3/t;->n()Lt3/u;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lt3/u;->a()Z

    .line 114
    .line 115
    .line 116
    move-result v16

    .line 117
    iget-object v2, v0, Lt3/v;->b:Lt3/t;

    .line 118
    .line 119
    invoke-interface {v2}, Lt3/t;->E()Ljava/util/Set;

    .line 120
    .line 121
    .line 122
    move-result-object v17

    .line 123
    move-object v2, v1

    .line 124
    invoke-direct/range {v2 .. v17}, Lt3/s0;-><init>(Landroid/content/ContentResolver;Lt3/z;Lcom/facebook/imagepipeline/producers/v0;ZZLcom/facebook/imagepipeline/producers/n1;Lcom/facebook/imagepipeline/core/DownsampleMode;ZZZLg4/d;ZZZLjava/util/Set;)V

    .line 125
    .line 126
    .line 127
    iput-object v1, v0, Lt3/v;->l:Lt3/s0;

    .line 128
    .line 129
    :cond_0
    iget-object v1, v0, Lt3/v;->l:Lt3/s0;

    .line 130
    .line 131
    return-object v1
.end method

.method public static declared-synchronized s(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-class v0, Lt3/v;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lf4/b;->d()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "ImagePipelineFactory#initialize"

    .line 11
    .line 12
    invoke-static {v1}, Lf4/b;->a(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    invoke-static {p0}, Lt3/s;->K(Landroid/content/Context;)Lt3/s$a;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lt3/s$a;->a()Lt3/s;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lt3/v;->t(Lt3/t;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lf4/b;->d()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    invoke-static {}, Lf4/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    :cond_1
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p0
.end method

.method public static declared-synchronized t(Lt3/t;)V
    .locals 3

    .line 1
    const-class v0, Lt3/v;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lt3/v;->q:Lt3/v;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lt3/v;->p:Ljava/lang/Class;

    .line 9
    .line 10
    const-string v2, "ImagePipelineFactory has already been initialized! `ImagePipelineFactory.initialize(...)` should only be called once to avoid unexpected behavior."

    .line 11
    .line 12
    invoke-static {v1, v2}, Ll2/a;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-boolean v1, Lt3/v;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :try_start_1
    new-instance v1, Lt3/v;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lt3/v;-><init>(Lt3/t;)V

    .line 26
    .line 27
    .line 28
    sput-object v1, Lt3/v;->q:Lt3/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw p0
.end method


# virtual methods
.method public b(Landroid/content/Context;)Lx3/a;
    .locals 1

    .line 1
    invoke-direct {p0}, Lt3/v;->c()Lm3/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v0, p1}, Lm3/a;->getAnimatedDrawableFactory(Landroid/content/Context;)Lx3/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    return-object p1
.end method

.method public d()Lr3/m;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr3/m<",
            "Lf2/a;",
            "Ly3/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt3/v;->e:Lr3/m;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 6
    .line 7
    invoke-interface {v0}, Lt3/t;->B()Lr3/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 12
    .line 13
    invoke-interface {v0}, Lt3/t;->y()Lk2/k;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 18
    .line 19
    invoke-interface {v0}, Lt3/t;->m()Ln2/c;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 24
    .line 25
    invoke-interface {v0}, Lt3/t;->s()Lr3/w$a;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 30
    .line 31
    invoke-interface {v0}, Lt3/t;->n()Lt3/u;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lt3/u;->r()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 40
    .line 41
    invoke-interface {v0}, Lt3/t;->n()Lt3/u;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lt3/u;->q()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 50
    .line 51
    invoke-interface {v0}, Lt3/t;->e()Lr3/m$b;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-interface/range {v1 .. v7}, Lr3/a;->a(Lk2/k;Ln2/c;Lr3/w$a;ZZLr3/m$b;)Lr3/m;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lt3/v;->e:Lr3/m;

    .line 60
    .line 61
    :cond_0
    iget-object v0, p0, Lt3/v;->e:Lr3/m;

    .line 62
    .line 63
    return-object v0
.end method

.method public e()Lr3/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr3/t<",
            "Lf2/a;",
            "Ly3/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt3/v;->f:Lr3/t;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lt3/v;->d()Lr3/m;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lt3/v;->b:Lt3/t;

    .line 10
    .line 11
    invoke-interface {v1}, Lt3/t;->k()Lr3/s;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lr3/u;->a(Lr3/w;Lr3/s;)Lr3/t;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lt3/v;->f:Lr3/t;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lt3/v;->f:Lr3/t;

    .line 22
    .line 23
    return-object v0
.end method

.method public f()Lt3/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lt3/v;->c:Lt3/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Lr3/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr3/m<",
            "Lf2/a;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt3/v;->g:Lr3/m;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 6
    .line 7
    invoke-interface {v0}, Lt3/t;->h()Lk2/k;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lt3/v;->b:Lt3/t;

    .line 12
    .line 13
    invoke-interface {v1}, Lt3/t;->m()Ln2/c;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lt3/v;->b:Lt3/t;

    .line 18
    .line 19
    invoke-interface {v2}, Lt3/t;->r()Lr3/w$a;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v0, v1, v2}, Lr3/q;->a(Lk2/k;Ln2/c;Lr3/w$a;)Lr3/m;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lt3/v;->g:Lr3/m;

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lt3/v;->g:Lr3/m;

    .line 30
    .line 31
    return-object v0
.end method

.method public h()Lr3/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr3/t<",
            "Lf2/a;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt3/v;->h:Lr3/t;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 6
    .line 7
    invoke-interface {v0}, Lt3/t;->b()Lr3/w;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 14
    .line 15
    invoke-interface {v0}, Lt3/t;->b()Lr3/w;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lt3/v;->g()Lr3/m;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    iget-object v1, p0, Lt3/v;->b:Lt3/t;

    .line 25
    .line 26
    invoke-interface {v1}, Lt3/t;->k()Lr3/s;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lr3/r;->a(Lr3/w;Lr3/s;)Lr3/t;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lt3/v;->h:Lr3/t;

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lt3/v;->h:Lr3/t;

    .line 37
    .line 38
    return-object v0
.end method

.method public j()Lt3/r;
    .locals 1

    .line 1
    sget-object v0, Lt3/v;->r:Lt3/r;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lt3/v;->a()Lt3/r;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lt3/v;->r:Lt3/r;

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lt3/v;->r:Lt3/r;

    .line 12
    .line 13
    return-object v0
.end method

.method public m()Lq3/d;
    .locals 3

    .line 1
    iget-object v0, p0, Lt3/v;->m:Lq3/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 6
    .line 7
    invoke-interface {v0}, Lt3/t;->i()Lb4/d0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lt3/v;->n()Lc4/d;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lt3/v;->f()Lt3/a;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v0, v1, v2}, Lq3/e;->a(Lb4/d0;Lc4/d;Lt3/a;)Lq3/d;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lt3/v;->m:Lq3/d;

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lt3/v;->m:Lq3/d;

    .line 26
    .line 27
    return-object v0
.end method

.method public n()Lc4/d;
    .locals 4

    .line 1
    iget-object v0, p0, Lt3/v;->n:Lc4/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 6
    .line 7
    invoke-interface {v0}, Lt3/t;->i()Lb4/d0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lt3/v;->b:Lt3/t;

    .line 12
    .line 13
    invoke-interface {v1}, Lt3/t;->n()Lt3/u;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lt3/u;->H()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lt3/v;->b:Lt3/t;

    .line 22
    .line 23
    invoke-interface {v2}, Lt3/t;->n()Lt3/u;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lt3/u;->s()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget-object v3, p0, Lt3/v;->b:Lt3/t;

    .line 32
    .line 33
    invoke-interface {v3}, Lt3/t;->n()Lt3/u;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Lt3/u;->o()Lc4/f;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v0, v1, v2, v3}, Lc4/e;->a(Lb4/d0;ZZLc4/f;)Lc4/d;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lt3/v;->n:Lc4/d;

    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lt3/v;->n:Lc4/d;

    .line 48
    .line 49
    return-object v0
.end method

.method public q()Lx3/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 2
    .line 3
    invoke-interface {v0}, Lt3/t;->n()Lt3/u;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lt3/u;->A()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Li4/a;

    .line 14
    .line 15
    invoke-direct {v0}, Li4/a;-><init>()V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public r()Lw3/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lt3/v;->b:Lt3/t;

    .line 2
    .line 3
    invoke-interface {v0}, Lt3/t;->n()Lt3/u;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lt3/u;->A()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Li4/b;

    .line 14
    .line 15
    iget-object v1, p0, Lt3/v;->b:Lt3/t;

    .line 16
    .line 17
    invoke-interface {v1}, Lt3/t;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Li4/b;-><init>(Landroid/content/res/Resources;)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    return-object v0
.end method
