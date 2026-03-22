.class final Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadPriorityQueue.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;->invoke(ILkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;",
        "Lrs/c<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.ads.core.domain.work.DownloadPriorityQueue$invoke$3"
    f = "DownloadPriorityQueue.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $priorityItem:Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$3;->$priorityItem:Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$3;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$3;->$priorityItem:Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$3;-><init>(Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$3;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$3;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$3;->invoke(Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$3;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$3;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$invoke$3;->$priorityItem:Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue$PriorityItem;

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method
