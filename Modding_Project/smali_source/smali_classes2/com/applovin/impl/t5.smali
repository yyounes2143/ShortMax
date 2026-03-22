.class public Lcom/applovin/impl/t5;
.super Lcom/applovin/impl/g5;
.source "SourceFile"


# instance fields
.field private final g:Lcom/applovin/impl/x2;

.field private final h:Lorg/json/JSONArray;

.field private final i:Landroid/content/Context;

.field private final j:Lcom/applovin/impl/mediation/ads/a$a;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/x2;Lorg/json/JSONArray;Landroid/content/Context;Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/applovin/impl/x2;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "TaskFetchMediatedAd"

    .line 6
    .line 7
    invoke-direct {p0, v1, p4, v0}, Lcom/applovin/impl/g5;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/k;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/applovin/impl/t5;->g:Lcom/applovin/impl/x2;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/applovin/impl/t5;->h:Lorg/json/JSONArray;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/applovin/impl/t5;->i:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p5, p0, Lcom/applovin/impl/t5;->j:Lcom/applovin/impl/mediation/ads/a$a;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/t5;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/t5;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/t5;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/t5;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .line 7
    iget-object v0, p0, Lcom/applovin/impl/t5;->g:Lcom/applovin/impl/x2;

    invoke-virtual {v0}, Lcom/applovin/impl/x2;->b()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to fetch ad for ad unit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": server returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v1, -0x3f1

    if-ne p2, v1, :cond_1

    .line 9
    new-instance v2, Lcom/applovin/impl/mediation/MaxErrorImpl;

    invoke-direct {v2, v1, p3}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v1, -0x3e9

    if-ne p2, v1, :cond_2

    .line 10
    new-instance v2, Lcom/applovin/impl/mediation/MaxErrorImpl;

    invoke-direct {v2, v1, p3}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {p3}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    new-instance v2, Lcom/applovin/impl/mediation/MaxErrorImpl;

    const/16 v1, -0x3e8

    invoke-direct {v2, v1, p3}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_3
    new-instance v2, Lcom/applovin/impl/mediation/MaxErrorImpl;

    const/4 v1, -0x1

    invoke-direct {v2, v1}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(I)V

    .line 14
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 15
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "url"

    invoke-static {v3, p1, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 16
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "code"

    invoke-static {p2, p1, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 17
    const-string p1, "error_message"

    invoke-static {p1, p3, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    const-string p1, "ad_unit_id"

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 19
    iget-object p1, p0, Lcom/applovin/impl/t5;->g:Lcom/applovin/impl/x2;

    invoke-virtual {p1}, Lcom/applovin/impl/x2;->a()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ad_format"

    invoke-static {p2, p1, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    iget-object p1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->P()Lcom/applovin/impl/w2;

    move-result-object p1

    sget-object p2, Lcom/applovin/impl/c2;->V:Lcom/applovin/impl/c2;

    invoke-virtual {p1, p2, v1}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    .line 21
    iget-object p1, p0, Lcom/applovin/impl/t5;->j:Lcom/applovin/impl/mediation/ads/a$a;

    invoke-static {p1, v0, v2}, Lcom/applovin/impl/q2;->a(Lcom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 7

    .line 3
    new-instance v6, Lcom/applovin/impl/d6;

    iget-object v1, p0, Lcom/applovin/impl/t5;->g:Lcom/applovin/impl/x2;

    iget-object v3, p0, Lcom/applovin/impl/t5;->i:Landroid/content/Context;

    iget-object v4, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    iget-object v5, p0, Lcom/applovin/impl/t5;->j:Lcom/applovin/impl/mediation/ads/a$a;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/d6;-><init>(Lcom/applovin/impl/x2;Lorg/json/JSONObject;Landroid/content/Context;Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 4
    const-string v0, "process_waterfall_delay_ms"

    const-wide/16 v1, -0x1

    invoke-static {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v0, 0x0

    cmp-long p1, v3, v0

    if-lez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/b6$b;->c:Lcom/applovin/impl/b6$b;

    const/4 v5, 0x1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;JZ)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;)V

    :goto_0
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 9

    .line 1
    const-string v0, "mcode"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 4
    .line 5
    invoke-static {p1, v1}, Lcom/applovin/impl/r0;->c(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 9
    .line 10
    invoke-static {p1, v1}, Lcom/applovin/impl/r0;->b(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 14
    .line 15
    invoke-static {p1, v1}, Lcom/applovin/impl/r0;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 19
    .line 20
    invoke-static {p1, v1}, Lcom/applovin/impl/i3;->f(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 24
    .line 25
    invoke-static {p1, v1}, Lcom/applovin/impl/i3;->d(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 29
    .line 30
    invoke-static {p1, v1}, Lcom/applovin/impl/i3;->e(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 34
    .line 35
    invoke-static {p1, v1}, Lcom/applovin/impl/i3;->g(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->m()Lcom/applovin/impl/sdk/h;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/h;->a()V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/applovin/impl/t5;->g:Lcom/applovin/impl/x2;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/applovin/impl/x2;->a()Lcom/applovin/mediation/MaxAdFormat;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "ad_format"

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-static {p1, v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v2}, Lcom/applovin/mediation/MaxAdFormat;->formatFromString(Ljava/lang/String;)Lcom/applovin/mediation/MaxAdFormat;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-ne v1, v2, :cond_0

    .line 65
    .line 66
    invoke-direct {p0, p1}, Lcom/applovin/impl/t5;->a(Lorg/json/JSONObject;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :cond_0
    iget-object v3, p0, Lcom/applovin/impl/t5;->g:Lcom/applovin/impl/x2;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/applovin/impl/x2;->b()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    const-string v4, "ad_unit_id"

    .line 80
    .line 81
    const-string v5, "details"

    .line 82
    .line 83
    if-nez v2, :cond_3

    .line 84
    .line 85
    :try_start_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    iget-object v1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 92
    .line 93
    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 94
    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v7, "Mediated ad response is missing the ad format field for ad unit "

    .line 101
    .line 102
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v1, v2, v6}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_1
    const-string v1, "ads"

    .line 116
    .line 117
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_2

    .line 122
    .line 123
    new-instance v1, Ljava/util/HashMap;

    .line 124
    .line 125
    const/4 v2, 0x3

    .line 126
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 127
    .line 128
    .line 129
    const-string v2, "Missing ad format field"

    .line 130
    .line 131
    invoke-static {v5, v2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v4, v3, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 135
    .line 136
    .line 137
    const-string v2, ""

    .line 138
    .line 139
    invoke-static {p1, v0, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {v0, p1, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    sget-object v0, Lcom/applovin/impl/c2;->M0:Lcom/applovin/impl/c2;

    .line 153
    .line 154
    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {p1, v0, v2, v1}, Lcom/applovin/impl/d2;->a(Lcom/applovin/impl/c2;Ljava/lang/String;Ljava/util/Map;)V

    .line 157
    .line 158
    .line 159
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/t5;->j:Lcom/applovin/impl/mediation/ads/a$a;

    .line 160
    .line 161
    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->NO_FILL:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 162
    .line 163
    invoke-interface {p1, v3, v0}, Lcom/applovin/mediation/MaxAdListener;->onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_3
    invoke-virtual {v2}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v1}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    new-instance v7, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string v8, "Incorrect format ("

    .line 181
    .line 182
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v8, ") loaded for ("

    .line 189
    .line 190
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v8, ") ad. Please verify if the ad unit ID ("

    .line 197
    .line 198
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v8, ") is assigned to the correct ad format."

    .line 205
    .line 206
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    invoke-static {v1, v2}, Lcom/applovin/impl/k7;->a(Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/mediation/MaxAdFormat;)Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-eqz v1, :cond_4

    .line 218
    .line 219
    iget-object v0, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 220
    .line 221
    invoke-static {v0, v7}, Lcom/applovin/impl/sdk/o;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-direct {p0, p1}, Lcom/applovin/impl/t5;->a(Lorg/json/JSONObject;)V

    .line 225
    .line 226
    .line 227
    goto :goto_0

    .line 228
    :cond_4
    const/4 p1, 0x0

    .line 229
    new-array v1, p1, [Ljava/lang/Object;

    .line 230
    .line 231
    invoke-static {v7, v1}, Lcom/applovin/impl/k1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 235
    .line 236
    invoke-static {v1, v7}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    new-instance v1, Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 240
    .line 241
    sget-object v2, Lcom/applovin/mediation/adapter/MaxAdapterError;->INVALID_CONFIGURATION:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 242
    .line 243
    invoke-direct {v1, v2, p1, v7}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(Lcom/applovin/mediation/adapter/MaxAdapterError;ILjava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-object p1, p0, Lcom/applovin/impl/t5;->j:Lcom/applovin/impl/mediation/ads/a$a;

    .line 247
    .line 248
    invoke-interface {p1, v3, v1}, Lcom/applovin/mediation/MaxAdListener;->onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v4, v3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    const-string v1, "name"

    .line 256
    .line 257
    invoke-static {v1, v6, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 258
    .line 259
    .line 260
    invoke-static {v5, v0, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 261
    .line 262
    .line 263
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 264
    .line 265
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    sget-object v1, Lcom/applovin/impl/c2;->E0:Lcom/applovin/impl/c2;

    .line 270
    .line 271
    const-string v2, "incompatible_ad_format"

    .line 272
    .line 273
    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/d2;->a(Lcom/applovin/impl/c2;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    .line 275
    .line 276
    :goto_0
    return-void

    .line 277
    :goto_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-eqz v0, :cond_5

    .line 282
    .line 283
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 284
    .line 285
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 286
    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    .line 292
    const-string v3, "Unable to process mediated ad response for ad unit "

    .line 293
    .line 294
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    iget-object v3, p0, Lcom/applovin/impl/t5;->g:Lcom/applovin/impl/x2;

    .line 298
    .line 299
    invoke-virtual {v3}, Lcom/applovin/impl/x2;->b()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 311
    .line 312
    .line 313
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 314
    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    const-string v2, "Unable to process ad: "

    .line 321
    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    throw v0
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->X()Lcom/applovin/impl/mediation/MediationServiceImpl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/MediationServiceImpl;->getAndResetCustomPostBodyData()Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/applovin/impl/k7;->h(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putAll(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 2
    .line 3
    sget-object v1, Lcom/applovin/impl/v4;->C4:Lcom/applovin/impl/v4;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->Y()Lcom/applovin/impl/r3;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .line 32
    .line 33
    sget-object v3, Lcom/applovin/impl/p3;->f:Lcom/applovin/impl/p3;

    .line 34
    .line 35
    sget-object v4, Lcom/applovin/impl/q3$a;->a:Lcom/applovin/impl/q3$a;

    .line 36
    .line 37
    invoke-virtual {v0, v3, v4}, Lcom/applovin/impl/r3;->a(Lcom/applovin/impl/p3;Lcom/applovin/impl/q3$a;)Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v2, v4}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putAll(Lorg/json/JSONObject;Ljava/util/Map;)V

    .line 42
    .line 43
    .line 44
    const-string v4, "arpau"

    .line 45
    .line 46
    invoke-static {v1, v4, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Lorg/json/JSONObject;

    .line 50
    .line 51
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .line 53
    .line 54
    sget-object v4, Lcom/applovin/impl/q3$a;->b:Lcom/applovin/impl/q3$a;

    .line 55
    .line 56
    invoke-virtual {v0, v3, v4}, Lcom/applovin/impl/r3;->a(Lcom/applovin/impl/p3;Lcom/applovin/impl/q3$a;)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putAll(Lorg/json/JSONObject;Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    const-string v3, "arpaf"

    .line 64
    .line 65
    invoke-static {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 66
    .line 67
    .line 68
    new-instance v2, Lorg/json/JSONObject;

    .line 69
    .line 70
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 71
    .line 72
    .line 73
    sget-object v3, Lcom/applovin/impl/p3;->g:Lcom/applovin/impl/p3;

    .line 74
    .line 75
    sget-object v4, Lcom/applovin/impl/q3$a;->c:Lcom/applovin/impl/q3$a;

    .line 76
    .line 77
    invoke-virtual {v0, v3, v4}, Lcom/applovin/impl/r3;->a(Lcom/applovin/impl/p3;Lcom/applovin/impl/q3$a;)Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putAll(Lorg/json/JSONObject;Ljava/util/Map;)V

    .line 82
    .line 83
    .line 84
    const-string/jumbo v0, "ttdasipa_ms"

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v0, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 88
    .line 89
    .line 90
    const-string v0, "mediation_stats"

    .line 91
    .line 92
    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 93
    .line 94
    .line 95
    :cond_0
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-static {v0}, Lcom/applovin/impl/i3;->a(Lcom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Lorg/json/JSONObject;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/t5;->g:Lcom/applovin/impl/x2;

    invoke-virtual {v0}, Lcom/applovin/impl/x2;->b()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    const-string v2, "ad_unit_id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v2, p0, Lcom/applovin/impl/t5;->g:Lcom/applovin/impl/x2;

    invoke-virtual {v2}, Lcom/applovin/impl/x2;->a()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_format"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object v2, p0, Lcom/applovin/impl/t5;->g:Lcom/applovin/impl/x2;

    invoke-virtual {v2}, Lcom/applovin/impl/x2;->d()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->a0()Lcom/applovin/impl/sdk/p;

    move-result-object v3

    .line 8
    invoke-virtual {v3, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "previous_request_id"

    invoke-static {v5, v4, v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    invoke-virtual {v3, v0}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "previous_loaded_request_id"

    invoke-static {v5, v4, v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 10
    invoke-virtual {v3, v0}, Lcom/applovin/impl/sdk/p;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/p$a;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 11
    iget-object v4, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/k;->o0()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/sdk/AppLovinSdkSettings;->getExtraParameters()Ljava/util/Map;

    move-result-object v4

    const-string v5, "esc"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 12
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "previous_winning_network_name"

    const-string v6, "previous_winning_network"

    if-eqz v4, :cond_0

    .line 13
    const-string v3, "APPLOVIN_NETWORK"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string v3, "AppLovin"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/p$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/p$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :goto_0
    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->R()Lcom/applovin/impl/mediation/e;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 18
    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->R()Lcom/applovin/impl/mediation/e;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/applovin/impl/mediation/e;->c(Ljava/lang/String;)Ljava/util/Queue;

    move-result-object v0

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/applovin/impl/v2;

    .line 22
    invoke-virtual {v5}, Lcom/applovin/impl/h3;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {v5}, Lcom/applovin/impl/v2;->getNetworkName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 24
    :cond_1
    const-string v0, ","

    invoke-static {v0, v3}, Lcom/applovin/impl/tb;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "queued_ad_networks"

    invoke-static {v5, v3, v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 25
    invoke-static {v0, v4}, Lcom/applovin/impl/tb;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "queued_ad_network_names"

    invoke-static {v3, v0, v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 26
    :cond_2
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->toJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "extra_parameters"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v0, "ad_info"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-static {v0}, Lcom/applovin/impl/i3;->b(Lcom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Lorg/json/JSONObject;)V
    .locals 4

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    const-string v1, "disabled"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->T()Lcom/applovin/impl/mediation/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/mediation/g;->a()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "installed"

    iget-object v2, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-static {v2}, Lcom/applovin/impl/t3;->b(Lcom/applovin/impl/sdk/k;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v1, "initialized"

    iget-object v2, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->S()Lcom/applovin/impl/mediation/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/f;->b()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string v1, "initialized_classnames"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->S()Lcom/applovin/impl/mediation/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/mediation/f;->a()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string v1, "loaded_classnames"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->T()Lcom/applovin/impl/mediation/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/mediation/g;->c()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string v1, "failed_classnames"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->T()Lcom/applovin/impl/mediation/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/mediation/g;->b()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string v1, "adapters_info"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    const-string v2, "Failed to populate adapter classNames"

    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to populate classNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g()Lorg/json/JSONObject;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->B()Lcom/applovin/impl/sdk/l;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/applovin/impl/sdk/l;->a(Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/applovin/impl/t5;->g:Lcom/applovin/impl/x2;

    invoke-virtual {v1}, Lcom/applovin/impl/x2;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 4
    invoke-direct {p0, v1}, Lcom/applovin/impl/t5;->e(Lorg/json/JSONObject;)V

    .line 5
    invoke-direct {p0, v1}, Lcom/applovin/impl/t5;->h(Lorg/json/JSONObject;)V

    .line 6
    invoke-direct {p0, v1}, Lcom/applovin/impl/t5;->f(Lorg/json/JSONObject;)V

    .line 7
    invoke-direct {p0, v1}, Lcom/applovin/impl/t5;->c(Lorg/json/JSONObject;)V

    .line 8
    invoke-direct {p0, v1}, Lcom/applovin/impl/t5;->g(Lorg/json/JSONObject;)V

    .line 9
    invoke-direct {p0, v1}, Lcom/applovin/impl/t5;->d(Lorg/json/JSONObject;)V

    return-object v1
.end method

.method private g(Lorg/json/JSONObject;)V
    .locals 2

    .line 10
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->o0()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdkSettings;->getExtraParameters()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 11
    const-string v1, "sdk_extra_parameters"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private h()Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/applovin/impl/t5;->g:Lcom/applovin/impl/x2;

    invoke-virtual {v1}, Lcom/applovin/impl/x2;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovin-Ad-Unit-Id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/applovin/impl/t5;->g:Lcom/applovin/impl/x2;

    invoke-virtual {v1}, Lcom/applovin/impl/x2;->a()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovin-Ad-Format"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/applovin/impl/t5;->g:Lcom/applovin/impl/x2;

    invoke-virtual {v1}, Lcom/applovin/impl/x2;->d()Ljava/util/Map;

    move-result-object v1

    .line 5
    const-string v2, "retry_attempt"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AppLovin-Retry-Attempt"

    invoke-static {v3, v2, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putObjectToStringIfValid(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 6
    const-string v2, "retry_delay_sec"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "AppLovin-Retry-Delay-Sec"

    invoke-static {v2, v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putObjectToStringIfValid(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-object v0
.end method

.method private h(Lorg/json/JSONObject;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/applovin/impl/t5;->h:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 8
    const-string v1, "signal_data"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/t5;->g:Lcom/applovin/impl/x2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/x2;->a()Lcom/applovin/mediation/MaxAdFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v6

    .line 7
    iget-object v0, p0, Lcom/applovin/impl/t5;->g:Lcom/applovin/impl/x2;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/applovin/impl/x2;->b()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v4, "Fetching next ad for "

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v4, " ad unit "

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-static {}, Lcom/applovin/impl/j2;->a()V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 59
    .line 60
    sget-object v2, Lcom/applovin/impl/v4;->Q3:Lcom/applovin/impl/v4;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    invoke-static {}, Lcom/applovin/impl/k7;->j()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    iget-object v1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 87
    .line 88
    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 89
    .line 90
    const-string v3, "User is connected to a VPN"

    .line 91
    .line 92
    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->P()Lcom/applovin/impl/w2;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    sget-object v2, Lcom/applovin/impl/c2;->T:Lcom/applovin/impl/c2;

    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    invoke-virtual {v1, v2, v6, v0, v3}, Lcom/applovin/impl/w2;->a(Lcom/applovin/impl/c2;Lcom/applovin/mediation/MaxAdFormat;Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 108
    .line 109
    sget-object v2, Lcom/applovin/impl/v4;->C4:Lcom/applovin/impl/v4;

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_2

    .line 122
    .line 123
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->Y()Lcom/applovin/impl/r3;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    sget-object v2, Lcom/applovin/impl/p3;->f:Lcom/applovin/impl/p3;

    .line 130
    .line 131
    invoke-static {v0}, Lcom/applovin/impl/q3;->a(Ljava/lang/String;)Lcom/applovin/impl/q3;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/r3;->a(Lcom/applovin/impl/p3;Lcom/applovin/impl/q3;)Ljava/util/Map;

    .line 136
    .line 137
    .line 138
    invoke-static {v6}, Lcom/applovin/impl/q3;->a(Lcom/applovin/mediation/MaxAdFormat;)Lcom/applovin/impl/q3;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/r3;->a(Lcom/applovin/impl/p3;Lcom/applovin/impl/q3;)Ljava/util/Map;

    .line 143
    .line 144
    .line 145
    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 146
    .line 147
    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 148
    .line 149
    invoke-static {v1, v2}, Lcom/applovin/impl/k7;->a(Lcom/applovin/impl/sdk/k;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :try_start_0
    invoke-direct {p0}, Lcom/applovin/impl/t5;->g()Lorg/json/JSONObject;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    new-instance v2, Ljava/util/HashMap;

    .line 157
    .line 158
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 159
    .line 160
    .line 161
    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 162
    .line 163
    sget-object v4, Lcom/applovin/impl/v4;->q5:Lcom/applovin/impl/v4;

    .line 164
    .line 165
    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    check-cast v3, Ljava/lang/Boolean;

    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-nez v3, :cond_3

    .line 176
    .line 177
    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 178
    .line 179
    sget-object v4, Lcom/applovin/impl/v4;->o5:Lcom/applovin/impl/v4;

    .line 180
    .line 181
    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    check-cast v3, Ljava/lang/Boolean;

    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-nez v3, :cond_3

    .line 192
    .line 193
    const-string v3, "rid"

    .line 194
    .line 195
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    goto :goto_0

    .line 207
    :catchall_0
    move-exception v1

    .line 208
    goto/16 :goto_2

    .line 209
    .line 210
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 211
    .line 212
    sget-object v4, Lcom/applovin/impl/v4;->a5:Lcom/applovin/impl/v4;

    .line 213
    .line 214
    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    check-cast v3, Ljava/lang/Boolean;

    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-nez v3, :cond_4

    .line 225
    .line 226
    const-string v3, "sdk_key"

    .line 227
    .line 228
    iget-object v4, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 229
    .line 230
    invoke-virtual {v4}, Lcom/applovin/impl/sdk/k;->j0()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    :cond_4
    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 238
    .line 239
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->t0()Lcom/applovin/impl/c7;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-virtual {v3}, Lcom/applovin/impl/c7;->c()Z

    .line 244
    .line 245
    .line 246
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    const-string v4, "1"

    .line 248
    .line 249
    if-eqz v3, :cond_5

    .line 250
    .line 251
    :try_start_1
    const-string v3, "test_mode"

    .line 252
    .line 253
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    :cond_5
    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 257
    .line 258
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->t0()Lcom/applovin/impl/c7;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v3}, Lcom/applovin/impl/c7;->b()Ljava/util/List;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    iget-object v5, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 267
    .line 268
    invoke-virtual {v5}, Lcom/applovin/impl/sdk/k;->o0()Lcom/applovin/sdk/AppLovinSdkSettings;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    invoke-virtual {v5}, Lcom/applovin/sdk/AppLovinSdkSettings;->getExtraParameters()Ljava/util/Map;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    const-string v7, "fan"

    .line 277
    .line 278
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    check-cast v5, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    .line 284
    const-string v7, "filter_ad_network"

    .line 285
    .line 286
    if-eqz v3, :cond_7

    .line 287
    .line 288
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 289
    .line 290
    .line 291
    move-result v8

    .line 292
    if-nez v8, :cond_7

    .line 293
    .line 294
    const-string v5, ","

    .line 295
    .line 296
    invoke-static {v5, v3}, Lcom/applovin/impl/tb;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    iget-object v5, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 304
    .line 305
    invoke-virtual {v5}, Lcom/applovin/impl/sdk/k;->t0()Lcom/applovin/impl/c7;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    invoke-virtual {v5}, Lcom/applovin/impl/c7;->c()Z

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    if-nez v5, :cond_6

    .line 314
    .line 315
    const-string v5, "fhkZsVqYC7"

    .line 316
    .line 317
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    :cond_6
    iget-object v4, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 321
    .line 322
    invoke-virtual {v4}, Lcom/applovin/impl/sdk/k;->t0()Lcom/applovin/impl/c7;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    invoke-virtual {v4}, Lcom/applovin/impl/c7;->d()Z

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    if-eqz v4, :cond_8

    .line 331
    .line 332
    const-string v4, "force_ad_network"

    .line 333
    .line 334
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    goto :goto_1

    .line 338
    :cond_7
    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    if-eqz v3, :cond_8

    .line 343
    .line 344
    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 348
    .line 349
    invoke-static {v3}, Lcom/applovin/impl/sdk/network/a;->a(Lcom/applovin/impl/sdk/k;)Lcom/applovin/impl/sdk/network/a$a;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    const-string v4, "POST"

    .line 354
    .line 355
    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/network/a$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/a$a;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    invoke-direct {p0}, Lcom/applovin/impl/t5;->h()Ljava/util/Map;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/network/a$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/a$a;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    invoke-direct {p0}, Lcom/applovin/impl/t5;->f()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/network/a$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/a$a;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-direct {p0}, Lcom/applovin/impl/t5;->e()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/network/a$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/a$a;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    invoke-virtual {v3, v2}, Lcom/applovin/impl/sdk/network/a$a;->b(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/a$a;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/network/a$a;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/a$a;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    iget-object v2, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 392
    .line 393
    sget-object v3, Lcom/applovin/impl/o3;->o8:Lcom/applovin/impl/v4;

    .line 394
    .line 395
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    check-cast v2, Ljava/lang/Boolean;

    .line 400
    .line 401
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/a$a;->b(Z)Lcom/applovin/impl/sdk/network/a$a;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    new-instance v2, Lorg/json/JSONObject;

    .line 410
    .line 411
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/a$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/a$a;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    iget-object v2, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 419
    .line 420
    sget-object v3, Lcom/applovin/impl/o3;->j7:Lcom/applovin/impl/v4;

    .line 421
    .line 422
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    check-cast v2, Ljava/lang/Long;

    .line 427
    .line 428
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/a$a;->c(I)Lcom/applovin/impl/sdk/network/a$a;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    iget-object v2, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 437
    .line 438
    sget-object v3, Lcom/applovin/impl/v4;->U2:Lcom/applovin/impl/v4;

    .line 439
    .line 440
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    check-cast v2, Ljava/lang/Integer;

    .line 445
    .line 446
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/a$a;->a(I)Lcom/applovin/impl/sdk/network/a$a;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    iget-object v2, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 455
    .line 456
    sget-object v3, Lcom/applovin/impl/o3;->i7:Lcom/applovin/impl/v4;

    .line 457
    .line 458
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    check-cast v2, Ljava/lang/Long;

    .line 463
    .line 464
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    .line 465
    .line 466
    .line 467
    move-result v2

    .line 468
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/a$a;->b(I)Lcom/applovin/impl/sdk/network/a$a;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    iget-object v2, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 473
    .line 474
    sget-object v3, Lcom/applovin/impl/v4;->g5:Lcom/applovin/impl/v4;

    .line 475
    .line 476
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    check-cast v2, Ljava/lang/Integer;

    .line 481
    .line 482
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    invoke-static {v2}, Lcom/applovin/impl/s4$a;->a(I)Lcom/applovin/impl/s4$a;

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/a$a;->a(Lcom/applovin/impl/s4$a;)Lcom/applovin/impl/sdk/network/a$a;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    const/4 v2, 0x1

    .line 495
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/a$a;->f(Z)Lcom/applovin/impl/sdk/network/a$a;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/a$a;->a()Lcom/applovin/impl/sdk/network/a;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    new-instance v7, Lcom/applovin/impl/t5$a;

    .line 504
    .line 505
    iget-object v4, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 506
    .line 507
    move-object v1, v7

    .line 508
    move-object v2, p0

    .line 509
    move-object v5, v0

    .line 510
    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/t5$a;-><init>(Lcom/applovin/impl/t5;Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/k;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;)V

    .line 511
    .line 512
    .line 513
    sget-object v1, Lcom/applovin/impl/o3;->g7:Lcom/applovin/impl/v4;

    .line 514
    .line 515
    invoke-virtual {v7, v1}, Lcom/applovin/impl/j6;->c(Lcom/applovin/impl/v4;)V

    .line 516
    .line 517
    .line 518
    sget-object v1, Lcom/applovin/impl/o3;->h7:Lcom/applovin/impl/v4;

    .line 519
    .line 520
    invoke-virtual {v7, v1}, Lcom/applovin/impl/j6;->b(Lcom/applovin/impl/v4;)V

    .line 521
    .line 522
    .line 523
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 524
    .line 525
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    invoke-virtual {v1, v7}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 530
    .line 531
    .line 532
    goto :goto_3

    .line 533
    :goto_2
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 534
    .line 535
    .line 536
    move-result v2

    .line 537
    if-eqz v2, :cond_9

    .line 538
    .line 539
    iget-object v2, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 540
    .line 541
    iget-object v3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 542
    .line 543
    new-instance v4, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    .line 547
    .line 548
    const-string v5, "Unable to fetch ad for Ad Unit ID: "

    .line 549
    .line 550
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    invoke-virtual {v2, v3, v0, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 561
    .line 562
    .line 563
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    const-string v1, ""

    .line 568
    .line 569
    const/4 v2, 0x0

    .line 570
    invoke-direct {p0, v1, v2, v0}, Lcom/applovin/impl/t5;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 571
    .line 572
    .line 573
    :goto_3
    return-void
.end method
