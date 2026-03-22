.class final Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderStateChanged$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadEpisodeManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1;->downloaderStateChanged(Lcom/ss/ttvideoengine/download/Downloader;Lcom/ss/ttvideoengine/download/DownloadTask;I)V
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
    c = "com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager$init$1$downloaderStateChanged$1"
    f = "DownloadEpisodeManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/ss/ttvideoengine/download/DownloadTask;

.field final synthetic j:I


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/download/DownloadTask;ILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/download/DownloadTask;",
            "I",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderStateChanged$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderStateChanged$1;->i:Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderStateChanged$1;->j:I

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
    new-instance p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderStateChanged$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderStateChanged$1;->i:Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 4
    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderStateChanged$1;->j:I

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderStateChanged$1;-><init>(Lcom/ss/ttvideoengine/download/DownloadTask;ILrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderStateChanged$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderStateChanged$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderStateChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderStateChanged$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderStateChanged$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderStateChanged$1;->i:Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->i(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;Lcom/ss/ttvideoengine/download/DownloadTask;)Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    iget v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderStateChanged$1;->j:I

    .line 25
    .line 26
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-static {v1, v2}, Luh/s;->c(Ljava/lang/Integer;I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->setDownloadState(I)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Lcom/startshorts/androidplayer/ui/activity/download/b$f;

    .line 46
    .line 47
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/ui/activity/download/b$f;-><init>(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderStateChanged$1;->j:I

    .line 54
    .line 55
    const/4 v2, 0x3

    .line 56
    if-ne v1, v2, :cond_1

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->p(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->v()V

    .line 63
    .line 64
    .line 65
    :cond_1
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;->a:Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;->e(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

    .line 68
    .line 69
    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v1, "\u901a\u77e5\u4e0b\u8f7d\u72b6\u6001\u53d8\u5316\uff1ainfo"

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    return-object p1

    .line 93
    :cond_2
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
