.class public Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;
.super Ljava/lang/Object;
.source "AnimatedFactoryV2Impl.java"

# interfaces
.implements Lm3/a;


# annotations
.annotation build Lk2/d;
.end annotation


# static fields
.field private static final NUMBER_OF_FRAMES_TO_PREPARE:I = 0x3


# instance fields
.field private mAnimatedDrawableBackendProvider:Ln3/b;

.field private mAnimatedDrawableFactory:Lx3/a;

.field private mAnimatedDrawableUtil:Lo3/a;

.field private mAnimatedImageFactory:Lm3/d;

.field private mAnimationFpsLimit:I

.field private final mBackingCache:Lr3/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr3/m<",
            "Lf2/a;",
            "Ly3/e;",
            ">;"
        }
    .end annotation
.end field

.field private mBufferLengthMilliseconds:I

.field private final mDownscaleFrameToDrawableDimensions:Z

.field private final mExecutorSupplier:Lt3/o;

.field private final mPlatformBitmapFactory:Lq3/d;

.field private mSerialExecutorService:Li2/g;

.field private final mUseBufferLoaderStrategy:Z


# direct methods
.method public constructor <init>(Lq3/d;Lt3/o;Lr3/m;ZZIILi2/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/d;",
            "Lt3/o;",
            "Lr3/m<",
            "Lf2/a;",
            "Ly3/e;",
            ">;ZZII",
            "Li2/g;",
            ")V"
        }
    .end annotation

    .annotation build Lk2/d;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mPlatformBitmapFactory:Lq3/d;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mExecutorSupplier:Lt3/o;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mBackingCache:Lr3/m;

    .line 9
    .line 10
    iput p6, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimationFpsLimit:I

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mUseBufferLoaderStrategy:Z

    .line 13
    .line 14
    iput-boolean p4, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mDownscaleFrameToDrawableDimensions:Z

    .line 15
    .line 16
    iput-object p8, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mSerialExecutorService:Li2/g;

    .line 17
    .line 18
    iput p7, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mBufferLengthMilliseconds:I

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic a(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;Ly3/k;ILy3/p;Ls3/d;)Ly3/e;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->lambda$getWebPDecoder$0(Ly3/k;ILy3/p;Ls3/d;)Ly3/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->lambda$createDrawableFactory$1()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private buildAnimatedImageFactory()Lm3/d;
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$3;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lm3/e;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mPlatformBitmapFactory:Lq3/d;

    .line 9
    .line 10
    iget-boolean v3, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mUseBufferLoaderStrategy:Z

    .line 11
    .line 12
    invoke-direct {v1, v0, v2, v3}, Lm3/e;-><init>(Ln3/b;Lq3/d;Z)V

    .line 13
    .line 14
    .line 15
    return-object v1
.end method

.method public static synthetic c()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->lambda$createDrawableFactory$2()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private createDrawableFactory()Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;
    .locals 15

    .line 1
    new-instance v7, Lcom/facebook/fresco/animation/factory/b;

    .line 2
    .line 3
    invoke-direct {v7}, Lcom/facebook/fresco/animation/factory/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mSerialExecutorService:Li2/g;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Li2/d;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mExecutorSupplier:Lt3/o;

    .line 13
    .line 14
    invoke-interface {v1}, Lt3/o;->g()Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Li2/d;-><init>(Ljava/util/concurrent/Executor;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    move-object v3, v0

    .line 22
    new-instance v8, Lcom/facebook/fresco/animation/factory/c;

    .line 23
    .line 24
    invoke-direct {v8}, Lcom/facebook/fresco/animation/factory/c;-><init>()V

    .line 25
    .line 26
    .line 27
    sget-object v9, Lk2/l;->b:Lk2/k;

    .line 28
    .line 29
    new-instance v14, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->getAnimatedDrawableBackendProvider()Ln3/b;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {}, Li2/i;->g()Li2/i;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    iget-object v5, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mPlatformBitmapFactory:Lq3/d;

    .line 44
    .line 45
    iget-object v6, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mBackingCache:Lr3/m;

    .line 46
    .line 47
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mUseBufferLoaderStrategy:Z

    .line 48
    .line 49
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lk2/l;->a(Ljava/lang/Object;)Lk2/k;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mDownscaleFrameToDrawableDimensions:Z

    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Lk2/l;->a(Ljava/lang/Object;)Lk2/k;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    iget v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimationFpsLimit:I

    .line 68
    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Lk2/l;->a(Ljava/lang/Object;)Lk2/k;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    iget v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mBufferLengthMilliseconds:I

    .line 78
    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Lk2/l;->a(Ljava/lang/Object;)Lk2/k;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    move-object v0, v14

    .line 88
    invoke-direct/range {v0 .. v13}, Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;-><init>(Ln3/b;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ExecutorService;Lq2/b;Lq3/d;Lr3/m;Lk2/k;Lk2/k;Lk2/k;Lk2/k;Lk2/k;Lk2/k;Lk2/k;)V

    .line 89
    .line 90
    .line 91
    return-object v14
.end method

.method static bridge synthetic d(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mDownscaleFrameToDrawableDimensions:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic e(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Lo3/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->getAnimatedDrawableUtil()Lo3/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic f(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)Lm3/d;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->getAnimatedImageFactory()Lm3/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getAnimatedDrawableBackendProvider()Ln3/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedDrawableBackendProvider:Ln3/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$2;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$2;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedDrawableBackendProvider:Ln3/b;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedDrawableBackendProvider:Ln3/b;

    .line 13
    .line 14
    return-object v0
.end method

.method private getAnimatedDrawableUtil()Lo3/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedDrawableUtil:Lo3/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lo3/a;

    .line 6
    .line 7
    invoke-direct {v0}, Lo3/a;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedDrawableUtil:Lo3/a;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedDrawableUtil:Lo3/a;

    .line 13
    .line 14
    return-object v0
.end method

.method private getAnimatedImageFactory()Lm3/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedImageFactory:Lm3/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->buildAnimatedImageFactory()Lm3/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedImageFactory:Lm3/d;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedImageFactory:Lm3/d;

    .line 12
    .line 13
    return-object v0
.end method

.method private static synthetic lambda$createDrawableFactory$1()Ljava/lang/Integer;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method private static synthetic lambda$createDrawableFactory$2()Ljava/lang/Integer;
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method private synthetic lambda$getWebPDecoder$0(Ly3/k;ILy3/p;Ls3/d;)Ly3/e;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->getAnimatedImageFactory()Lm3/d;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object p3, p4, Ls3/d;->i:Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    invoke-interface {p2, p1, p4, p3}, Lm3/d;->a(Ly3/k;Ls3/d;Landroid/graphics/Bitmap$Config;)Ly3/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method


# virtual methods
.method public getAnimatedDrawableFactory(Landroid/content/Context;)Lx3/a;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedDrawableFactory:Lx3/a;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->createDrawableFactory()Lcom/facebook/fresco/animation/factory/DefaultBitmapAnimationDrawableFactory;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedDrawableFactory:Lx3/a;

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;->mAnimatedDrawableFactory:Lx3/a;

    .line 12
    .line 13
    return-object p1
.end method

.method public getGifDecoder()Lw3/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl$1;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getWebPDecoder()Lw3/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/factory/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/factory/a;-><init>(Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
