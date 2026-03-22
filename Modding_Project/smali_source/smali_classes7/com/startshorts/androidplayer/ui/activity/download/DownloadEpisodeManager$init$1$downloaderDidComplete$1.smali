.class final Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderDidComplete$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadEpisodeManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1;->downloaderDidComplete(Lcom/ss/ttvideoengine/download/Downloader;Lcom/ss/ttvideoengine/download/DownloadTask;Lcom/ss/ttvideoengine/utils/Error;)V
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
    c = "com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager$init$1$downloaderDidComplete$1"
    f = "DownloadEpisodeManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/ss/ttvideoengine/download/DownloadTask;

.field final synthetic j:Lcom/ss/ttvideoengine/utils/Error;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/download/DownloadTask;Lcom/ss/ttvideoengine/utils/Error;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/download/DownloadTask;",
            "Lcom/ss/ttvideoengine/utils/Error;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderDidComplete$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderDidComplete$1;->i:Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderDidComplete$1;->j:Lcom/ss/ttvideoengine/utils/Error;

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
    new-instance p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderDidComplete$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderDidComplete$1;->i:Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderDidComplete$1;->j:Lcom/ss/ttvideoengine/utils/Error;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderDidComplete$1;-><init>(Lcom/ss/ttvideoengine/download/DownloadTask;Lcom/ss/ttvideoengine/utils/Error;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderDidComplete$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderDidComplete$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderDidComplete$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderDidComplete$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderDidComplete$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->p(Z)V

    .line 13
    .line 14
    .line 15
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderDidComplete$1;->i:Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->i(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;Lcom/ss/ttvideoengine/download/DownloadTask;)Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->v()V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->resetDownloadSpeed()V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderDidComplete$1;->j:Lcom/ss/ttvideoengine/utils/Error;

    .line 35
    .line 36
    const/4 v2, 0x6

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x4

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget v1, v1, Lcom/ss/ttvideoengine/utils/Error;->code:I

    .line 42
    .line 43
    const/16 v3, -0x270b

    .line 44
    .line 45
    if-ne v1, v3, :cond_2

    .line 46
    .line 47
    move v1, v2

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v1, 0x5

    .line 50
    :goto_0
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->setDownloadState(I)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->e(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->h()Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getHasUnfinishedJob()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->o(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-ne v1, v2, :cond_4

    .line 77
    .line 78
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;->a:Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;->b(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    new-instance v2, Lcom/startshorts/androidplayer/ui/activity/download/b$e;

    .line 88
    .line 89
    filled-new-array {v0}, [Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-direct {v2, v3}, Lcom/startshorts/androidplayer/ui/activity/download/b$e;-><init>(Ljava/util/List;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v2, "\u5220\u9664\u4e0b\u8f7d\u4efb\u52a1\uff1ainfo"

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v0}, Luh/s;->b(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;->a:Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;

    .line 125
    .line 126
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;->e(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

    .line 127
    .line 128
    .line 129
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    new-instance v2, Lcom/startshorts/androidplayer/ui/activity/download/b$f;

    .line 134
    .line 135
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/ui/activity/download/b$f;-><init>(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v2, "\u901a\u77e5\u4e0b\u8f7d\u72b6\u6001\u53d8\u5316\uff1ainfo"

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {v0}, Luh/s;->b(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :goto_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->f0()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->v()V

    .line 165
    .line 166
    .line 167
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 168
    .line 169
    return-object p1

    .line 170
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 171
    .line 172
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 173
    .line 174
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p1
.end method
