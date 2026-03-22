.class public final Lcom/google/android/gms/internal/ads/zzamv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamz;


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/ads/zzem;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzen;

.field private final zze:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:I

.field private final zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Lcom/google/android/gms/internal/ads/zzafb;

.field private zzj:Lcom/google/android/gms/internal/ads/zzafb;

.field private zzk:I

.field private zzl:I

.field private zzm:I

.field private zzn:Z

.field private zzo:Z

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:Z

.field private zzt:J

.field private zzu:I

.field private zzv:J

.field private zzw:Lcom/google/android/gms/internal/ads/zzafb;

.field private zzx:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/zzamv;->zza:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzem;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzc:Lcom/google/android/gms/internal/ads/zzem;

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    .line 15
    .line 16
    sget-object v1, Lcom/google/android/gms/internal/ads/zzamv;->zza:[B

    .line 17
    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzd:Lcom/google/android/gms/internal/ads/zzen;

    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzp:I

    .line 31
    .line 32
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzq:I

    .line 33
    .line 34
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzt:J

    .line 40
    .line 41
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzv:J

    .line 42
    .line 43
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzb:Z

    .line 44
    .line 45
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamv;->zze:Ljava/lang/String;

    .line 46
    .line 47
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzf:I

    .line 48
    .line 49
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzg:Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzamv;->zzh()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static zzf(I)Z
    .locals 1

    .line 1
    const v0, 0xfff6

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    const v0, 0xfff0

    .line 6
    .line 7
    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method private final zzg()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzo:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzamv;->zzh()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final zzh()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzk:I

    .line 3
    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzl:I

    .line 5
    .line 6
    const/16 v0, 0x100

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzm:I

    .line 9
    .line 10
    return-void
.end method

.method private final zzi()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzk:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzl:I

    .line 6
    .line 7
    return-void
.end method

.method private final zzj(Lcom/google/android/gms/internal/ads/zzafb;JII)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzk:I

    .line 3
    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzl:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzw:Lcom/google/android/gms/internal/ads/zzafb;

    .line 7
    .line 8
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzx:J

    .line 9
    .line 10
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzu:I

    .line 11
    .line 12
    return-void
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzen;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzl:I

    .line 6
    .line 7
    sub-int v1, p3, v1

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzl:I

    .line 14
    .line 15
    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 16
    .line 17
    .line 18
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzl:I

    .line 19
    .line 20
    add-int/2addr p1, v0

    .line 21
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzl:I

    .line 22
    .line 23
    if-ne p1, p3, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method private static final zzl(BB)Z
    .locals 0

    .line 1
    and-int/lit16 p0, p1, 0xff

    .line 2
    .line 3
    const p1, 0xff00

    .line 4
    .line 5
    .line 6
    or-int/2addr p0, p1

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzamv;->zzf(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final zzm(Lcom/google/android/gms/internal/ads/zzen;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-ge v0, p2, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzen;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    const/4 v9, -0x1

    .line 7
    const/4 v10, 0x2

    .line 8
    const/4 v11, 0x1

    .line 9
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzi:Lcom/google/android/gms/internal/ads/zzafb;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_1d

    .line 21
    .line 22
    iget v0, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzk:I

    .line 23
    .line 24
    const/16 v1, 0xd

    .line 25
    .line 26
    const/4 v2, 0x7

    .line 27
    const/4 v3, 0x4

    .line 28
    const/4 v4, 0x3

    .line 29
    if-eqz v0, :cond_b

    .line 30
    .line 31
    if-eq v0, v11, :cond_8

    .line 32
    .line 33
    const/16 v5, 0xa

    .line 34
    .line 35
    if-eq v0, v10, :cond_7

    .line 36
    .line 37
    if-eq v0, v4, :cond_2

    .line 38
    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget v1, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzu:I

    .line 44
    .line 45
    iget v2, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzl:I

    .line 46
    .line 47
    sub-int/2addr v1, v2

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzw:Lcom/google/android/gms/internal/ads/zzafb;

    .line 53
    .line 54
    invoke-interface {v1, v7, v0}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    .line 55
    .line 56
    .line 57
    iget v1, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzl:I

    .line 58
    .line 59
    add-int/2addr v1, v0

    .line 60
    iput v1, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzl:I

    .line 61
    .line 62
    iget v0, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzu:I

    .line 63
    .line 64
    if-ne v1, v0, :cond_0

    .line 65
    .line 66
    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzv:J

    .line 67
    .line 68
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    cmp-long v0, v0, v2

    .line 74
    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    move v0, v11

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move v0, v8

    .line 80
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    .line 81
    .line 82
    .line 83
    iget-object v12, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzw:Lcom/google/android/gms/internal/ads/zzafb;

    .line 84
    .line 85
    iget-wide v13, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzv:J

    .line 86
    .line 87
    iget v0, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzu:I

    .line 88
    .line 89
    const/16 v17, 0x0

    .line 90
    .line 91
    const/16 v18, 0x0

    .line 92
    .line 93
    const/4 v15, 0x1

    .line 94
    move/from16 v16, v0

    .line 95
    .line 96
    invoke-interface/range {v12 .. v18}, Lcom/google/android/gms/internal/ads/zzafb;->zzt(JIIILcom/google/android/gms/internal/ads/zzafa;)V

    .line 97
    .line 98
    .line 99
    iget-wide v0, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzv:J

    .line 100
    .line 101
    iget-wide v2, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzx:J

    .line 102
    .line 103
    add-long/2addr v0, v2

    .line 104
    iput-wide v0, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzv:J

    .line 105
    .line 106
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamv;->zzh()V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzn:Z

    .line 111
    .line 112
    const/4 v12, 0x5

    .line 113
    if-eq v11, v0, :cond_3

    .line 114
    .line 115
    move v0, v12

    .line 116
    goto :goto_2

    .line 117
    :cond_3
    move v0, v2

    .line 118
    :goto_2
    iget-object v13, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzc:Lcom/google/android/gms/internal/ads/zzem;

    .line 119
    .line 120
    iget-object v14, v13, Lcom/google/android/gms/internal/ads/zzem;->zza:[B

    .line 121
    .line 122
    invoke-direct {v6, v7, v14, v0}, Lcom/google/android/gms/internal/ads/zzamv;->zzk(Lcom/google/android/gms/internal/ads/zzen;[BI)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    .line 128
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzem;->zzl(I)V

    .line 129
    .line 130
    .line 131
    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzs:Z

    .line 132
    .line 133
    if-nez v0, :cond_5

    .line 134
    .line 135
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    add-int/2addr v0, v11

    .line 140
    if-eq v0, v10, :cond_4

    .line 141
    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v14, "Detected audio object type: "

    .line 148
    .line 149
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v0, ", but assuming AAC LC."

    .line 156
    .line 157
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v5, "AdtsReader"

    .line 165
    .line 166
    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_4
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    iget v5, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzq:I

    .line 177
    .line 178
    shr-int/lit8 v12, v5, 0x1

    .line 179
    .line 180
    and-int/2addr v12, v2

    .line 181
    or-int/lit8 v12, v12, 0x10

    .line 182
    .line 183
    int-to-byte v12, v12

    .line 184
    shl-int/lit8 v2, v5, 0x7

    .line 185
    .line 186
    shl-int/2addr v0, v4

    .line 187
    and-int/lit16 v2, v2, 0x80

    .line 188
    .line 189
    and-int/lit8 v0, v0, 0x78

    .line 190
    .line 191
    or-int/2addr v0, v2

    .line 192
    int-to-byte v0, v0

    .line 193
    new-array v2, v10, [B

    .line 194
    .line 195
    aput-byte v12, v2, v8

    .line 196
    .line 197
    aput-byte v0, v2, v11

    .line 198
    .line 199
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzacr;->zza([B)Lcom/google/android/gms/internal/ads/zzacp;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    new-instance v4, Lcom/google/android/gms/internal/ads/zzx;

    .line 204
    .line 205
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 206
    .line 207
    .line 208
    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzh:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 211
    .line 212
    .line 213
    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzg:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 216
    .line 217
    .line 218
    const-string v5, "audio/mp4a-latm"

    .line 219
    .line 220
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 221
    .line 222
    .line 223
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzacp;->zzc:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 226
    .line 227
    .line 228
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzacp;->zzb:I

    .line 229
    .line 230
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzD(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 231
    .line 232
    .line 233
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzacp;->zza:I

    .line 234
    .line 235
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 236
    .line 237
    .line 238
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzT(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    .line 243
    .line 244
    .line 245
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzamv;->zze:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 248
    .line 249
    .line 250
    iget v0, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzf:I

    .line 251
    .line 252
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzaf(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzz;->zzH:I

    .line 260
    .line 261
    int-to-long v4, v2

    .line 262
    const-wide/32 v14, 0x3d090000

    .line 263
    .line 264
    .line 265
    div-long/2addr v14, v4

    .line 266
    iput-wide v14, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzt:J

    .line 267
    .line 268
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzi:Lcom/google/android/gms/internal/ads/zzafb;

    .line 269
    .line 270
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 271
    .line 272
    .line 273
    iput-boolean v11, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzs:Z

    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_5
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 277
    .line 278
    .line 279
    :goto_3
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    add-int/lit8 v1, v0, -0x7

    .line 287
    .line 288
    iget-boolean v2, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzn:Z

    .line 289
    .line 290
    if-eqz v2, :cond_6

    .line 291
    .line 292
    add-int/lit8 v0, v0, -0x9

    .line 293
    .line 294
    move v5, v0

    .line 295
    goto :goto_4

    .line 296
    :cond_6
    move v5, v1

    .line 297
    :goto_4
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzi:Lcom/google/android/gms/internal/ads/zzafb;

    .line 298
    .line 299
    iget-wide v2, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzt:J

    .line 300
    .line 301
    const/4 v4, 0x0

    .line 302
    move-object/from16 v0, p0

    .line 303
    .line 304
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzamv;->zzj(Lcom/google/android/gms/internal/ads/zzafb;JII)V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_0

    .line 308
    .line 309
    :cond_7
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzd:Lcom/google/android/gms/internal/ads/zzen;

    .line 310
    .line 311
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-direct {v6, v7, v1, v5}, Lcom/google/android/gms/internal/ads/zzamv;->zzk(Lcom/google/android/gms/internal/ads/zzen;[BI)Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-eqz v1, :cond_0

    .line 320
    .line 321
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzj:Lcom/google/android/gms/internal/ads/zzafb;

    .line 322
    .line 323
    invoke-interface {v1, v0, v5}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    .line 324
    .line 325
    .line 326
    const/4 v1, 0x6

    .line 327
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 328
    .line 329
    .line 330
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzj:Lcom/google/android/gms/internal/ads/zzafb;

    .line 331
    .line 332
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzl()I

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    const/16 v4, 0xa

    .line 337
    .line 338
    add-int/lit8 v5, v0, 0xa

    .line 339
    .line 340
    const-wide/16 v2, 0x0

    .line 341
    .line 342
    move-object/from16 v0, p0

    .line 343
    .line 344
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzamv;->zzj(Lcom/google/android/gms/internal/ads/zzafb;JII)V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_0

    .line 348
    .line 349
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-eqz v0, :cond_0

    .line 354
    .line 355
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzc:Lcom/google/android/gms/internal/ads/zzem;

    .line 356
    .line 357
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzem;->zza:[B

    .line 358
    .line 359
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    aget-byte v2, v2, v4

    .line 368
    .line 369
    aput-byte v2, v1, v8

    .line 370
    .line 371
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzem;->zzl(I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    iget v1, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzq:I

    .line 379
    .line 380
    if-eq v1, v9, :cond_9

    .line 381
    .line 382
    if-eq v0, v1, :cond_9

    .line 383
    .line 384
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamv;->zzg()V

    .line 385
    .line 386
    .line 387
    goto/16 :goto_0

    .line 388
    .line 389
    :cond_9
    iget-boolean v1, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzo:Z

    .line 390
    .line 391
    if-nez v1, :cond_a

    .line 392
    .line 393
    iput-boolean v11, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzo:Z

    .line 394
    .line 395
    iget v1, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzr:I

    .line 396
    .line 397
    iput v1, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzp:I

    .line 398
    .line 399
    iput v0, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzq:I

    .line 400
    .line 401
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamv;->zzi()V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_0

    .line 405
    .line 406
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    .line 411
    .line 412
    .line 413
    move-result v5

    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 415
    .line 416
    .line 417
    move-result v12

    .line 418
    :goto_5
    if-ge v5, v12, :cond_1c

    .line 419
    .line 420
    add-int/lit8 v13, v5, 0x1

    .line 421
    .line 422
    aget-byte v14, v0, v5

    .line 423
    .line 424
    and-int/lit16 v15, v14, 0xff

    .line 425
    .line 426
    iget v8, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzm:I

    .line 427
    .line 428
    const/16 v4, 0x200

    .line 429
    .line 430
    if-ne v8, v4, :cond_15

    .line 431
    .line 432
    int-to-byte v8, v15

    .line 433
    invoke-static {v9, v8}, Lcom/google/android/gms/internal/ads/zzamv;->zzl(BB)Z

    .line 434
    .line 435
    .line 436
    move-result v8

    .line 437
    if-eqz v8, :cond_15

    .line 438
    .line 439
    iget-boolean v8, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzo:Z

    .line 440
    .line 441
    if-nez v8, :cond_12

    .line 442
    .line 443
    add-int/lit8 v8, v5, -0x1

    .line 444
    .line 445
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 446
    .line 447
    .line 448
    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzc:Lcom/google/android/gms/internal/ads/zzem;

    .line 449
    .line 450
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzem;->zza:[B

    .line 451
    .line 452
    invoke-static {v7, v2, v11}, Lcom/google/android/gms/internal/ads/zzamv;->zzm(Lcom/google/android/gms/internal/ads/zzen;[BI)Z

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    if-nez v2, :cond_d

    .line 457
    .line 458
    :cond_c
    const/4 v10, 0x7

    .line 459
    goto/16 :goto_9

    .line 460
    .line 461
    :cond_d
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzl(I)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 465
    .line 466
    .line 467
    move-result v2

    .line 468
    iget v1, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzp:I

    .line 469
    .line 470
    if-eq v1, v9, :cond_e

    .line 471
    .line 472
    if-ne v2, v1, :cond_c

    .line 473
    .line 474
    :cond_e
    iget v1, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzq:I

    .line 475
    .line 476
    if-eq v1, v9, :cond_10

    .line 477
    .line 478
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzem;->zza:[B

    .line 479
    .line 480
    invoke-static {v7, v1, v11}, Lcom/google/android/gms/internal/ads/zzamv;->zzm(Lcom/google/android/gms/internal/ads/zzen;[BI)Z

    .line 481
    .line 482
    .line 483
    move-result v1

    .line 484
    if-nez v1, :cond_f

    .line 485
    .line 486
    goto :goto_6

    .line 487
    :cond_f
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzem;->zzl(I)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 491
    .line 492
    .line 493
    move-result v1

    .line 494
    iget v10, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzq:I

    .line 495
    .line 496
    if-ne v1, v10, :cond_c

    .line 497
    .line 498
    add-int/lit8 v1, v5, 0x1

    .line 499
    .line 500
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 501
    .line 502
    .line 503
    :cond_10
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzem;->zza:[B

    .line 504
    .line 505
    invoke-static {v7, v1, v3}, Lcom/google/android/gms/internal/ads/zzamv;->zzm(Lcom/google/android/gms/internal/ads/zzen;[BI)Z

    .line 506
    .line 507
    .line 508
    move-result v1

    .line 509
    if-eqz v1, :cond_12

    .line 510
    .line 511
    const/16 v1, 0xe

    .line 512
    .line 513
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzem;->zzl(I)V

    .line 514
    .line 515
    .line 516
    const/16 v1, 0xd

    .line 517
    .line 518
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 519
    .line 520
    .line 521
    move-result v4

    .line 522
    const/4 v10, 0x7

    .line 523
    if-lt v4, v10, :cond_16

    .line 524
    .line 525
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 526
    .line 527
    .line 528
    move-result-object v19

    .line 529
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 530
    .line 531
    .line 532
    move-result v1

    .line 533
    add-int/2addr v8, v4

    .line 534
    if-ge v8, v1, :cond_12

    .line 535
    .line 536
    aget-byte v4, v19, v8

    .line 537
    .line 538
    if-ne v4, v9, :cond_11

    .line 539
    .line 540
    add-int/2addr v8, v11

    .line 541
    if-eq v8, v1, :cond_12

    .line 542
    .line 543
    aget-byte v1, v19, v8

    .line 544
    .line 545
    invoke-static {v9, v1}, Lcom/google/android/gms/internal/ads/zzamv;->zzl(BB)Z

    .line 546
    .line 547
    .line 548
    move-result v4

    .line 549
    if-eqz v4, :cond_16

    .line 550
    .line 551
    and-int/lit8 v1, v1, 0x8

    .line 552
    .line 553
    const/4 v4, 0x3

    .line 554
    shr-int/2addr v1, v4

    .line 555
    if-ne v1, v2, :cond_16

    .line 556
    .line 557
    goto :goto_6

    .line 558
    :cond_11
    const/16 v2, 0x49

    .line 559
    .line 560
    if-ne v4, v2, :cond_16

    .line 561
    .line 562
    add-int/lit8 v2, v8, 0x1

    .line 563
    .line 564
    if-eq v2, v1, :cond_12

    .line 565
    .line 566
    aget-byte v2, v19, v2

    .line 567
    .line 568
    const/16 v4, 0x44

    .line 569
    .line 570
    if-ne v2, v4, :cond_16

    .line 571
    .line 572
    const/4 v2, 0x2

    .line 573
    add-int/2addr v8, v2

    .line 574
    if-eq v8, v1, :cond_12

    .line 575
    .line 576
    aget-byte v1, v19, v8

    .line 577
    .line 578
    const/16 v2, 0x33

    .line 579
    .line 580
    if-ne v1, v2, :cond_16

    .line 581
    .line 582
    :cond_12
    :goto_6
    and-int/lit8 v0, v14, 0x8

    .line 583
    .line 584
    const/4 v1, 0x3

    .line 585
    shr-int/2addr v0, v1

    .line 586
    iput v0, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzr:I

    .line 587
    .line 588
    and-int/lit8 v0, v14, 0x1

    .line 589
    .line 590
    xor-int/2addr v0, v11

    .line 591
    if-eq v11, v0, :cond_13

    .line 592
    .line 593
    const/4 v0, 0x0

    .line 594
    goto :goto_7

    .line 595
    :cond_13
    move v0, v11

    .line 596
    :goto_7
    iput-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzn:Z

    .line 597
    .line 598
    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzo:Z

    .line 599
    .line 600
    if-nez v0, :cond_14

    .line 601
    .line 602
    iput v11, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzk:I

    .line 603
    .line 604
    const/4 v0, 0x0

    .line 605
    iput v0, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzl:I

    .line 606
    .line 607
    goto :goto_8

    .line 608
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamv;->zzi()V

    .line 609
    .line 610
    .line 611
    :goto_8
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 612
    .line 613
    .line 614
    const/4 v8, 0x0

    .line 615
    const/4 v10, 0x2

    .line 616
    goto/16 :goto_0

    .line 617
    .line 618
    :cond_15
    move v10, v2

    .line 619
    :cond_16
    :goto_9
    iget v1, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzm:I

    .line 620
    .line 621
    or-int v2, v1, v15

    .line 622
    .line 623
    const/16 v4, 0x149

    .line 624
    .line 625
    if-eq v2, v4, :cond_1b

    .line 626
    .line 627
    const/16 v4, 0x1ff

    .line 628
    .line 629
    if-eq v2, v4, :cond_1a

    .line 630
    .line 631
    const/16 v4, 0x344

    .line 632
    .line 633
    if-eq v2, v4, :cond_19

    .line 634
    .line 635
    const/16 v4, 0x433

    .line 636
    .line 637
    if-eq v2, v4, :cond_18

    .line 638
    .line 639
    const/16 v2, 0x100

    .line 640
    .line 641
    if-eq v1, v2, :cond_17

    .line 642
    .line 643
    iput v2, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzm:I

    .line 644
    .line 645
    move v2, v10

    .line 646
    const/16 v1, 0xd

    .line 647
    .line 648
    const/4 v4, 0x3

    .line 649
    const/4 v8, 0x0

    .line 650
    const/4 v10, 0x2

    .line 651
    goto/16 :goto_5

    .line 652
    .line 653
    :cond_17
    const/4 v1, 0x2

    .line 654
    const/4 v2, 0x3

    .line 655
    const/4 v4, 0x0

    .line 656
    goto :goto_b

    .line 657
    :cond_18
    const/4 v1, 0x2

    .line 658
    iput v1, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzk:I

    .line 659
    .line 660
    const/4 v2, 0x3

    .line 661
    iput v2, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzl:I

    .line 662
    .line 663
    const/4 v4, 0x0

    .line 664
    iput v4, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzu:I

    .line 665
    .line 666
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzd:Lcom/google/android/gms/internal/ads/zzen;

    .line 667
    .line 668
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 672
    .line 673
    .line 674
    move v10, v1

    .line 675
    move v8, v4

    .line 676
    goto/16 :goto_0

    .line 677
    .line 678
    :cond_19
    const/4 v1, 0x2

    .line 679
    const/4 v2, 0x3

    .line 680
    const/4 v4, 0x0

    .line 681
    const/16 v5, 0x400

    .line 682
    .line 683
    :goto_a
    iput v5, v6, Lcom/google/android/gms/internal/ads/zzamv;->zzm:I

    .line 684
    .line 685
    goto :goto_b

    .line 686
    :cond_1a
    const/4 v1, 0x2

    .line 687
    const/4 v2, 0x3

    .line 688
    const/4 v4, 0x0

    .line 689
    const/16 v5, 0x200

    .line 690
    .line 691
    goto :goto_a

    .line 692
    :cond_1b
    const/4 v1, 0x2

    .line 693
    const/4 v2, 0x3

    .line 694
    const/4 v4, 0x0

    .line 695
    const/16 v5, 0x300

    .line 696
    .line 697
    goto :goto_a

    .line 698
    :goto_b
    move v8, v4

    .line 699
    move v5, v13

    .line 700
    move v4, v2

    .line 701
    move v2, v10

    .line 702
    move v10, v1

    .line 703
    const/16 v1, 0xd

    .line 704
    .line 705
    goto/16 :goto_5

    .line 706
    .line 707
    :cond_1c
    move v4, v8

    .line 708
    move v1, v10

    .line 709
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 710
    .line 711
    .line 712
    goto/16 :goto_0

    .line 713
    .line 714
    :cond_1d
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzady;Lcom/google/android/gms/internal/ads/zzaon;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaon;->zzc()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaon;->zzb()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzh:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaon;->zza()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzady;->zzw(II)Lcom/google/android/gms/internal/ads/zzafb;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzi:Lcom/google/android/gms/internal/ads/zzafb;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzw:Lcom/google/android/gms/internal/ads/zzafb;

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzb:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaon;->zzc()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaon;->zza()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x5

    .line 35
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzady;->zzw(II)Lcom/google/android/gms/internal/ads/zzafb;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzj:Lcom/google/android/gms/internal/ads/zzafb;

    .line 40
    .line 41
    new-instance v0, Lcom/google/android/gms/internal/ads/zzx;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaon;->zzb()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzg:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzx;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 56
    .line 57
    .line 58
    const-string p2, "application/id3"

    .line 59
    .line 60
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzadr;

    .line 72
    .line 73
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadr;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzj:Lcom/google/android/gms/internal/ads/zzafb;

    .line 77
    .line 78
    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzv:J

    .line 2
    .line 3
    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzv:J

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzamv;->zzg()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
