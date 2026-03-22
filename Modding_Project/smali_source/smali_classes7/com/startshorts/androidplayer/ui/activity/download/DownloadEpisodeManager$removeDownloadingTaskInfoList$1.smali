.class final Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadingTaskInfoList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadEpisodeManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->T(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
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
    c = "com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager$removeDownloadingTaskInfoList$1"
    f = "DownloadEpisodeManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDownloadEpisodeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadingTaskInfoList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,923:1\n1863#2,2:924\n*S KotlinDebug\n*F\n+ 1 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadingTaskInfoList$1\n*L\n660#1:924,2\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic j:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function0;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadingTaskInfoList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadingTaskInfoList$1;->i:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadingTaskInfoList$1;->j:Lkotlin/jvm/functions/Function0;

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
    new-instance p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadingTaskInfoList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadingTaskInfoList$1;->i:Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadingTaskInfoList$1;->j:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadingTaskInfoList$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function0;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadingTaskInfoList$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadingTaskInfoList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadingTaskInfoList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadingTaskInfoList$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadingTaskInfoList$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_2

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadingTaskInfoList$1;->i:Ljava/util/List;

    .line 17
    .line 18
    check-cast v0, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;

    .line 35
    .line 36
    sget-object v2, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/download/DownloadingDramaInfo;->getDownloadInfo()Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v2, v1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->m(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;->a:Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;->f(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/b$e;

    .line 60
    .line 61
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/ui/activity/download/b$e;-><init>(Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$removeDownloadingTaskInfoList$1;->j:Lkotlin/jvm/functions/Function0;

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v1, "\u5220\u9664\u6570\u636e\u5e93"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    return-object p1

    .line 97
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 100
    .line 101
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1
.end method
