.class public final Lai/turbolink/sdk/campaign/LinkPointsListener;
.super Ljava/lang/Object;
.source "LinkPointsListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lai/turbolink/sdk/campaign/LinkPointsListener;->context:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/LinkPointsListener;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final postMessage(Ljava/lang/String;)V
    .locals 19
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "campaign_id"

    .line 6
    .line 7
    const-string v3, "message"

    .line 8
    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, ""

    .line 13
    .line 14
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v2, "jsonObject.getString(\"campaign_id\")"

    .line 30
    .line 31
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    move-object v2, v0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    move-object v5, v3

    .line 38
    move-object v6, v5

    .line 39
    move-object v7, v6

    .line 40
    move-object v8, v7

    .line 41
    goto :goto_4

    .line 42
    :cond_0
    move-object v2, v3

    .line 43
    :goto_0
    :try_start_1
    const-string v0, "campaign_title"

    .line 44
    .line 45
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const-string v0, "jsonObject.getString(\"campaign_title\")"

    .line 50
    .line 51
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5

    .line 52
    .line 53
    .line 54
    :try_start_2
    const-string v0, "campaign_lang"

    .line 55
    .line 56
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    const-string v0, "jsonObject.getString(\"campaign_lang\")"

    .line 61
    .line 62
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    .line 63
    .line 64
    .line 65
    :try_start_3
    const-string v0, "campaign_url"

    .line 66
    .line 67
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    const-string v0, "jsonObject.getString(\"campaign_url\")"

    .line 72
    .line 73
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 74
    .line 75
    .line 76
    :try_start_4
    const-string v0, "user"

    .line 77
    .line 78
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    const-string v0, "jsonObject.getString(\"user\")"

    .line 83
    .line 84
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 85
    .line 86
    .line 87
    :try_start_5
    const-string v0, "position"

    .line 88
    .line 89
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    .line 93
    goto :goto_5

    .line 94
    :catch_1
    move-exception v0

    .line 95
    :goto_1
    move-object v3, v2

    .line 96
    goto :goto_4

    .line 97
    :catch_2
    move-exception v0

    .line 98
    move-object v8, v3

    .line 99
    goto :goto_1

    .line 100
    :catch_3
    move-exception v0

    .line 101
    move-object v7, v3

    .line 102
    :goto_2
    move-object v8, v7

    .line 103
    goto :goto_1

    .line 104
    :catch_4
    move-exception v0

    .line 105
    move-object v6, v3

    .line 106
    :goto_3
    move-object v7, v6

    .line 107
    goto :goto_2

    .line 108
    :catch_5
    move-exception v0

    .line 109
    move-object v5, v3

    .line 110
    move-object v6, v5

    .line 111
    goto :goto_3

    .line 112
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v4, "Parsing point listener content is occurs exception."

    .line 118
    .line 119
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const/4 v0, 0x0

    .line 137
    move-object v2, v3

    .line 138
    :goto_5
    const/16 v3, 0x3e7

    .line 139
    .line 140
    if-ne v0, v3, :cond_1

    .line 141
    .line 142
    iget-object v3, v1, Lai/turbolink/sdk/campaign/LinkPointsListener;->context:Landroid/content/Context;

    .line 143
    .line 144
    const-string v4, "null cannot be cast to non-null type ai.turbolink.sdk.campaign.CampaignWebviewActivity"

    .line 145
    .line 146
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    check-cast v3, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    .line 150
    .line 151
    invoke-virtual {v3}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->getPageViewBeginTime()J

    .line 152
    .line 153
    .line 154
    move-result-wide v9

    .line 155
    const-wide/16 v11, 0x0

    .line 156
    .line 157
    cmp-long v4, v9, v11

    .line 158
    .line 159
    if-eqz v4, :cond_1

    .line 160
    .line 161
    invoke-virtual {v3}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->getPageViewEndTime()J

    .line 162
    .line 163
    .line 164
    move-result-wide v9

    .line 165
    cmp-long v4, v9, v11

    .line 166
    .line 167
    if-eqz v4, :cond_1

    .line 168
    .line 169
    invoke-virtual {v3}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->getPageViewEndTime()J

    .line 170
    .line 171
    .line 172
    move-result-wide v9

    .line 173
    invoke-virtual {v3}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->getPageViewBeginTime()J

    .line 174
    .line 175
    .line 176
    move-result-wide v11

    .line 177
    sub-long v15, v9, v11

    .line 178
    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 180
    .line 181
    .line 182
    move-result-wide v9

    .line 183
    invoke-virtual {v3}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->getPageViewBeginTime()J

    .line 184
    .line 185
    .line 186
    move-result-wide v11

    .line 187
    sub-long v17, v9, v11

    .line 188
    .line 189
    sget-object v13, Lai/turbolink/sdk/request/campaign/CampaignLaunchTime;->INSTANCE:Lai/turbolink/sdk/request/campaign/CampaignLaunchTime;

    .line 190
    .line 191
    invoke-virtual {v3}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->getCampaignHashId()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v14

    .line 195
    invoke-virtual/range {v13 .. v18}, Lai/turbolink/sdk/request/campaign/CampaignLaunchTime;->launch(Ljava/lang/String;JJ)V

    .line 196
    .line 197
    .line 198
    :cond_1
    new-instance v3, Lai/turbolink/sdk/campaign/properties/ListenerPointProperties;

    .line 199
    .line 200
    invoke-direct {v3}, Lai/turbolink/sdk/campaign/properties/ListenerPointProperties;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v2}, Lai/turbolink/sdk/campaign/properties/ListenerPointProperties;->setCampaignId(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerPointProperties;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v2, v5}, Lai/turbolink/sdk/campaign/properties/ListenerPointProperties;->setCampaignTitle(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerPointProperties;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {v2, v6}, Lai/turbolink/sdk/campaign/properties/ListenerPointProperties;->setCampaignLang(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerPointProperties;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v2, v7}, Lai/turbolink/sdk/campaign/properties/ListenerPointProperties;->setCampaignUrl(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerPointProperties;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v2, v8}, Lai/turbolink/sdk/campaign/properties/ListenerPointProperties;->setUser(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerPointProperties;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v2, v0}, Lai/turbolink/sdk/campaign/properties/ListenerPointProperties;->setPosition(I)Lai/turbolink/sdk/campaign/properties/ListenerPointProperties;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    sget-object v2, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 228
    .line 229
    invoke-virtual {v2}, Lai/turbolink/sdk/TurboLink$Companion;->getPointListenerCallback()Lai/turbolink/sdk/campaign/CampaignBuilder$PointListenerCallback;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    if-eqz v2, :cond_2

    .line 234
    .line 235
    iget-object v3, v1, Lai/turbolink/sdk/campaign/LinkPointsListener;->context:Landroid/content/Context;

    .line 236
    .line 237
    invoke-interface {v2, v3, v0}, Lai/turbolink/sdk/campaign/CampaignBuilder$PointListenerCallback;->onSuccess(Landroid/content/Context;Lai/turbolink/sdk/campaign/properties/ListenerPointProperties;)V

    .line 238
    .line 239
    .line 240
    :cond_2
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/LinkPointsListener;->context:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method
