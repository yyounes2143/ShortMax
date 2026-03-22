.class public Lm3/e;
.super Ljava/lang/Object;
.source "AnimatedImageFactoryImpl.java"

# interfaces
.implements Lm3/d;


# static fields
.field static e:Lm3/c;

.field static f:Lm3/c;


# instance fields
.field private final a:Ln3/b;

.field private final b:Lq3/d;

.field private final c:Z

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "com.facebook.animated.gif.GifImage"

    .line 2
    .line 3
    invoke-static {v0}, Lm3/e;->g(Ljava/lang/String;)Lm3/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lm3/e;->e:Lm3/c;

    .line 8
    .line 9
    const-string v0, "com.facebook.animated.webp.WebPImage"

    .line 10
    .line 11
    invoke-static {v0}, Lm3/e;->g(Ljava/lang/String;)Lm3/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lm3/e;->f:Lm3/c;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Ln3/b;Lq3/d;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lm3/e;-><init>(Ln3/b;Lq3/d;ZZ)V

    return-void
.end method

.method public constructor <init>(Ln3/b;Lq3/d;ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lm3/e;->a:Ln3/b;

    .line 4
    iput-object p2, p0, Lm3/e;->b:Lq3/d;

    .line 5
    iput-boolean p3, p0, Lm3/e;->c:Z

    .line 6
    iput-boolean p4, p0, Lm3/e;->d:Z

    return-void
.end method

.method private c(IILandroid/graphics/Bitmap$Config;)Lo2/a;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm3/e;->b:Lq3/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lq3/d;->d(IILandroid/graphics/Bitmap$Config;)Lo2/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lo2/a;->s()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Landroid/graphics/Bitmap;

    .line 12
    .line 13
    const/4 p3, 0x0

    .line 14
    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lo2/a;->s()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Landroid/graphics/Bitmap;

    .line 22
    .line 23
    const/4 p3, 0x1

    .line 24
    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 25
    .line 26
    .line 27
    return-object p1
.end method

.method private d(Ll3/b;Landroid/graphics/Bitmap$Config;I)Lo2/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b;",
            "Landroid/graphics/Bitmap$Config;",
            "I)",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ll3/b;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p1}, Ll3/b;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v0, v1, p2}, Lm3/e;->c(IILandroid/graphics/Bitmap$Config;)Lo2/a;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p1}, Ll3/d;->b(Ll3/b;)Ll3/d;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lm3/e;->a:Ln3/b;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-interface {v0, p1, v1}, Ln3/b;->get(Ll3/d;Landroid/graphics/Rect;)Ll3/a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    .line 25
    .line 26
    iget-boolean v1, p0, Lm3/e;->c:Z

    .line 27
    .line 28
    new-instance v2, Lm3/e$a;

    .line 29
    .line 30
    invoke-direct {v2, p0}, Lm3/e$a;-><init>(Lm3/e;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;-><init>(Ll3/a;ZLcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$b;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lo2/a;->s()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/graphics/Bitmap;

    .line 41
    .line 42
    invoke-virtual {v0, p3, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->h(ILandroid/graphics/Bitmap;)V

    .line 43
    .line 44
    .line 45
    return-object p2
.end method

.method private e(Ll3/b;Landroid/graphics/Bitmap$Config;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/b;",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Ljava/util/List<",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ll3/d;->b(Ll3/b;)Ll3/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lm3/e;->a:Ln3/b;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, p1, v1}, Ln3/b;->get(Ll3/d;Landroid/graphics/Rect;)Ll3/a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-interface {p1}, Ll3/a;->getFrameCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    .line 22
    .line 23
    iget-boolean v2, p0, Lm3/e;->c:Z

    .line 24
    .line 25
    new-instance v3, Lm3/e$b;

    .line 26
    .line 27
    invoke-direct {v3, p0, v0}, Lm3/e$b;-><init>(Lm3/e;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p1, v2, v3}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;-><init>(Ll3/a;ZLcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$b;)V

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    invoke-interface {p1}, Ll3/a;->getFrameCount()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-ge v2, v3, :cond_0

    .line 39
    .line 40
    invoke-interface {p1}, Ll3/a;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-interface {p1}, Ll3/a;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-direct {p0, v3, v4, p2}, Lm3/e;->c(IILandroid/graphics/Bitmap$Config;)Lo2/a;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Lo2/a;->s()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroid/graphics/Bitmap;

    .line 57
    .line 58
    invoke-virtual {v1, v2, v4}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->h(ILandroid/graphics/Bitmap;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    return-object v0
.end method

.method private f(Ljava/lang/String;Ls3/d;Ll3/b;Landroid/graphics/Bitmap$Config;)Ly3/e;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p2, Ls3/d;->d:Z

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {p3}, Ll3/b;->getFrameCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    move-object v2, v0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    move v1, v2

    .line 18
    :goto_0
    iget-boolean v3, p2, Ls3/d;->g:Z

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-direct {p0, p3, p4, v1}, Lm3/e;->d(Ll3/b;Landroid/graphics/Bitmap$Config;I)Lo2/a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object p2, Ly3/o;->d:Ly3/p;

    .line 27
    .line 28
    invoke-static {p1, p2, v2}, Ly3/f;->U(Lo2/a;Ly3/p;I)Ly3/f;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lo2/a;->q(Ljava/lang/Iterable;)V

    .line 36
    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_1
    :try_start_1
    iget-boolean v2, p2, Ls3/d;->f:Z

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-direct {p0, p3, p4}, Lm3/e;->e(Ll3/b;Landroid/graphics/Bitmap$Config;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :try_start_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lo2/a;

    .line 52
    .line 53
    invoke-static {v3}, Lo2/a;->p(Lo2/a;)Lo2/a;

    .line 54
    .line 55
    .line 56
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    goto :goto_1

    .line 58
    :catchall_1
    move-exception p1

    .line 59
    goto :goto_3

    .line 60
    :cond_2
    move-object v2, v0

    .line 61
    move-object v3, v2

    .line 62
    :goto_1
    :try_start_3
    iget-boolean p2, p2, Ls3/d;->c:Z

    .line 63
    .line 64
    if-eqz p2, :cond_3

    .line 65
    .line 66
    if-nez v3, :cond_3

    .line 67
    .line 68
    invoke-direct {p0, p3, p4, v1}, Lm3/e;->d(Ll3/b;Landroid/graphics/Bitmap$Config;I)Lo2/a;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    goto :goto_2

    .line 73
    :catchall_2
    move-exception p1

    .line 74
    move-object v0, v3

    .line 75
    goto :goto_3

    .line 76
    :cond_3
    :goto_2
    invoke-static {p3}, Ll3/d;->f(Ll3/b;)Ll3/e;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p2, v3}, Ll3/e;->k(Lo2/a;)Ll3/e;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p2, v1}, Ll3/e;->j(I)Ll3/e;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p2, v2}, Ll3/e;->i(Ljava/util/List;)Ll3/e;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p2, v0}, Ll3/e;->h(Lh4/a;)Ll3/e;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p2, p1}, Ll3/e;->l(Ljava/lang/String;)Ll3/e;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ll3/e;->a()Ll3/d;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-instance p2, Ly3/c;

    .line 105
    .line 106
    iget-boolean p3, p0, Lm3/e;->d:Z

    .line 107
    .line 108
    invoke-direct {p2, p1, p3}, Ly3/c;-><init>(Ll3/d;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 109
    .line 110
    .line 111
    invoke-static {v3}, Lo2/a;->r(Lo2/a;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v2}, Lo2/a;->q(Ljava/lang/Iterable;)V

    .line 115
    .line 116
    .line 117
    return-object p2

    .line 118
    :goto_3
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v2}, Lo2/a;->q(Ljava/lang/Iterable;)V

    .line 122
    .line 123
    .line 124
    throw p1
