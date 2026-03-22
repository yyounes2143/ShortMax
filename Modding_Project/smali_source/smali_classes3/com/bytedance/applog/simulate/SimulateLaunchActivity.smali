.class public Lcom/bytedance/applog/simulate/SimulateLaunchActivity;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Lcom/bytedance/applog/IPageMeta;


# annotations
.annotation runtime Lcom/bytedance/applog/annotation/PageMeta;
    path = "/simulateLaunch"
    title = "\u5708\u9009/\u57cb\u70b9\u9a8c\u8bc1"
.end annotation


# static fields
.field public static final BIND_QUERY:Ljava/lang/String; = "bind_query"

.field public static final DEBUG_LOG:Ljava/lang/String; = "debug_log"

.field public static final KEY_URL_PREFIX:Ljava/lang/String; = "url_prefix"

.field public static final KEY_URL_PREFIX_NO_QR:Ljava/lang/String; = "url_prefix_no_qr"

.field public static final MODE_NO_QR:I = 0x1

.field public static final MODE_QR:I = 0x0

.field public static entryAppId:Ljava/lang/String; = ""

.field public static entryMode:I = 0x0

.field public static entryQrParam:Ljava/lang/String; = ""

.field public static entryType:Ljava/lang/String; = ""

.field public static entryUrlPrefix:Ljava/lang/String; = ""


# instance fields
.field public a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static startSimulatorWithoutQR(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->startSimulatorWithoutQR(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startSimulatorWithoutQR(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url_prefix_no_qr"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "aid_no_qr"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/bytedance/applog/log/IAppLogLogger;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryAppId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/applog/log/AbstractAppLogLogger;->getLogger(Ljava/lang/String;)Lcom/bytedance/applog/log/IAppLogLogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/bytedance/applog/R$layout;->applog_activity_simulate:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/bytedance/applog/R$id;->text_tip:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/widget/TextView;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->a:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "url_prefix_no_qr"

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    const-string v2, "aid_no_qr"

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    sput v3, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryMode:I

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryUrlPrefix:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    sput-object p1, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryAppId:Ljava/lang/String;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    if-eqz v0, :cond_2

    .line 61
    .line 62
    sput v4, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryMode:I

    .line 63
    .line 64
    const-string p1, "aid"

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    sput-object p1, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryAppId:Ljava/lang/String;

    .line 71
    .line 72
    const-string p1, "qr_param"

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    sput-object p1, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryQrParam:Ljava/lang/String;

    .line 79
    .line 80
    const-string p1, "url_prefix"

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    sput-object p1, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryUrlPrefix:Ljava/lang/String;

    .line 87
    .line 88
    const-string p1, "type"

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    sput-object p1, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryType:Ljava/lang/String;

    .line 95
    .line 96
    const-string v0, "debug_log"

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_1

    .line 103
    .line 104
    iget-object p1, p0, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->a:Landroid/widget/TextView;

    .line 105
    .line 106
    const-string v0, "Launch failed: type parameter mismatch"

    .line 107
    .line 108
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_1
    sget-object p1, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryUrlPrefix:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->c(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_2

    .line 119
    .line 120
    iget-object p1, p0, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->a:Landroid/widget/TextView;

    .line 121
    .line 122
    const-string v0, "Launch failed: url_prefix parameter not provided"

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    :goto_1
    sget-object p1, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryAppId:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {p1}, Lcom/bytedance/applog/AppLogManager;->getInstance(Ljava/lang/String;)Lcom/bytedance/applog/IAppLogInstance;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const-string v0, "SimulateLaunchActivity"

    .line 132
    .line 133
    if-eqz p1, :cond_3

    .line 134
    .line 135
    invoke-interface {p1}, Lcom/bytedance/applog/IAppLogInstance;->hasStarted()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_3

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->a()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    sget-object v5, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryAppId:Ljava/lang/String;

    .line 150
    .line 151
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    const-string v6, "AppLog has started with appId:{}"

    .line 156
    .line 157
    invoke-interface {v1, v2, v6, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    check-cast p1, Lcom/bytedance/bdtracker/d;

    .line 161
    .line 162
    new-instance v1, Lcom/bytedance/bdtracker/s3;

    .line 163
    .line 164
    invoke-direct {v1, p1}, Lcom/bytedance/bdtracker/s3;-><init>(Lcom/bytedance/bdtracker/d;)V

    .line 165
    .line 166
    .line 167
    new-array p1, v4, [Ljava/lang/Void;

    .line 168
    .line 169
    invoke-virtual {v1, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 170
    .line 171
    .line 172
    :cond_3
    const-string p1, "android.app.ActivityThread"

    .line 173
    .line 174
    const/4 v1, 0x0

    .line 175
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    const-string v2, "currentActivityThread"

    .line 180
    .line 181
    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    .line 182
    .line 183
    invoke-virtual {p1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    new-array v5, v4, [Ljava/lang/Object;

    .line 188
    .line 189
    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    const-string v5, "mActivities"

    .line 194
    .line 195
    invoke-virtual {p1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    check-cast p1, Landroid/util/ArrayMap;

    .line 207
    .line 208
    if-eqz p1, :cond_4

    .line 209
    .line 210
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 211
    .line 212
    .line 213
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    if-lez p1, :cond_4

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :catchall_0
    move-exception p1

    .line 218
    goto :goto_3

    .line 219
    :cond_4
    :goto_2
    move v3, v4

    .line 220
    goto :goto_4

    .line 221
    :goto_3
    invoke-virtual {p0}, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->a()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    const-string v5, "Check has activity failed"

    .line 234
    .line 235
    invoke-interface {v2, v3, v5, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    goto :goto_2

    .line 239
    :goto_4
    invoke-virtual {p0}, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->a()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    sget-object v2, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryAppId:Ljava/lang/String;

    .line 248
    .line 249
    sget-object v4, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryUrlPrefix:Ljava/lang/String;

    .line 250
    .line 251
    sget v5, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryMode:I

    .line 252
    .line 253
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    sget-object v6, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryQrParam:Ljava/lang/String;

    .line 258
    .line 259
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    filled-new-array {v2, v4, v5, v6, v7}, [Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    const-string v4, "Simulator onCreate appId: {}, urlPrefix: {}, mode: {}, params: {}, activity exists: {}"

    .line 268
    .line 269
    invoke-interface {p1, v0, v4, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    if-nez v3, :cond_5

    .line 273
    .line 274
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    if-eqz p1, :cond_5

    .line 289
    .line 290
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 294
    .line 295
    .line 296
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 297
    .line 298
    .line 299
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public pageProperties()Lorg/json/JSONObject;
    .locals 4

    .line 1
    const-string v0, "SimulateLaunchActivity"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "class_name"

    .line 9
    .line 10
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object v0

    .line 15
    :catch_0
    move-exception v1

    .line 16
    invoke-virtual {p0}, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->a()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v3, "JSON handle failed"

    .line 29
    .line 30
    invoke-interface {v2, v0, v3, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    return-object v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "/simulateLaunch"

    .line 2
    .line 3
    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\u5708\u9009/\u57cb\u70b9\u9a8c\u8bc1"

    .line 2
    .line 3
    return-object v0
.end method
