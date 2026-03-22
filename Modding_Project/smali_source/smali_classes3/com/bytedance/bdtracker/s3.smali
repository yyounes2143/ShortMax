.class public Lcom/bytedance/bdtracker/s3;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public final g:Lcom/bytedance/bdtracker/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/bdtracker/s3;->g:Lcom/bytedance/bdtracker/d;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/p3;

    .line 7
    .line 8
    sget-object v1, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryUrlPrefix:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v1, v0, Lcom/bytedance/bdtracker/p3;->a:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v0, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryType:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/bytedance/bdtracker/s3;->f:Ljava/lang/String;

    .line 15
    .line 16
    sget-object v0, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryQrParam:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/bytedance/bdtracker/s3;->c:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getDid()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/bytedance/bdtracker/s3;->e:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    const-class v1, Ljava/lang/String;

    .line 28
    .line 29
    const-string v2, "resolution"

    .line 30
    .line 31
    invoke-virtual {p1, v2, v0, v1}, Lcom/bytedance/bdtracker/d;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x0

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    const-string v1, "x"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    aget-object v1, v0, v2

    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iput v1, p0, Lcom/bytedance/bdtracker/s3;->b:I

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    aget-object v0, v0, v1

    .line 60
    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p0, Lcom/bytedance/bdtracker/s3;->a:I

    .line 66
    .line 67
    :cond_0
    iget-object v0, p1, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v1, p1, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 76
    .line 77
    invoke-static {v1, v0, v2}, Lcom/bytedance/bdtracker/u4;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const-string v0, "1.0.0"

    .line 87
    .line 88
    :goto_0
    iput-object v0, p0, Lcom/bytedance/bdtracker/s3;->d:Ljava/lang/String;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 91
    .line 92
    const-string v0, "SimulateLoginTask"

    .line 93
    .line 94
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    new-array v1, v2, [Ljava/lang/Object;

    .line 99
    .line 100
    const-string v2, "Simulate task init success"

    .line 101
    .line 102
    invoke-interface {p1, v0, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public static a(Lcom/bytedance/bdtracker/d;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/bdtracker/s3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/bdtracker/s3;-><init>(Lcom/bytedance/bdtracker/d;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    new-array p0, p0, [Ljava/lang/Void;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "data"

    .line 4
    .line 5
    const-string v3, "sync_id"

    .line 6
    .line 7
    move-object/from16 v0, p1

    .line 8
    .line 9
    check-cast v0, [Ljava/lang/Void;

    .line 10
    .line 11
    sget v0, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryMode:I

    .line 12
    .line 13
    const-string v4, "Login simulator with response:{}"

    .line 14
    .line 15
    const-string v5, "header"

    .line 16
    .line 17
    const-string v6, "device_id"

    .line 18
    .line 19
    const-string v7, "height"

    .line 20
    .line 21
    const-string v8, "width"

    .line 22
    .line 23
    const-string v9, "JSON handle failed"

    .line 24
    .line 25
    const/16 v12, 0xb

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, v1, Lcom/bytedance/bdtracker/s3;->g:Lcom/bytedance/bdtracker/d;

    .line 30
    .line 31
    iget-object v2, v0, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/p3;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v3, v1, Lcom/bytedance/bdtracker/s3;->d:Ljava/lang/String;

    .line 36
    .line 37
    iget v13, v1, Lcom/bytedance/bdtracker/s3;->a:I

    .line 38
    .line 39
    iget v14, v1, Lcom/bytedance/bdtracker/s3;->b:I

    .line 40
    .line 41
    iget-object v15, v1, Lcom/bytedance/bdtracker/s3;->e:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v10, v1, Lcom/bytedance/bdtracker/s3;->c:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v11, v2, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 46
    .line 47
    iget-object v11, v11, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 48
    .line 49
    filled-new-array {v15, v10}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object/from16 v16, v9

    .line 54
    .line 55
    const-string v9, "Start to login simulator with device id:{} and qrParam:{}..."

    .line 56
    .line 57
    invoke-interface {v11, v12, v9, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Lorg/json/JSONObject;

    .line 61
    .line 62
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 63
    .line 64
    .line 65
    :try_start_0
    invoke-static {v0, v3}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0, v8, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v7, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    const-string v0, "qr_param"

    .line 82
    .line 83
    invoke-virtual {v1, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/p3;->a()Ljava/util/HashMap;

    .line 87
    .line 88
    .line 89
    move-result-object v21

    .line 90
    :try_start_1
    new-instance v0, Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, v2, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/bytedance/bdtracker/d;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    .line 95
    .line 96
    .line 97
    move-result-object v17

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    iget-object v5, v2, Lcom/bytedance/bdtracker/p3;->a:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v5, "/simulator/mobile/login"

    .line 109
    .line 110
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v19

    .line 117
    const/16 v23, 0x1

    .line 118
    .line 119
    const v24, 0xea60

    .line 120
    .line 121
    .line 122
    const/16 v18, 0x1

    .line 123
    .line 124
    const/16 v22, 0x0

    .line 125
    .line 126
    move-object/from16 v20, v1

    .line 127
    .line 128
    invoke-interface/range {v17 .. v24}, Lcom/bytedance/applog/network/INetworkClient;->execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v2, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 136
    .line 137
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 138
    .line 139
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-interface {v1, v12, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->c(Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_0

    .line 151
    .line 152
    goto/16 :goto_5

    .line 153
    .line 154
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 155
    .line 156
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    .line 158
    .line 159
    move-object v10, v1

    .line 160
    goto/16 :goto_6

    .line 161
    .line 162
    :catchall_0
    move-exception v0

    .line 163
    iget-object v1, v2, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 164
    .line 165
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 166
    .line 167
    const/4 v2, 0x0

    .line 168
    new-array v2, v2, [Ljava/lang/Object;

    .line 169
    .line 170
    const-string v3, "Login simulator failed"

    .line 171
    .line 172
    invoke-interface {v1, v12, v3, v0, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    :goto_0
    const/4 v10, 0x0

    .line 176
    goto/16 :goto_6

    .line 177
    .line 178
    :catchall_1
    move-exception v0

    .line 179
    iget-object v1, v2, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 180
    .line 181
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 182
    .line 183
    const/4 v2, 0x0

    .line 184
    new-array v2, v2, [Ljava/lang/Object;

    .line 185
    .line 186
    move-object/from16 v9, v16

    .line 187
    .line 188
    invoke-interface {v1, v12, v9, v0, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, v1, Lcom/bytedance/bdtracker/s3;->g:Lcom/bytedance/bdtracker/d;

    .line 193
    .line 194
    iget-object v10, v0, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/p3;

    .line 195
    .line 196
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 197
    .line 198
    iget-object v11, v1, Lcom/bytedance/bdtracker/s3;->d:Ljava/lang/String;

    .line 199
    .line 200
    iget v13, v1, Lcom/bytedance/bdtracker/s3;->a:I

    .line 201
    .line 202
    iget v14, v1, Lcom/bytedance/bdtracker/s3;->b:I

    .line 203
    .line 204
    iget-object v15, v1, Lcom/bytedance/bdtracker/s3;->e:Ljava/lang/String;

    .line 205
    .line 206
    iget-object v12, v10, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 207
    .line 208
    iget-object v12, v12, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 209
    .line 210
    filled-new-array {v15}, [Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    move-object/from16 v17, v9

    .line 215
    .line 216
    const-string v9, "Start to login simulator with device id:{}..."

    .line 217
    .line 218
    move-object/from16 v18, v4

    .line 219
    .line 220
    const/16 v4, 0xb

    .line 221
    .line 222
    invoke-interface {v12, v4, v9, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    new-instance v1, Lorg/json/JSONObject;

    .line 226
    .line 227
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 228
    .line 229
    .line 230
    :try_start_2
    invoke-static {v0, v11}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    iget-object v4, v10, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 235
    .line 236
    invoke-virtual {v4}, Lcom/bytedance/bdtracker/d;->getHeader()Lorg/json/JSONObject;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    invoke-static {v0, v4}, Lcom/bytedance/bdtracker/l0$b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v8, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v7, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v6, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 250
    .line 251
    .line 252
    const-string v4, "device_model"

    .line 253
    .line 254
    :try_start_3
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 260
    .line 261
    .line 262
    invoke-virtual {v10}, Lcom/bytedance/bdtracker/p3;->a()Ljava/util/HashMap;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    const-string v0, ""

    .line 267
    .line 268
    move-object v5, v0

    .line 269
    const/4 v6, 0x0

    .line 270
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-nez v0, :cond_3

    .line 275
    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 277
    .line 278
    .line 279
    move-result-wide v7

    .line 280
    :try_start_4
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    .line 282
    .line 283
    new-instance v9, Ljava/lang/String;

    .line 284
    .line 285
    iget-object v0, v10, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 286
    .line 287
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    .line 288
    .line 289
    .line 290
    move-result-object v19

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .line 295
    .line 296
    iget-object v11, v10, Lcom/bytedance/bdtracker/p3;->a:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v11, "/simulator/limited_mobile/try_link"

    .line 302
    .line 303
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v21

    .line 310
    const/16 v25, 0x1

    .line 311
    .line 312
    const v26, 0xea60

    .line 313
    .line 314
    .line 315
    const/16 v20, 0x1

    .line 316
    .line 317
    const/16 v24, 0x0

    .line 318
    .line 319
    move-object/from16 v22, v1

    .line 320
    .line 321
    move-object/from16 v23, v4

    .line 322
    .line 323
    invoke-interface/range {v19 .. v26}, Lcom/bytedance/applog/network/INetworkClient;->execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 328
    .line 329
    .line 330
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    .line 331
    .line 332
    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    const-string v11, "retry"

    .line 340
    .line 341
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    move-result v6

    .line 345
    if-nez v6, :cond_2

    .line 346
    .line 347
    goto :goto_5

    .line 348
    :cond_2
    const/4 v11, 0x2

    .line 349
    if-ne v6, v11, :cond_4

    .line 350
    .line 351
    move-object v6, v9

    .line 352
    :cond_3
    const/16 v11, 0xb

    .line 353
    .line 354
    goto :goto_4

    .line 355
    :cond_4
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 363
    move-object v5, v0

    .line 364
    move-object v6, v9

    .line 365
    goto :goto_3

    .line 366
    :catchall_2
    move-exception v0

    .line 367
    move-object v6, v9

    .line 368
    goto :goto_2

    .line 369
    :catchall_3
    move-exception v0

    .line 370
    :goto_2
    iget-object v9, v10, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 371
    .line 372
    iget-object v9, v9, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 373
    .line 374
    const/4 v11, 0x0

    .line 375
    new-array v12, v11, [Ljava/lang/Object;

    .line 376
    .line 377
    const-string v11, "Post to simulate login failed"

    .line 378
    .line 379
    const/16 v13, 0xb

    .line 380
    .line 381
    invoke-interface {v9, v13, v11, v0, v12}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 385
    .line 386
    .line 387
    move-result-wide v11

    .line 388
    sub-long/2addr v11, v7

    .line 389
    const-wide/16 v7, 0x3e8

    .line 390
    .line 391
    cmp-long v0, v11, v7

    .line 392
    .line 393
    if-gez v0, :cond_5

    .line 394
    .line 395
    sub-long/2addr v7, v11

    .line 396
    :try_start_6
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 397
    .line 398
    .line 399
    :cond_5
    const/16 v11, 0xb

    .line 400
    .line 401
    goto/16 :goto_1

    .line 402
    .line 403
    :catch_0
    move-exception v0

    .line 404
    move-object v7, v0

    .line 405
    iget-object v0, v10, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 406
    .line 407
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 408
    .line 409
    const/4 v8, 0x0

    .line 410
    new-array v9, v8, [Ljava/lang/Object;

    .line 411
    .line 412
    const-string v8, "Sleep interrupted"

    .line 413
    .line 414
    const/16 v11, 0xb

    .line 415
    .line 416
    invoke-interface {v0, v11, v8, v7, v9}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_1

    .line 420
    .line 421
    :goto_4
    iget-object v0, v10, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 422
    .line 423
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 424
    .line 425
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    move-object/from16 v2, v18

    .line 430
    .line 431
    invoke-interface {v0, v11, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    invoke-static {v6}, Lcom/bytedance/bdtracker/l0$b;->c(Ljava/lang/String;)Z

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    if-eqz v0, :cond_6

    .line 439
    .line 440
    :goto_5
    goto/16 :goto_0

    .line 441
    .line 442
    :cond_6
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    .line 443
    .line 444
    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 445
    .line 446
    .line 447
    move-object v10, v0

    .line 448
    goto :goto_6

    .line 449
    :catchall_4
    move-exception v0

    .line 450
    iget-object v1, v10, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 451
    .line 452
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 453
    .line 454
    const/4 v2, 0x0

    .line 455
    new-array v2, v2, [Ljava/lang/Object;

    .line 456
    .line 457
    move-object/from16 v3, v17

    .line 458
    .line 459
    const/16 v4, 0xb

    .line 460
    .line 461
    invoke-interface {v1, v4, v3, v0, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_0

    .line 465
    .line 466
    :catchall_5
    move-exception v0

    .line 467
    move-object/from16 v3, v17

    .line 468
    .line 469
    iget-object v1, v10, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 470
    .line 471
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 472
    .line 473
    const/4 v2, 0x0

    .line 474
    new-array v2, v2, [Ljava/lang/Object;

    .line 475
    .line 476
    const/16 v4, 0xb

    .line 477
    .line 478
    invoke-interface {v1, v4, v3, v0, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 479
    .line 480
    .line 481
    goto/16 :goto_0

    .line 482
    .line 483
    :goto_6
    return-object v10
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/bdtracker/s3;->g:Lcom/bytedance/bdtracker/d;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 6
    .line 7
    const-string v1, "SimulateLoginTask"

    .line 8
    .line 9
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "Simulate login with response: {}"

    .line 18
    .line 19
    invoke-interface {v0, v2, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/bytedance/bdtracker/s3;->g:Lcom/bytedance/bdtracker/d;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 28
    .line 29
    const-string v1, "Launch event verification failed for server no response"

    .line 30
    .line 31
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_0
    const-string v2, "message"

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v4, "Set-Cookie"

    .line 47
    .line 48
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const-string v5, "status"

    .line 53
    .line 54
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    invoke-static {v4}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_1

    .line 63
    .line 64
    const-string v6, ";"

    .line 65
    .line 66
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-ltz v6, :cond_1

    .line 71
    .line 72
    const/4 v7, 0x0

    .line 73
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    :cond_1
    sget v6, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryMode:I

    .line 78
    .line 79
    const-string v7, "debug_log"

    .line 80
    .line 81
    if-ne v6, v0, :cond_3

    .line 82
    .line 83
    const-string v6, "data"

    .line 84
    .line 85
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    if-eqz v6, :cond_3

    .line 90
    .line 91
    const-string v8, "mode"

    .line 92
    .line 93
    const-string v9, ""

    .line 94
    .line 95
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    const-string v8, "log"

    .line 100
    .line 101
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_2

    .line 106
    .line 107
    move-object v6, v7

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    const-string v6, "bind_query"

    .line 110
    .line 111
    :goto_0
    iput-object v6, p0, Lcom/bytedance/bdtracker/s3;->f:Ljava/lang/String;

    .line 112
    .line 113
    :cond_3
    if-nez v5, :cond_7

    .line 114
    .line 115
    const-string v6, "OK"

    .line 116
    .line 117
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_7

    .line 122
    .line 123
    iget-object p1, p0, Lcom/bytedance/bdtracker/s3;->f:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_4

    .line 130
    .line 131
    iget-object p1, p0, Lcom/bytedance/bdtracker/s3;->g:Lcom/bytedance/bdtracker/d;

    .line 132
    .line 133
    invoke-virtual {p1, v0, v4}, Lcom/bytedance/bdtracker/d;->setRangersEventVerifyEnable(ZLjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_4
    iget-object p1, p0, Lcom/bytedance/bdtracker/s3;->g:Lcom/bytedance/bdtracker/d;

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-eqz p1, :cond_5

    .line 144
    .line 145
    iget-object p1, p0, Lcom/bytedance/bdtracker/s3;->g:Lcom/bytedance/bdtracker/d;

    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getPicker()Lcom/bytedance/applog/IPicker;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-eqz p1, :cond_5

    .line 156
    .line 157
    iget-object p1, p0, Lcom/bytedance/bdtracker/s3;->g:Lcom/bytedance/bdtracker/d;

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getPicker()Lcom/bytedance/applog/IPicker;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    goto :goto_1

    .line 168
    :cond_5
    const/4 p1, 0x0

    .line 169
    :goto_1
    if-eqz p1, :cond_6

    .line 170
    .line 171
    invoke-interface {p1, v4}, Lcom/bytedance/applog/IPicker;->setMarqueeCookie(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_6
    iget-object p1, p0, Lcom/bytedance/bdtracker/s3;->g:Lcom/bytedance/bdtracker/d;

    .line 175
    .line 176
    invoke-virtual {p1, v4}, Lcom/bytedance/bdtracker/d;->startSimulator(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_7
    if-eqz v5, :cond_8

    .line 181
    .line 182
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-static {v3}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-eqz v3, :cond_8

    .line 191
    .line 192
    iget-object v1, p0, Lcom/bytedance/bdtracker/s3;->g:Lcom/bytedance/bdtracker/d;

    .line 193
    .line 194
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 195
    .line 196
    const-string v3, "Launch event verify failed: "

    .line 197
    .line 198
    invoke-static {v3}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_8
    iget-object v0, p0, Lcom/bytedance/bdtracker/s3;->g:Lcom/bytedance/bdtracker/d;

    .line 222
    .line 223
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 224
    .line 225
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    const-string v2, "Start simulator failed, please check server response: {}"

    .line 234
    .line 235
    invoke-interface {v0, v1, v2, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    :goto_2
    return-void
.end method