.end method

.method private static g(Ljava/lang/String;)Lm3/c;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lm3/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :catchall_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method


# virtual methods
.method public a(Ly3/k;Ls3/d;Landroid/graphics/Bitmap$Config;)Ly3/e;
    .locals 5

    .line 1
    sget-object v0, Lm3/e;->f:Lm3/c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Ly3/k;->l()Lo2/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v0}, Lo2/a;->s()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/facebook/common/memory/PooledByteBuffer;->C()Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    sget-object v2, Lm3/e;->f:Lm3/c;

    .line 25
    .line 26
    invoke-interface {v1}, Lcom/facebook/common/memory/PooledByteBuffer;->C()Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v2, v1, p2}, Lm3/c;->d(Ljava/nio/ByteBuffer;Ls3/d;)Ll3/b;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    sget-object v2, Lm3/e;->f:Lm3/c;

    .line 38
    .line 39
    invoke-interface {v1}, Lcom/facebook/common/memory/PooledByteBuffer;->A()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    invoke-interface {v1}, Lcom/facebook/common/memory/PooledByteBuffer;->size()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-interface {v2, v3, v4, v1, p2}, Lm3/c;->c(JILs3/d;)Ll3/b;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :goto_0
    invoke-virtual {p1}, Ly3/k;->v()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0, p1, p2, v1, p3}, Lm3/e;->f(Ljava/lang/String;Ls3/d;Ll3/b;Landroid/graphics/Bitmap$Config;)Ly3/e;

    .line 56
    .line 57
    .line 58
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 60
    .line 61
    .line 62
    return-object p1

    .line 63
    :goto_1
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 68
    .line 69
    const-string p2, "To encode animated webp please add the dependency to the animated-webp module"

    .line 70
    .line 71
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1
.end method

.method public b(Ly3/k;Ls3/d;Landroid/graphics/Bitmap$Config;)Ly3/e;
    .locals 5

    .line 1
    sget-object v0, Lm3/e;->e:Lm3/c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Ly3/k;->l()Lo2/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lk2/h;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v0}, Lo2/a;->s()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/facebook/common/memory/PooledByteBuffer;->C()Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    sget-object v2, Lm3/e;->e:Lm3/c;

    .line 25
    .line 26
    invoke-interface {v1}, Lcom/facebook/common/memory/PooledByteBuffer;->C()Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v2, v1, p2}, Lm3/c;->d(Ljava/nio/ByteBuffer;Ls3/d;)Ll3/b;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    sget-object v2, Lm3/e;->e:Lm3/c;

    .line 38
    .line 39
    invoke-interface {v1}, Lcom/facebook/common/memory/PooledByteBuffer;->A()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    invoke-interface {v1}, Lcom/facebook/common/memory/PooledByteBuffer;->size()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-interface {v2, v3, v4, v1, p2}, Lm3/c;->c(JILs3/d;)Ll3/b;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :goto_0
    invoke-virtual {p1}, Ly3/k;->v()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0, p1, p2, v1, p3}, Lm3/e;->f(Ljava/lang/String;Ls3/d;Ll3/b;Landroid/graphics/Bitmap$Config;)Ly3/e;

    .line 56
    .line 57
    .line 58
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 60
    .line 61
    .line 62
    return-object p1

    .line 63
    :goto_1
    invoke-static {v0}, Lo2/a;->r(Lo2/a;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 68
    .line 69
    const-string p2, "To encode animated gif please add the dependency to the animated-gif module"

    .line 70
    .line 71
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1
.end method
