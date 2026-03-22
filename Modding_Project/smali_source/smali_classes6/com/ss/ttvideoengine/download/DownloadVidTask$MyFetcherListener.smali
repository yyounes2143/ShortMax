.class Lcom/ss/ttvideoengine/download/DownloadVidTask$MyFetcherListener;
.super Ljava/lang/Object;
.source "DownloadVidTask.java"

# interfaces
.implements Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/download/DownloadVidTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFetcherListener"
.end annotation


# instance fields
.field private final mTaskItemRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/download/DownloadVidTask;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ss/ttvideoengine/download/DownloadVidTask;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/download/DownloadVidTask;Lcom/ss/ttvideoengine/download/DownloadVidTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask$MyFetcherListener;->this$0:Lcom/ss/ttvideoengine/download/DownloadVidTask;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask$MyFetcherListener;->mTaskItemRef:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask$MyFetcherListener;->mTaskItemRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/download/DownloadVidTask;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "did fetch video modeo, videoId is "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v2, v0, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "TTVideoEngine.DownloadVidTask"

    .line 32
    .line 33
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v3, 0x4

    .line 41
    if-eq v1, v3, :cond_5

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v3, 0x5

    .line 48
    if-ne v1, v3, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    if-eqz p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->setVideoModel(Lcom/ss/ttvideoengine/model/VideoModel;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    const/4 v1, 0x3

    .line 61
    if-ne p2, v1, :cond_2

    .line 62
    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string p2, "but state is suspended. videoId = "

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object p2, v0, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->access$000(Lcom/ss/ttvideoengine/download/DownloadVidTask;Lcom/ss/ttvideoengine/model/VideoModel;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    if-eqz p2, :cond_4

    .line 91
    .line 92
    invoke-virtual {v0, p2}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->receiveError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_0
    return-void

    .line 96
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string p2, "but state is canceled. videoId = "

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object p2, v0, Lcom/ss/ttvideoengine/download/DownloadTask;->videoId:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public onLog(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRetry(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onStatusException(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask$MyFetcherListener;->mTaskItemRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lcom/ss/ttvideoengine/download/DownloadVidTask;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "error info: apiString = "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask$MyFetcherListener;->this$0:Lcom/ss/ttvideoengine/download/DownloadVidTask;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->access$100(Lcom/ss/ttvideoengine/download/DownloadVidTask;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " authString = "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask$MyFetcherListener;->this$0:Lcom/ss/ttvideoengine/download/DownloadVidTask;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->access$200(Lcom/ss/ttvideoengine/download/DownloadVidTask;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, " apiVersion = "

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/ss/ttvideoengine/download/DownloadVidTask$MyFetcherListener;->this$0:Lcom/ss/ttvideoengine/download/DownloadVidTask;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->access$300(Lcom/ss/ttvideoengine/download/DownloadVidTask;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, " state = "

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Lcom/ss/ttvideoengine/utils/Error;

    .line 72
    .line 73
    const-string v2, "kTTVideoErrorDomainFetchingInfo"

    .line 74
    .line 75
    const/16 v3, -0x270c

    .line 76
    .line 77
    invoke-direct {v1, v2, v3, p1, v0}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v1}, Lcom/ss/ttvideoengine/download/DownloadVidTask;->receiveError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
