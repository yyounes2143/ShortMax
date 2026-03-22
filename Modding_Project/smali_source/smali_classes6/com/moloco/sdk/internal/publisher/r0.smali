.class public final Lcom/moloco/sdk/internal/publisher/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/moloco/sdk/publisher/MolocoInitializationListener;Lcom/moloco/sdk/publisher/MolocoInitStatus;)V
    .locals 1
    .param p0    # Lcom/moloco/sdk/publisher/MolocoInitializationListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/moloco/sdk/publisher/MolocoInitStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "initStatus"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/moloco/sdk/internal/publisher/q0;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/moloco/sdk/internal/publisher/q0;-><init>(Lcom/moloco/sdk/publisher/MolocoInitializationListener;Lcom/moloco/sdk/publisher/MolocoInitStatus;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/internal/scheduling/d;->a(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static final b(Lcom/moloco/sdk/publisher/MolocoInitializationListener;Lcom/moloco/sdk/publisher/MolocoInitStatus;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/moloco/sdk/publisher/MolocoInitializationListener;->onMolocoInitializationStatus(Lcom/moloco/sdk/publisher/MolocoInitStatus;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method
