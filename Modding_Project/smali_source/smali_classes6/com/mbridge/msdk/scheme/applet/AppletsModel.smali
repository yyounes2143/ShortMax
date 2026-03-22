.class public Lcom/mbridge/msdk/scheme/applet/AppletsModel;
.super Ljava/lang/Object;
.source "AppletsModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/scheme/applet/AppletsModel$SchemeRequestException;,
        Lcom/mbridge/msdk/scheme/applet/AppletsModel$DefaultAppletSchemeResponse;
    }
.end annotation


# static fields
.field private static final DYNAMIC_VIEW_WX_IS_REDIRECT_0:Ljava/lang/String; = "0"

.field private static final DYNAMIC_VIEW_WX_IS_REDIRECT_1:Ljava/lang/String; = "1"

.field private static final DYNAMIC_VIEW_WX_QUERY_PARAM_EVENT_CALLBACK:Ljava/lang/String; = "event_callback"

.field private static final DYNAMIC_VIEW_WX_QUERY_PARAM_INSTALL_CALLBACK:Ljava/lang/String; = "install_callback"

.field public static final REQUEST_TYPE_CLICK:I = 0x1

.field public static final REQUEST_TYPE_SHOW:I = 0x0

.field private static TAG:Ljava/lang/String; = "AppletsModel"

.field private static final URL_ENCODE_UTF_8:Ljava/lang/String; = "UTF-8"

.field private static final WX_MINIPROGRAM:Ljava/lang/String; = "wx_miniprogram"

.field private static final WX_SCHEME_REQUEST_ERROR_CODE_44993:I = 0xafc1


# instance fields
.field private volatile appletSchemeCallBack:Lcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;

.field private final campaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private deepLink:Ljava/lang/String;

.field private volatile isRequestSuccess:Z

.field private isRequestTimesMaxPerDay:Z

.field private volatile isRequesting:Z

.field private isSupportWxScheme:Z

.field private isUserClick:Z

.field private lastRequestType:I

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reBuildClickUrl:Ljava/lang/String;

.field private final requestId:Ljava/lang/String;

