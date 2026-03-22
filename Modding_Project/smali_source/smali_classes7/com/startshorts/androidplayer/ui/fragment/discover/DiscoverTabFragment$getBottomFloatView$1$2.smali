.class final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscoverTabFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment$getBottomFloatView$1$2"
    f = "DiscoverTabFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic j:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1$2;->i:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1$2;->j:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
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

    .line 1
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1$2;->i:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1$2;->j:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1$2;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1$2;->i:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1$2;->j:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->j0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method
