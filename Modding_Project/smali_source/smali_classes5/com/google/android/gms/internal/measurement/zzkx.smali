.class final Lcom/google/android/gms/internal/measurement/zzkx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@23.0.0"


# static fields
.field public static final synthetic zza:I = 0x0

.field private static volatile zzb:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method static zza([BILcom/google/android/gms/internal/measurement/zzkw;)I
    .locals 1

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    aget-byte p1, p0, p1

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    iput p1, p2, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    invoke-static {p1, p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzkx;->zzb(I[BILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method static zzb(I[BILcom/google/android/gms/internal/measurement/zzkw;)I
    .locals 2

    .line 1
    aget-byte v0, p1, p2

    .line 2
    .line 3
    add-int/lit8 v1, p2, 0x1

    .line 4
    .line 5
    and-int/lit8 p0, p0, 0x7f

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    shl-int/lit8 p1, v0, 0x7

    .line 10
    .line 11
    or-int/2addr p0, p1

    .line 12
    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 16
    .line 17
    shl-int/lit8 v0, v0, 0x7

    .line 18
    .line 19
    or-int/2addr p0, v0

    .line 20
    add-int/lit8 v0, p2, 0x2

    .line 21
    .line 22
    aget-byte v1, p1, v1

    .line 23
    .line 24
    if-ltz v1, :cond_1

    .line 25
    .line 26
    shl-int/lit8 p1, v1, 0xe

    .line 27
    .line 28
    or-int/2addr p0, p1

    .line 29
    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 30
    .line 31
    return v0

    .line 32
    :cond_1
    and-int/lit8 v1, v1, 0x7f

    .line 33
    .line 34
    shl-int/lit8 v1, v1, 0xe

    .line 35
    .line 36
    or-int/2addr p0, v1

    .line 37
    add-int/lit8 v1, p2, 0x3

    .line 38
    .line 39
    aget-byte v0, p1, v0

    .line 40
    .line 41
    if-ltz v0, :cond_2

    .line 42
    .line 43
    shl-int/lit8 p1, v0, 0x15

    .line 44
    .line 45
    or-int/2addr p0, p1

    .line 46
    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 47
    .line 48
    return v1

    .line 49
    :cond_2
    and-int/lit8 v0, v0, 0x7f

    .line 50
    .line 51
    shl-int/lit8 v0, v0, 0x15

    .line 52
    .line 53
    or-int/2addr p0, v0

    .line 54
    add-int/lit8 p2, p2, 0x4

    .line 55
    .line 56
    aget-byte v0, p1, v1

    .line 57
    .line 58
    if-ltz v0, :cond_3

    .line 59
    .line 60
    shl-int/lit8 p1, v0, 0x1c

    .line 61
    .line 62
    or-int/2addr p0, p1

    .line 63
    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 64
    .line 65
    return p2

    .line 66
    :cond_3
    and-int/lit8 v0, v0, 0x7f

    .line 67
    .line 68
    shl-int/lit8 v0, v0, 0x1c

    .line 69
    .line 70
    or-int/2addr p0, v0

    .line 71
    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 72
    .line 73
    aget-byte p2, p1, p2

    .line 74
    .line 75
    if-gez p2, :cond_4

    .line 76
    .line 77
    move p2, v0

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 80
    .line 81
    return v0
.end method

.method static zzc([BILcom/google/android/gms/internal/measurement/zzkw;)I
    .locals 9

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    add-int/lit8 v3, p1, 0x1

    .line 9
    .line 10
    if-ltz v2, :cond_0

    .line 11
    .line 12
    iput-wide v0, p2, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:J

    .line 13
    .line 14
    return v3

    .line 15
    :cond_0
    add-int/lit8 p1, p1, 0x2

    .line 16
    .line 17
    aget-byte v2, p0, v3

    .line 18
    .line 19
    and-int/lit8 v3, v2, 0x7f

    .line 20
    .line 21
    const-wide/16 v4, 0x7f

    .line 22
    .line 23
    and-long/2addr v0, v4

    .line 24
    int-to-long v3, v3

    .line 25
    const/4 v5, 0x7

    .line 26
    shl-long/2addr v3, v5

    .line 27
    or-long/2addr v0, v3

    .line 28
    move v3, v5

    .line 29
    :goto_0
    if-gez v2, :cond_1

    .line 30
    .line 31
    add-int/lit8 v2, p1, 0x1

    .line 32
    .line 33
    aget-byte p1, p0, p1

    .line 34
    .line 35
    add-int/2addr v3, v5

    .line 36
    and-int/lit8 v4, p1, 0x7f

    .line 37
    .line 38
    int-to-long v6, v4

    .line 39
    shl-long/2addr v6, v3

    .line 40
    or-long/2addr v0, v6

    .line 41
    move v8, v2

    .line 42
    move v2, p1

    .line 43
    move p1, v8

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iput-wide v0, p2, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:J

    .line 46
    .line 47
    return p1
.end method

.method static zzd([BI)I
    .locals 3

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    add-int/lit8 v1, p1, 0x1

    .line 6
    .line 7
    aget-byte v1, p0, v1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    add-int/lit8 v2, p1, 0x2

    .line 12
    .line 13
    aget-byte v2, p0, v2

    .line 14
    .line 15
    and-int/lit16 v2, v2, 0xff

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x3

    .line 18
    .line 19
    aget-byte p0, p0, p1

    .line 20
    .line 21
    and-int/lit16 p0, p0, 0xff

    .line 22
    .line 23
    shl-int/lit8 p1, v1, 0x8

    .line 24
    .line 25
    or-int/2addr p1, v0

    .line 26
    shl-int/lit8 v0, v2, 0x10

    .line 27
    .line 28
    or-int/2addr p1, v0

    .line 29
    shl-int/lit8 p0, p0, 0x18

    .line 30
    .line 31
    or-int/2addr p0, p1

    .line 32
    return p0
.end method

.method static zze([BI)J
    .locals 18

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    add-int/lit8 v2, p1, 0x1

    .line 5
    .line 6
    aget-byte v2, p0, v2

    .line 7
    .line 8
    int-to-long v2, v2

    .line 9
    add-int/lit8 v4, p1, 0x2

    .line 10
    .line 11
    aget-byte v4, p0, v4

    .line 12
    .line 13
    int-to-long v4, v4

    .line 14
    add-int/lit8 v6, p1, 0x3

    .line 15
    .line 16
    aget-byte v6, p0, v6

    .line 17
    .line 18
    int-to-long v6, v6

    .line 19
    add-int/lit8 v8, p1, 0x4

    .line 20
    .line 21
    aget-byte v8, p0, v8

    .line 22
    .line 23
    int-to-long v8, v8

    .line 24
    add-int/lit8 v10, p1, 0x5

    .line 25
    .line 26
    aget-byte v10, p0, v10

    .line 27
    .line 28
    int-to-long v10, v10

    .line 29
    add-int/lit8 v12, p1, 0x6

    .line 30
    .line 31
    aget-byte v12, p0, v12

    .line 32
    .line 33
    int-to-long v12, v12

    .line 34
    add-int/lit8 v14, p1, 0x7

    .line 35
    .line 36
    aget-byte v14, p0, v14

    .line 37
    .line 38
    int-to-long v14, v14

    .line 39
    const-wide/16 v16, 0xff

    .line 40
    .line 41
    and-long v2, v2, v16

    .line 42
    .line 43
    and-long v4, v4, v16

    .line 44
    .line 45
    and-long v6, v6, v16

    .line 46
    .line 47
    and-long v8, v8, v16

    .line 48
    .line 49
    and-long v10, v10, v16

    .line 50
    .line 51
    and-long v12, v12, v16

    .line 52
    .line 53
    and-long v14, v14, v16

    .line 54
    .line 55
    and-long v0, v0, v16

    .line 56
    .line 57
    const/16 v16, 0x8

    .line 58
    .line 59
    shl-long v2, v2, v16

    .line 60
    .line 61
    or-long/2addr v0, v2

    .line 62
    const/16 v2, 0x10

    .line 63
    .line 64
    shl-long v2, v4, v2

    .line 65
    .line 66
    or-long/2addr v0, v2

    .line 67
    const/16 v2, 0x18

    .line 68
    .line 69
    shl-long v2, v6, v2

    .line 70
    .line 71
    or-long/2addr v0, v2

    .line 72
    const/16 v2, 0x20

    .line 73
    .line 74
    shl-long v2, v8, v2

    .line 75
    .line 76
    or-long/2addr v0, v2

    .line 77
    const/16 v2, 0x28

    .line 78
    .line 79
    shl-long v2, v10, v2

    .line 80
    .line 81
    or-long/2addr v0, v2

    .line 82
    const/16 v2, 0x30

    .line 83
    .line 84
    shl-long v2, v12, v2

    .line 85
    .line 86
    or-long/2addr v0, v2

    .line 87
    const/16 v2, 0x38

    .line 88
    .line 89
    shl-long v2, v14, v2

    .line 90
    .line 91
    or-long/2addr v0, v2

    .line 92
    return-wide v0
.end method

.method static zzf([BILcom/google/android/gms/internal/measurement/zzkw;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzmr;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p2, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 6
    .line 7
    if-ltz v0, :cond_b

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, ""

    .line 12
    .line 13
    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    sget v1, Lcom/google/android/gms/internal/measurement/zzos;->zza:I

    .line 17
    .line 18
    array-length v1, p0

    .line 19
    sub-int v2, v1, p1

    .line 20
    .line 21
    or-int v3, p1, v0

    .line 22
    .line 23
    sub-int/2addr v2, v0

    .line 24
    or-int/2addr v2, v3

    .line 25
    if-ltz v2, :cond_a

    .line 26
    .line 27
    add-int v1, p1, v0

    .line 28
    .line 29
    new-array v0, v0, [C

    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    move v2, v8

    .line 33
    :goto_0
    if-ge p1, v1, :cond_1

    .line 34
    .line 35
    aget-byte v3, p0, p1

    .line 36
    .line 37
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzoq;->zza(B)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    add-int/lit8 p1, p1, 0x1

    .line 44
    .line 45
    add-int/lit8 v4, v2, 0x1

    .line 46
    .line 47
    int-to-char v3, v3

    .line 48
    aput-char v3, v0, v2

    .line 49
    .line 50
    move v2, v4

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v9, v2

    .line 53
    :cond_2
    :goto_1
    if-ge p1, v1, :cond_9

    .line 54
    .line 55
    add-int/lit8 v2, p1, 0x1

    .line 56
    .line 57
    aget-byte v3, p0, p1

    .line 58
    .line 59
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzoq;->zza(B)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    add-int/lit8 p1, v9, 0x1

    .line 66
    .line 67
    int-to-char v3, v3

    .line 68
    aput-char v3, v0, v9

    .line 69
    .line 70
    move v9, p1

    .line 71
    move p1, v2

    .line 72
    :goto_2
    if-ge p1, v1, :cond_2

    .line 73
    .line 74
    aget-byte v2, p0, p1

    .line 75
    .line 76
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzoq;->zza(B)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    add-int/lit8 p1, p1, 0x1

    .line 83
    .line 84
    add-int/lit8 v3, v9, 0x1

    .line 85
    .line 86
    int-to-char v2, v2

    .line 87
    aput-char v2, v0, v9

    .line 88
    .line 89
    move v9, v3

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    const/16 v4, -0x20

    .line 92
    .line 93
    const-string v5, "Protocol message had invalid UTF-8."

    .line 94
    .line 95
    if-ge v3, v4, :cond_5

    .line 96
    .line 97
    if-ge v2, v1, :cond_4

    .line 98
    .line 99
    add-int/lit8 v4, v9, 0x1

    .line 100
    .line 101
    add-int/lit8 p1, p1, 0x2

    .line 102
    .line 103
    aget-byte v2, p0, v2

    .line 104
    .line 105
    invoke-static {v3, v2, v0, v9}, Lcom/google/android/gms/internal/measurement/zzoq;->zzb(BB[CI)V

    .line 106
    .line 107
    .line 108
    :goto_3
    move v9, v4

    .line 109
    goto :goto_1

    .line 110
    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 111
    .line 112
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :cond_5
    const/16 v4, -0x10

    .line 117
    .line 118
    if-ge v3, v4, :cond_7

    .line 119
    .line 120
    add-int/lit8 v4, v1, -0x1

    .line 121
    .line 122
    if-ge v2, v4, :cond_6

    .line 123
    .line 124
    add-int/lit8 v4, v9, 0x1

    .line 125
    .line 126
    add-int/lit8 v5, p1, 0x2

    .line 127
    .line 128
    aget-byte v2, p0, v2

    .line 129
    .line 130
    add-int/lit8 p1, p1, 0x3

    .line 131
    .line 132
    aget-byte v5, p0, v5

    .line 133
    .line 134
    invoke-static {v3, v2, v5, v0, v9}, Lcom/google/android/gms/internal/measurement/zzoq;->zzc(BBB[CI)V

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 139
    .line 140
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p0

    .line 144
    :cond_7
    add-int/lit8 v4, v1, -0x2

    .line 145
    .line 146
    if-ge v2, v4, :cond_8

    .line 147
    .line 148
    add-int/lit8 v4, p1, 0x2

    .line 149
    .line 150
    aget-byte v5, p0, v2

    .line 151
    .line 152
    add-int/lit8 v2, p1, 0x3

    .line 153
    .line 154
    aget-byte v4, p0, v4

    .line 155
    .line 156
    add-int/lit8 p1, p1, 0x4

    .line 157
    .line 158
    aget-byte v6, p0, v2

    .line 159
    .line 160
    move v2, v3

    .line 161
    move v3, v5

    .line 162
    move v5, v6

    .line 163
    move-object v6, v0

    .line 164
    move v7, v9

    .line 165
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzoq;->zzd(BBBB[CI)V

    .line 166
    .line 167
    .line 168
    add-int/lit8 v9, v9, 0x2

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_8
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 172
    .line 173
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p0

    .line 177
    :cond_9
    new-instance p0, Ljava/lang/String;

    .line 178
    .line 179
    invoke-direct {p0, v0, v8, v9}, Ljava/lang/String;-><init>([CII)V

    .line 180
    .line 181
    .line 182
    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    .line 183
    .line 184
    return v1

    .line 185
    :cond_a
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 186
    .line 187
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    filled-new-array {p2, p1, v0}, [Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    const-string p2, "buffer length=%d, index=%d, size=%d"

    .line 204
    .line 205
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p0

    .line 213
    :cond_b
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 214
    .line 215
    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 216
    .line 217
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p0
.end method

.method static zzg([BILcom/google/android/gms/internal/measurement/zzkw;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzmr;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p2, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 6
    .line 7
    if-ltz v0, :cond_2

    .line 8
    .line 9
    array-length v1, p0

    .line 10
    sub-int/2addr v1, p1

    .line 11
    if-gt v0, v1, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzlh;->zzb:Lcom/google/android/gms/internal/measurement/zzlh;

    .line 16
    .line 17
    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzlh;->zzh([BII)Lcom/google/android/gms/internal/measurement/zzlh;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    .line 25
    .line 26
    add-int/2addr p1, v0

    .line 27
    return p1

    .line 28
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 29
    .line 30
    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 37
    .line 38
    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 39
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method static zzh(Lcom/google/android/gms/internal/measurement/zznx;[BIILcom/google/android/gms/internal/measurement/zzkw;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zznx;->zza()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    move-object v0, v6

    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move v3, p2

    .line 9
    move v4, p3

    .line 10
    move-object v5, p4

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzkx;->zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zznx;[BIILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-interface {p0, v6}, Lcom/google/android/gms/internal/measurement/zznx;->zzj(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object v6, p4, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    .line 19
    .line 20
    return p1
.end method

.method static zzi(Lcom/google/android/gms/internal/measurement/zznx;[BIIILcom/google/android/gms/internal/measurement/zzkw;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zznx;->zza()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    move-object v0, v7

    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move v3, p2

    .line 9
    move v4, p3

    .line 10
    move v5, p4

    .line 11
    move-object v6, p5

    .line 12
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzkx;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zznx;[BIIILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-interface {p0, v7}, Lcom/google/android/gms/internal/measurement/zznx;->zzj(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object v7, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    .line 20
    .line 21
    return p1
.end method

.method static zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zznx;[BIILcom/google/android/gms/internal/measurement/zzkw;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    add-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    aget-byte p3, p2, p3

    .line 4
    .line 5
    if-gez p3, :cond_0

    .line 6
    .line 7
    invoke-static {p3, p2, v0, p5}, Lcom/google/android/gms/internal/measurement/zzkx;->zzb(I[BILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget p3, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 12
    .line 13
    :cond_0
    move v3, v0

    .line 14
    if-ltz p3, :cond_1

    .line 15
    .line 16
    sub-int/2addr p4, v3

    .line 17
    if-gt p3, p4, :cond_1

    .line 18
    .line 19
    iget p4, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zze:I

    .line 20
    .line 21
    add-int/lit8 p4, p4, 0x1

    .line 22
    .line 23
    iput p4, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zze:I

    .line 24
    .line 25
    invoke-static {p4}, Lcom/google/android/gms/internal/measurement/zzkx;->zzq(I)V

    .line 26
    .line 27
    .line 28
    add-int/2addr p3, v3

    .line 29
    move-object v0, p1

    .line 30
    move-object v1, p0

    .line 31
    move-object v2, p2

    .line 32
    move v4, p3

    .line 33
    move-object v5, p5

    .line 34
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zznx;->zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzkw;)V

    .line 35
    .line 36
    .line 37
    iget p1, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zze:I

    .line 38
    .line 39
    add-int/lit8 p1, p1, -0x1

    .line 40
    .line 41
    iput p1, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zze:I

    .line 42
    .line 43
    iput-object p0, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    .line 44
    .line 45
    return p3

    .line 46
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 47
    .line 48
    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method static zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zznx;[BIIILcom/google/android/gms/internal/measurement/zzkw;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zznp;

    .line 3
    .line 4
    iget p1, p6, Lcom/google/android/gms/internal/measurement/zzkw;->zze:I

    .line 5
    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 7
    .line 8
    iput p1, p6, Lcom/google/android/gms/internal/measurement/zzkw;->zze:I

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzkx;->zzq(I)V

    .line 11
    .line 12
    .line 13
    move-object v1, p0

    .line 14
    move-object v2, p2

    .line 15
    move v3, p3

    .line 16
    move v4, p4

    .line 17
    move v5, p5

    .line 18
    move-object v6, p6

    .line 19
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zznp;->zzh(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget p2, p6, Lcom/google/android/gms/internal/measurement/zzkw;->zze:I

    .line 24
    .line 25
    add-int/lit8 p2, p2, -0x1

    .line 26
    .line 27
    iput p2, p6, Lcom/google/android/gms/internal/measurement/zzkw;->zze:I

    .line 28
    .line 29
    iput-object p0, p6, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    .line 30
    .line 31
    return p1
.end method

.method static zzl(I[BIILcom/google/android/gms/internal/measurement/zzmo;Lcom/google/android/gms/internal/measurement/zzkw;)I
    .locals 2

    .line 1
    check-cast p4, Lcom/google/android/gms/internal/measurement/zzmg;

    .line 2
    .line 3
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    iget v0, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 8
    .line 9
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/measurement/zzmg;->zzh(I)V

    .line 10
    .line 11
    .line 12
    :goto_0
    if-ge p2, p3, :cond_1

    .line 13
    .line 14
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v1, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 19
    .line 20
    if-eq p0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-static {p1, v0, p5}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iget v0, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 28
    .line 29
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/measurement/zzmg;->zzh(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    return p2
.end method

.method static zzm([BILcom/google/android/gms/internal/measurement/zzmo;Lcom/google/android/gms/internal/measurement/zzkw;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzmg;

    .line 2
    .line 3
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget v0, p3, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 8
    .line 9
    add-int/2addr v0, p1

    .line 10
    :goto_0
    if-ge p1, v0, :cond_0

    .line 11
    .line 12
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget v1, p3, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 17
    .line 18
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzmg;->zzh(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    return p1

    .line 25
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 26
    .line 27
    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method static zzn(Lcom/google/android/gms/internal/measurement/zznx;I[BIILcom/google/android/gms/internal/measurement/zzmo;Lcom/google/android/gms/internal/measurement/zzkw;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/measurement/zzkx;->zzh(Lcom/google/android/gms/internal/measurement/zznx;[BIILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    iget-object v0, p6, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    :goto_0
    if-ge p3, p4, :cond_1

    .line 11
    .line 12
    invoke-static {p2, p3, p6}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v1, p6, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 17
    .line 18
    if-eq p1, v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/android/gms/internal/measurement/zzkx;->zzh(Lcom/google/android/gms/internal/measurement/zznx;[BIILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    iget-object v0, p6, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    return p3
.end method

.method static zzo(I[BIILcom/google/android/gms/internal/measurement/zzoj;Lcom/google/android/gms/internal/measurement/zzkw;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzmr;
        }
    .end annotation

    .line 1
    ushr-int/lit8 v0, p0, 0x3

    .line 2
    .line 3
    const-string v1, "Protocol message contained an invalid tag (zero)."

    .line 4
    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    and-int/lit8 v0, p0, 0x7

    .line 8
    .line 9
    if-eqz v0, :cond_a

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_9

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq v0, v3, :cond_5

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    if-eq v0, v3, :cond_1

    .line 19
    .line 20
    const/4 p3, 0x5

    .line 21
    if-ne v0, p3, :cond_0

    .line 22
    .line 23
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzkx;->zzd([BI)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/zzoj;->zzk(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 p2, p2, 0x4

    .line 35
    .line 36
    return p2

    .line 37
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 38
    .line 39
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_1
    and-int/lit8 v0, p0, -0x8

    .line 44
    .line 45
    or-int/lit8 v0, v0, 0x4

    .line 46
    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoj;->zzb()Lcom/google/android/gms/internal/measurement/zzoj;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget v3, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zze:I

    .line 52
    .line 53
    add-int/2addr v3, v2

    .line 54
    iput v3, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zze:I

    .line 55
    .line 56
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzkx;->zzq(I)V

    .line 57
    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    :goto_0
    if-ge p2, p3, :cond_3

    .line 61
    .line 62
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    iget v2, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 67
    .line 68
    if-ne v2, v0, :cond_2

    .line 69
    .line 70
    move p2, v5

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move v3, v2

    .line 73
    move-object v4, p1

    .line 74
    move v6, p3

    .line 75
    move-object v7, v1

    .line 76
    move-object v8, p5

    .line 77
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/measurement/zzkx;->zzo(I[BIILcom/google/android/gms/internal/measurement/zzoj;Lcom/google/android/gms/internal/measurement/zzkw;)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    :goto_1
    iget p1, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zze:I

    .line 83
    .line 84
    add-int/lit8 p1, p1, -0x1

    .line 85
    .line 86
    iput p1, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zze:I

    .line 87
    .line 88
    if-gt p2, p3, :cond_4

    .line 89
    .line 90
    if-ne v2, v0, :cond_4

    .line 91
    .line 92
    invoke-virtual {p4, p0, v1}, Lcom/google/android/gms/internal/measurement/zzoj;->zzk(ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return p2

    .line 96
    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 97
    .line 98
    const-string p1, "Failed to parse the message."

    .line 99
    .line 100
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :cond_5
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    iget p3, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 109
    .line 110
    if-ltz p3, :cond_8

    .line 111
    .line 112
    array-length p5, p1

    .line 113
    sub-int/2addr p5, p2

    .line 114
    if-gt p3, p5, :cond_7

    .line 115
    .line 116
    if-nez p3, :cond_6

    .line 117
    .line 118
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzlh;->zzb:Lcom/google/android/gms/internal/measurement/zzlh;

    .line 119
    .line 120
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/zzoj;->zzk(ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_6
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzlh;->zzh([BII)Lcom/google/android/gms/internal/measurement/zzlh;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/zzoj;->zzk(ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :goto_2
    add-int/2addr p2, p3

    .line 132
    return p2

    .line 133
    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 134
    .line 135
    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 136
    .line 137
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p0

    .line 141
    :cond_8
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 142
    .line 143
    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 144
    .line 145
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :cond_9
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzkx;->zze([BI)J

    .line 150
    .line 151
    .line 152
    move-result-wide v0

    .line 153
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/zzoj;->zzk(ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    add-int/lit8 p2, p2, 0x8

    .line 161
    .line 162
    return p2

    .line 163
    :cond_a
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc([BILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    iget-wide p2, p5, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:J

    .line 168
    .line 169
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p4, p0, p2}, Lcom/google/android/gms/internal/measurement/zzoj;->zzk(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    return p1

    .line 177
    :cond_b
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 178
    .line 179
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p0
.end method

.method static zzp(I[BIILcom/google/android/gms/internal/measurement/zzkw;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzmr;
        }
    .end annotation

    .line 1
    ushr-int/lit8 v0, p0, 0x3

    .line 2
    .line 3
    const-string v1, "Protocol message contained an invalid tag (zero)."

    .line 4
    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    and-int/lit8 v0, p0, 0x7

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_5

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v2, :cond_4

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    if-eq v0, v2, :cond_1

    .line 19
    .line 20
    const/4 p0, 0x5

    .line 21
    if-ne v0, p0, :cond_0

    .line 22
    .line 23
    add-int/lit8 p2, p2, 0x4

    .line 24
    .line 25
    return p2

    .line 26
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 27
    .line 28
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_1
    and-int/lit8 p0, p0, -0x8

    .line 33
    .line 34
    or-int/lit8 p0, p0, 0x4

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    :goto_0
    if-ge p2, p3, :cond_2

    .line 38
    .line 39
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    iget v0, p4, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 44
    .line 45
    if-eq v0, p0, :cond_2

    .line 46
    .line 47
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzkx;->zzp(I[BIILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    if-gt p2, p3, :cond_3

    .line 53
    .line 54
    if-ne v0, p0, :cond_3

    .line 55
    .line 56
    return p2

    .line 57
    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 58
    .line 59
    const-string p1, "Failed to parse the message."

    .line 60
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_4
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/measurement/zzkx;->zza([BILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    iget p1, p4, Lcom/google/android/gms/internal/measurement/zzkw;->zza:I

    .line 70
    .line 71
    add-int/2addr p0, p1

    .line 72
    return p0

    .line 73
    :cond_5
    add-int/lit8 p2, p2, 0x8

    .line 74
    .line 75
    return p2

    .line 76
    :cond_6
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/measurement/zzkx;->zzc([BILcom/google/android/gms/internal/measurement/zzkw;)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    return p0

    .line 81
    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 82
    .line 83
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0
.end method

.method private static zzq(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzmr;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/measurement/zzkx;->zzb:I

    .line 2
    .line 3
    if-ge p0, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 7
    .line 8
    const-string v0, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzmr;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method
