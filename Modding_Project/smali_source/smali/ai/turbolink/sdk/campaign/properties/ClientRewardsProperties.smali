.class public final Lai/turbolink/sdk/campaign/properties/ClientRewardsProperties;
.super Ljava/lang/Object;
.source "ClientRewardsProperties.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private rewards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lai/turbolink/sdk/campaign/properties/ClientRewardsProperties;->rewards:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getRewards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/properties/ClientRewardsProperties;->rewards:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final responseDataToProperties(Lorg/json/JSONObject;)V
    .locals 16
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "created_at"

    .line 4
    .line 5
    const-string v2, "hash_id"

    .line 6
    .line 7
    const-string v3, "rewards"

    .line 8
    .line 9
    const-string v4, "responseData"

    .line 10
    .line 11
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-nez v4, :cond_3

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-lez v3, :cond_3

    .line 29
    .line 30
    new-instance v3, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const/4 v5, 0x0

    .line 40
    move v6, v5

    .line 41
    :goto_0
    if-ge v6, v4, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    const-string v8, "kv_data"

    .line 48
    .line 49
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    new-instance v9, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    move v11, v5

    .line 63
    :goto_1
    if-ge v11, v10, :cond_0

    .line 64
    .line 65
    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    new-instance v13, Lai/turbolink/sdk/deeplink/LinkDataProperties;

    .line 70
    .line 71
    invoke-direct {v13}, Lai/turbolink/sdk/deeplink/LinkDataProperties;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v14, "key"

    .line 75
    .line 76
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v14

    .line 80
    const-string v15, "kvData.getString(\"key\")"

    .line 81
    .line 82
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v13, v14}, Lai/turbolink/sdk/deeplink/LinkDataProperties;->setKey(Ljava/lang/String;)Lai/turbolink/sdk/deeplink/LinkDataProperties;

    .line 86
    .line 87
    .line 88
    move-result-object v13

    .line 89
    const-string v14, "value"

    .line 90
    .line 91
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    const-string v14, "kvData.getString(\"value\")"

    .line 96
    .line 97
    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v13, v12}, Lai/turbolink/sdk/deeplink/LinkDataProperties;->setValue(Ljava/lang/String;)Lai/turbolink/sdk/deeplink/LinkDataProperties;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    add-int/lit8 v11, v11, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    move-object/from16 v1, p0

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :catch_1
    move-exception v0

    .line 115
    move-object/from16 v1, p0

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_0
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-eqz v8, :cond_1

    .line 123
    .line 124
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-eqz v8, :cond_1

    .line 129
    .line 130
    new-instance v8, Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;

    .line 131
    .line 132
    invoke-direct {v8}, Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    const-string v11, "rewardsObj.getString(\"hash_id\")"

    .line 140
    .line 141
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8, v10}, Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;->setHashId(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    invoke-virtual {v8, v7}, Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;->setCreateAt(I)Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-virtual {v7, v9}, Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;->setKVData(Ljava/util/List;)Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    .line 163
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_2
    move-object/from16 v1, p0

    .line 167
    .line 168
    :try_start_1
    invoke-virtual {v1, v3}, Lai/turbolink/sdk/campaign/properties/ClientRewardsProperties;->setRewards(Ljava/util/List;)Lai/turbolink/sdk/campaign/properties/ClientRewardsProperties;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :catch_2
    move-exception v0

    .line 173
    goto :goto_2

    .line 174
    :catch_3
    move-exception v0

    .line 175
    goto :goto_3

    .line 176
    :cond_3
    move-object/from16 v1, p0

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v3, "parser request returns occurred exception."

    .line 185
    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto :goto_4

    .line 204
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v3, "The parser request returns occurred exception."

    .line 210
    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :goto_4
    return-void
.end method

.method public final setRewards(Ljava/util/List;)Lai/turbolink/sdk/campaign/properties/ClientRewardsProperties;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;",
            ">;)",
            "Lai/turbolink/sdk/campaign/properties/ClientRewardsProperties;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "rewards"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/properties/ClientRewardsProperties;->rewards:Ljava/util/List;

    .line 7
    .line 8
    return-object p0
.end method
