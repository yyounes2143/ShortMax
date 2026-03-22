.class public final Lkotlinx/coroutines/selects/b;
.super Ljava/lang/Object;
.source "OnTimeout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Lpt/a;JLkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p0    # Lpt/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lpt/a<",
            "-TR;>;J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrs/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/selects/OnTimeout;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/selects/OnTimeout;-><init>(J)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lkotlinx/coroutines/selects/OnTimeout;->c()Lpt/b;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p0, p1, p3}, Lpt/a;->c(Lpt/b;Lkotlin/jvm/functions/Function1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
