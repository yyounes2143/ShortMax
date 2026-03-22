.class public final Lcom/google/android/gms/internal/ads/zzgqg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgoq;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgoq;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzgfa;

.field private static final zze:Lcom/google/android/gms/internal/ads/zzgnp;

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzgnn;

.field private static final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqc;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgqc;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/google/android/gms/internal/ads/zzgpv;

    .line 7
    .line 8
    const-class v2, Lcom/google/android/gms/internal/ads/zzgqb;

    .line 9
    .line 10
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzgoq;->zzb(Lcom/google/android/gms/internal/ads/zzgoo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgoq;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgqg;->zzb:Lcom/google/android/gms/internal/ads/zzgoq;

    .line 15
    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqd;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgqd;-><init>()V

    .line 19
    .line 20
    .line 21
    const-class v1, Lcom/google/android/gms/internal/ads/zzgfl;

    .line 22
    .line 23
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzgoq;->zzb(Lcom/google/android/gms/internal/ads/zzgoo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgoq;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgqg;->zzc:Lcom/google/android/gms/internal/ads/zzgoq;

    .line 28
    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:Lcom/google/android/gms/internal/ads/zzgtz;

    .line 30
    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgtr;->zzi()Lcom/google/android/gms/internal/ads/zzhba;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "type.googleapis.com/google.crypto.tink.HmacKey"

    .line 36
    .line 37
    invoke-static {v3, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzgmz;->zzd(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgtz;Lcom/google/android/gms/internal/ads/zzhba;)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgqg;->zzd:Lcom/google/android/gms/internal/ads/zzgfa;

    .line 42
    .line 43
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqe;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgqe;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgqg;->zze:Lcom/google/android/gms/internal/ads/zzgnp;

    .line 49
    .line 50
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqf;

    .line 51
    .line 52
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgqf;-><init>()V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgqg;->zzf:Lcom/google/android/gms/internal/ads/zzgnn;

    .line 56
    .line 57
    const/4 v0, 0x2

    .line 58
    sput v0, Lcom/google/android/gms/internal/ads/zzgqg;->zzg:I

    .line 59
    .line 60
    return-void
.end method

.method public static zza(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget p0, Lcom/google/android/gms/internal/ads/zzgqg;->zzg:I

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgmg;->zza(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget v0, Lcom/google/android/gms/internal/ads/zzgrm;->zza:I

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgny;->zzc()Lcom/google/android/gms/internal/ads/zzgny;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrm;->zze(Lcom/google/android/gms/internal/ads/zzgny;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnv;->zza()Lcom/google/android/gms/internal/ads/zzgnv;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgqg;->zzb:Lcom/google/android/gms/internal/ads/zzgoq;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnv;->zzc(Lcom/google/android/gms/internal/ads/zzgoq;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnv;->zza()Lcom/google/android/gms/internal/ads/zzgnv;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgqg;->zzc:Lcom/google/android/gms/internal/ads/zzgoq;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnv;->zzc(Lcom/google/android/gms/internal/ads/zzgoq;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnu;->zzb()Lcom/google/android/gms/internal/ads/zzgnu;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "HMAC_SHA256_128BITTAG"

    .line 46
    .line 47
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgqz;->zza:Lcom/google/android/gms/internal/ads/zzgql;

    .line 48
    .line 49
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgqh;

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgqh;-><init>(Lcom/google/android/gms/internal/ads/zzgqk;)V

    .line 56
    .line 57
    .line 58
    const/16 v4, 0x20

    .line 59
    .line 60
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgqh;->zzb(I)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 61
    .line 62
    .line 63
    const/16 v5, 0x10

    .line 64
    .line 65
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgqh;->zzc(I)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 66
    .line 67
    .line 68
    sget-object v6, Lcom/google/android/gms/internal/ads/zzgqj;->zzd:Lcom/google/android/gms/internal/ads/zzgqj;

    .line 69
    .line 70
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgqh;->zzd(Lcom/google/android/gms/internal/ads/zzgqj;)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 71
    .line 72
    .line 73
    sget-object v7, Lcom/google/android/gms/internal/ads/zzgqi;->zzc:Lcom/google/android/gms/internal/ads/zzgqi;

    .line 74
    .line 75
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgqh;->zza(Lcom/google/android/gms/internal/ads/zzgqi;)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqh;->zze()Lcom/google/android/gms/internal/ads/zzgql;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const-string v8, "HMAC_SHA256_128BITTAG_RAW"

    .line 83
    .line 84
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgqh;

    .line 88
    .line 89
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgqh;-><init>(Lcom/google/android/gms/internal/ads/zzgqk;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgqh;->zzb(I)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgqh;->zzc(I)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 96
    .line 97
    .line 98
    sget-object v8, Lcom/google/android/gms/internal/ads/zzgqj;->zza:Lcom/google/android/gms/internal/ads/zzgqj;

    .line 99
    .line 100
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzgqh;->zzd(Lcom/google/android/gms/internal/ads/zzgqj;)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgqh;->zza(Lcom/google/android/gms/internal/ads/zzgqi;)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqh;->zze()Lcom/google/android/gms/internal/ads/zzgql;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const-string v9, "HMAC_SHA256_256BITTAG"

    .line 111
    .line 112
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgqh;

    .line 116
    .line 117
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgqh;-><init>(Lcom/google/android/gms/internal/ads/zzgqk;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgqh;->zzb(I)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgqh;->zzc(I)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgqh;->zzd(Lcom/google/android/gms/internal/ads/zzgqj;)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgqh;->zza(Lcom/google/android/gms/internal/ads/zzgqi;)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqh;->zze()Lcom/google/android/gms/internal/ads/zzgql;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    const-string v7, "HMAC_SHA256_256BITTAG_RAW"

    .line 137
    .line 138
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgqh;

    .line 142
    .line 143
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgqh;-><init>(Lcom/google/android/gms/internal/ads/zzgqk;)V

    .line 144
    .line 145
    .line 146
    const/16 v7, 0x40

    .line 147
    .line 148
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgqh;->zzb(I)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgqh;->zzc(I)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzgqh;->zzd(Lcom/google/android/gms/internal/ads/zzgqj;)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 155
    .line 156
    .line 157
    sget-object v9, Lcom/google/android/gms/internal/ads/zzgqi;->zze:Lcom/google/android/gms/internal/ads/zzgqi;

    .line 158
    .line 159
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzgqh;->zza(Lcom/google/android/gms/internal/ads/zzgqi;)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqh;->zze()Lcom/google/android/gms/internal/ads/zzgql;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    const-string v10, "HMAC_SHA512_128BITTAG"

    .line 167
    .line 168
    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgqh;

    .line 172
    .line 173
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgqh;-><init>(Lcom/google/android/gms/internal/ads/zzgqk;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgqh;->zzb(I)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzgqh;->zzc(I)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgqh;->zzd(Lcom/google/android/gms/internal/ads/zzgqj;)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzgqh;->zza(Lcom/google/android/gms/internal/ads/zzgqi;)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqh;->zze()Lcom/google/android/gms/internal/ads/zzgql;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    const-string v5, "HMAC_SHA512_128BITTAG_RAW"

    .line 193
    .line 194
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgqh;

    .line 198
    .line 199
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgqh;-><init>(Lcom/google/android/gms/internal/ads/zzgqk;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgqh;->zzb(I)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgqh;->zzc(I)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzgqh;->zzd(Lcom/google/android/gms/internal/ads/zzgqj;)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzgqh;->zza(Lcom/google/android/gms/internal/ads/zzgqi;)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqh;->zze()Lcom/google/android/gms/internal/ads/zzgql;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    const-string v5, "HMAC_SHA512_256BITTAG"

    .line 219
    .line 220
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgqh;

    .line 224
    .line 225
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgqh;-><init>(Lcom/google/android/gms/internal/ads/zzgqk;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgqh;->zzb(I)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzgqh;->zzc(I)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgqh;->zzd(Lcom/google/android/gms/internal/ads/zzgqj;)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzgqh;->zza(Lcom/google/android/gms/internal/ads/zzgqi;)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqh;->zze()Lcom/google/android/gms/internal/ads/zzgql;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    const-string v4, "HMAC_SHA512_256BITTAG_RAW"

    .line 245
    .line 246
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    const-string v2, "HMAC_SHA512_512BITTAG"

    .line 250
    .line 251
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgqz;->zzb:Lcom/google/android/gms/internal/ads/zzgql;

    .line 252
    .line 253
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgqh;

    .line 257
    .line 258
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzgqh;-><init>(Lcom/google/android/gms/internal/ads/zzgqk;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgqh;->zzb(I)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzgqh;->zzc(I)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzgqh;->zzd(Lcom/google/android/gms/internal/ads/zzgqj;)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzgqh;->zza(Lcom/google/android/gms/internal/ads/zzgqi;)Lcom/google/android/gms/internal/ads/zzgqh;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqh;->zze()Lcom/google/android/gms/internal/ads/zzgql;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    const-string v3, "HMAC_SHA512_512BITTAG_RAW"

    .line 278
    .line 279
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnu;->zzd(Ljava/util/Map;)V

    .line 287
    .line 288
    .line 289
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgno;->zzb()Lcom/google/android/gms/internal/ads/zzgno;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgqg;->zzf:Lcom/google/android/gms/internal/ads/zzgnn;

    .line 294
    .line 295
    const-class v2, Lcom/google/android/gms/internal/ads/zzgql;

    .line 296
    .line 297
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgno;->zzc(Lcom/google/android/gms/internal/ads/zzgnn;Ljava/lang/Class;)V

    .line 298
    .line 299
    .line 300
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnq;->zza()Lcom/google/android/gms/internal/ads/zzgnq;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgqg;->zze:Lcom/google/android/gms/internal/ads/zzgnp;

    .line 305
    .line 306
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgnq;->zzb(Lcom/google/android/gms/internal/ads/zzgnp;Ljava/lang/Class;)V

    .line 307
    .line 308
    .line 309
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmp;->zzc()Lcom/google/android/gms/internal/ads/zzgmp;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgqg;->zzd:Lcom/google/android/gms/internal/ads/zzgfa;

    .line 314
    .line 315
    const/4 v2, 0x1

    .line 316
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzgmp;->zzf(Lcom/google/android/gms/internal/ads/zzgfa;IZ)V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 321
    .line 322
    const-string v0, "Can not use HMAC in FIPS-mode, as BoringCrypto module is not available."

    .line 323
    .line 324
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw p0
.end method
