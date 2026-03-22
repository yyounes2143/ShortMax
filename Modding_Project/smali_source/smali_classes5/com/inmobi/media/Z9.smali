.class public final Lcom/inmobi/media/Z9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/inmobi/media/z5;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/media/z5;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "context"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/inmobi/media/Z9;->a:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/inmobi/media/Z9;->b:Lcom/inmobi/media/z5;

    .line 13
    .line 14
    const-string p2, ""

    .line 15
    .line 16
    iput-object p2, p0, Lcom/inmobi/media/Z9;->c:Ljava/lang/String;

    .line 17
    .line 18
    sget-object v2, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    const-string v2, "signals"

    .line 21
    .line 22
    const-string v3, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static {v2, v3, v4}, Lcom/inmobi/media/p5;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getNovatiqConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iput-object v2, p0, Lcom/inmobi/media/Z9;->e:Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;

    .line 36
    .line 37
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;->isNovatiqEnabled()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_0
    const-string v3, "phone"

    .line 49
    .line 50
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    instance-of v3, p1, Landroid/telephony/TelephonyManager;

    .line 55
    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move-object p1, v4

    .line 62
    :goto_0
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    :cond_2
    if-nez v4, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    move-object p2, v4

    .line 72
    :goto_1
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;->getCarrierNames()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    instance-of v2, p1, Ljava/util/Collection;

    .line 77
    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    goto/16 :goto_4

    .line 87
    .line 88
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_8

    .line 97
    .line 98
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {p2, v2, v0}, Lkotlin/text/StringsKt;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_5

    .line 109
    .line 110
    :try_start_0
    iget-object p1, p0, Lcom/inmobi/media/Z9;->a:Landroid/content/Context;

    .line 111
    .line 112
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const/4 v5, 0x4

    .line 137
    const/4 v6, 0x0

    .line 138
    const/16 v2, 0x20

    .line 139
    .line 140
    const/16 v3, 0x5f

    .line 141
    .line 142
    const/4 v4, 0x0

    .line 143
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->O(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string p2, "_app"

    .line 151
    .line 152
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    iput-boolean v0, p0, Lcom/inmobi/media/Z9;->d:Z

    .line 160
    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    new-instance v1, Ljava/util/Random;

    .line 167
    .line 168
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 169
    .line 170
    .line 171
    const/4 v2, 0x0

    .line 172
    :goto_2
    const/16 v3, 0x28

    .line 173
    .line 174
    if-ge v2, v3, :cond_7

    .line 175
    .line 176
    const-string v3, "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxxxxx"

    .line 177
    .line 178
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    const/16 v4, 0x78

    .line 183
    .line 184
    if-ne v3, v4, :cond_6

    .line 185
    .line 186
    const/16 v3, 0x10

    .line 187
    .line 188
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    invoke-static {v4, v3}, Ljava/lang/Character;->forDigit(II)C

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_6
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    :goto_3
    add-int/2addr v2, v0

    .line 204
    goto :goto_2

    .line 205
    :cond_7
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    const-string v0, "toString(...)"

    .line 210
    .line 211
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iput-object p2, p0, Lcom/inmobi/media/Z9;->c:Ljava/lang/String;

    .line 215
    .line 216
    new-instance v0, Lcom/inmobi/media/aa;

    .line 217
    .line 218
    iget-object v1, p0, Lcom/inmobi/media/Z9;->e:Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;

    .line 219
    .line 220
    invoke-direct {v0, p2, p1, v1}, Lcom/inmobi/media/aa;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;)V

    .line 221
    .line 222
    .line 223
    new-instance p1, Lcom/inmobi/media/ba;

    .line 224
    .line 225
    iget-object p2, p0, Lcom/inmobi/media/Z9;->b:Lcom/inmobi/media/z5;

    .line 226
    .line 227
    invoke-direct {p1, v0, p2}, Lcom/inmobi/media/ba;-><init>(Lcom/inmobi/media/aa;Lcom/inmobi/media/z5;)V

    .line 228
    .line 229
    .line 230
    new-instance p2, Lcom/inmobi/media/Y9;

    .line 231
    .line 232
    invoke-direct {p2, p0}, Lcom/inmobi/media/Y9;-><init>(Lcom/inmobi/media/Z9;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, p2}, Lcom/inmobi/media/N9;->a(Lkotlin/jvm/functions/Function1;)V

    .line 236
    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/inmobi/media/Z9;->b:Lcom/inmobi/media/z5;

    .line 240
    .line 241
    if-eqz p1, :cond_9

    .line 242
    .line 243
    check-cast p1, Lcom/inmobi/media/A5;

    .line 244
    .line 245
    const-string p2, "NovatiqDataHandler"

    .line 246
    .line 247
    const-string v0, "Novatiq disabled.. skipping"

    .line 248
    .line 249
    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    :catch_0
    :cond_9
    :goto_5
    return-void
.end method
