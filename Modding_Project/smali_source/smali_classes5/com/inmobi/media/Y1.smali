.class public abstract Lcom/inmobi/media/Y1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/z5;

.field public b:I

.field public c:Z

.field public d:Z

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/z5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/inmobi/media/Y1;->a:Lcom/inmobi/media/z5;

    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/inmobi/media/Y1;->b:I

    .line 8
    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/inmobi/media/Y1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    return-void
.end method

.method public static final a(Lcom/inmobi/media/Y1;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/inmobi/media/Y1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/webkit/WebView;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Y1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    new-instance v0, Lub/g3;

    invoke-direct {v0, p0}, Lub/g3;-><init>(Lcom/inmobi/media/Y1;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b(Landroid/webkit/WebView;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/inmobi/media/Y1;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v1, v0, :cond_d

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    add-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/inmobi/media/Y1;->b:I

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/media/Y1;->c:Z

    .line 14
    .line 15
    if-nez v0, :cond_d

    .line 16
    .line 17
    new-instance v0, Landroid/os/Handler;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/inmobi/media/G9;

    .line 27
    .line 28
    invoke-direct {v1, p1}, Lcom/inmobi/media/G9;-><init>(Landroid/webkit/WebView;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/inmobi/media/Y1;->c:Z

    .line 36
    .line 37
    instance-of v0, p1, Lcom/inmobi/media/ec;

    .line 38
    .line 39
    if-eqz v0, :cond_d

    .line 40
    .line 41
    check-cast p1, Lcom/inmobi/media/ec;

    .line 42
    .line 43
    iget-object v0, p1, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    .line 44
    .line 45
    const-string v1, "TAG"

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    sget-object v2, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 50
    .line 51
    const-string v3, "sendTelemetryEventForNetworkLoad "

    .line 52
    .line 53
    invoke-static {p1, v2, v1, v3}, Lcom/inmobi/media/Ob;->a(Lcom/inmobi/media/ec;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v0, Lcom/inmobi/media/A5;

    .line 58
    .line 59
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/inmobi/media/ec;->getCreativeId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    const-string v3, "creativeId"

    .line 74
    .line 75
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-virtual {p1}, Lcom/inmobi/media/ec;->getImpressionId()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    const-string v3, "impressionId"

    .line 85
    .line 86
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    :cond_3
    iget-boolean v2, p1, Lcom/inmobi/media/ec;->x0:Z

    .line 90
    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    const/16 v2, 0x8a4

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    const/16 v2, 0x8a3

    .line 97
    .line 98
    :goto_0
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const-string v3, "errorCode"

    .line 103
    .line 104
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    iget-object v2, p1, Lcom/inmobi/media/ec;->h:Lcom/inmobi/media/hc;

    .line 108
    .line 109
    if-eqz v2, :cond_5

    .line 110
    .line 111
    iget-object v2, v2, Lcom/inmobi/media/hc;->i:Lcom/inmobi/media/T0;

    .line 112
    .line 113
    if-eqz v2, :cond_5

    .line 114
    .line 115
    iget-object v2, v2, Lcom/inmobi/media/T0;->a:Lcom/inmobi/media/U0;

    .line 116
    .line 117
    iget-wide v2, v2, Lcom/inmobi/media/U0;->c:J

    .line 118
    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 120
    .line 121
    .line 122
    move-result-wide v4

    .line 123
    sub-long/2addr v4, v2

    .line 124
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    const-string v3, "latency"

    .line 129
    .line 130
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    :cond_5
    iget-object v2, p1, Lcom/inmobi/media/ec;->h:Lcom/inmobi/media/hc;

    .line 134
    .line 135
    if-eqz v2, :cond_6

    .line 136
    .line 137
    iget-object v2, v2, Lcom/inmobi/media/hc;->a:Lcom/inmobi/media/Z;

    .line 138
    .line 139
    if-eqz v2, :cond_6

    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/inmobi/media/Z;->m()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    if-eqz v2, :cond_6

    .line 146
    .line 147
    const-string v3, "plType"

    .line 148
    .line 149
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    :cond_6
    iget-object v2, p1, Lcom/inmobi/media/ec;->h:Lcom/inmobi/media/hc;

    .line 153
    .line 154
    if-eqz v2, :cond_7

    .line 155
    .line 156
    iget-object v2, v2, Lcom/inmobi/media/hc;->e:Ljava/lang/String;

    .line 157
    .line 158
    if-eqz v2, :cond_7

    .line 159
    .line 160
    const-string v3, "creativeType"

    .line 161
    .line 162
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    :cond_7
    iget-object v2, p1, Lcom/inmobi/media/ec;->h:Lcom/inmobi/media/hc;

    .line 166
    .line 167
    if-eqz v2, :cond_8

    .line 168
    .line 169
    iget-object v2, v2, Lcom/inmobi/media/hc;->b:Ljava/lang/String;

    .line 170
    .line 171
    if-eqz v2, :cond_8

    .line 172
    .line 173
    const-string v3, "markupType"

    .line 174
    .line 175
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    :cond_8
    iget-object v2, p1, Lcom/inmobi/media/ec;->h:Lcom/inmobi/media/hc;

    .line 179
    .line 180
    if-eqz v2, :cond_9

    .line 181
    .line 182
    iget-object v2, v2, Lcom/inmobi/media/hc;->a:Lcom/inmobi/media/Z;

    .line 183
    .line 184
    if-eqz v2, :cond_9

    .line 185
    .line 186
    invoke-virtual {v2}, Lcom/inmobi/media/Z;->b()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    if-eqz v2, :cond_9

    .line 191
    .line 192
    const-string v3, "adType"

    .line 193
    .line 194
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    :cond_9
    iget-object v2, p1, Lcom/inmobi/media/ec;->h:Lcom/inmobi/media/hc;

    .line 198
    .line 199
    if-eqz v2, :cond_a

    .line 200
    .line 201
    iget-object v2, v2, Lcom/inmobi/media/hc;->c:Ljava/lang/String;

    .line 202
    .line 203
    if-eqz v2, :cond_a

    .line 204
    .line 205
    const-string v3, "metadataBlob"

    .line 206
    .line 207
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    :cond_a
    iget-object v2, p1, Lcom/inmobi/media/ec;->h:Lcom/inmobi/media/hc;

    .line 211
    .line 212
    if-eqz v2, :cond_b

    .line 213
    .line 214
    iget-boolean v2, v2, Lcom/inmobi/media/hc;->g:Z

    .line 215
    .line 216
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    const-string v3, "isRewarded"

    .line 221
    .line 222
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    :cond_b
    iget-object v2, p1, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    .line 226
    .line 227
    if-eqz v2, :cond_c

    .line 228
    .line 229
    sget-object v3, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 230
    .line 231
    const-string v4, "processTelemetryEvent "

    .line 232
    .line 233
    invoke-static {p1, v3, v1, v4}, Lcom/inmobi/media/Ob;->a(Lcom/inmobi/media/ec;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    check-cast v2, Lcom/inmobi/media/A5;

    .line 238
    .line 239
    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :cond_c
    invoke-virtual {p1}, Lcom/inmobi/media/ec;->getListener()Lcom/inmobi/media/gc;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    const-string v1, "NetworkLoadLimitExceeded"

    .line 247
    .line 248
    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/gc;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 249
    .line 250
    .line 251
    :cond_d
    :goto_1
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/Y1;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/inmobi/media/Y1;->d:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "detail"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v0, 0x1a

    .line 14
    .line 15
    if-ge p2, v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_0
    const-string p2, "BaseWebViewClient"

    .line 20
    .line 21
    const-string v0, "WebView crash detected, destroying ad"

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-static {v1, p2, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 28
    .line 29
    .line 30
    return v1
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Y1;->b(Landroid/webkit/WebView;)V

    .line 4
    iget-object v1, p0, Lcom/inmobi/media/Y1;->a:Lcom/inmobi/media/z5;

    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "<this>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GET"

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "toString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/inmobi/media/qf;->a(Ljava/lang/String;Lcom/inmobi/media/z5;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 9
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Y1;->a:Lcom/inmobi/media/z5;

    invoke-static {p2, v0}, Lcom/inmobi/media/qf;->a(Ljava/lang/String;Lcom/inmobi/media/z5;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :cond_0
    return-object v0
.end method
