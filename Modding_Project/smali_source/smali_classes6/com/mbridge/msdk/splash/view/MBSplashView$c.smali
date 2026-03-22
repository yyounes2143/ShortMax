.class Lcom/mbridge/msdk/splash/view/MBSplashView$c;
.super Ljava/lang/Object;
.source "MBSplashView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/view/MBSplashView;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/view/MBSplashView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/view/MBSplashView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView$c;->a:Lcom/mbridge/msdk/splash/view/MBSplashView;

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
    .locals 10

    .line 1
    const-string/jumbo v0, "webviewshow"

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/splash/view/MBSplashView;->a()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x2

    .line 16
    :try_start_1
    new-array v5, v4, [I

    .line 17
    .line 18
    iget-object v6, p0, Lcom/mbridge/msdk/splash/view/MBSplashView$c;->a:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 19
    .line 20
    invoke-static {v6}, Lcom/mbridge/msdk/splash/view/MBSplashView;->b(Lcom/mbridge/msdk/splash/view/MBSplashView;)Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/mbridge/msdk/splash/view/MBSplashView;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    new-instance v7, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v8, "coordinate:"

    .line 37
    .line 38
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    aget v8, v5, v3

    .line 42
    .line 43
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v8, "--"

    .line 47
    .line 48
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    aget v8, v5, v2

    .line 52
    .line 53
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-static {v6, v7}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v6, Lorg/json/JSONObject;

    .line 64
    .line 65
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string/jumbo v7, "startX"

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    aget v9, v5, v3

    .line 80
    .line 81
    int-to-float v9, v9

    .line 82
    invoke-static {v8, v9}, Lcom/mbridge/msdk/foundation/tools/u0;->b(Landroid/content/Context;F)I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    const-string/jumbo v7, "startY"

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    aget v5, v5, v2

    .line 101
    .line 102
    int-to-float v5, v5

    .line 103
    invoke-static {v8, v5}, Lcom/mbridge/msdk/foundation/tools/u0;->b(Landroid/content/Context;F)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    goto :goto_0

    .line 115
    :catchall_0
    move-exception v5

    .line 116
    :try_start_2
    invoke-static {}, Lcom/mbridge/msdk/splash/view/MBSplashView;->a()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-static {v6, v7, v5}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    :goto_0
    new-array v5, v4, [I

    .line 128
    .line 129
    iget-object v6, p0, Lcom/mbridge/msdk/splash/view/MBSplashView$c;->a:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 130
    .line 131
    invoke-static {v6}, Lcom/mbridge/msdk/splash/view/MBSplashView;->b(Lcom/mbridge/msdk/splash/view/MBSplashView;)Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 136
    .line 137
    .line 138
    iget-object v6, p0, Lcom/mbridge/msdk/splash/view/MBSplashView$c;->a:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 139
    .line 140
    invoke-static {v6}, Lcom/mbridge/msdk/splash/view/MBSplashView;->b(Lcom/mbridge/msdk/splash/view/MBSplashView;)Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    aget v3, v5, v3

    .line 145
    .line 146
    aget v2, v5, v2

    .line 147
    .line 148
    iget-object v5, p0, Lcom/mbridge/msdk/splash/view/MBSplashView$c;->a:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 149
    .line 150
    invoke-static {v5}, Lcom/mbridge/msdk/splash/view/MBSplashView;->b(Lcom/mbridge/msdk/splash/view/MBSplashView;)Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    iget-object v7, p0, Lcom/mbridge/msdk/splash/view/MBSplashView$c;->a:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 159
    .line 160
    invoke-static {v7}, Lcom/mbridge/msdk/splash/view/MBSplashView;->b(Lcom/mbridge/msdk/splash/view/MBSplashView;)Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    invoke-static {v6, v3, v2, v5, v7}, Lcom/mbridge/msdk/splash/view/MBSplashView;->transInfoForMraid(Landroid/webkit/WebView;IIII)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView$c;->a:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 188
    .line 189
    invoke-static {v3}, Lcom/mbridge/msdk/splash/view/MBSplashView;->b(Lcom/mbridge/msdk/splash/view/MBSplashView;)Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-virtual {v2, v3, v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 199
    .line 200
    .line 201
    :goto_1
    return-void
.end method
