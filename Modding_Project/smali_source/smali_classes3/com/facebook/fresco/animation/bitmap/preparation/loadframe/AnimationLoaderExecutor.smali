.class public final Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/AnimationLoaderExecutor;
.super Ljava/lang/Object;
.source "AnimationLoaderExecutor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/AnimationLoaderExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final executor:Ljava/util/concurrent/ExecutorService;

.field private static final frameThreadFactory:Ljava/util/concurrent/ThreadFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/AnimationLoaderExecutor;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/AnimationLoaderExecutor;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/AnimationLoaderExecutor;->INSTANCE:Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/AnimationLoaderExecutor;

    .line 7
    .line 8
    new-instance v0, Li3/a;

    .line 9
    .line 10
    invoke-direct {v0}, Li3/a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/AnimationLoaderExecutor;->frameThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 14
    .line 15
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/AnimationLoaderExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
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

.method public static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/AnimationLoaderExecutor;->frameThreadFactory$lambda$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final frameThreadFactory$lambda$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/AnimationLoaderExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
