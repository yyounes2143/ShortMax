.class final Lcom/google/android/gms/internal/ads/zzxh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzvf;
.implements Lcom/google/android/gms/internal/ads/zzve;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzvf;

.field private final zzb:J

.field private zzc:Lcom/google/android/gms/internal/ads/zzve;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzvf;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzvf;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzb:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza(JLcom/google/android/gms/internal/ads/zzmi;)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzb:J

    .line 2
    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzvf;

    .line 4
    .line 5
    sub-long/2addr p1, v0

    .line 6
    invoke-interface {v2, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzvf;->zza(JLcom/google/android/gms/internal/ads/zzmi;)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    add-long/2addr p1, v0

    .line 11
    return-wide p1
.end method

.method public final zzb()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzvf;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvf;->zzb()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/high16 v2, -0x8000000000000000L

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    return-wide v2

    .line 14
    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzb:J

    .line 15
    .line 16
    add-long/2addr v0, v2

    .line 17
    return-wide v0
.end method

.method public final zzc()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzvf;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvf;->zzc()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/high16 v2, -0x8000000000000000L

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    return-wide v2

    .line 14
    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzb:J

    .line 15
    .line 16
    add-long/2addr v0, v2

    .line 17
    return-wide v0
.end method

.method public final zzd()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzvf;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvf;->zzd()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long v4, v0, v2

    .line 13
    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    return-wide v2

    .line 17
    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzb:J

    .line 18
    .line 19
    add-long/2addr v0, v2

    .line 20
    return-wide v0
.end method

.method public final zze(J)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzb:J

    .line 2
    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzvf;

    .line 4
    .line 5
    sub-long/2addr p1, v0

    .line 6
    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzvf;->zze(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    add-long/2addr p1, v0

    .line 11
    return-wide p1
.end method

.method public final zzf([Lcom/google/android/gms/internal/ads/zzyw;[Z[Lcom/google/android/gms/internal/ads/zzwz;[ZJ)J
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p3

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzwz;

    .line 6
    .line 7
    const/4 v10, 0x0

    .line 8
    move v3, v10

    .line 9
    :goto_0
    array-length v4, v1

    .line 10
    const/4 v11, 0x0

    .line 11
    if-ge v3, v4, :cond_1

    .line 12
    .line 13
    aget-object v4, v1, v3

    .line 14
    .line 15
    check-cast v4, Lcom/google/android/gms/internal/ads/zzxg;

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzxg;->zzc()Lcom/google/android/gms/internal/ads/zzwz;

    .line 20
    .line 21
    .line 22
    move-result-object v11

    .line 23
    :cond_0
    aput-object v11, v2, v3

    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzvf;

    .line 29
    .line 30
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzxh;->zzb:J

    .line 31
    .line 32
    sub-long v8, p5, v12

    .line 33
    .line 34
    move-object v4, p1

    .line 35
    move-object/from16 v5, p2

    .line 36
    .line 37
    move-object v6, v2

    .line 38
    move-object/from16 v7, p4

    .line 39
    .line 40
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzvf;->zzf([Lcom/google/android/gms/internal/ads/zzyw;[Z[Lcom/google/android/gms/internal/ads/zzwz;[ZJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    :goto_1
    array-length v5, v1

    .line 45
    if-ge v10, v5, :cond_5

    .line 46
    .line 47
    aget-object v5, v2, v10

    .line 48
    .line 49
    if-nez v5, :cond_2

    .line 50
    .line 51
    aput-object v11, v1, v10

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    aget-object v6, v1, v10

    .line 55
    .line 56
    if-eqz v6, :cond_3

    .line 57
    .line 58
    check-cast v6, Lcom/google/android/gms/internal/ads/zzxg;

    .line 59
    .line 60
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzxg;->zzc()Lcom/google/android/gms/internal/ads/zzwz;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    if-eq v6, v5, :cond_4

    .line 65
    .line 66
    :cond_3
    new-instance v6, Lcom/google/android/gms/internal/ads/zzxg;

    .line 67
    .line 68
    invoke-direct {v6, v5, v12, v13}, Lcom/google/android/gms/internal/ads/zzxg;-><init>(Lcom/google/android/gms/internal/ads/zzwz;J)V

    .line 69
    .line 70
    .line 71
    aput-object v6, v1, v10

    .line 72
    .line 73
    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_5
    add-long/2addr v3, v12

    .line 77
    return-wide v3
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzxk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzvf;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvf;->zzg()Lcom/google/android/gms/internal/ads/zzxk;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzh(JZ)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzb:J

    .line 2
    .line 3
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzvf;

    .line 4
    .line 5
    sub-long/2addr p1, v0

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzvf;->zzh(JZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final zzi()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzvf;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvf;->zzi()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final bridge synthetic zzj(Lcom/google/android/gms/internal/ads/zzxb;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzvf;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzc:Lcom/google/android/gms/internal/ads/zzve;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzxa;->zzj(Lcom/google/android/gms/internal/ads/zzxb;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzve;J)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzc:Lcom/google/android/gms/internal/ads/zzve;

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzb:J

    .line 4
    .line 5
    sub-long/2addr p2, v0

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzvf;

    .line 7
    .line 8
    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzvf;->zzk(Lcom/google/android/gms/internal/ads/zzve;J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzvf;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzc:Lcom/google/android/gms/internal/ads/zzve;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzve;->zzl(Lcom/google/android/gms/internal/ads/zzvf;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zzm(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzb:J

    .line 2
    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzvf;

    .line 4
    .line 5
    sub-long/2addr p1, v0

    .line 6
    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzvf;->zzm(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zzn()Lcom/google/android/gms/internal/ads/zzvf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzvf;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzla;)Z
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzla;->zza:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzb:J

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzla;->zza()Lcom/google/android/gms/internal/ads/zzky;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sub-long/2addr v0, v2

    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzky;->zze(J)Lcom/google/android/gms/internal/ads/zzky;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzky;->zzg()Lcom/google/android/gms/internal/ads/zzla;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzvf;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzvf;->zzo(Lcom/google/android/gms/internal/ads/zzla;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public final zzp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zza:Lcom/google/android/gms/internal/ads/zzvf;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvf;->zzp()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
