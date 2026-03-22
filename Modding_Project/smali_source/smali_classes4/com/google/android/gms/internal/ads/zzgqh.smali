.class public final Lcom/google/android/gms/internal/ads/zzgqh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:Ljava/lang/Integer;

.field private zzb:Ljava/lang/Integer;

.field private zzc:Lcom/google/android/gms/internal/ads/zzgqi;

.field private zzd:Lcom/google/android/gms/internal/ads/zzgqj;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zza:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zzb:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zzc:Lcom/google/android/gms/internal/ads/zzgqi;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgqj;->zzd:Lcom/google/android/gms/internal/ads/zzgqj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zzd:Lcom/google/android/gms/internal/ads/zzgqj;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgqk;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zza:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zzb:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zzc:Lcom/google/android/gms/internal/ads/zzgqi;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgqj;->zzd:Lcom/google/android/gms/internal/ads/zzgqj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zzd:Lcom/google/android/gms/internal/ads/zzgqj;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgqi;)Lcom/google/android/gms/internal/ads/zzgqh;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zzc:Lcom/google/android/gms/internal/ads/zzgqi;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzgqh;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zza:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzgqh;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zzb:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzgqj;)Lcom/google/android/gms/internal/ads/zzgqh;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zzd:Lcom/google/android/gms/internal/ads/zzgqj;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzgql;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zza:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_f

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zzb:Ljava/lang/Integer;

    .line 6
    .line 7
    if-eqz v1, :cond_e

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zzc:Lcom/google/android/gms/internal/ads/zzgqi;

    .line 10
    .line 11
    if-eqz v1, :cond_d

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zzd:Lcom/google/android/gms/internal/ads/zzgqj;

    .line 14
    .line 15
    if-eqz v1, :cond_c

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/16 v1, 0x10

    .line 22
    .line 23
    if-lt v0, v1, :cond_b

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zzb:Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zzc:Lcom/google/android/gms/internal/ads/zzgqi;

    .line 32
    .line 33
    const/16 v3, 0xa

    .line 34
    .line 35
    if-lt v1, v3, :cond_a

    .line 36
    .line 37
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgqi;->zza:Lcom/google/android/gms/internal/ads/zzgqi;

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    const/16 v2, 0x14

    .line 42
    .line 43
    if-gt v1, v2, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 47
    .line 48
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v2, "Invalid tag size in bytes %d; can be at most 20 bytes for SHA1"

    .line 53
    .line 54
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgqi;->zzb:Lcom/google/android/gms/internal/ads/zzgqi;

    .line 63
    .line 64
    if-ne v2, v3, :cond_3

    .line 65
    .line 66
    const/16 v2, 0x1c

    .line 67
    .line 68
    if-gt v1, v2, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 72
    .line 73
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v2, "Invalid tag size in bytes %d; can be at most 28 bytes for SHA224"

    .line 78
    .line 79
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v1

    .line 87
    :cond_3
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgqi;->zzc:Lcom/google/android/gms/internal/ads/zzgqi;

    .line 88
    .line 89
    if-ne v2, v3, :cond_5

    .line 90
    .line 91
    const/16 v2, 0x20

    .line 92
    .line 93
    if-gt v1, v2, :cond_4

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 97
    .line 98
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v2, "Invalid tag size in bytes %d; can be at most 32 bytes for SHA256"

    .line 103
    .line 104
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v1

    .line 112
    :cond_5
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgqi;->zzd:Lcom/google/android/gms/internal/ads/zzgqi;

    .line 113
    .line 114
    if-ne v2, v3, :cond_7

    .line 115
    .line 116
    const/16 v2, 0x30

    .line 117
    .line 118
    if-gt v1, v2, :cond_6

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_6
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 122
    .line 123
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v2, "Invalid tag size in bytes %d; can be at most 48 bytes for SHA384"

    .line 128
    .line 129
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v1

    .line 137
    :cond_7
    sget-object v3, Lcom/google/android/gms/internal/ads/zzgqi;->zze:Lcom/google/android/gms/internal/ads/zzgqi;

    .line 138
    .line 139
    if-ne v2, v3, :cond_9

    .line 140
    .line 141
    const/16 v2, 0x40

    .line 142
    .line 143
    if-gt v1, v2, :cond_8

    .line 144
    .line 145
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgql;

    .line 146
    .line 147
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zza:Ljava/lang/Integer;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zzb:Ljava/lang/Integer;

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zzd:Lcom/google/android/gms/internal/ads/zzgqj;

    .line 160
    .line 161
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zzc:Lcom/google/android/gms/internal/ads/zzgqi;

    .line 162
    .line 163
    const/4 v8, 0x0

    .line 164
    move-object v3, v0

    .line 165
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzgql;-><init>(IILcom/google/android/gms/internal/ads/zzgqj;Lcom/google/android/gms/internal/ads/zzgqi;Lcom/google/android/gms/internal/ads/zzgqk;)V

    .line 166
    .line 167
    .line 168
    return-object v0

    .line 169
    :cond_8
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 170
    .line 171
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const-string v2, "Invalid tag size in bytes %d; can be at most 64 bytes for SHA512"

    .line 176
    .line 177
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v1

    .line 185
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 186
    .line 187
    const-string v1, "unknown hash type; must be SHA256, SHA384 or SHA512"

    .line 188
    .line 189
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v0

    .line 193
    :cond_a
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 194
    .line 195
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    const-string v2, "Invalid tag size in bytes %d; must be at least 10 bytes"

    .line 200
    .line 201
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v1

    .line 209
    :cond_b
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 210
    .line 211
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgqh;->zza:Ljava/lang/Integer;

    .line 212
    .line 213
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    const-string v2, "Invalid key size in bytes %d; must be at least 16 bytes"

    .line 218
    .line 219
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v0

    .line 227
    :cond_c
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 228
    .line 229
    const-string v1, "variant is not set"

    .line 230
    .line 231
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v0

    .line 235
    :cond_d
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 236
    .line 237
    const-string v1, "hash type is not set"

    .line 238
    .line 239
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v0

    .line 243
    :cond_e
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 244
    .line 245
    const-string v1, "tag size is not set"

    .line 246
    .line 247
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw v0

    .line 251
    :cond_f
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 252
    .line 253
    const-string v1, "key size is not set"

    .line 254
    .line 255
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v0
.end method
