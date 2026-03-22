.class Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$d;
.super Ljava/lang/Object;
.source "MBridgeH5EndCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->webviewshow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$d;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string/jumbo v1, "webviewshow"

    .line 4
    .line 5
    .line 6
    const-string v2, "MBridgeBaseView"

    .line 7
    .line 8
    :try_start_0
    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x0

    .line 13
    :try_start_1
    new-array v5, v3, [I

    .line 14
    .line 15
    iget-object v6, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$d;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 16
    .line 17
    iget-object v6, v6, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->p:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 18
    .line 19
    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 20
    .line 21
    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v7, "coordinate:"

    .line 28
    .line 29
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    aget v7, v5, v4

    .line 33
    .line 34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v7, "--"

    .line 38
    .line 39
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/4 v7, 0x1

    .line 43
    aget v8, v5, v7

    .line 44
    .line 45
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-static {v2, v6}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v6, Lorg/json/JSONObject;

    .line 56
    .line 57
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    if-eqz v8, :cond_0

    .line 69
    .line 70
    const-string/jumbo v9, "startX"

    .line 71
    .line 72
    .line 73
    aget v10, v5, v4

    .line 74
    .line 75
    int-to-float v10, v10

    .line 76
    invoke-static {v8, v10}, Lcom/mbridge/msdk/foundation/tools/u0;->b(Landroid/content/Context;F)I

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    const-string/jumbo v9, "startY"

    .line 84
    .line 85
    .line 86
    aget v5, v5, v7

    .line 87
    .line 88
    int-to-float v5, v5

    .line 89
    invoke-static {v8, v5}, Lcom/mbridge/msdk/foundation/tools/u0;->b(Landroid/content/Context;F)I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    invoke-virtual {v6, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    sget-object v5, Lcom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v8}, Lcom/mbridge/msdk/foundation/tools/u0;->d(Landroid/content/Context;)F

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    float-to-double v7, v7

    .line 103
    invoke-virtual {v6, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v5

    .line 108
    goto :goto_1

    .line 109
    :cond_0
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    goto :goto_2

    .line 114
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-static {v2, v6, v5}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    move-object v2, v0

    .line 122
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    iget-object v5, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$d;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 139
    .line 140
    iget-object v5, v5, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->p:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 141
    .line 142
    invoke-virtual {v3, v5, v1, v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$d;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 146
    .line 147
    iget-object v1, v1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    .line 148
    .line 149
    const/16 v2, 0x6d

    .line 150
    .line 151
    invoke-interface {v1, v2, v0}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$d;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 155
    .line 156
    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->f(Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$d;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->startCounterEndCardShowTimer()V

    .line 162
    .line 163
    .line 164
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$d;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 169
    .line 170
    iget-object v2, v1, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->p:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 171
    .line 172
    const-string v3, "oncutoutfetched"

    .line 173
    .line 174
    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->g(Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v0, v2, v3, v1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$d;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 190
    .line 191
    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->h(Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 197
    .line 198
    .line 199
    :goto_3
    return-void
.end method
