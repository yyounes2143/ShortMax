.class final Lcom/google/android/gms/internal/ads/zzaos;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaot;


# static fields
.field private static final zza:[I

.field private static final zzb:[I


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzady;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzafb;

.field private final zze:Lcom/google/android/gms/internal/ads/zzaow;

.field private final zzf:I

.field private final zzg:[B

.field private final zzh:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzi:I

.field private final zzj:Lcom/google/android/gms/internal/ads/zzz;

.field private zzk:I

.field private zzl:J

.field private zzm:I

.field private zzn:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/zzaos;->zza:[I

    .line 9
    .line 10
    const/16 v0, 0x59

    .line 11
    .line 12
    new-array v0, v0, [I

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/android/gms/internal/ads/zzaos;->zzb:[I

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    :array_1
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1c
        0x1f
        0x22
        0x25
        0x29
        0x2d
        0x32
        0x37
        0x3c
        0x42
        0x49
        0x50
        0x58
        0x61
        0x6b
        0x76
        0x82
        0x8f
        0x9d
        0xad
        0xbe
        0xd1
        0xe6
        0xfd
        0x117
        0x133
        0x151
        0x173
        0x198
        0x1c1
        0x1ee
        0x220
        0x256
        0x292
        0x2d4
        0x31c
        0x36c
        0x3c3
        0x424
        0x48e
        0x502
        0x583
        0x610
        0x6ab
        0x756
        0x812
        0x8e0
        0x9c3
        0xabd
        0xbd0
        0xcff
        0xe4c
        0xfba
        0x114c
        0x1307
        0x14ee
        0x1706
        0x1954
        0x1bdc
        0x1ea5
        0x21b6
        0x2515
        0x28ca
        0x2cdf
        0x315b
        0x364b
        0x3bb9
        0x41b2
        0x4844
        0x4f7e
        0x5771
        0x602f
        0x69ce
        0x7462
        0x7fff
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzady;Lcom/google/android/gms/internal/ads/zzafb;Lcom/google/android/gms/internal/ads/zzaow;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzc:Lcom/google/android/gms/internal/ads/zzady;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzd:Lcom/google/android/gms/internal/ads/zzafb;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaos;->zze:Lcom/google/android/gms/internal/ads/zzaow;

    .line 9
    .line 10
    iget p1, p3, Lcom/google/android/gms/internal/ads/zzaow;->zzc:I

    .line 11
    .line 12
    div-int/lit8 p1, p1, 0xa

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzi:I

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/zzen;

    .line 22
    .line 23
    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzaow;->zzf:[B

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzk()I

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzk()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzf:I

    .line 36
    .line 37
    iget v1, p3, Lcom/google/android/gms/internal/ads/zzaow;->zzb:I

    .line 38
    .line 39
    mul-int/lit8 v2, v1, 0x4

    .line 40
    .line 41
    iget v3, p3, Lcom/google/android/gms/internal/ads/zzaow;->zzd:I

    .line 42
    .line 43
    sub-int v2, v3, v2

    .line 44
    .line 45
    iget v4, p3, Lcom/google/android/gms/internal/ads/zzaow;->zze:I

    .line 46
    .line 47
    mul-int/2addr v4, v1

    .line 48
    mul-int/lit8 v2, v2, 0x8

    .line 49
    .line 50
    div-int/2addr v2, v4

    .line 51
    add-int/2addr v2, p2

    .line 52
    if-ne v0, v2, :cond_0

    .line 53
    .line 54
    sget-object p2, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 55
    .line 56
    add-int p2, p1, v0

    .line 57
    .line 58
    add-int/lit8 p2, p2, -0x1

    .line 59
    .line 60
    div-int/2addr p2, v0

    .line 61
    mul-int/2addr v3, p2

    .line 62
    new-array v2, v3, [B

    .line 63
    .line 64
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzg:[B

    .line 65
    .line 66
    new-instance v2, Lcom/google/android/gms/internal/ads/zzen;

    .line 67
    .line 68
    add-int v3, v0, v0

    .line 69
    .line 70
    mul-int/2addr v3, v1

    .line 71
    mul-int/2addr p2, v3

    .line 72
    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    .line 73
    .line 74
    .line 75
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzh:Lcom/google/android/gms/internal/ads/zzen;

    .line 76
    .line 77
    iget p2, p3, Lcom/google/android/gms/internal/ads/zzaow;->zzc:I

    .line 78
    .line 79
    iget v2, p3, Lcom/google/android/gms/internal/ads/zzaow;->zzd:I

    .line 80
    .line 81
    mul-int/2addr p2, v2

    .line 82
    mul-int/lit8 p2, p2, 0x8

    .line 83
    .line 84
    div-int/2addr p2, v0

    .line 85
    new-instance v0, Lcom/google/android/gms/internal/ads/zzx;

    .line 86
    .line 87
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v2, "audio/raw"

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzx;->zzC(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzx;->zzac(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 99
    .line 100
    .line 101
    add-int/2addr p1, p1

    .line 102
    mul-int/2addr p1, v1

    .line 103
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzX(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 104
    .line 105
    .line 106
    iget p1, p3, Lcom/google/android/gms/internal/ads/zzaow;->zzb:I

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzD(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 109
    .line 110
    .line 111
    iget p1, p3, Lcom/google/android/gms/internal/ads/zzaow;->zzc:I

    .line 112
    .line 113
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 114
    .line 115
    .line 116
    const/4 p1, 0x2

    .line 117
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzab(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzj:Lcom/google/android/gms/internal/ads/zzz;

    .line 125
    .line 126
    return-void

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string p2, "Expected frames per block: "

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string p2, "; got: "

    .line 141
    .line 142
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    const/4 p2, 0x0

    .line 153
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    throw p1
.end method

.method private final zzd(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaos;->zze:Lcom/google/android/gms/internal/ads/zzaow;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaow;->zzb:I

    .line 4
    .line 5
    add-int/2addr v0, v0

    .line 6
    div-int/2addr p1, v0

    .line 7
    return p1
.end method

.method private final zze(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaos;->zze:Lcom/google/android/gms/internal/ads/zzaow;

    .line 2
    .line 3
    add-int/2addr p1, p1

    .line 4
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaow;->zzb:I

    .line 5
    .line 6
    mul-int/2addr p1, v0

    .line 7
    return p1
.end method

.method private final zzf(I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaos;->zze:Lcom/google/android/gms/internal/ads/zzaow;

    .line 4
    .line 5
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaow;->zzc:I

    .line 6
    .line 7
    int-to-long v6, v1

    .line 8
    sget-object v8, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 9
    .line 10
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzl:J

    .line 11
    .line 12
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzn:J

    .line 13
    .line 14
    const-wide/32 v4, 0xf4240

    .line 15
    .line 16
    .line 17
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    add-long v12, v9, v1

    .line 22
    .line 23
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaos;->zze(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzm:I

    .line 28
    .line 29
    sub-int v16, v2, v1

    .line 30
    .line 31
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzd:Lcom/google/android/gms/internal/ads/zzafb;

    .line 32
    .line 33
    const/4 v14, 0x1

    .line 34
    const/16 v17, 0x0

    .line 35
    .line 36
    move v15, v1

    .line 37
    invoke-interface/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzafb;->zzt(JIIILcom/google/android/gms/internal/ads/zzafa;)V

    .line 38
    .line 39
    .line 40
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzn:J

    .line 41
    .line 42
    move/from16 v4, p1

    .line 43
    .line 44
    int-to-long v4, v4

    .line 45
    add-long/2addr v2, v4

    .line 46
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzn:J

    .line 47
    .line 48
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzm:I

    .line 49
    .line 50
    sub-int/2addr v2, v1

    .line 51
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzm:I

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final zza(IJ)V
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzaoz;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zze:Lcom/google/android/gms/internal/ads/zzaow;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzf:I

    .line 6
    .line 7
    int-to-long v3, p1

    .line 8
    move-object v0, v7

    .line 9
    move-wide v5, p2

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaoz;-><init>(Lcom/google/android/gms/internal/ads/zzaow;IJJ)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzc:Lcom/google/android/gms/internal/ads/zzady;

    .line 14
    .line 15
    invoke-interface {p1, v7}, Lcom/google/android/gms/internal/ads/zzady;->zzP(Lcom/google/android/gms/internal/ads/zzaeu;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzd:Lcom/google/android/gms/internal/ads/zzafb;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzj:Lcom/google/android/gms/internal/ads/zzz;

    .line 21
    .line 22
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaoz;->zza()J

    .line 26
    .line 27
    .line 28
    move-result-wide p2

    .line 29
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzafb;->zzl(J)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final zzb(J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzk:I

    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzl:J

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzm:I

    .line 7
    .line 8
    const-wide/16 p1, 0x0

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaos;->zzn:J

    .line 11
    .line 12
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzadw;J)Z
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p2

    .line 4
    .line 5
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzm:I

    .line 6
    .line 7
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzaos;->zzd(I)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzi:I

    .line 12
    .line 13
    sub-int v3, v4, v3

    .line 14
    .line 15
    sget-object v5, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 16
    .line 17
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzf:I

    .line 18
    .line 19
    add-int/2addr v3, v5

    .line 20
    const/4 v6, -0x1

    .line 21
    add-int/2addr v3, v6

    .line 22
    div-int/2addr v3, v5

    .line 23
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaos;->zze:Lcom/google/android/gms/internal/ads/zzaow;

    .line 24
    .line 25
    iget v8, v7, Lcom/google/android/gms/internal/ads/zzaow;->zzd:I

    .line 26
    .line 27
    mul-int/2addr v3, v8

    .line 28
    const-wide/16 v9, 0x0

    .line 29
    .line 30
    cmp-long v9, v1, v9

    .line 31
    .line 32
    const/4 v11, 0x1

    .line 33
    if-nez v9, :cond_0

    .line 34
    .line 35
    :goto_0
    move v9, v11

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 v9, 0x0

    .line 38
    :goto_1
    if-nez v9, :cond_2

    .line 39
    .line 40
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzk:I

    .line 41
    .line 42
    if-ge v12, v3, :cond_2

    .line 43
    .line 44
    sub-int v12, v3, v12

    .line 45
    .line 46
    int-to-long v12, v12

    .line 47
    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v12

    .line 51
    long-to-int v12, v12

    .line 52
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzg:[B

    .line 53
    .line 54
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzk:I

    .line 55
    .line 56
    move-object/from16 v15, p1

    .line 57
    .line 58
    invoke-interface {v15, v13, v14, v12}, Lcom/google/android/gms/internal/ads/zzadw;->zza([BII)I

    .line 59
    .line 60
    .line 61
    move-result v12

    .line 62
    if-ne v12, v6, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzk:I

    .line 66
    .line 67
    add-int/2addr v13, v12

    .line 68
    iput v13, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzk:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzk:I

    .line 72
    .line 73
    div-int/2addr v1, v8

    .line 74
    if-lez v1, :cond_8

    .line 75
    .line 76
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzg:[B

    .line 77
    .line 78
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzh:Lcom/google/android/gms/internal/ads/zzen;

    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    :goto_2
    if-ge v6, v1, :cond_7

    .line 82
    .line 83
    const/4 v12, 0x0

    .line 84
    :goto_3
    iget v13, v7, Lcom/google/android/gms/internal/ads/zzaow;->zzb:I

    .line 85
    .line 86
    if-ge v12, v13, :cond_6

    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 89
    .line 90
    .line 91
    move-result-object v14

    .line 92
    mul-int v15, v6, v8

    .line 93
    .line 94
    div-int v16, v8, v13

    .line 95
    .line 96
    add-int/lit8 v16, v16, -0x4

    .line 97
    .line 98
    mul-int/lit8 v17, v12, 0x4

    .line 99
    .line 100
    add-int v15, v15, v17

    .line 101
    .line 102
    add-int/lit8 v17, v15, 0x1

    .line 103
    .line 104
    aget-byte v10, v2, v17

    .line 105
    .line 106
    and-int/lit16 v10, v10, 0xff

    .line 107
    .line 108
    aget-byte v11, v2, v15

    .line 109
    .line 110
    and-int/lit16 v11, v11, 0xff

    .line 111
    .line 112
    add-int/lit8 v18, v15, 0x2

    .line 113
    .line 114
    move-object/from16 v19, v7

    .line 115
    .line 116
    aget-byte v7, v2, v18

    .line 117
    .line 118
    and-int/lit16 v7, v7, 0xff

    .line 119
    .line 120
    move/from16 v18, v9

    .line 121
    .line 122
    const/16 v9, 0x58

    .line 123
    .line 124
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    sget-object v20, Lcom/google/android/gms/internal/ads/zzaos;->zzb:[I

    .line 129
    .line 130
    aget v21, v20, v7

    .line 131
    .line 132
    mul-int v22, v6, v5

    .line 133
    .line 134
    mul-int v22, v22, v13

    .line 135
    .line 136
    add-int v22, v22, v12

    .line 137
    .line 138
    shl-int/lit8 v10, v10, 0x8

    .line 139
    .line 140
    or-int/2addr v10, v11

    .line 141
    int-to-short v10, v10

    .line 142
    and-int/lit16 v11, v10, 0xff

    .line 143
    .line 144
    add-int v22, v22, v22

    .line 145
    .line 146
    int-to-byte v11, v11

    .line 147
    aput-byte v11, v14, v22

    .line 148
    .line 149
    const/4 v11, 0x1

    .line 150
    add-int/lit8 v23, v22, 0x1

    .line 151
    .line 152
    shr-int/lit8 v11, v10, 0x8

    .line 153
    .line 154
    int-to-byte v11, v11

    .line 155
    aput-byte v11, v14, v23

    .line 156
    .line 157
    const/4 v11, 0x0

    .line 158
    :goto_4
    add-int v9, v16, v16

    .line 159
    .line 160
    if-ge v11, v9, :cond_5

    .line 161
    .line 162
    mul-int/lit8 v9, v13, 0x4

    .line 163
    .line 164
    add-int/2addr v9, v15

    .line 165
    div-int/lit8 v23, v11, 0x8

    .line 166
    .line 167
    div-int/lit8 v24, v11, 0x2

    .line 168
    .line 169
    rem-int/lit8 v24, v24, 0x4

    .line 170
    .line 171
    mul-int v23, v23, v13

    .line 172
    .line 173
    mul-int/lit8 v23, v23, 0x4

    .line 174
    .line 175
    add-int v9, v9, v23

    .line 176
    .line 177
    add-int v9, v9, v24

    .line 178
    .line 179
    aget-byte v9, v2, v9

    .line 180
    .line 181
    move-object/from16 v23, v2

    .line 182
    .line 183
    and-int/lit16 v2, v9, 0xff

    .line 184
    .line 185
    rem-int/lit8 v24, v11, 0x2

    .line 186
    .line 187
    if-nez v24, :cond_3

    .line 188
    .line 189
    and-int/lit8 v2, v9, 0xf

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_3
    shr-int/lit8 v2, v2, 0x4

    .line 193
    .line 194
    :goto_5
    and-int/lit8 v9, v2, 0x7

    .line 195
    .line 196
    add-int/2addr v9, v9

    .line 197
    const/16 v17, 0x1

    .line 198
    .line 199
    add-int/lit8 v9, v9, 0x1

    .line 200
    .line 201
    mul-int v9, v9, v21

    .line 202
    .line 203
    and-int/lit8 v21, v2, 0x8

    .line 204
    .line 205
    shr-int/lit8 v9, v9, 0x3

    .line 206
    .line 207
    if-eqz v21, :cond_4

    .line 208
    .line 209
    neg-int v9, v9

    .line 210
    :cond_4
    add-int/2addr v10, v9

    .line 211
    const/16 v9, 0x7fff

    .line 212
    .line 213
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    const/16 v10, -0x8000

    .line 218
    .line 219
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    .line 220
    .line 221
    .line 222
    move-result v10

    .line 223
    add-int v9, v13, v13

    .line 224
    .line 225
    add-int v22, v22, v9

    .line 226
    .line 227
    and-int/lit16 v9, v10, 0xff

    .line 228
    .line 229
    int-to-byte v9, v9

    .line 230
    aput-byte v9, v14, v22

    .line 231
    .line 232
    const/4 v9, 0x1

    .line 233
    add-int/lit8 v17, v22, 0x1

    .line 234
    .line 235
    shr-int/lit8 v9, v10, 0x8

    .line 236
    .line 237
    int-to-byte v9, v9

    .line 238
    aput-byte v9, v14, v17

    .line 239
    .line 240
    sget-object v9, Lcom/google/android/gms/internal/ads/zzaos;->zza:[I

    .line 241
    .line 242
    aget v2, v9, v2

    .line 243
    .line 244
    add-int/2addr v7, v2

    .line 245
    const/16 v2, 0x58

    .line 246
    .line 247
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    const/4 v9, 0x0

    .line 252
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    .line 253
    .line 254
    .line 255
    move-result v7

    .line 256
    aget v21, v20, v7

    .line 257
    .line 258
    const/16 v17, 0x1

    .line 259
    .line 260
    add-int/lit8 v11, v11, 0x1

    .line 261
    .line 262
    move-object/from16 v2, v23

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_5
    move-object/from16 v23, v2

    .line 266
    .line 267
    const/4 v9, 0x0

    .line 268
    const/16 v17, 0x1

    .line 269
    .line 270
    add-int/lit8 v12, v12, 0x1

    .line 271
    .line 272
    move/from16 v11, v17

    .line 273
    .line 274
    move/from16 v9, v18

    .line 275
    .line 276
    move-object/from16 v7, v19

    .line 277
    .line 278
    goto/16 :goto_3

    .line 279
    .line 280
    :cond_6
    move-object/from16 v23, v2

    .line 281
    .line 282
    move-object/from16 v19, v7

    .line 283
    .line 284
    move/from16 v18, v9

    .line 285
    .line 286
    move/from16 v17, v11

    .line 287
    .line 288
    const/4 v9, 0x0

    .line 289
    add-int/lit8 v6, v6, 0x1

    .line 290
    .line 291
    move/from16 v9, v18

    .line 292
    .line 293
    goto/16 :goto_2

    .line 294
    .line 295
    :cond_7
    move/from16 v18, v9

    .line 296
    .line 297
    const/4 v9, 0x0

    .line 298
    mul-int/2addr v5, v1

    .line 299
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzaos;->zze(I)I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzK(I)V

    .line 307
    .line 308
    .line 309
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzk:I

    .line 310
    .line 311
    mul-int/2addr v1, v8

    .line 312
    sub-int/2addr v2, v1

    .line 313
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzk:I

    .line 314
    .line 315
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzd:Lcom/google/android/gms/internal/ads/zzafb;

    .line 320
    .line 321
    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    .line 322
    .line 323
    .line 324
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzm:I

    .line 325
    .line 326
    add-int/2addr v2, v1

    .line 327
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzm:I

    .line 328
    .line 329
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzaos;->zzd(I)I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-lt v1, v4, :cond_9

    .line 334
    .line 335
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzaos;->zzf(I)V

    .line 336
    .line 337
    .line 338
    goto :goto_6

    .line 339
    :cond_8
    move/from16 v18, v9

    .line 340
    .line 341
    :cond_9
    :goto_6
    if-eqz v18, :cond_a

    .line 342
    .line 343
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaos;->zzm:I

    .line 344
    .line 345
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaos;->zzd(I)I

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-lez v1, :cond_a

    .line 350
    .line 351
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaos;->zzf(I)V

    .line 352
    .line 353
    .line 354
    :cond_a
    return v18
.end method
