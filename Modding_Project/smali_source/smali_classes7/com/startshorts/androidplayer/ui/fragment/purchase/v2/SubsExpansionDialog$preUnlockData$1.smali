.class final Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$preUnlockData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SubsExpansionDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->g0()V
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
    c = "com.startshorts.androidplayer.ui.fragment.purchase.v2.SubsExpansionDialog$preUnlockData$1"
    f = "SubsExpansionDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$preUnlockData$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$preUnlockData$1;->i:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;

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
    .locals 1
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
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$preUnlockData$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$preUnlockData$1;->i:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$preUnlockData$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;Lrs/c;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$preUnlockData$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$preUnlockData$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$preUnlockData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$preUnlockData$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$preUnlockData$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$preUnlockData$1;->i:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->J(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$preUnlockData$1;->i:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->S()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$preUnlockData$1;->i:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;->J(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/immersion/e$g;

    .line 38
    .line 39
    sget-object v1, Lve/h;->a:Lve/h;

    .line 40
    .line 41
    invoke-virtual {v1}, Lve/h;->m()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$g;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 49
    .line 50
    .line 51
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method
