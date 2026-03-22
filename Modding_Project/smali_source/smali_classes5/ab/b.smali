.class public Lab/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

.field private final c:Lya/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lya/a;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lab/b;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lab/b;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 7
    .line 8
    iput-object p2, p0, Lab/b;->c:Lya/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Z)Ljava/lang/String;
    .locals 12

    .line 1
    iget-object v0, p0, Lab/b;->c:Lya/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lya/a;->b()Lya/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "geoipCountryCode"

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lya/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "geoip.countrycode"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lxa/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v3, "ROOT"

    .line 22
    .line 23
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v5, "geoIpCountry is: "

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-string v5, "GeoipCountry"

    .line 47
    .line 48
    invoke-static {v5, v4}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v4, p0, Lab/b;->c:Lya/a;

    .line 52
    .line 53
    invoke-virtual {v4}, Lya/a;->b()Lya/c;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const-string v6, "geoipCountryCodetime"

    .line 58
    .line 59
    const-string v7, "0"

    .line 60
    .line 61
    invoke-virtual {v4, v6, v7}, Lya/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    const-wide/16 v7, 0x0

    .line 70
    .line 71
    if-nez v6, :cond_0

    .line 72
    .line 73
    const-string v6, "\\d+"

    .line 74
    .line 75
    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_0

    .line 80
    .line 81
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception v4

    .line 87
    const-string v6, "convert urlParamKey from String to Long catch NumberFormatException."

    .line 88
    .line 89
    invoke-static {v5, v6, v4}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-nez v4, :cond_1

    .line 97
    .line 98
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v4}, Ldb/e;->a(Ljava/lang/Long;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_5

    .line 107
    .line 108
    :cond_1
    new-instance v7, Lcb/c;

    .line 109
    .line 110
    iget-object v4, p0, Lab/b;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    .line 111
    .line 112
    iget-object v6, p0, Lab/b;->a:Landroid/content/Context;

    .line 113
    .line 114
    invoke-direct {v7, v4, v6}, Lcb/c;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7, v1}, Lcb/c;->b(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v4, p0, Lab/b;->c:Lya/a;

    .line 121
    .line 122
    invoke-virtual {v4}, Lya/a;->i()Lya/c;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    if-eqz v10, :cond_2

    .line 127
    .line 128
    const-string v4, "services"

    .line 129
    .line 130
    invoke-virtual {v10, v4, v2}, Lya/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    :try_start_1
    invoke-virtual {v7}, Lcb/c;->d()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-static {v2, v6}, Lab/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    goto :goto_1

    .line 143
    :catch_1
    move-exception v2

    .line 144
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-static {v2}, Lcom/huawei/hms/framework/common/StringUtils;->anonymizeMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    const-string v6, "getGeoipCountry merge services occure jsonException. %s"

    .line 157
    .line 158
    invoke-static {v5, v6, v2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    const/4 v2, 0x0

    .line 162
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-nez v6, :cond_2

    .line 167
    .line 168
    invoke-virtual {v10, v4, v2}, Lya/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :cond_2
    if-eqz p1, :cond_4

    .line 172
    .line 173
    iget-object p1, p0, Lab/b;->c:Lya/a;

    .line 174
    .line 175
    invoke-virtual {p1}, Lya/a;->g()Lab/g;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    const/4 v2, -0x1

    .line 180
    invoke-virtual {p1, v7, v1, v10, v2}, Lab/g;->a(Lcb/c;Ljava/lang/String;Lya/c;I)Lab/d;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    if-eqz p1, :cond_3

    .line 185
    .line 186
    invoke-virtual {p1}, Lab/d;->y()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-static {p1, v1}, Lxa/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    move-object v0, p1

    .line 199
    check-cast v0, Ljava/lang/String;

    .line 200
    .line 201
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v1, "sync request to query geoip.countrycode is:"

    .line 207
    .line 208
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-static {v5, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_4
    const-string p1, "async request to query geoip.countrycode"

    .line 223
    .line 224
    invoke-static {v5, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Lab/b;->c:Lya/a;

    .line 228
    .line 229
    invoke-virtual {p1}, Lya/a;->g()Lab/g;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    const-string v9, "geoip.countrycode"

    .line 234
    .line 235
    const/4 v11, -0x1

    .line 236
    const/4 v8, 0x0

    .line 237
    invoke-virtual/range {v6 .. v11}, Lab/g;->f(Lcb/c;Lxa/b;Ljava/lang/String;Lya/c;I)V

    .line 238
    .line 239
    .line 240
    :cond_5
    :goto_2
    return-object v0
.end method
