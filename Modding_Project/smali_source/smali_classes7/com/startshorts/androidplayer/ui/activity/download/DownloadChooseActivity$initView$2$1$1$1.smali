.class final Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadChooseActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->q0()V
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
    c = "com.startshorts.androidplayer.ui.activity.download.DownloadChooseActivity$initView$2$1$1$1"
    f = "DownloadChooseActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

.field final synthetic j:Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

.field final synthetic k:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;

.field final synthetic l:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;

.field final synthetic m:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;ILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;",
            "Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;",
            "Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;",
            "Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;",
            "I",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->i:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->j:Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->k:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->l:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;

    .line 8
    .line 9
    iput p5, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->m:I

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic i(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->j(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final j(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;I)Lkotlin/Unit;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->T()Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lgt/g0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1$2$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, p1, v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1$2$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;ILrs/c;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7
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
    new-instance p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->i:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->j:Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->k:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->l:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;

    .line 10
    .line 11
    iget v5, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->m:I

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;-><init>(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;ILrs/c;)V

    .line 16
    .line 17
    .line 18
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 12
    .line 13
    new-instance v3, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->i:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->j:Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getShortPlayCode()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    const-string p1, "0"

    .line 29
    .line 30
    :cond_0
    const-string v2, "from"

    .line 31
    .line 32
    invoke-virtual {v3, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->getEpisode()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v0, "episode"

    .line 48
    .line 49
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    const/4 v6, 0x4

    .line 55
    const/4 v7, 0x0

    .line 56
    const-string v2, "download_click"

    .line 57
    .line 58
    const-wide/16 v4, 0x0

    .line 59
    .line 60
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->i:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->j:Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 68
    .line 69
    filled-new-array {v1}, [Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->k:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;

    .line 78
    .line 79
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->h0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->l:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;

    .line 88
    .line 89
    iget v4, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;->m:I

    .line 90
    .line 91
    new-instance v5, Lcom/startshorts/androidplayer/ui/activity/download/a;

    .line 92
    .line 93
    invoke-direct {v5, v3, v4}, Lcom/startshorts/androidplayer/ui/activity/download/a;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0, v1, v2, v5}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->d0(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;Ljava/util/List;ILkotlin/jvm/functions/Function0;)V

    .line 97
    .line 98
    .line 99
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    .line 101
    return-object p1

    .line 102
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 105
    .line 106
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1
.end method
