.class final Lcom/google/android/gms/internal/ads/zzaou;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaot;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzady;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzafb;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaow;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzz;

.field private final zze:I

.field private zzf:J

.field private zzg:I

.field private zzh:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzady;Lcom/google/android/gms/internal/ads/zzafb;Lcom/google/android/gms/internal/ads/zzaow;Ljava/lang/String;I)V
    .locals 2
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zza:Lcom/google/android/gms/internal/ads/zzady;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzb:Lcom/google/android/gms/internal/ads/zzafb;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzc:Lcom/google/android/gms/internal/ads/zzaow;

    .line 9
    .line 10
    iget p1, p3, Lcom/google/android/gms/internal/ads/zzaow;->zzb:I

    .line 11
    .line 12
    iget p2, p3, Lcom/google/android/gms/internal/ads/zzaow;->zze:I

    .line 13
    .line 14
    mul-int/2addr p1, p2

    .line 15
    iget p2, p3, Lcom/google/android/gms/internal/ads/zzaow;->zzd:I

    .line 16
    .line 17
    div-int/lit8 p1, p1, 0x8

    .line 18
    .line 19
    if-ne p2, p1, :cond_0

    .line 20
    .line 21
    iget p2, p3, Lcom/google/android/gms/internal/ads/zzaow;->zzc:I

    .line 22
    .line 23
    mul-int/2addr p2, p1

    .line 24
    mul-int/lit8 v0, p2, 0x8

    .line 25
    .line 26
    div-int/lit8 p2, p2, 0xa

    .line 27
    .line 28
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zze:I

    .line 33
    .line 34
    new-instance p2, Lcom/google/android/gms/internal/ads/zzx;

    .line 35
    .line 36
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v1, "audio/wav"

    .line 40
    .line 41
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzC(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzac(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzX(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 54
    .line 55
    .line 56
    iget p1, p3, Lcom/google/android/gms/internal/ads/zzaow;->zzb:I

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzD(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 59
    .line 60
    .line 61
    iget p1, p3, Lcom/google/android/gms/internal/ads/zzaow;->zzc:I

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p5}, Lcom/google/android/gms/internal/ads/zzx;->zzab(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 74
    .line 75
    return-void

    .line 76
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string p4, "Expected block size: "

    .line 82
    .line 83
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p1, "; got: "

    .line 90
    .line 91
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const/4 p2, 0x0

    .line 102
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    throw p1
.end method


# virtual methods
.method public final zza(IJ)V
    .locals 7

    .line 1
    int-to-long v3, p1

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaoz;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzc:Lcom/google/android/gms/internal/ads/zzaow;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    move-object v0, p1

    .line 8
    move-wide v5, p2

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaoz;-><init>(Lcom/google/android/gms/internal/ads/zzaow;IJJ)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaou;->zza:Lcom/google/android/gms/internal/ads/zzady;

    .line 13
    .line 14
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzady;->zzP(Lcom/google/android/gms/internal/ads/zzaeu;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzb:Lcom/google/android/gms/internal/ads/zzafb;

    .line 18
    .line 19
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 20
    .line 21
    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaoz;->zza()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzafb;->zzl(J)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final zzb(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzf:J

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzg:I

    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaou;->zzh:J

    .line 9
    .line 10
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzadw;J)Z
    .locals 18
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
    :goto_0
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v5, v1, v3

    .line 8
    .line 9
    const/4 v6, 0x1

    .line 10
    if-lez v5, :cond_1

    .line 11
    .line 12
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzaou;->zzg:I

    .line 13
    .line 14
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaou;->zze:I

    .line 15
    .line 16
    if-ge v7, v8, :cond_1

    .line 17
    .line 18
    sub-int/2addr v8, v7

    .line 19
    int-to-long v7, v8

    .line 20
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v7

    .line 24
    long-to-int v5, v7

    .line 25
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaou;->zzb:Lcom/google/android/gms/internal/ads/zzafb;

    .line 26
    .line 27
    move-object/from16 v8, p1

    .line 28
    .line 29
    invoke-interface {v7, v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzafb;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const/4 v6, -0x1

    .line 34
    if-ne v5, v6, :cond_0

    .line 35
    .line 36
    move-wide v1, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaou;->zzg:I

    .line 39
    .line 40
    add-int/2addr v3, v5

    .line 41
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaou;->zzg:I

    .line 42
    .line 43
    int-to-long v3, v5

    .line 44
    sub-long/2addr v1, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaou;->zzc:Lcom/google/android/gms/internal/ads/zzaow;

    .line 47
    .line 48
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaou;->zzg:I

    .line 49
    .line 50
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaow;->zzd:I

    .line 51
    .line 52
    div-int/2addr v2, v3

    .line 53
    if-lez v2, :cond_2

    .line 54
    .line 55
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzaou;->zzf:J

    .line 56
    .line 57
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaou;->zzh:J

    .line 58
    .line 59
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaow;->zzc:I

    .line 60
    .line 61
    int-to-long v13, v1

    .line 62
    sget-object v15, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 63
    .line 64
    const-wide/32 v11, 0xf4240

    .line 65
    .line 66
    .line 67
    invoke-static/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v9

    .line 71
    add-long v12, v7, v9

    .line 72
    .line 73
    mul-int v15, v2, v3

    .line 74
    .line 75
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaou;->zzg:I

    .line 76
    .line 77
    sub-int/2addr v1, v15

    .line 78
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaou;->zzb:Lcom/google/android/gms/internal/ads/zzafb;

    .line 79
    .line 80
    const/4 v14, 0x1

    .line 81
    const/16 v17, 0x0

    .line 82
    .line 83
    move/from16 v16, v1

    .line 84
    .line 85
    invoke-interface/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzafb;->zzt(JIIILcom/google/android/gms/internal/ads/zzafa;)V

    .line 86
    .line 87
    .line 88
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaou;->zzh:J

    .line 89
    .line 90
    int-to-long v7, v2

    .line 91
    add-long/2addr v3, v7

    .line 92
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaou;->zzh:J

    .line 93
    .line 94
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaou;->zzg:I

    .line 95
    .line 96
    :cond_2
    if-gtz v5, :cond_3

    .line 97
    .line 98
    return v6

    .line 99
    :cond_3
    const/4 v1, 0x0

    .line 100
    return v1
.end method
