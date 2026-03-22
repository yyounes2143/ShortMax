.class public final Lgt/m0$a;
.super Ljava/lang/Object;
.source "Delay.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgt/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/Delay$DefaultImpls\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,159:1\n426#2,11:160\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/Delay$DefaultImpls\n*L\n27#1:160,11\n*E\n"
    }
.end annotation


# direct methods
.method public static a(Lgt/m0;JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lgt/s0;
    .locals 0
    .param p0    # Lgt/m0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    invoke-static {}, Lgt/j0;->a()Lgt/m0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1, p2, p3, p4}, Lgt/m0;->c(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lgt/s0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
