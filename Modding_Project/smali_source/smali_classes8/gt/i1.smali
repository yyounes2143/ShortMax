.class final Lgt/i1;
.super Lgt/p1;
.source "Builders.common.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final d:Lrs/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lgt/g0;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lgt/p1;-><init>(Lkotlin/coroutines/CoroutineContext;Z)V

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p0, p0}, Lkotlin/coroutines/intrinsics/a;->a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lgt/i1;->d:Lrs/c;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method protected A0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgt/i1;->d:Lrs/c;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lnt/a;->c(Lrs/c;Lrs/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