.field private final unitID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->deepLink:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isRequestSuccess:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isRequestTimesMaxPerDay:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isRequesting:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isSupportWxScheme:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isUserClick:Z

    .line 18
    .line 19
    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->lastRequestType:I

    .line 21
    .line 22
    iput-object p1, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->campaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->unitID:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p3, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->requestId:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/mbridge/msdk/scheme/applet/AppletsModel;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->changeRequestingState(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/mbridge/msdk/scheme/applet/AppletsModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->handlerRequestNetworkError()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/mbridge/msdk/scheme/applet/AppletsModel;Lcom/mbridge/msdk/foundation/same/net/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/scheme/applet/AppletsModel$SchemeRequestException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->handlerSchemeRequestResult(Lcom/mbridge/msdk/foundation/same/net/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/mbridge/msdk/scheme/applet/AppletsModel;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->handlerSchemeRequestFailed(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/mbridge/msdk/scheme/applet/AppletsModel;Lcom/mbridge/msdk/foundation/same/net/exception/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->handlerSchemeRequestNetworkError(Lcom/mbridge/msdk/foundation/same/net/exception/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private changeRequestingState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isRequesting:Z

    .line 2
    .line 3
    return-void
.end method

.method private getAppletsParamsAndBuildRequest(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Ljava/util/Map;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "is_redirect"

    .line 4
    .line 5
    const-string v3, "query"

    .line 6
    .line 7
    const-string v4, "clickid"

    .line 8
    .line 9
    const-string v5, "path"

    .line 10
    .line 11
    const-string v6, "app"

    .line 12
    .line 13
    const-string v7, "create wechat app request param failed "

    .line 14
    .line 15
    new-instance v8, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    return-object v8

    .line 23
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    if-eqz v9, :cond_11

    .line 32
    .line 33
    invoke-virtual {v9}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    goto/16 :goto_c

    .line 40
    .line 41
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v9}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    const/4 v0, 0x0

    .line 55
    move v12, v0

    .line 56
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 60
    const-string v13, "UTF-8"

    .line 61
    .line 62
    const-string v14, "&"

    .line 63
    .line 64
    const-string v15, "="

    .line 65
    .line 66
    const-string v16, ""

    .line 67
    .line 68
    if-eqz v0, :cond_7

    .line 69
    .line 70
    :try_start_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    move-object/from16 p1, v11

    .line 75
    .line 76
    move-object v11, v0

    .line 77
    check-cast v11, Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_2

    .line 84
    .line 85
    const-string/jumbo v0, "wx_miniprogram"

    .line 86
    .line 87
    .line 88
    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    :cond_2
    move-object/from16 v17, v2

    .line 95
    .line 96
    move-object/from16 v18, v3

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_3
    :try_start_2
    invoke-virtual {v9, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 103
    :catch_0
    move-object/from16 v1, v16

    .line 104
    .line 105
    :try_start_3
    const-string v0, "event_callback"

    .line 106
    .line 107
    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_4

    .line 112
    .line 113
    const-string v0, "install_callback"

    .line 114
    .line 115
    invoke-static {v11, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :catch_1
    move-exception v0

    .line 123
    move-object/from16 v1, p0

    .line 124
    .line 125
    goto/16 :goto_d

    .line 126
    .line 127
    :cond_4
    :goto_1
    :try_start_4
    invoke-static {v1, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 131
    :cond_5
    move-object/from16 v17, v2

    .line 132
    .line 133
    move-object/from16 v18, v3

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :catch_2
    move-exception v0

    .line 137
    move-object v13, v0

    .line 138
    :try_start_5
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 139
    .line 140
    if-eqz v0, :cond_5

    .line 141
    .line 142
    sget-object v0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->TAG:Ljava/lang/String;

    .line 143
    .line 144
    move-object/from16 v17, v2

    .line 145
    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    move-object/from16 v18, v3

    .line 152
    .line 153
    const-string v3, "encode url for "

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v3, " failed"

    .line 162
    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-static {v0, v2, v13}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    .line 172
    .line 173
    :goto_2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v9}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-ge v12, v0, :cond_6

    .line 191
    .line 192
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 193
    .line 194
    .line 195
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 196
    .line 197
    :goto_3
    move-object/from16 v1, p0

    .line 198
    .line 199
    move-object/from16 v11, p1

    .line 200
    .line 201
    move-object/from16 v2, v17

    .line 202
    .line 203
    move-object/from16 v3, v18

    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_7
    move-object/from16 v17, v2

    .line 208
    .line 209
    move-object/from16 v18, v3

    .line 210
    .line 211
    :try_start_6
    invoke-virtual {v9, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 215
    if-nez v0, :cond_9

    .line 216
    .line 217
    :cond_8
    :goto_4
    move-object/from16 v1, v16

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_9
    move-object v1, v0

    .line 221
    goto :goto_5

    .line 222
    :catch_3
    move-exception v0

    .line 223
    move-object v1, v0

    .line 224
    :try_start_7
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 225
    .line 226
    if-eqz v0, :cond_8

    .line 227
    .line 228
    sget-object v0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->TAG:Ljava/lang/String;

    .line 229
    .line 230
    invoke-static {v0, v7, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :goto_5
    invoke-interface {v8, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 235
    .line 236
    .line 237
    :try_start_8
    invoke-virtual {v9, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 241
    if-nez v0, :cond_b

    .line 242
    .line 243
    :cond_a
    :goto_6
    move-object/from16 v2, v16

    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_b
    move-object v2, v0

    .line 247
    goto :goto_7

    .line 248
    :catch_4
    move-exception v0

    .line 249
    move-object v2, v0

    .line 250
    :try_start_9
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 251
    .line 252
    if-eqz v0, :cond_a

    .line 253
    .line 254
    sget-object v0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->TAG:Ljava/lang/String;

    .line 255
    .line 256
    invoke-static {v0, v7, v2}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    .line 258
    .line 259
    goto :goto_6

    .line 260
    :goto_7
    invoke-interface {v8, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 261
    .line 262
    .line 263
    :try_start_a
    invoke-virtual {v9, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 267
    if-nez v0, :cond_d

    .line 268
    .line 269
    :cond_c
    :goto_8
    move-object/from16 v3, v16

    .line 270
    .line 271
    goto :goto_9

    .line 272
    :cond_d
    move-object v3, v0

    .line 273
    goto :goto_9

    .line 274
    :catch_5
    move-exception v0

    .line 275
    move-object v3, v0

    .line 276
    :try_start_b
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 277
    .line 278
    if-eqz v0, :cond_c

    .line 279
    .line 280
    sget-object v0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->TAG:Ljava/lang/String;

    .line 281
    .line 282
    invoke-static {v0, v7, v3}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    .line 284
    .line 285
    goto :goto_8

    .line 286
    :goto_9
    invoke-interface {v8, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 287
    .line 288
    .line 289
    :try_start_c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-static {v0, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 297
    if-nez v0, :cond_f

    .line 298
    .line 299
    :cond_e
    :goto_a
    move-object/from16 v0, v16

    .line 300
    .line 301
    :cond_f
    move-object/from16 v9, v18

    .line 302
    .line 303
    goto :goto_b

    .line 304
    :catch_6
    move-exception v0

    .line 305
    :try_start_d
    sget-boolean v9, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 306
    .line 307
    if-eqz v9, :cond_e

    .line 308
    .line 309
    sget-object v9, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->TAG:Ljava/lang/String;

    .line 310
    .line 311
    invoke-static {v9, v7, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    .line 313
    .line 314
    goto :goto_a

    .line 315
    :goto_b
    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    const-string v10, "0"

    .line 319
    .line 320
    move-object/from16 v11, v17

    .line 321
    .line 322
    invoke-interface {v8, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    sget-boolean v10, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 326
    .line 327
    if-eqz v10, :cond_10

    .line 328
    .line 329
    sget-object v10, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->TAG:Ljava/lang/String;

    .line 330
    .line 331
    new-instance v12, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .line 335
    .line 336
    const-string v13, "query: "

    .line 337
    .line 338
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v12

    .line 348
    invoke-static {v10, v12}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    :cond_10
    new-instance v10, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    const-string v0, "1"

    .line 411
    .line 412
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 419
    move-object/from16 v1, p0

    .line 420
    .line 421
    :try_start_e
    invoke-direct {v1, v0}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->reCreateClickUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    iput-object v0, v1, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->reBuildClickUrl:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 426
    .line 427
    goto :goto_e

    .line 428
    :catch_7
    move-exception v0

    .line 429
    goto :goto_d

    .line 430
    :cond_11
    :goto_c
    return-object v8

    .line 431
    :goto_d
    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 432
    .line 433
    if-eqz v2, :cond_12

    .line 434
    .line 435
    sget-object v2, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->TAG:Ljava/lang/String;

    .line 436
    .line 437
    invoke-static {v2, v7, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 438
    .line 439
    .line 440
    :cond_12
    :goto_e
    return-object v8
.end method

.method private handlerRequestNetworkError()V
    .locals 4

    .line 1
    const-string v0, "response or result is null"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->appletSchemeCallBack:Lcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    sget-object v1, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, "handlerRequestNetworkError response or result is null"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->appletSchemeCallBack:Lcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->reBuildClickUrl:Ljava/lang/String;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-interface {v1, v3, v0, v2}, Lcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;->onNetworkError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    sget-object v2, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    const-string v3, "handler request network error exception "

    .line 36
    .line 37
    invoke-static {v2, v3, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->unitID:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->requestId:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v1, v0, v2, v3}, Lcom/mbridge/msdk/scheme/report/AppletsReport;->reportAppletsLoadState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private handlerSchemeRequestFailed(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->appletSchemeCallBack:Lcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    filled-new-array {v1, p2}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "handlerSchemeRequestFailed network error by code %s and %s"

    .line 21
    .line 22
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->appletSchemeCallBack:Lcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->reBuildClickUrl:Ljava/lang/String;

    .line 32
    .line 33
    invoke-interface {v0, p1, p2, v1}, Lcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;->onAppletSchemeRequestFailed(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    sget-object v1, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    const-string v2, "handler wx scheme failed exception  "

    .line 45
    .line 46
    invoke-static {v1, v2, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string p2, "network error by code %s and %s"

    .line 66
    .line 67
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object p2, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->unitID:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->requestId:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v0, p1, p2, v1}, Lcom/mbridge/msdk/scheme/report/AppletsReport;->reportAppletsLoadState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private handlerSchemeRequestNetworkError(Lcom/mbridge/msdk/foundation/same/net/exception/a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->appletSchemeCallBack:Lcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget v0, p1, Lcom/mbridge/msdk/foundation/same/net/exception/a;->a:I

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/16 v1, 0xa

    .line 15
    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    .line 18
    const-string p1, "request timeout"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, -0x1

    .line 22
    const-string/jumbo p1, "unKnown"

    .line 23
    .line 24
    .line 25
    :cond_2
    :goto_0
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    sget-object v1, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "handlerSchemeRequestNetworkError network error by code %s and %s"

    .line 40
    .line 41
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->appletSchemeCallBack:Lcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v3, "network error: "

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->reBuildClickUrl:Ljava/lang/String;

    .line 68
    .line 69
    invoke-interface {v1, v0, v2, v3}, Lcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;->onNetworkError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception v1

    .line 74
    sget-boolean v2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 75
    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    sget-object v2, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->TAG:Ljava/lang/String;

    .line 79
    .line 80
    const-string v3, "handler wx scheme network error exception "

    .line 81
    .line 82
    invoke-static {v2, v3, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const-string v0, "network error by code %s and %s"

    .line 102
    .line 103
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->unitID:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v2, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->requestId:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v1, p1, v0, v2}, Lcom/mbridge/msdk/scheme/report/AppletsReport;->reportAppletsLoadState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method private handlerSchemeRequestResult(Lcom/mbridge/msdk/foundation/same/net/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/foundation/same/net/e<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/scheme/applet/AppletsModel$SchemeRequestException;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/mbridge/msdk/foundation/same/net/e;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lorg/json/JSONObject;

    .line 4
    .line 5
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "result: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "AppletsModel"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    const-string/jumbo v0, "wx_scheme"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x1

    .line 43
    const-string v3, ""

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    iput-boolean v2, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isRequestSuccess:Z

    .line 58
    .line 59
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->handlerSchemeRequestSuccess(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    new-instance p1, Lcom/mbridge/msdk/scheme/applet/AppletsModel$SchemeRequestException;

    .line 64
    .line 65
    const-string/jumbo v0, "wx_scheme value is null"

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, v0}, Lcom/mbridge/msdk/scheme/applet/AppletsModel$SchemeRequestException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_2
    const-string v0, "error_code"

    .line 73
    .line 74
    const/4 v1, -0x1

    .line 75
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const-string v1, "error_msg"

    .line 80
    .line 81
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const v1, 0xafc1

    .line 86
    .line 87
    .line 88
    if-ne v0, v1, :cond_3

    .line 89
    .line 90
    iput-boolean v2, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isRequestTimesMaxPerDay:Z

    .line 91
    .line 92
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->handlerSchemeRequestFailed(ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :goto_0
    return-void
.end method

.method private handlerSchemeRequestStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->appletSchemeCallBack:Lcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->appletSchemeCallBack:Lcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;->onAppletSchemeRequestStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    sget-object v1, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "handler wx scheme start exception "

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->unitID:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->requestId:Ljava/lang/String;

    .line 35
    .line 36
    const-string/jumbo v3, "start load wx scheme"

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v3, v1, v2}, Lcom/mbridge/msdk/scheme/report/AppletsReport;->reportAppletsLoadState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private handlerSchemeRequestSuccess(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->appletSchemeCallBack:Lcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "handlerSchemeRequestSuccess: "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :try_start_0
    iput-object p1, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->deepLink:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->appletSchemeCallBack:Lcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;

    .line 35
    .line 36
    invoke-interface {v0, p1}, Lcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;->onAppletSchemeRequestSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    sget-object v0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    const-string v1, "handler wx scheme success exception "

    .line 48
    .line 49
    invoke-static {v0, v1, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->unitID:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->requestId:Ljava/lang/String;

    .line 63
    .line 64
    const-string v2, "request wx scheme success"

    .line 65
    .line 66
    invoke-static {p1, v2, v0, v1}, Lcom/mbridge/msdk/scheme/report/AppletsReport;->reportAppletsLoadState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private isCanRequestByClickUrl(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->campaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const-string/jumbo v2, "wx_miniprogram"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/b1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    sget-object v1, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    const-string v2, "query wx_miniprogram from click url exception "

    .line 38
    .line 39
    invoke-static {v1, v2, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_0
    return v0
.end method

.method private isCanRequestByLinkType()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->campaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

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
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLinkType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    const/16 v2, 0x9

    .line 16
    .line 17
    if-ne v0, v2, :cond_2

    .line 18
    .line 19
    :cond_1
    const/4 v1, 0x1

    .line 20
    :cond_2
    return v1
.end method

.method private isCanRequestByTemplateUrl(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->campaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "reqwxurl"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/b1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    sget-object v1, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string v2, "query reqwxurl from template url exception "

    .line 47
    .line 48
    invoke-static {v1, v2, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    return v0
.end method

.method private reCreateClickUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v1, v1, Lcom/mbridge/msdk/foundation/same/net/utils/d;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "?"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method


# virtual methods
.method public can(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isRequesting()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->canRequestWxScheme(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    iget v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->lastRequestType:I

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    const/4 v3, 0x1

    .line 20
    if-ne v0, v2, :cond_2

    .line 21
    .line 22
    return v3

    .line 23
    :cond_2
    invoke-virtual {p0}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isRequestSuccess()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    return v1

    .line 30
    :cond_3
    iget v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->lastRequestType:I

    .line 31
    .line 32
    if-nez v0, :cond_4

    .line 33
    .line 34
    if-eq p1, v3, :cond_5

    .line 35
    .line 36
    :cond_4
    if-ne v0, v3, :cond_6

    .line 37
    .line 38
    if-ne p1, v3, :cond_6

    .line 39
    .line 40
    iget-boolean p1, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isUserClick:Z

    .line 41
    .line 42
    if-eqz p1, :cond_6

    .line 43
    .line 44
    :cond_5
    move v1, v3

    .line 45
    :cond_6
    return v1
.end method

.method public canRequestWxScheme(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isSupportWxScheme()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    if-eqz p1, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move v1, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_2
    const-string p1, "2"

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isCanRequestByTemplateUrl(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_0
    return v1
.end method

.method public clearRequestState()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isRequestSuccess:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isRequesting:Z

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->appletSchemeCallBack:Lcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;

    .line 8
    .line 9
    return-void
.end method

.method public getDeepLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->deepLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReBuildClickUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->reBuildClickUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isRequestSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isRequestSuccess:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRequestTimesMaxPerDay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isRequestTimesMaxPerDay:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRequesting()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isRequesting:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSupportWxScheme()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isSupportWxScheme:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "1"

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isCanRequestByClickUrl(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isCanRequestByLinkType()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iput-boolean v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isSupportWxScheme:Z

    .line 23
    .line 24
    :cond_1
    iget-boolean v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isSupportWxScheme:Z

    .line 25
    .line 26
    return v0
.end method

.method public requestWxAppletsScheme(ILcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->campaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->unitID:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    sget-object v0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string/jumbo v1, "start request wx scheme"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isRequesting:Z

    .line 28
    .line 29
    if-eqz p2, :cond_2

    .line 30
    .line 31
    iput-object p2, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->appletSchemeCallBack:Lcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;

    .line 32
    .line 33
    :cond_2
    invoke-direct {p0}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->handlerSchemeRequestStart()V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lcom/mbridge/msdk/scheme/request/AppletSchemeRequest;

    .line 37
    .line 38
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {v1, p2}, Lcom/mbridge/msdk/scheme/request/AppletSchemeRequest;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->params:Ljava/util/Map;

    .line 50
    .line 51
    if-nez p2, :cond_3

    .line 52
    .line 53
    iget-object p2, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->campaignEx:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 54
    .line 55
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->getAppletsParamsAndBuildRequest(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iput-object p2, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->params:Ljava/util/Map;

    .line 60
    .line 61
    :cond_3
    iget-object p2, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->params:Ljava/util/Map;

    .line 62
    .line 63
    if-nez p2, :cond_4

    .line 64
    .line 65
    return-void

    .line 66
    :cond_4
    invoke-virtual {p0}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isRequestTimesMaxPerDay()Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_5

    .line 71
    .line 72
    const p1, 0xafc1

    .line 73
    .line 74
    .line 75
    const-string p2, "get wxscheme failed : request times is max"

    .line 76
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->handlerSchemeRequestFailed(ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_5
    iput p1, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->lastRequestType:I

    .line 82
    .line 83
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object v3, p1, Lcom/mbridge/msdk/foundation/same/net/utils/d;->b:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v4, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->params:Ljava/util/Map;

    .line 90
    .line 91
    new-instance v5, Lcom/mbridge/msdk/scheme/applet/AppletsModel$DefaultAppletSchemeResponse;

    .line 92
    .line 93
    invoke-direct {v5, p0}, Lcom/mbridge/msdk/scheme/applet/AppletsModel$DefaultAppletSchemeResponse;-><init>(Lcom/mbridge/msdk/scheme/applet/AppletsModel;)V

    .line 94
    .line 95
    .line 96
    const-string v6, "applets_model"

    .line 97
    .line 98
    const-wide/32 v7, 0xea60

    .line 99
    .line 100
    .line 101
    const/4 v2, 0x1

    .line 102
    invoke-virtual/range {v1 .. v8}, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->get(ILjava/lang/String;Ljava/util/Map;Lcom/mbridge/msdk/foundation/same/net/b;Ljava/lang/String;J)V

    .line 103
    .line 104
    .line 105
    :cond_6
    :goto_0
    return-void
.end method

.method public setAppletSchemeCallBack(Lcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->appletSchemeCallBack:Lcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;

    .line 2
    .line 3
    return-void
.end method

.method public setRequestingFinish()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isRequesting:Z

    .line 3
    .line 4
    return-void
.end method

.method public setUserClick(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/scheme/applet/AppletsModel;->isUserClick:Z

    .line 2
    .line 3
    return-void
.end method
