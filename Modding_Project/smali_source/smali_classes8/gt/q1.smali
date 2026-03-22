.class final Lgt/q1;
.super Lkotlinx/coroutines/s;
.source "Supervisor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/r;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/r;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/s;-><init>(Lkotlinx/coroutines/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public R(Ljava/lang/Throwable;)Z
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
