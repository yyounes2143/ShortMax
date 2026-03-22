.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$MDLCacheSizeRunnable;
.super Ljava/lang/Object;
.source "TTVideoEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MDLCacheSizeRunnable"
.end annotation


# instance fields
.field private mVideoEngineRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngineImpl;",
            ">;"
        }
    .end annotation
.end field

.field private temFilePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private temKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/TTVideoEngineImpl;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MDLCacheSizeRunnable;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MDLCacheSizeRunnable;->temKeys:Ljava/util/ArrayList;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MDLCacheSizeRunnable;->temFilePaths:Ljava/util/ArrayList;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MDLCacheSizeRunnable;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    iget v1, v0, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mState:I

    .line 12
    .line 13
    const/4 v2, 0x5

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :cond_0
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$2200(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MDLCacheSizeRunnable;->temFilePaths:Ljava/util/ArrayList;

    .line 27
    .line 28
    const/16 v4, 0xa

    .line 29
    .line 30
    const-wide/16 v5, 0x0

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    if-eqz v3, :cond_3

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-lez v3, :cond_3

    .line 40
    .line 41
    move v3, v7

    .line 42
    :goto_0
    iget-object v8, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MDLCacheSizeRunnable;->temFilePaths:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-ge v3, v8, :cond_6

    .line 49
    .line 50
    iget-object v8, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MDLCacheSizeRunnable;->temFilePaths:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    check-cast v8, Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v8}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCacheFileSizeByFilePath(Ljava/lang/String;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v9

    .line 62
    cmp-long v11, v9, v5

    .line 63
    .line 64
    if-nez v11, :cond_1

    .line 65
    .line 66
    invoke-static {v7, v8, v1, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->getMissReason(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v11

    .line 70
    long-to-int v11, v11

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move v11, v7

    .line 73
    :goto_1
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Landroid/os/Handler;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    if-eqz v12, :cond_2

    .line 78
    .line 79
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Landroid/os/Handler;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Landroid/os/Handler;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    long-to-int v9, v9

    .line 88
    invoke-static {v13, v4, v9, v11, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-virtual {v12, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    .line 94
    .line 95
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    iget-object v3, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MDLCacheSizeRunnable;->temKeys:Ljava/util/ArrayList;

    .line 99
    .line 100
    if-eqz v3, :cond_6

    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-lez v3, :cond_6

    .line 107
    .line 108
    move v3, v7

    .line 109
    :goto_2
    iget-object v8, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MDLCacheSizeRunnable;->temKeys:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-ge v3, v8, :cond_6

    .line 116
    .line 117
    iget-object v8, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MDLCacheSizeRunnable;->temKeys:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    check-cast v8, Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v8}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCacheFileSize(Ljava/lang/String;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v9

    .line 129
    cmp-long v11, v9, v5

    .line 130
    .line 131
    if-nez v11, :cond_4

    .line 132
    .line 133
    const/4 v11, 0x1

    .line 134
    invoke-static {v11, v8, v1, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->getMissReason(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 135
    .line 136
    .line 137
    move-result-wide v11

    .line 138
    long-to-int v11, v11

    .line 139
    goto :goto_3

    .line 140
    :cond_4
    move v11, v7

    .line 141
    :goto_3
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Landroid/os/Handler;

    .line 142
    .line 143
    .line 144
    move-result-object v12

    .line 145
    if-eqz v12, :cond_5

    .line 146
    .line 147
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Landroid/os/Handler;

    .line 148
    .line 149
    .line 150
    move-result-object v12

    .line 151
    invoke-static {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6400(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Landroid/os/Handler;

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    long-to-int v9, v9

    .line 156
    invoke-static {v13, v4, v9, v11, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    invoke-virtual {v12, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    .line 162
    .line 163
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_6
    :goto_4
    return-void
.end method
