.class final Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadEpisodeManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->K(ILrs/c;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2"
    f = "DownloadEpisodeManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:I


# direct methods
.method constructor <init>(ILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2;->i:I

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
    new-instance p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2;

    .line 2
    .line 3
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2;->i:I

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2;-><init>(ILrs/c;)V

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
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->k()Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2;->i:I

    .line 21
    .line 22
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/util/HashMap;

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 60
    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    const/4 v4, 0x4

    .line 69
    if-eq v3, v4, :cond_1

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const/4 v4, 0x6

    .line 76
    if-eq v3, v4, :cond_1

    .line 77
    .line 78
    new-instance v3, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;

    .line 79
    .line 80
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;-><init>(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

    .line 81
    .line 82
    .line 83
    iget v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$getDownloadingTaskInfoByShortId$2;->i:I

    .line 84
    .line 85
    invoke-virtual {v3, v2}, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;->setShortPlayId(I)V

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    return-object p1

    .line 93
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 94
    .line 95
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 96
    .line 97
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1
.end method
