.class public Lcom/mbridge/msdk/splash/common/a;
.super Ljava/lang/Object;
.source "BaseDeviceInfo.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/mbridge/msdk/splash/common/a;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/l0;->t()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/mbridge/msdk/splash/common/a;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/l0;->q()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/mbridge/msdk/splash/common/a;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/f;->d()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/mbridge/msdk/splash/common/a;->d:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/l0;->s(Landroid/content/Context;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, Lcom/mbridge/msdk/splash/common/a;->e:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/l0;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/mbridge/msdk/splash/common/a;->f:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/l0;->l(Landroid/content/Context;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/mbridge/msdk/splash/common/a;->g:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->c()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/mbridge/msdk/splash/common/a;->h:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/mbridge/msdk/splash/common/a;->i:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/u0;->g(Landroid/content/Context;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/mbridge/msdk/splash/common/a;->j:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/u0;->f(Landroid/content/Context;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/mbridge/msdk/splash/common/a;->k:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/u0;->d(Landroid/content/Context;)F

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/mbridge/msdk/splash/common/a;->m:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 107
    .line 108
    const/4 v0, 0x2

    .line 109
    if-ne p1, v0, :cond_0

    .line 110
    .line 111
    const-string p1, "landscape"

    .line 112
    .line 113
    iput-object p1, p0, Lcom/mbridge/msdk/splash/common/a;->l:Ljava/lang/String;

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    const-string p1, "portrait"

    .line 117
    .line 118
    iput-object p1, p0, Lcom/mbridge/msdk/splash/common/a;->l:Ljava/lang/String;

    .line 119
    .line 120
    :goto_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/l0;->u()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, p0, Lcom/mbridge/msdk/splash/common/a;->n:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/f;->e()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object p1, p0, Lcom/mbridge/msdk/splash/common/a;->o:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/f;->a()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    iput p1, p0, Lcom/mbridge/msdk/splash/common/a;->p:I

    .line 137
    .line 138
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->j()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    iput p1, p0, Lcom/mbridge/msdk/splash/common/a;->q:I

    .line 143
    .line 144
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->m()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "authority_general_data"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->c(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const-string v1, "device"

    .line 19
    .line 20
    iget-object v2, p0, Lcom/mbridge/msdk/splash/common/a;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    const-string/jumbo v1, "system_version"

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/mbridge/msdk/splash/common/a;->b:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    const-string v1, "network_type"

    .line 34
    .line 35
    iget-object v2, p0, Lcom/mbridge/msdk/splash/common/a;->e:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    const-string v1, "network_type_str"

    .line 41
    .line 42
    iget-object v2, p0, Lcom/mbridge/msdk/splash/common/a;->f:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    const-string v1, "device_ua"

    .line 48
    .line 49
    iget-object v2, p0, Lcom/mbridge/msdk/splash/common/a;->g:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    const-string v1, "has_wx"

    .line 55
    .line 56
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/l0;->D(Landroid/content/Context;)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    const-string v1, "integrated_wx"

    .line 72
    .line 73
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/l0;->D()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    const-string v1, "mnc"

    .line 81
    .line 82
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/l0;->r(Landroid/content/Context;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    const-string v1, "mcc"

    .line 98
    .line 99
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/l0;->q(Landroid/content/Context;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    .line 113
    .line 114
    const-string v1, "adid_limit"

    .line 115
    .line 116
    iget v2, p0, Lcom/mbridge/msdk/splash/common/a;->p:I

    .line 117
    .line 118
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    const-string v1, "adid_limit_dev"

    .line 122
    .line 123
    iget v2, p0, Lcom/mbridge/msdk/splash/common/a;->q:I

    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    goto :goto_1

    .line 131
    :cond_0
    :goto_0
    const-string v1, "plantform"

    .line 132
    .line 133
    iget-object v2, p0, Lcom/mbridge/msdk/splash/common/a;->c:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->m()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const-string v2, "authority_device_id"

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->c(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_1

    .line 149
    .line 150
    const-string v1, "google_ad_id"

    .line 151
    .line 152
    iget-object v2, p0, Lcom/mbridge/msdk/splash/common/a;->d:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    .line 156
    .line 157
    const-string v1, "az_aid_info"

    .line 158
    .line 159
    iget-object v2, p0, Lcom/mbridge/msdk/splash/common/a;->o:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    .line 163
    .line 164
    :cond_1
    const-string v1, "appkey"

    .line 165
    .line 166
    iget-object v2, p0, Lcom/mbridge/msdk/splash/common/a;->h:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    .line 170
    .line 171
    const-string v1, "appId"

    .line 172
    .line 173
    iget-object v2, p0, Lcom/mbridge/msdk/splash/common/a;->i:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    .line 177
    .line 178
    const-string v1, "screen_width"

    .line 179
    .line 180
    iget-object v2, p0, Lcom/mbridge/msdk/splash/common/a;->j:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    .line 184
    .line 185
    const-string v1, "screen_height"

    .line 186
    .line 187
    iget-object v2, p0, Lcom/mbridge/msdk/splash/common/a;->k:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    .line 191
    .line 192
    const-string v1, "orientation"

    .line 193
    .line 194
    iget-object v2, p0, Lcom/mbridge/msdk/splash/common/a;->l:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    .line 198
    .line 199
    const-string v1, "scale"

    .line 200
    .line 201
    iget-object v2, p0, Lcom/mbridge/msdk/splash/common/a;->m:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    .line 205
    .line 206
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/l0;->y()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eqz v1, :cond_2

    .line 211
    .line 212
    const-string/jumbo v1, "tun"

    .line 213
    .line 214
    .line 215
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/l0;->y()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 220
    .line 221
    .line 222
    :cond_2
    const-string v1, "f"

    .line 223
    .line 224
    iget-object v2, p0, Lcom/mbridge/msdk/splash/common/a;->n:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    .line 228
    .line 229
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->getInstance()Lcom/mbridge/msdk/foundation/same/DomainNameUtils;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->isExcludeCNDomain()Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_3

    .line 238
    .line 239
    const-string v1, "re_domain"

    .line 240
    .line 241
    const-string v2, "1"

    .line 242
    .line 243
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .line 245
    .line 246
    goto :goto_2

    .line 247
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    const-string v2, "BaseDeviceInfo"

    .line 252
    .line 253
    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    :cond_3
    :goto_2
    return-object v0
.end method
