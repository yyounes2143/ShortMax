.class public abstract Lht/g;
.super Lgt/j1;
.source "HandlerDispatcher.kt"

# interfaces
.implements Lgt/m0;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lgt/j1;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lht/g;-><init>()V

    return-void
.end method


# virtual methods
.method public c(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lgt/s0;
    .locals 0
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lgt/m0$a;->a(Lgt/m0;JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lgt/s0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public abstract p()Lht/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
