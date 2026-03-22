.class public Lcom/bytedance/applog/UriConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/UriConfig$Builder;
    }
.end annotation


# static fields
.field public static final DOMAIN_BUSINESS:Ljava/lang/String; = "https://log-api.oceanengine.com"

.field public static final PATH_AB:Ljava/lang/String; = "/service/2/abtest_config/"

.field public static final PATH_ACTIVE:Ljava/lang/String; = "/service/2/app_alert_check/"

.field public static final PATH_ALINK_ATTRIBUTION:Ljava/lang/String; = "/service/2/attribution_data"

.field public static final PATH_ALINK_QUERY:Ljava/lang/String; = "/service/2/alink_data"

.field public static final PATH_CONFIG:Ljava/lang/String; = "/service/2/log_settings/"

.field public static final PATH_DEVICE_UPDATE:Ljava/lang/String; = "/service/2/device_update"

.field public static final PATH_ID_BIND:Ljava/lang/String; = "/service/2/id_bind"

.field public static final PATH_PROFILE:Ljava/lang/String; = "/service/2/profile/"

.field public static final PATH_REGISTER:Ljava/lang/String; = "/service/2/device_register/"

.field public static final PATH_SEND:Ljava/lang/String; = "/service/2/app_log/"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:[Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/bytedance/applog/UriConfig$Builder;Lcom/bytedance/applog/UriConfig$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$Builder;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->a:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$Builder;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->b:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$Builder;->c:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->c:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$Builder;->d:[Ljava/lang/String;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->d:[Ljava/lang/String;

    .line 19
    .line 20
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$Builder;->e:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->e:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$Builder;->f:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->f:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$Builder;->g:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->g:Ljava/lang/String;

    .line 31
    .line 32
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$Builder;->h:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->h:Ljava/lang/String;

    .line 35
    .line 36
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$Builder;->i:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->i:Ljava/lang/String;

    .line 39
    .line 40
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$Builder;->j:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->j:Ljava/lang/String;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/bytedance/applog/UriConfig$Builder;->k:Ljava/lang/String;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->k:Ljava/lang/String;

    .line 47
    .line 48
    return-void
.end method

.method public static createByDomain(Ljava/lang/String;[Ljava/lang/String;)Lcom/bytedance/applog/UriConfig;
    .locals 7

    .line 1
    new-instance v0, Lcom/bytedance/applog/UriConfig$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/applog/UriConfig$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, "/service/2/device_register/"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setRegisterUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v3, "/service/2/device_update"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lcom/bytedance/applog/UriConfig$Builder;->setReportOaidUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v3, "/service/2/app_alert_check/"

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Lcom/bytedance/applog/UriConfig$Builder;->setActiveUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v3, "/service/2/attribution_data"

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Lcom/bytedance/applog/UriConfig$Builder;->setALinkAttributionUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v3, "/service/2/alink_data"

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Lcom/bytedance/applog/UriConfig$Builder;->setALinkQueryUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 108
    .line 109
    .line 110
    const-string v1, "/service/2/app_log/"

    .line 111
    .line 112
    if-eqz p1, :cond_2

    .line 113
    .line 114
    array-length v2, p1

    .line 115
    if-nez v2, :cond_0

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_0
    array-length v2, p1

    .line 119
    const/4 v3, 0x1

    .line 120
    add-int/2addr v2, v3

    .line 121
    new-array v4, v2, [Ljava/lang/String;

    .line 122
    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    const/4 v6, 0x0

    .line 139
    aput-object v5, v4, v6

    .line 140
    .line 141
    :goto_0
    if-ge v3, v2, :cond_1

    .line 142
    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    add-int/lit8 v6, v3, -0x1

    .line 149
    .line 150
    aget-object v6, p1, v6

    .line 151
    .line 152
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    aput-object v5, v4, v3

    .line 163
    .line 164
    add-int/lit8 v3, v3, 0x1

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v0, v4}, Lcom/bytedance/applog/UriConfig$Builder;->setSendUris([Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    filled-new-array {p1}, [Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {v0, p1}, Lcom/bytedance/applog/UriConfig$Builder;->setSendUris([Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 191
    .line 192
    .line 193
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v1, "/service/2/log_settings/"

    .line 202
    .line 203
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {v0, p1}, Lcom/bytedance/applog/UriConfig$Builder;->setSettingUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v2, "/service/2/abtest_config/"

    .line 223
    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {p1, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setAbUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v2, "/service/2/profile/"

    .line 244
    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {p1, v1}, Lcom/bytedance/applog/UriConfig$Builder;->setProfileUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string p0, "/service/2/id_bind"

    .line 265
    .line 266
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    invoke-virtual {p1, p0}, Lcom/bytedance/applog/UriConfig$Builder;->setIDBindUri(Ljava/lang/String;)Lcom/bytedance/applog/UriConfig$Builder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0}, Lcom/bytedance/applog/UriConfig$Builder;->build()Lcom/bytedance/applog/UriConfig;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    return-object p0
.end method

.method public static createUriConfig(I)Lcom/bytedance/applog/UriConfig;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/applog/util/UriConstants;->createUriConfig(I)Lcom/bytedance/applog/UriConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public getAbUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getActiveUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAlinkAttributionUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAlinkQueryUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBusinessUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIDBindUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProfileUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRegisterUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReportOaidUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSendUris()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->d:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSettingUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setALinkAttributionUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setALinkQueryUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAbUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setActiveUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBusinessUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setProfileUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRegisterUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setReportOaidUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSendUris([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->d:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSettingUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
