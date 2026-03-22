.class public final Llt/f;
.super Ljava/lang/Object;
.source "FlowExceptions.common.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Lkotlinx/coroutines/flow/internal/AbortFlowException;Ljava/lang/Object;)V
    .locals 1
    .param p0    # Lkotlinx/coroutines/flow/internal/AbortFlowException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/AbortFlowException;->a:Ljava/lang/Object;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    throw p0
.end method
