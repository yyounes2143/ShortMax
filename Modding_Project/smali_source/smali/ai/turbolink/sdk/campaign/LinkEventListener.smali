.class public final Lai/turbolink/sdk/campaign/LinkEventListener;
.super Ljava/lang/Object;
.source "LinkEventListener.kt"


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
    iput-object p1, p0, Lai/turbolink/sdk/campaign/LinkEventListener;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lai/turbolink/sdk/campaign/LinkEventListener;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final postMessage(Ljava/lang/String;)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "campaign_id"

    .line 2
    .line 3
    const-string v1, "message"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "jsonObject.getString(\"campaign_id\")"

    .line 26
    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    move-object v0, v1

    .line 33
    move-object v2, v0

    .line 34
    move-object v3, v2

    .line 35
    move-object v4, v3

    .line 36
    move-object v5, v4

    .line 37
    move-object v6, v5

    .line 38
    move-object v7, v6

    .line 39
    goto/16 :goto_5

    .line 40
    .line 41
    :cond_0
    move-object p1, v1

    .line 42
    :goto_0
    :try_start_1
    const-string v0, "campaign_title"

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v3, "jsonObject.getString(\"campaign_title\")"

    .line 49
    .line 50
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7

    .line 51
    .line 52
    .line 53
    :try_start_2
    const-string v3, "campaign_lang"

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const-string v4, "jsonObject.getString(\"campaign_lang\")"

    .line 60
    .line 61
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_6

    .line 62
    .line 63
    .line 64
    :try_start_3
    const-string v4, "user"

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const-string v5, "jsonObject.getString(\"user\")"

    .line 71
    .line 72
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    .line 73
    .line 74
    .line 75
    :try_start_4
    const-string v5, "arguments"

    .line 76
    .line 77
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    const-string v6, "jsonObject.getString(\"arguments\")"

    .line 82
    .line 83
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 84
    .line 85
    .line 86
    :try_start_5
    const-string v6, "scheme"

    .line 87
    .line 88
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    const-string v7, "jsonObject.getString(\"scheme\")"

    .line 93
    .line 94
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    .line 95
    .line 96
    .line 97
    :try_start_6
    const-string v7, "campaignUrl"

    .line 98
    .line 99
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    const-string v8, "jsonObject.getString(\"campaignUrl\")"

    .line 104
    .line 105
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    .line 106
    .line 107
    .line 108
    :try_start_7
    const-string v8, "additionalParam"

    .line 109
    .line 110
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    const-string v8, "jsonObject.getString(\"additionalParam\")"

    .line 115
    .line 116
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    .line 117
    .line 118
    .line 119
    move-object v1, v2

    .line 120
    goto :goto_6

    .line 121
    :catch_1
    move-exception v2

    .line 122
    :goto_1
    move-object v10, v0

    .line 123
    move-object v0, p1

    .line 124
    move-object p1, v2

    .line 125
    move-object v2, v10

    .line 126
    goto :goto_5

    .line 127
    :catch_2
    move-exception v2

    .line 128
    move-object v7, v1

    .line 129
    goto :goto_1

    .line 130
    :catch_3
    move-exception v2

    .line 131
    move-object v6, v1

    .line 132
    :goto_2
    move-object v7, v6

    .line 133
    goto :goto_1

    .line 134
    :catch_4
    move-exception v2

    .line 135
    move-object v5, v1

    .line 136
    :goto_3
    move-object v6, v5

    .line 137
    goto :goto_2

    .line 138
    :catch_5
    move-exception v2

    .line 139
    move-object v4, v1

    .line 140
    :goto_4
    move-object v5, v4

    .line 141
    goto :goto_3

    .line 142
    :catch_6
    move-exception v2

    .line 143
    move-object v3, v1

    .line 144
    move-object v4, v3

    .line 145
    goto :goto_4

    .line 146
    :catch_7
    move-exception v0

    .line 147
    move-object v2, v1

    .line 148
    move-object v3, v2

    .line 149
    move-object v4, v3

    .line 150
    move-object v5, v4

    .line 151
    move-object v6, v5

    .line 152
    move-object v7, v6

    .line 153
    move-object v10, v0

    .line 154
    move-object v0, p1

    .line 155
    move-object p1, v10

    .line 156
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v9, "Parsing event listener content is occurs exception."

    .line 162
    .line 163
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    move-object p1, v0

    .line 181
    move-object v0, v2

    .line 182
    :goto_6
    sget-object v2, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 183
    .line 184
    const/4 v8, 0x1

    .line 185
    invoke-virtual {v2, v8}, Lai/turbolink/sdk/TurboLink$Companion;->setToggleClickAppEventListenerCallback(Z)V

    .line 186
    .line 187
    .line 188
    new-instance v8, Lai/turbolink/sdk/campaign/properties/ListenerEventProperties;

    .line 189
    .line 190
    invoke-direct {v8}, Lai/turbolink/sdk/campaign/properties/ListenerEventProperties;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8, v5}, Lai/turbolink/sdk/campaign/properties/ListenerEventProperties;->setArguments(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerEventProperties;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    invoke-virtual {v5, p1}, Lai/turbolink/sdk/campaign/properties/ListenerEventProperties;->setCampaignId(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerEventProperties;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p1, v0}, Lai/turbolink/sdk/campaign/properties/ListenerEventProperties;->setCampaignTitle(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerEventProperties;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1, v3}, Lai/turbolink/sdk/campaign/properties/ListenerEventProperties;->setCampaignLang(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerEventProperties;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-virtual {p1, v4}, Lai/turbolink/sdk/campaign/properties/ListenerEventProperties;->setUser(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerEventProperties;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {p1, v6}, Lai/turbolink/sdk/campaign/properties/ListenerEventProperties;->setScheme(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerEventProperties;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1, v7}, Lai/turbolink/sdk/campaign/properties/ListenerEventProperties;->setCampaignUrl(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerEventProperties;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p1, v1}, Lai/turbolink/sdk/campaign/properties/ListenerEventProperties;->setAdditionalParam(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerEventProperties;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {v2}, Lai/turbolink/sdk/TurboLink$Companion;->getEventListenerCallback()Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    if-eqz v0, :cond_1

    .line 230
    .line 231
    iget-object v1, p0, Lai/turbolink/sdk/campaign/LinkEventListener;->context:Landroid/content/Context;

    .line 232
    .line 233
    invoke-interface {v0, v1, p1}, Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;->onSuccess(Landroid/content/Context;Lai/turbolink/sdk/campaign/properties/ListenerEventProperties;)V

    .line 234
    .line 235
    .line 236
    :cond_1
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
    iput-object p1, p0, Lai/turbolink/sdk/campaign/LinkEventListener;->context:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method
