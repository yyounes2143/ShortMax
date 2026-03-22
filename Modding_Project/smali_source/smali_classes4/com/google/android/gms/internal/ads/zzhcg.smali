.class abstract Lcom/google/android/gms/internal/ads/zzhcg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static final zzc(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgzw;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr v0, p1

    .line 6
    or-int v1, p1, p2

    .line 7
    .line 8
    sub-int/2addr v0, p2

    .line 9
    or-int/2addr v0, v1

    .line 10
    if-ltz v0, :cond_9

    .line 11
    .line 12
    add-int v0, p1, p2

    .line 13
    .line 14
    new-array p2, p2, [C

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    move v1, v7

    .line 18
    :goto_0
    if-ge p1, v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhcf;->zzd(B)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    add-int/lit8 p1, p1, 0x1

    .line 31
    .line 32
    add-int/lit8 v3, v1, 0x1

    .line 33
    .line 34
    int-to-char v2, v2

    .line 35
    aput-char v2, p2, v1

    .line 36
    .line 37
    move v1, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v8, v1

    .line 40
    :cond_1
    :goto_1
    if-ge p1, v0, :cond_8

    .line 41
    .line 42
    add-int/lit8 v1, p1, 0x1

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhcf;->zzd(B)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    add-int/lit8 p1, v8, 0x1

    .line 55
    .line 56
    int-to-char v2, v2

    .line 57
    aput-char v2, p2, v8

    .line 58
    .line 59
    move v8, p1

    .line 60
    move p1, v1

    .line 61
    :goto_2
    if-ge p1, v0, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhcf;->zzd(B)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    add-int/lit8 p1, p1, 0x1

    .line 74
    .line 75
    add-int/lit8 v2, v8, 0x1

    .line 76
    .line 77
    int-to-char v1, v1

    .line 78
    aput-char v1, p2, v8

    .line 79
    .line 80
    move v8, v2

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhcf;->zzf(B)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    const-string v4, "Protocol message had invalid UTF-8."

    .line 87
    .line 88
    if-eqz v3, :cond_4

    .line 89
    .line 90
    if-ge v1, v0, :cond_3

    .line 91
    .line 92
    add-int/lit8 v3, v8, 0x1

    .line 93
    .line 94
    add-int/lit8 p1, p1, 0x2

    .line 95
    .line 96
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-static {v2, v1, p2, v8}, Lcom/google/android/gms/internal/ads/zzhcf;->zzc(BB[CI)V

    .line 101
    .line 102
    .line 103
    :goto_3
    move v8, v3

    .line 104
    goto :goto_1

    .line 105
    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgzw;

    .line 106
    .line 107
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzgzw;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :cond_4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhcf;->zze(B)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_6

    .line 116
    .line 117
    add-int/lit8 v3, v0, -0x1

    .line 118
    .line 119
    if-ge v1, v3, :cond_5

    .line 120
    .line 121
    add-int/lit8 v3, v8, 0x1

    .line 122
    .line 123
    add-int/lit8 v4, p1, 0x2

    .line 124
    .line 125
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    add-int/lit8 p1, p1, 0x3

    .line 130
    .line 131
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    invoke-static {v2, v1, v4, p2, v8}, Lcom/google/android/gms/internal/ads/zzhcf;->zzb(BBB[CI)V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgzw;

    .line 140
    .line 141
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzgzw;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0

    .line 145
    :cond_6
    add-int/lit8 v3, v0, -0x2

    .line 146
    .line 147
    if-ge v1, v3, :cond_7

    .line 148
    .line 149
    add-int/lit8 v3, p1, 0x2

    .line 150
    .line 151
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    add-int/lit8 v1, p1, 0x3

    .line 156
    .line 157
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    add-int/lit8 p1, p1, 0x4

    .line 162
    .line 163
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    move v1, v2

    .line 168
    move v2, v4

    .line 169
    move v4, v5

    .line 170
    move-object v5, p2

    .line 171
    move v6, v8

    .line 172
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzhcf;->zza(BBBB[CI)V

    .line 173
    .line 174
    .line 175
    add-int/lit8 v8, v8, 0x2

    .line 176
    .line 177
    goto/16 :goto_1

    .line 178
    .line 179
    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgzw;

    .line 180
    .line 181
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzgzw;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p0

    .line 185
    :cond_8
    new-instance p0, Ljava/lang/String;

    .line 186
    .line 187
    invoke-direct {p0, p2, v7, v8}, Ljava/lang/String;-><init>([CII)V

    .line 188
    .line 189
    .line 190
    return-object p0

    .line 191
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 192
    .line 193
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    const-string p1, "buffer limit=%d, index=%d, limit=%d"

    .line 214
    .line 215
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw v0
.end method


# virtual methods
.method abstract zza(I[BII)I
.end method

.method abstract zzb([BII)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgzw;
        }
    .end annotation
.end method
