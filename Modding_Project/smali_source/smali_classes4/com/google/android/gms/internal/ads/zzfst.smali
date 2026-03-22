.class final Lcom/google/android/gms/internal/ads/zzfst;
.super Lcom/google/android/gms/internal/ads/zzftx;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:Landroid/os/IBinder;

.field private zzb:Ljava/lang/String;

.field private zzc:I

.field private zzd:F

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzftx;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzftx;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzf:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzftx;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzftx;
    .locals 0

    .line 1
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzg:B

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x4

    .line 4
    .line 5
    int-to-byte p1, p1

    .line 6
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzg:B

    .line 7
    .line 8
    return-object p0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/ads/zzftx;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzc:I

    .line 2
    .line 3
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzg:B

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzg:B

    .line 9
    .line 10
    return-object p0
.end method

.method public final zze(F)Lcom/google/android/gms/internal/ads/zzftx;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzd:F

    .line 2
    .line 3
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzg:B

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzg:B

    .line 9
    .line 10
    return-object p0
.end method

.method public final zzf(I)Lcom/google/android/gms/internal/ads/zzftx;
    .locals 0

    .line 1
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzg:B

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x8

    .line 4
    .line 5
    int-to-byte p1, p1

    .line 6
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzg:B

    .line 7
    .line 8
    return-object p0
.end method

.method public final zzg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzftx;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zza:Landroid/os/IBinder;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null windowToken"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final zzh(I)Lcom/google/android/gms/internal/ads/zzftx;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zze:I

    .line 2
    .line 3
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzg:B

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x10

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzg:B

    .line 9
    .line 10
    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzfty;
    .locals 15

    .line 1
    iget-byte v0, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzg:B

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfst;->zza:Landroid/os/IBinder;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsv;

    .line 13
    .line 14
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzb:Ljava/lang/String;

    .line 15
    .line 16
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzc:I

    .line 17
    .line 18
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzd:F

    .line 19
    .line 20
    iget v10, p0, Lcom/google/android/gms/internal/ads/zzfst;->zze:I

    .line 21
    .line 22
    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzf:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v13, 0x0

    .line 25
    const/4 v14, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v11, 0x0

    .line 30
    move-object v2, v0

    .line 31
    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzfsv;-><init>(Landroid/os/IBinder;Ljava/lang/String;IFIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfsu;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zza:Landroid/os/IBinder;

    .line 41
    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    const-string v1, " windowToken"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzg:B

    .line 50
    .line 51
    and-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    if-nez v1, :cond_3

    .line 54
    .line 55
    const-string v1, " layoutGravity"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzg:B

    .line 61
    .line 62
    and-int/lit8 v1, v1, 0x2

    .line 63
    .line 64
    if-nez v1, :cond_4

    .line 65
    .line 66
    const-string v1, " layoutVerticalMargin"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    :cond_4
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzg:B

    .line 72
    .line 73
    and-int/lit8 v1, v1, 0x4

    .line 74
    .line 75
    if-nez v1, :cond_5

    .line 76
    .line 77
    const-string v1, " displayMode"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    :cond_5
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzg:B

    .line 83
    .line 84
    and-int/lit8 v1, v1, 0x8

    .line 85
    .line 86
    if-nez v1, :cond_6

    .line 87
    .line 88
    const-string v1, " triggerMode"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    :cond_6
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzg:B

    .line 94
    .line 95
    and-int/lit8 v1, v1, 0x10

    .line 96
    .line 97
    if-nez v1, :cond_7

    .line 98
    .line 99
    const-string v1, " windowWidthPx"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v2, "Missing required properties:"

    .line 111
    .line 112
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v1
.end method
