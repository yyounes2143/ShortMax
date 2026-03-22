.class public Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;
.super Ljava/lang/Object;
.source "FetcherApiHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FetcherApiHelper"


# instance fields
.field private mApiVersion:I

.field private mAuthorization:Ljava/lang/String;

.field private final mCodecType:Ljava/lang/String;

.field private final mDashEnable:Z

.field private final mEncryptEnable:Z

.field private final mHlsEnable:Z

.field private mParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZZLjava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;-><init>(Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;-><init>(Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-boolean p4, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mDashEnable:Z

    .line 6
    iput-boolean p5, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mHlsEnable:Z

    .line 7
    iput-boolean p6, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mEncryptEnable:Z

    .line 8
    iput-object p7, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mCodecType:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mAuthorization:Ljava/lang/String;

    .line 10
    iput p3, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mApiVersion:I

    .line 11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 12
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->getAuthorization(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mAuthorization:Ljava/lang/String;

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "new FetcherApiHelper authorization "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mAuthorization:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "\uff0c apiVersion "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mApiVersion:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "\uff0c mCodecType "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FetcherApiHelper"

    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZLjava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;-><init>(Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;)V

    return-void
.end method

.method private addHostToUrl()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->getHost()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "getHost "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "FetcherApiHelper"

    .line 23
    .line 24
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mAuthorization:Ljava/lang/String;

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mAuthorization:Ljava/lang/String;

    .line 37
    .line 38
    const-string v2, "http"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mAuthorization:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTHelper;->replaceHostInURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mAuthorization:Ljava/lang/String;

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const-string v3, "?"

    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mAuthorization:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    return-object v0

    .line 91
    :cond_3
    const-string v2, "https://"

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mAuthorization:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    return-object v0
.end method

.method private addParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mParams:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mParams:Ljava/util/HashMap;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget v1, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mApiVersion:I

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    const-string v3, "h265"

    .line 23
    .line 24
    if-ne v1, v2, :cond_4

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mHlsEnable:Z

    .line 27
    .line 28
    const-string v2, "format_type"

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const-string v1, "hls"

    .line 33
    .line 34
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-boolean v1, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mDashEnable:Z

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    const-string v1, "dash"

    .line 42
    .line 43
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mCodecType:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    const-string v1, "codec_type"

    .line 55
    .line 56
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-nez p2, :cond_3

    .line 61
    .line 62
    const-string p2, "1"

    .line 63
    .line 64
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :cond_3
    iget-boolean p2, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mEncryptEnable:Z

    .line 68
    .line 69
    if-eqz p2, :cond_6

    .line 70
    .line 71
    const-string/jumbo p2, "stream_type"

    .line 72
    .line 73
    .line 74
    const-string v1, "evideo"

    .line 75
    .line 76
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    const/4 v2, 0x4

    .line 81
    if-ne v1, v2, :cond_6

    .line 82
    .line 83
    const-string v1, "Codec"

    .line 84
    .line 85
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-nez p2, :cond_6

    .line 90
    .line 91
    iget-object p2, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mCodecType:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-eqz p2, :cond_5

    .line 98
    .line 99
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    iget-object p2, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mCodecType:Ljava/lang/String;

    .line 104
    .line 105
    const-string v2, "h266"

    .line 106
    .line 107
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-eqz p2, :cond_6

    .line 112
    .line 113
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    :cond_6
    :goto_1
    const-string p2, "device_type"

    .line 117
    .line 118
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 119
    .line 120
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    const-string p2, "device_platform"

    .line 124
    .line 125
    const-string v1, "android"

    .line 126
    .line 127
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    const-string p2, "aid"

    .line 131
    .line 132
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getAppID()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getDeviceID()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_7

    .line 148
    .line 149
    const-string v1, "device_id"

    .line 150
    .line 151
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    :cond_7
    sget-object p2, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppVersion:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    if-nez p2, :cond_8

    .line 161
    .line 162
    const-string/jumbo p2, "version_code"

    .line 163
    .line 164
    .line 165
    sget-object v1, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppVersion:Ljava/lang/String;

    .line 166
    .line 167
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_9

    .line 188
    .line 189
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Ljava/util/Map$Entry;

    .line 194
    .line 195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    const-string v1, "&%s=%s"

    .line 208
    .line 209
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_9
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    return-object p1
.end method

.method private getAuthorization(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAuthorization "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FetcherApiHelper"

    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTHelper;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    const-string p1, "getAuthorization result null"

    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    const-string v0, ""

    .line 7
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v3, "GetPlayInfoToken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object p1, v3

    .line 10
    :cond_1
    const-string v3, "TokenVersion"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "V2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    .line 12
    iput v2, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mApiVersion:I

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    .line 13
    iput v2, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mApiVersion:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 14
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthorization result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private getHost()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mOpenApiHostName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mOpenApiHostName:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getUseHostSelect()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x2

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget v0, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mApiVersion:I

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    invoke-static {}, Lcom/ss/ttvideoengine/net/ChannelSelect;->getInstance()Lcom/ss/ttvideoengine/net/ChannelSelect;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getTopHostArray()Lorg/json/JSONArray;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttvideoengine/net/ChannelSelect;->setHostList(ILorg/json/JSONArray;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Lcom/ss/ttvideoengine/net/ChannelSelect;->getInstance()Lcom/ss/ttvideoengine/net/ChannelSelect;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v2, 0x4

    .line 40
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getTopHostArrayV2()Lorg/json/JSONArray;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v0, v2, v3}, Lcom/ss/ttvideoengine/net/ChannelSelect;->setHostList(ILorg/json/JSONArray;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-static {}, Lcom/ss/ttvideoengine/net/ChannelSelect;->getInstance()Lcom/ss/ttvideoengine/net/ChannelSelect;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget v2, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mApiVersion:I

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-virtual {v0, v2, v3}, Lcom/ss/ttvideoengine/net/ChannelSelect;->selectNext(ILjava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_2
    iget v0, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mApiVersion:I

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    if-ne v0, v1, :cond_4

    .line 69
    .line 70
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getTopHostArray()Lorg/json/JSONArray;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTHelper;->isEmpty(Lorg/json/JSONArray;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_3

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    instance-of v1, v0, Ljava/lang/String;

    .line 85
    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    check-cast v0, Ljava/lang/String;

    .line 89
    .line 90
    return-object v0

    .line 91
    :cond_3
    invoke-static {}, Lcom/ss/ttvideoengine/AppInfo;->getDefaultVodTopHost()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0

    .line 96
    :cond_4
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getTopHostArrayV2()Lorg/json/JSONArray;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTHelper;->isEmpty(Lorg/json/JSONArray;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_5

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    instance-of v1, v0, Ljava/lang/String;

    .line 111
    .line 112
    if-eqz v1, :cond_5

    .line 113
    .line 114
    check-cast v0, Ljava/lang/String;

    .line 115
    .line 116
    return-object v0

    .line 117
    :cond_5
    invoke-static {}, Lcom/ss/ttvideoengine/AppInfo;->getDefaultVodTopHostV2()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0
.end method


# virtual methods
.method public getAPIString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mAuthorization:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "FetcherApiHelper"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "getAPIString null"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    return-object v0

    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->addHostToUrl()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v2, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mAuthorization:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {p0, v0, v2}, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->addParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v3, "getAPIString "

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method public getApiVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mApiVersion:I

    .line 2
    .line 3
    return v0
.end method

.method public getAuthorization()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mAuthorization:Ljava/lang/String;

    return-object v0
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/ss/ttvideoengine/fetcher/FetcherApiHelper;->mParams:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method
