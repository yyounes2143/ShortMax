.class Lcom/ss/ttvideoengine/download/DownloadTask$2;
.super Landroid/os/Handler;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/download/DownloadTask;->initHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/download/DownloadTask;

.field final synthetic val$task:Lcom/ss/ttvideoengine/download/DownloadTask;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/download/DownloadTask;Landroid/os/Looper;Lcom/ss/ttvideoengine/download/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadTask$2;->this$0:Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/ss/ttvideoengine/download/DownloadTask$2;->val$task:Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask$2;->val$task:Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    return-void

    .line 9
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 10
    .line 11
    .line 12
    iget v0, p1, Landroid/os/Message;->what:I

    .line 13
    .line 14
    const/16 v1, 0x6f

    .line 15
    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    .line 18
    iget-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadTask$2;->val$task:Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/download/DownloadTask;->setState(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadTask$2;->val$task:Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 25
    .line 26
    iget-object v0, p1, Lcom/ss/ttvideoengine/download/DownloadTask;->downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 27
    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/download/Downloader;->cancel(Lcom/ss/ttvideoengine/download/DownloadTask;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/16 v1, 0x70

    .line 35
    .line 36
    const/4 v2, 0x5

    .line 37
    if-ne v0, v1, :cond_4

    .line 38
    .line 39
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask$2;->val$task:Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 40
    .line 41
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 44
    .line 45
    iput-object p1, v0, Lcom/ss/ttvideoengine/download/DownloadTask;->error:Lcom/ss/ttvideoengine/utils/Error;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/ss/ttvideoengine/download/DownloadTask$2;->this$0:Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/download/DownloadTask;->_shouldRetry(Lcom/ss/ttvideoengine/utils/Error;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    iget-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadTask$2;->val$task:Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->setState(I)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadTask$2;->val$task:Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 61
    .line 62
    iget-object v0, p1, Lcom/ss/ttvideoengine/download/DownloadTask;->downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    iget-object v1, p1, Lcom/ss/ttvideoengine/download/DownloadTask;->error:Lcom/ss/ttvideoengine/utils/Error;

    .line 67
    .line 68
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttvideoengine/download/Downloader;->completeError(Lcom/ss/ttvideoengine/download/DownloadTask;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const/16 p1, 0x71

    .line 73
    .line 74
    if-ne v0, p1, :cond_5

    .line 75
    .line 76
    iget-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadTask$2;->val$task:Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    iput-object v0, p1, Lcom/ss/ttvideoengine/download/DownloadTask;->error:Lcom/ss/ttvideoengine/utils/Error;

    .line 80
    .line 81
    invoke-virtual {p1, v2}, Lcom/ss/ttvideoengine/download/DownloadTask;->setState(I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/ss/ttvideoengine/download/DownloadTask$2;->val$task:Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 85
    .line 86
    iget-object v1, p1, Lcom/ss/ttvideoengine/download/DownloadTask;->downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 87
    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    invoke-virtual {v1, p1, v0}, Lcom/ss/ttvideoengine/download/Downloader;->completeError(Lcom/ss/ttvideoengine/download/DownloadTask;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 91
    .line 92
    .line 93
    :cond_5
    :goto_0
    return-void
.end method
