.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyDrmTokenProcessedListener;
.super Ljava/lang/Object;
.source "TTVideoEngineImpl.java"

# interfaces
.implements Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$IntertrustDrmHelperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyDrmTokenProcessedListener"
.end annotation


# instance fields
.field private final mVideoEngineRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngineImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V
    .locals 1

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
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyDrmTokenProcessedListener;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onError(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyDrmTokenProcessedListener;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

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
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->receivedError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method public onTokenProcessed(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$MyDrmTokenProcessedListener;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-boolean v3, v2, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->mUserStopped:Z

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->receivedError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 22
    .line 23
    .line 24
    :cond_2
    invoke-static {v2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_6

    .line 29
    .line 30
    invoke-static {v2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVType()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    const/4 v3, -0x1

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    sparse-switch v4, :sswitch_data_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :sswitch_0
    const-string v4, "dash"

    .line 51
    .line 52
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    move v3, v1

    .line 60
    goto :goto_0

    .line 61
    :sswitch_1
    const-string v4, "mpd"

    .line 62
    .line 63
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    move v3, v0

    .line 71
    goto :goto_0

    .line 72
    :sswitch_2
    const-string v4, "hls"

    .line 73
    .line 74
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_5

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    const/4 v3, 0x0

    .line 82
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 83
    .line 84
    .line 85
    invoke-static {v2}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v3, "intertrust drm unsupported vtype:"

    .line 95
    .line 96
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-static {v2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$5000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-interface {v3}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVType()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_6
    :pswitch_0
    move v0, v1

    .line 118
    :pswitch_1
    invoke-static {v2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$6900(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-nez p1, :cond_7

    .line 123
    .line 124
    invoke-static {v2}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const-string v0, "mIntertrustDrmHelper is null, return."

    .line 129
    .line 130
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_7
    invoke-static {v2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7000(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Lcom/ss/ttvideoengine/TTVideoEngineImpl$URLInfo;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    iget-object v1, v1, Lcom/ss/ttvideoengine/TTVideoEngineImpl$URLInfo;->hostURL:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {p1, v1, v0}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->makeUrl(Ljava/lang/String;I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_8

    .line 149
    .line 150
    new-instance p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 151
    .line 152
    const-string v0, "kTTVideoErrorDomainIntertrustDRM"

    .line 153
    .line 154
    const/16 v1, -0x26d0

    .line 155
    .line 156
    invoke-direct {p1, v0, v1}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->receivedError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_8
    invoke-static {v2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7100(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)Ljava/util/Map;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v2, p1, v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->access$7200(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Ljava/lang/String;Ljava/util/Map;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :sswitch_data_0
    .sparse-switch
        0x193ef -> :sswitch_2
        0x1a721 -> :sswitch_1
        0x2eef92 -> :sswitch_0
    .end sparse-switch

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
