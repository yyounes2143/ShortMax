.class public Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;
.super Ljava/lang/Object;
.source "SubInfoFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$FetcherListener;,
        Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$MyHandler;
    }
.end annotation


# static fields
.field private static final KEY_CODE:Ljava/lang/String; = "code"

.field private static final KEY_LOGID:Ljava/lang/String; = "trace_id"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final MSG_IS_ERROR:I = 0x1

.field private static final MSG_IS_SUCCESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SubInfoFetcher"


# instance fields
.field private mCancelled:Z

.field private mContext:Landroid/content/Context;

.field private mErrorCode:I

.field private mHandler:Landroid/os/Handler;

.field private mHost:Ljava/lang/String;

.field private mListener:Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$FetcherListener;

.field private mMaxRetryCount:I

.field private mNetworkSession:Lcom/ss/ttvideoengine/net/TTVNetClient;

.field private mRetryIndex:I

.field private mSubApiString:Ljava/lang/String;

.field private mTriedHost:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ss/ttvideoengine/net/TTVNetClient;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mCancelled:Z

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    iput-object v1, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mSubApiString:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mErrorCode:I

    .line 13
    .line 14
    iput v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mRetryIndex:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mMaxRetryCount:I

    .line 18
    .line 19
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    new-instance p1, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$MyHandler;

    .line 22
    .line 23
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTHelper;->getLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p1, p0, v0}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$MyHandler;-><init>(Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;Landroid/os/Looper;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    new-instance p1, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    .line 35
    .line 36
    invoke-direct {p1}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mNetworkSession:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iput-object p2, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mNetworkSession:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 43
    .line 44
    :goto_0
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getApiRetryCount()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mMaxRetryCount:I

    .line 49
    .line 50
    new-instance p1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mTriedHost:Ljava/util/ArrayList;

    .line 56
    .line 57
    return-void
.end method

.method private _beginToFetch(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mNetworkSession:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 2
    .line 3
    new-instance v1, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$1;-><init>(Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttvideoengine/net/TTVNetClient;->startTask(Ljava/lang/String;Lcom/ss/ttvideoengine/net/TTVNetClient$CompletionListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private _fetchInfoInternal()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mSubApiString:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/ss/ttvideoengine/utils/Error;

    .line 10
    .line 11
    const/16 v1, -0x26ca

    .line 12
    .line 13
    const-string/jumbo v2, "sub ApiString empty"

    .line 14
    .line 15
    .line 16
    const-string v3, "kTTVideoErrorDomainSubFetchingInfo"

    .line 17
    .line 18
    invoke-direct {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->_notifyError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mTriedHost:Ljava/util/ArrayList;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mHost:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mTriedHost:Ljava/util/ArrayList;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mHost:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mSubApiString:Ljava/lang/String;

    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->_beginToFetch(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private _getInfoSuccess(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mCancelled:Z

    .line 3
    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    const-string v0, "SubInfoFetcher"

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v2, "sub jsonObject:"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v0, "ResponseMetadata"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/16 v1, -0x26cb

    .line 44
    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    const-string v0, "ResponseMetadata"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    const-string p1, "SubInfoFetcher"

    .line 56
    .line 57
    const-string v0, "_getSubInfoSuccess metadata is null"

    .line 58
    .line 59
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 63
    .line 64
    const-string v0, "kTTVideoErrorDomainSubFetchingInfo"

    .line 65
    .line 66
    const-string v2, "fetched info ResponseMetadata is empty"

    .line 67
    .line 68
    invoke-direct {p1, v0, v1, v2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->_notifyError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 72
    .line 73
    .line 74
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto/16 :goto_3

    .line 78
    .line 79
    :cond_1
    const-string v2, "Error"

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v1, " RequestId:"

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, "RequestId"

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const-string v1, "CodeN"

    .line 118
    .line 119
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_2

    .line 124
    .line 125
    const-string v1, "CodeN"

    .line 126
    .line 127
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    goto :goto_0

    .line 132
    :cond_2
    iget v1, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mErrorCode:I

    .line 133
    .line 134
    :goto_0
    new-instance v2, Lcom/ss/ttvideoengine/utils/Error;

    .line 135
    .line 136
    const-string v3, "kTTVideoErrorDomainSubFetchingInfo"

    .line 137
    .line 138
    const/16 v4, -0x26c9

    .line 139
    .line 140
    invoke-direct {v2, v3, v4, v1, p1}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, v2, Lcom/ss/ttvideoengine/utils/Error;->parameters:Ljava/util/Map;

    .line 144
    .line 145
    const-string v1, "log_id"

    .line 146
    .line 147
    const-string v3, "RequestId"

    .line 148
    .line 149
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    invoke-direct {p0, v2}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->_notifyError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 157
    .line 158
    .line 159
    monitor-exit p0

    .line 160
    return-void

    .line 161
    :cond_3
    const-string v0, "Result"

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    if-nez p1, :cond_4

    .line 168
    .line 169
    new-instance p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 170
    .line 171
    const-string v0, "kTTVideoErrorDomainSubFetchingInfo"

    .line 172
    .line 173
    const-string v2, "fetched info Result is empty"

    .line 174
    .line 175
    invoke-direct {p1, v0, v1, v2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->_notifyError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 179
    .line 180
    .line 181
    monitor-exit p0

    .line 182
    return-void

    .line 183
    :cond_4
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->_extractFields(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->_notifySuccess(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_5
    new-instance p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 192
    .line 193
    const-string v0, "kTTVideoErrorDomainSubFetchingInfo"

    .line 194
    .line 195
    const-string v2, "fetched info ResponseMetadata and Result is empty"

    .line 196
    .line 197
    invoke-direct {p1, v0, v1, v2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->_notifyError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 201
    .line 202
    .line 203
    :goto_1
    monitor-exit p0

    .line 204
    return-void

    .line 205
    :cond_6
    :goto_2
    monitor-exit p0

    .line 206
    return-void

    .line 207
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    throw p1
.end method

.method private _isTriedAllHost()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mTriedHost:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/net/ChannelSelect;->getInstance()Lcom/ss/ttvideoengine/net/ChannelSelect;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v2, 0x4

    .line 12
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/net/ChannelSelect;->groupByApiVersionLocked(I)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mTriedHost:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ne v0, v2, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    :cond_1
    return v1
.end method

.method private _notifyError(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private _notifySuccess(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private _retryIfNeeded(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 5

    .line 1
    const-string v0, "SubInfoFetcher"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "_retryIfNeeded error "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mCancelled:Z

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_0
    iget v0, p1, Lcom/ss/ttvideoengine/utils/Error;->internalCode:I

    .line 34
    .line 35
    const/16 v1, 0x1f6

    .line 36
    .line 37
    if-ne v0, v1, :cond_1

    .line 38
    .line 39
    iget v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mRetryIndex:I

    .line 40
    .line 41
    iget v1, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mMaxRetryCount:I

    .line 42
    .line 43
    if-lt v0, v1, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mSubApiString:Ljava/lang/String;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mHost:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mSubApiString:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mHost:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    add-int/2addr v2, v0

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-direct {p0}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->_isTriedAllHost()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_1

    .line 75
    .line 76
    invoke-static {}, Lcom/ss/ttvideoengine/net/ChannelSelect;->getInstance()Lcom/ss/ttvideoengine/net/ChannelSelect;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget-object v3, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mHost:Ljava/lang/String;

    .line 81
    .line 82
    const/4 v4, 0x4

    .line 83
    invoke-virtual {v2, v4, v3}, Lcom/ss/ttvideoengine/net/ChannelSelect;->selectNext(ILjava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iget-object v3, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mSubApiString:Ljava/lang/String;

    .line 88
    .line 89
    const/4 v4, 0x0

    .line 90
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mSubApiString:Ljava/lang/String;

    .line 113
    .line 114
    iput-object v2, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mHost:Ljava/lang/String;

    .line 115
    .line 116
    const/4 v0, -0x1

    .line 117
    iput v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mRetryIndex:I

    .line 118
    .line 119
    :cond_1
    iget v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mRetryIndex:I

    .line 120
    .line 121
    iget v1, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mMaxRetryCount:I

    .line 122
    .line 123
    if-ge v0, v1, :cond_2

    .line 124
    .line 125
    add-int/lit8 v0, v0, 0x1

    .line 126
    .line 127
    iput v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mRetryIndex:I

    .line 128
    .line 129
    invoke-direct {p0}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->_fetchInfoInternal()V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v1, "<apiStr:"

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mSubApiString:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, ">"

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    iget-object v2, p1, Lcom/ss/ttvideoengine/utils/Error;->description:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iput-object v0, p1, Lcom/ss/ttvideoengine/utils/Error;->description:Ljava/lang/String;

    .line 175
    .line 176
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->_notifyError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 177
    .line 178
    .line 179
    :goto_0
    monitor-exit p0

    .line 180
    return-void

    .line 181
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    throw p1
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;)Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$FetcherListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mListener:Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$FetcherListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mCancelled:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mErrorCode:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->_getInfoSuccess(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->_retryIfNeeded(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public _extractFields(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    .line 7
    .line 8
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "FileSubtitleInfoList"

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-lez v2, :cond_2

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    const-string v3, "SubtitleInfoList"

    .line 38
    .line 39
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-lez v3, :cond_2

    .line 50
    .line 51
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-ge v2, v3, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    new-instance v4, Lorg/json/JSONObject;

    .line 64
    .line 65
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 66
    .line 67
    .line 68
    :try_start_0
    const-string v5, "language"

    .line 69
    .line 70
    const-string v6, "Language"

    .line 71
    .line 72
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    const-string/jumbo v5, "sub_id"

    .line 80
    .line 81
    .line 82
    const-string v6, "SubtitleId"

    .line 83
    .line 84
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    const-string v5, "language_id"

    .line 92
    .line 93
    const-string v6, "LanguageId"

    .line 94
    .line 95
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    const-string v5, "format"

    .line 103
    .line 104
    const-string v6, "Format"

    .line 105
    .line 106
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    .line 112
    .line 113
    const-string/jumbo v5, "source"

    .line 114
    .line 115
    .line 116
    const-string v6, "Source"

    .line 117
    .line 118
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    .line 124
    .line 125
    const-string/jumbo v5, "url"

    .line 126
    .line 127
    .line 128
    const-string v6, "SubtitleUrl"

    .line 129
    .line 130
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    .line 136
    .line 137
    const-string v3, "id"

    .line 138
    .line 139
    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :catch_0
    move-exception v3

    .line 147
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    .line 149
    .line 150
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_2
    :try_start_1
    const-string p1, "list"

    .line 154
    .line 155
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :catch_1
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    return-object p1
.end method

.method public cancel()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mHandler:Landroid/os/Handler;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mListener:Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$FetcherListener;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "fetcher cancelled"

    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$FetcherListener;->onLog(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mCancelled:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mCancelled:Z

    .line 29
    .line 30
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mNetworkSession:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/net/TTVNetClient;->cancel()V

    .line 33
    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v0
.end method

.method public fetchInfo(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mSubApiString:Ljava/lang/String;

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mHost:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->_fetchInfoInternal()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setListener(Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$FetcherListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher;->mListener:Lcom/ss/ttvideoengine/fetcher/SubInfoFetcher$FetcherListener;

    .line 2
    .line 3
    return-void
.end method
