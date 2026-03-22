.class public Lcom/bytedance/sdk/openadsdk/core/Ry;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static oJ(Landroid/content/Context;ZLorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILandroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 3
    .line 4
    move-object/from16 v2, p3

    .line 5
    .line 6
    move-object/from16 v4, p4

    .line 7
    .line 8
    move-object/from16 v3, p6

    .line 9
    .line 10
    const-string v5, "landingStyle"

    .line 11
    .line 12
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    const-string v6, "url"

    .line 17
    .line 18
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    const-string v7, "fallback_url"

    .line 23
    .line 24
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    const-string v9, "title"

    .line 29
    .line 30
    const-string v10, ""

    .line 31
    .line 32
    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    const-string v10, "only_loading"

    .line 37
    .line 38
    const/4 v11, 0x0

    .line 39
    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    const/4 v12, 0x1

    .line 44
    if-ne v10, v12, :cond_0

    .line 45
    .line 46
    move v10, v12

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v10, v11

    .line 49
    :goto_0
    :try_start_0
    const-string v13, "is_activity"

    .line 50
    .line 51
    move/from16 v14, p1

    .line 52
    .line 53
    invoke-virtual {v1, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    :catch_0
    invoke-static {v2, v4, v12, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    const/4 v1, 0x2

    .line 67
    const/4 v13, -0x1

    .line 68
    if-nez v5, :cond_4

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v2, v4, v1, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-static {v2, v4, v13, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_1
    move v11, v12

    .line 84
    goto/16 :goto_3

    .line 85
    .line 86
    :cond_4
    if-eq v5, v12, :cond_7

    .line 87
    .line 88
    const/16 v3, 0x8

    .line 89
    .line 90
    if-ne v5, v3, :cond_5

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    if-ne v5, v1, :cond_6

    .line 94
    .line 95
    invoke-static {p0, v6, v2, v4}, Lcom/bytedance/sdk/openadsdk/utils/Id;->ZYk(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_3

    .line 100
    .line 101
    new-instance v1, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;

    .line 102
    .line 103
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;-><init>()V

    .line 104
    .line 105
    .line 106
    sget-object v3, Lcom/bytedance/sdk/openadsdk/ex/ZYk$oJ;->ZYk:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->oJ(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->ZYk(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v13}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->oJ(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->oJ(Z)V

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->ZYk(I)V

    .line 128
    .line 129
    .line 130
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;)V

    .line 131
    .line 132
    .line 133
    new-instance v1, Ljava/util/HashMap;

    .line 134
    .line 135
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v3, "deeplink_url"

    .line 139
    .line 140
    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    const-string v5, "jsb_deeplink"

    .line 151
    .line 152
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    const-string v3, "open_fallback_url"

    .line 156
    .line 157
    invoke-static {v2, v4, v3, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 158
    .line 159
    .line 160
    sget-object v1, Lcom/bytedance/sdk/openadsdk/ex/ZYk$oJ;->ZYk:Ljava/lang/String;

    .line 161
    .line 162
    invoke-static {p0, v8, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/Id;->oJ(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_6
    const/4 v1, 0x3

    .line 167
    if-ne v5, v1, :cond_8

    .line 168
    .line 169
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/RZ;

    .line 170
    .line 171
    invoke-direct {v7, v2}, Lcom/bytedance/sdk/openadsdk/core/RZ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7, v9}, Lcom/bytedance/sdk/openadsdk/core/RZ;->oJ(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7, v10}, Lcom/bytedance/sdk/openadsdk/core/RZ;->oJ(Z)V

    .line 178
    .line 179
    .line 180
    const/4 v5, 0x0

    .line 181
    move-object v0, p0

    .line 182
    move-object v1, v6

    .line 183
    move-object/from16 v2, p3

    .line 184
    .line 185
    move/from16 v3, p5

    .line 186
    .line 187
    move-object/from16 v4, p4

    .line 188
    .line 189
    move-object v6, v7

    .line 190
    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/XAo;->oJ(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;ILjava/lang/String;ZLcom/bytedance/sdk/openadsdk/core/RZ;)V

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_7
    :goto_2
    new-instance v1, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;

    .line 195
    .line 196
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;-><init>()V

    .line 197
    .line 198
    .line 199
    sget-object v3, Lcom/bytedance/sdk/openadsdk/ex/ZYk$oJ;->ZYk:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->oJ(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->ZYk(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v13}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->oJ(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->oJ(Z)V

    .line 214
    .line 215
    .line 216
    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;->ZYk(I)V

    .line 221
    .line 222
    .line 223
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/awB/oJ/ZYk;)V

    .line 224
    .line 225
    .line 226
    sget-object v1, Lcom/bytedance/sdk/openadsdk/ex/ZYk$oJ;->ZYk:Ljava/lang/String;

    .line 227
    .line 228
    invoke-static {p0, v6, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/Id;->oJ(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    goto/16 :goto_1

    .line 232
    .line 233
    :cond_8
    :goto_3
    if-eqz p7, :cond_9

    .line 234
    .line 235
    if-eqz v11, :cond_9

    .line 236
    .line 237
    invoke-interface/range {p7 .. p7}, Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;->oJ()V

    .line 238
    .line 239
    .line 240
    :cond_9
    return-void
.end method
