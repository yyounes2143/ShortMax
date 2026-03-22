.class Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;
.super Ljava/lang/Object;
.source "SourceRefreshLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FetcherLog"
.end annotation


# static fields
.field static final RESULT_CANCELED:Ljava/lang/String; = "canceled"

.field static final RESULT_ERROR:Ljava/lang/String; = "error"

.field static final RESULT_SUCCESS:Ljava/lang/String; = "success"


# instance fields
.field endT:Ljava/lang/Long;

.field errorCode:Ljava/lang/Integer;

.field errorMsg:Ljava/lang/String;

.field fetchPlaylistEndT:Ljava/lang/Long;

.field fetchPlaylistStartT:Ljava/lang/Long;

.field fetchPlaylistUrlEndT:Ljava/lang/Long;

.field fetchPlaylistUrlStartT:Ljava/lang/Long;

.field index:I

.field playlistRequest:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistRequest;

.field playlistResult:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;

.field playlistUrlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

.field playlistUrlResult:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;

.field result:Ljava/lang/String;

.field startT:Ljava/lang/Long;

.field urlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

.field urlResult:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;


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
.method toJson()Lorg/json/JSONObject;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "index"

    .line 7
    .line 8
    iget v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->index:I

    .line 9
    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    const-string/jumbo v1, "start_t"

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->startT:Ljava/lang/Long;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    const-string v1, "end_t"

    .line 26
    .line 27
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->endT:Ljava/lang/Long;

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    const-string v1, "result"

    .line 33
    .line 34
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->result:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    const-string v1, "error_code"

    .line 40
    .line 41
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->errorCode:Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    const-string v1, "error_msg"

    .line 47
    .line 48
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->errorMsg:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->urlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    const-string v2, "raw_key"

    .line 58
    .line 59
    iget-object v1, v1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->vid:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    const-string v1, "file_key"

    .line 65
    .line 66
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->urlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

    .line 67
    .line 68
    iget-object v2, v2, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->cacheKey:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    const-string/jumbo v1, "url"

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->urlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

    .line 77
    .line 78
    iget-object v2, v2, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->url:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->urlResult:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;

    .line 88
    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    iget-object v2, v1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;->urlResult:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;

    .line 92
    .line 93
    if-eqz v2, :cond_1

    .line 94
    .line 95
    const-string v2, "from_cache"

    .line 96
    .line 97
    iget-boolean v1, v1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;->fromCache:Z

    .line 98
    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    const-string v1, "new_url"

    .line 107
    .line 108
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->urlResult:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;

    .line 109
    .line 110
    iget-object v2, v2, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;->urlResult:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;

    .line 111
    .line 112
    iget-object v2, v2, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;->url:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    const-string v1, "new_url_expire_t"

    .line 118
    .line 119
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->urlResult:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;

    .line 120
    .line 121
    iget-object v2, v2, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;->urlResult:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;

    .line 122
    .line 123
    iget-wide v2, v2, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;->expireTimeInMS:J

    .line 124
    .line 125
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    :cond_1
    const-string v1, "fetch_playlist_url_start_t"

    .line 133
    .line 134
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->fetchPlaylistUrlStartT:Ljava/lang/Long;

    .line 135
    .line 136
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    .line 138
    .line 139
    const-string v1, "fetch_playlist_url_end_t"

    .line 140
    .line 141
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->fetchPlaylistUrlEndT:Ljava/lang/Long;

    .line 142
    .line 143
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->playlistUrlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

    .line 147
    .line 148
    if-eqz v1, :cond_2

    .line 149
    .line 150
    const-string v2, "playlist_file_key"

    .line 151
    .line 152
    iget-object v1, v1, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->cacheKey:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    .line 156
    .line 157
    const-string v1, "playlist_url"

    .line 158
    .line 159
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->playlistUrlRequest:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;

    .line 160
    .line 161
    iget-object v2, v2, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlRequest;->url:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    .line 165
    .line 166
    :cond_2
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->playlistUrlResult:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;

    .line 167
    .line 168
    if-eqz v1, :cond_3

    .line 169
    .line 170
    const-string v2, "playlist_url_from_cache"

    .line 171
    .line 172
    iget-boolean v1, v1, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;->fromCache:Z

    .line 173
    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    .line 180
    .line 181
    const-string v1, "playlist_new_url"

    .line 182
    .line 183
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->playlistUrlResult:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;

    .line 184
    .line 185
    iget-object v2, v2, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;->urlResult:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;

    .line 186
    .line 187
    iget-object v2, v2, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;->url:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    .line 191
    .line 192
    const-string v1, "playlist_expire_t"

    .line 193
    .line 194
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->playlistUrlResult:Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;

    .line 195
    .line 196
    iget-object v2, v2, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshFetcher$UrlResultInfo;->urlResult:Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;

    .line 197
    .line 198
    iget-wide v2, v2, Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$UrlResult;->expireTimeInMS:J

    .line 199
    .line 200
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    .line 206
    .line 207
    :cond_3
    const-string v1, "fetch_playlist_start_t"

    .line 208
    .line 209
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->fetchPlaylistStartT:Ljava/lang/Long;

    .line 210
    .line 211
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    .line 213
    .line 214
    const-string v1, "fetch_playlist_end_t"

    .line 215
    .line 216
    iget-object v2, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->fetchPlaylistEndT:Ljava/lang/Long;

    .line 217
    .line 218
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    .line 220
    .line 221
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/refresh/SourceRefreshLogger$FetcherLog;->playlistResult:Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;

    .line 222
    .line 223
    if-eqz v1, :cond_4

    .line 224
    .line 225
    const-string v2, "playlist_from_cache"

    .line 226
    .line 227
    iget-boolean v1, v1, Lcom/ss/ttvideoengine/strategy/refresh/PlaylistFetcher$PlaylistResult;->fromCache:Z

    .line 228
    .line 229
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .line 235
    .line 236
    :cond_4
    return-object v0

    .line 237
    :goto_1
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 238
    .line 239
    .line 240
    const/4 v0, 0x0

    .line 241
    return-object v0
.end method
