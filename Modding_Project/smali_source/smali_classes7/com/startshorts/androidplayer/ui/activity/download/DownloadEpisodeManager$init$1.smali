.class public final Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1;
.super Ljava/lang/Object;
.source "DownloadEpisodeManager.kt"

# interfaces
.implements Lcom/ss/ttvideoengine/download/IDownloaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDownloadEpisodeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,923:1\n1863#2,2:924\n*S KotlinDebug\n*F\n+ 1 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1\n*L\n127#1:924,2\n*E\n"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public downloaderDidComplete(Lcom/ss/ttvideoengine/download/Downloader;Lcom/ss/ttvideoengine/download/DownloadTask;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 7

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "downloaderDidComplete: task"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-static {p2}, Luh/s;->f(Lcom/ss/ttvideoengine/download/DownloadTask;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v1, v0

    .line 20
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " err:"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Luh/h0;->f()Lgt/g0;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v4, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderDidComplete$1;

    .line 43
    .line 44
    invoke-direct {v4, p2, p3, v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderDidComplete$1;-><init>(Lcom/ss/ttvideoengine/download/DownloadTask;Lcom/ss/ttvideoengine/utils/Error;Lrs/c;)V

    .line 45
    .line 46
    .line 47
    const/4 v5, 0x3

    .line 48
    const/4 v6, 0x0

    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public downloaderDidLoadAllTask(Lcom/ss/ttvideoengine/download/Downloader;Ljava/util/List;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/download/Downloader;",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/download/DownloadTask;",
            ">;",
            "Lcom/ss/ttvideoengine/utils/Error;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "downloaderDidLoadAllTask: allTaskNum\uff1a"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, " err:"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->g()Ljava/util/HashMap;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 46
    .line 47
    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    check-cast p2, Ljava/lang/Iterable;

    .line 51
    .line 52
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 67
    .line 68
    invoke-static {}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->g()Ljava/util/HashMap;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/download/DownloadTask;->getVideoId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    new-instance p3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v0, "downloaderDidLoadAllTask:item:"

    .line 85
    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-static {p2}, Luh/s;->f(Lcom/ss/ttvideoengine/download/DownloadTask;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-static {p2}, Luh/s;->b(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->L()Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-eqz p2, :cond_2

    .line 111
    .line 112
    const/4 p2, 0x0

    .line 113
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->Y(Z)V

    .line 114
    .line 115
    .line 116
    const/4 p2, 0x1

    .line 117
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a0(Z)V

    .line 118
    .line 119
    .line 120
    :cond_2
    return-void
.end method

.method public downloaderDidResume(Lcom/ss/ttvideoengine/download/Downloader;Lcom/ss/ttvideoengine/download/DownloadTask;JJ)V
    .locals 7

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "downloaderDidResume: task:"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-static {p2}, Luh/s;->f(Lcom/ss/ttvideoengine/download/DownloadTask;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v1, v0

    .line 20
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " fileOffset:"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p3, " expectedTotalBytes:"

    .line 32
    .line 33
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->p(Z)V

    .line 48
    .line 49
    .line 50
    const-wide/16 p3, 0x0

    .line 51
    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/download/DownloadTask;->getBytesExpectedToReceive()J

    .line 55
    .line 56
    .line 57
    move-result-wide p5

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move-wide p5, p3

    .line 60
    :goto_1
    if-eqz p2, :cond_2

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/download/DownloadTask;->getBytesReceived()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    move-wide v1, p3

    .line 68
    :goto_2
    cmp-long p1, p5, p3

    .line 69
    .line 70
    if-nez p1, :cond_3

    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    goto :goto_3

    .line 74
    :cond_3
    new-instance p1, Ljava/math/BigDecimal;

    .line 75
    .line 76
    long-to-float p3, v1

    .line 77
    long-to-float p4, p5

    .line 78
    div-float/2addr p3, p4

    .line 79
    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-direct {p1, p3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/4 p3, 0x4

    .line 87
    sget-object p4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 88
    .line 89
    invoke-virtual {p1, p3, p4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    :goto_3
    new-instance p3, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string p4, "downloaderDidResume: task"

    .line 103
    .line 104
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    if-eqz p2, :cond_4

    .line 108
    .line 109
    invoke-static {p2}, Luh/s;->f(Lcom/ss/ttvideoengine/download/DownloadTask;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p4

    .line 113
    goto :goto_4

    .line 114
    :cond_4
    move-object p4, v0

    .line 115
    :goto_4
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p4, "  progress"

    .line 119
    .line 120
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const/16 p4, 0x64

    .line 124
    .line 125
    int-to-float p4, p4

    .line 126
    mul-float/2addr p4, p1

    .line 127
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const/16 p4, 0x25

    .line 131
    .line 132
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    invoke-static {p3}, Luh/s;->b(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-static {}, Luh/h0;->f()Lgt/g0;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    new-instance v4, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderDidResume$1;

    .line 147
    .line 148
    invoke-direct {v4, p2, p1, v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderDidResume$1;-><init>(Lcom/ss/ttvideoengine/download/DownloadTask;FLrs/c;)V

    .line 149
    .line 150
    .line 151
    const/4 v5, 0x3

    .line 152
    const/4 v6, 0x0

    .line 153
    const/4 v2, 0x0

    .line 154
    const/4 v3, 0x0

    .line 155
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public downloaderStateChanged(Lcom/ss/ttvideoengine/download/Downloader;Lcom/ss/ttvideoengine/download/DownloadTask;I)V
    .locals 7

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "downloaderStateChanged: task"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-static {p2}, Luh/s;->f(Lcom/ss/ttvideoengine/download/DownloadTask;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v1, v0

    .line 20
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " state:"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-static {p3}, Luh/s;->d(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    if-eqz p3, :cond_1

    .line 43
    .line 44
    const/4 p1, 0x4

    .line 45
    if-eq p3, p1, :cond_1

    .line 46
    .line 47
    const/4 p1, 0x5

    .line 48
    if-eq p3, p1, :cond_1

    .line 49
    .line 50
    invoke-static {}, Luh/h0;->f()Lgt/g0;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v4, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderStateChanged$1;

    .line 55
    .line 56
    invoke-direct {v4, p2, p3, v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderStateChanged$1;-><init>(Lcom/ss/ttvideoengine/download/DownloadTask;ILrs/c;)V

    .line 57
    .line 58
    .line 59
    const/4 v5, 0x3

    .line 60
    const/4 v6, 0x0

    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method public downloaderWriteData(Lcom/ss/ttvideoengine/download/Downloader;Lcom/ss/ttvideoengine/download/DownloadTask;JJ)V
    .locals 6

    .line 1
    const-wide/16 p3, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/download/DownloadTask;->getBytesExpectedToReceive()J

    .line 6
    .line 7
    .line 8
    move-result-wide p5

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-wide p5, p3

    .line 11
    :goto_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/download/DownloadTask;->getBytesReceived()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-wide v0, p3

    .line 19
    :goto_1
    cmp-long p1, p5, p3

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    long-to-float p1, v0

    .line 26
    long-to-float p3, p5

    .line 27
    div-float/2addr p1, p3

    .line 28
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string p4, "downloaderWriteData: task"

    .line 34
    .line 35
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/4 p4, 0x0

    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    invoke-static {p2}, Luh/s;->f(Lcom/ss/ttvideoengine/download/DownloadTask;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p5

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    move-object p5, p4

    .line 47
    :goto_3
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p5, "  progress"

    .line 51
    .line 52
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const/16 p5, 0x64

    .line 56
    .line 57
    int-to-float p5, p5

    .line 58
    mul-float/2addr p5, p1

    .line 59
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/16 p5, 0x25

    .line 63
    .line 64
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-static {p3}, Luh/s;->b(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Luh/h0;->f()Lgt/g0;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v3, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderWriteData$1;

    .line 79
    .line 80
    invoke-direct {v3, p2, p1, p4}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$1$downloaderWriteData$1;-><init>(Lcom/ss/ttvideoengine/download/DownloadTask;FLrs/c;)V

    .line 81
    .line 82
    .line 83
    const/4 v4, 0x3

    .line 84
    const/4 v5, 0x0

    .line 85
    const/4 v1, 0x0

    .line 86
    const/4 v2, 0x0

    .line 87
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 88
    .line 89
    .line 90
    return-void
.end method
