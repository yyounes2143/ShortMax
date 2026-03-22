.class final Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RoutingViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1$2$1"
    f = "RoutingViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

.field final synthetic j:Lcom/startshorts/androidplayer/viewmodel/routing/b;

.field final synthetic k:Lcom/startshorts/androidplayer/bean/act/ActResource;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lcom/startshorts/androidplayer/viewmodel/routing/b;Lcom/startshorts/androidplayer/bean/act/ActResource;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;",
            "Lcom/startshorts/androidplayer/viewmodel/routing/b;",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2$1;->i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2$1;->j:Lcom/startshorts/androidplayer/viewmodel/routing/b;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2$1;->k:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2$1;->i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2$1;->j:Lcom/startshorts/androidplayer/viewmodel/routing/b;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2$1;->k:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lcom/startshorts/androidplayer/viewmodel/routing/b;Lcom/startshorts/androidplayer/bean/act/ActResource;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2$1;->i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2$1;->j:Lcom/startshorts/androidplayer/viewmodel/routing/b;

    .line 14
    .line 15
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/routing/b$a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/routing/b$a;->b()Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2$1;->k:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 22
    .line 23
    invoke-static {p1, v0, v1}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->K(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method
