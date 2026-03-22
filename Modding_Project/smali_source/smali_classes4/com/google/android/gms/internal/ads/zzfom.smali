.class final Lcom/google/android/gms/internal/ads/zzfom;
.super Lcom/google/android/gms/internal/ads/zzfoj;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Z

.field private zzc:Z

.field private zzd:J

.field private zze:J

.field private zzf:B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfoj;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zza:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null clientVersion"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 0

    .line 1
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzf:B

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x10

    .line 4
    .line 5
    int-to-byte p1, p1

    .line 6
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzf:B

    .line 7
    .line 8
    return-object p0
.end method

.method public final zzc(Z)Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 0

    .line 1
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzf:B

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x4

    .line 4
    .line 5
    int-to-byte p1, p1

    .line 6
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzf:B

    .line 7
    .line 8
    return-object p0
.end method

.method public final zzd(Z)Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzc:Z

    .line 3
    .line 4
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzf:B

    .line 5
    .line 6
    or-int/lit8 p1, p1, 0x2

    .line 7
    .line 8
    int-to-byte p1, p1

    .line 9
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzf:B

    .line 10
    .line 11
    return-object p0
.end method

.method public final zze(J)Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 0

    .line 1
    const-wide/16 p1, 0x12c

    .line 2
    .line 3
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zze:J

    .line 4
    .line 5
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzf:B

    .line 6
    .line 7
    or-int/lit8 p1, p1, 0x20

    .line 8
    .line 9
    int-to-byte p1, p1

    .line 10
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzf:B

    .line 11
    .line 12
    return-object p0
.end method

.method public final zzf(J)Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 0

    .line 1
    const-wide/16 p1, 0x64

    .line 2
    .line 3
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzd:J

    .line 4
    .line 5
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzf:B

    .line 6
    .line 7
    or-int/lit8 p1, p1, 0x8

    .line 8
    .line 9
    int-to-byte p1, p1

    .line 10
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzf:B

    .line 11
    .line 12
    return-object p0
.end method

.method public final zzg(Z)Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzb:Z

    .line 2
    .line 3
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzf:B

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzf:B

    .line 9
    .line 10
    return-object p0
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzfok;
    .locals 13

    .line 1
    iget-byte v0, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzf:B

    .line 2
    .line 3
    const/16 v1, 0x3f

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfom;->zza:Ljava/lang/String;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfoo;

    .line 13
    .line 14
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzb:Z

    .line 15
    .line 16
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzc:Z

    .line 17
    .line 18
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzd:J

    .line 19
    .line 20
    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzfom;->zze:J

    .line 21
    .line 22
    const/4 v12, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v9, 0x0

    .line 25
    move-object v2, v0

    .line 26
    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/zzfoo;-><init>(Ljava/lang/String;ZZZJZJLcom/google/android/gms/internal/ads/zzfon;)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zza:Ljava/lang/String;

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    const-string v1, " clientVersion"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzf:B

    .line 45
    .line 46
    and-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    const-string v1, " shouldGetAdvertisingId"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :cond_3
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzf:B

    .line 56
    .line 57
    and-int/lit8 v1, v1, 0x2

    .line 58
    .line 59
    if-nez v1, :cond_4

    .line 60
    .line 61
    const-string v1, " isGooglePlayServicesAvailable"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :cond_4
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzf:B

    .line 67
    .line 68
    and-int/lit8 v1, v1, 0x4

    .line 69
    .line 70
    if-nez v1, :cond_5

    .line 71
    .line 72
    const-string v1, " enableQuerySignalsTimeout"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_5
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzf:B

    .line 78
    .line 79
    and-int/lit8 v1, v1, 0x8

    .line 80
    .line 81
    if-nez v1, :cond_6

    .line 82
    .line 83
    const-string v1, " querySignalsTimeoutMs"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    :cond_6
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzf:B

    .line 89
    .line 90
    and-int/lit8 v1, v1, 0x10

    .line 91
    .line 92
    if-nez v1, :cond_7

    .line 93
    .line 94
    const-string v1, " enableQuerySignalsCache"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    :cond_7
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zzf:B

    .line 100
    .line 101
    and-int/lit8 v1, v1, 0x20

    .line 102
    .line 103
    if-nez v1, :cond_8

    .line 104
    .line 105
    const-string v1, " querySignalsCacheTtlSeconds"

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v2, "Missing required properties:"

    .line 117
    .line 118
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v1
.end method
