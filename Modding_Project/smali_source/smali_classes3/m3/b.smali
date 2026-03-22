.class public final Lm3/b;
.super Ljava/lang/Object;
.source "AnimatedFactoryProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lm3/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Z

.field private static c:Lm3/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lm3/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lm3/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm3/b;->a:Lm3/b;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a(Lq3/d;Lt3/o;Lr3/m;ZZIILjava/util/concurrent/ExecutorService;)Lm3/a;
    .locals 9
    .param p0    # Lq3/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lt3/o;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lr3/m;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/d;",
            "Lt3/o;",
            "Lr3/m<",
            "Lf2/a;",
            "Ly3/e;",
            ">;ZZII",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lm3/a;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-boolean v0, Lm3/b;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-class v0, Lcom/facebook/fresco/animation/factory/AnimatedFactoryV2Impl;

    .line 6
    .line 7
    const-class v1, Lq3/d;

    .line 8
    .line 9
    const-class v2, Lt3/o;

    .line 10
    .line 11
    const-class v3, Lr3/m;

    .line 12
    .line 13
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 14
    .line 15
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 16
    .line 17
    const-class v8, Li2/g;

    .line 18
    .line 19
    move-object v4, v5

    .line 20
    move-object v6, v7

    .line 21
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    move-object v1, p0

    .line 46
    move-object v2, p1

    .line 47
    move-object v3, p2

    .line 48
    move-object/from16 v8, p7

    .line 49
    .line 50
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "null cannot be cast to non-null type com.facebook.imagepipeline.animated.factory.AnimatedFactory"

    .line 59
    .line 60
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    check-cast v0, Lm3/a;

    .line 64
    .line 65
    sput-object v0, Lm3/b;->c:Lm3/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    :catchall_0
    sget-object v0, Lm3/b;->c:Lm3/a;

    .line 68
    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    sput-boolean v0, Lm3/b;->b:Z

    .line 73
    .line 74
    :cond_0
    sget-object v0, Lm3/b;->c:Lm3/a;

    .line 75
    .line 76
    return-object v0
.end method
