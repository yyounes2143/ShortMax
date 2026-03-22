.class Lcom/ss/ttvideoengine/download/Downloader$TaskThread$1;
.super Landroid/os/Handler;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/download/Downloader$TaskThread;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/download/Downloader$TaskThread;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/download/Downloader$TaskThread;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/Downloader$TaskThread$1;->this$0:Lcom/ss/ttvideoengine/download/Downloader$TaskThread;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    const-string v2, "TTVideoEngine.Downloader"

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    :try_start_1
    const-string p1, "[downloader] obj should instance of ArrayList"

    .line 10
    .line 11
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/ss/ttvideoengine/download/Downloader;

    .line 26
    .line 27
    iget p1, p1, Landroid/os/Message;->what:I

    .line 28
    .line 29
    const/16 v3, 0xa

    .line 30
    .line 31
    if-eq p1, v3, :cond_2

    .line 32
    .line 33
    const/16 v2, 0xb

    .line 34
    .line 35
    if-eq p1, v2, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 v2, 0x2

    .line 43
    if-ne p1, v2, :cond_5

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/ss/ttvideoengine/download/Downloader$SaveInfos;

    .line 51
    .line 52
    if-eqz p1, :cond_5

    .line 53
    .line 54
    iget-object v0, p1, Lcom/ss/ttvideoengine/download/Downloader$SaveInfos;->task:Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/ss/ttvideoengine/download/Downloader$SaveInfos;->alltasks:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-static {v1, v0, p1}, Lcom/ss/ttvideoengine/download/Downloader;->access$1300(Lcom/ss/ttvideoengine/download/Downloader;Lcom/ss/ttvideoengine/download/DownloadTask;Ljava/util/ArrayList;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    new-instance p1, Lcom/ss/ttvideoengine/database/KVDBManager;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/ss/ttvideoengine/download/Downloader;->access$300(Lcom/ss/ttvideoengine/download/Downloader;)Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v3, "TTVideoEngine_download_database_v01"

    .line 69
    .line 70
    invoke-direct {p1, v0, v3}, Lcom/ss/ttvideoengine/database/KVDBManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/download/Downloader;->access$1002(Lcom/ss/ttvideoengine/download/Downloader;Lcom/ss/ttvideoengine/database/KVDBManager;)Lcom/ss/ttvideoengine/database/KVDBManager;

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Lcom/ss/ttvideoengine/download/Downloader;->access$1000(Lcom/ss/ttvideoengine/download/Downloader;)Lcom/ss/ttvideoengine/database/KVDBManager;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/database/KVDBManager;->isCreateDBSuccess()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_4

    .line 85
    .line 86
    invoke-static {v1}, Lcom/ss/ttvideoengine/download/Downloader;->access$1100(Lcom/ss/ttvideoengine/download/Downloader;)Landroid/os/Handler;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    invoke-static {v1}, Lcom/ss/ttvideoengine/download/Downloader;->access$1100(Lcom/ss/ttvideoengine/download/Downloader;)Landroid/os/Handler;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {v1}, Lcom/ss/ttvideoengine/download/Downloader;->access$1100(Lcom/ss/ttvideoengine/download/Downloader;)Landroid/os/Handler;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const/4 v1, 0x5

    .line 101
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    .line 107
    .line 108
    :cond_3
    return-void

    .line 109
    :cond_4
    const-string p1, "[downloader] open db success"

    .line 110
    .line 111
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v1}, Lcom/ss/ttvideoengine/download/Downloader;->access$1200(Lcom/ss/ttvideoengine/download/Downloader;)Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/download/Downloader;->access$502(Lcom/ss/ttvideoengine/download/Downloader;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    invoke-static {v1}, Lcom/ss/ttvideoengine/download/Downloader;->access$1100(Lcom/ss/ttvideoengine/download/Downloader;)Landroid/os/Handler;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-eqz p1, :cond_5

    .line 126
    .line 127
    invoke-static {v1}, Lcom/ss/ttvideoengine/download/Downloader;->access$1100(Lcom/ss/ttvideoengine/download/Downloader;)Landroid/os/Handler;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-static {v1}, Lcom/ss/ttvideoengine/download/Downloader;->access$1100(Lcom/ss/ttvideoengine/download/Downloader;)Landroid/os/Handler;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const/4 v1, 0x4

    .line 136
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :goto_0
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    :goto_1
    return-void
.end method
