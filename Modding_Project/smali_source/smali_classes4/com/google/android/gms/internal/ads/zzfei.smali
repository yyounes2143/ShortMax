.class final Lcom/google/android/gms/internal/ads/zzfei;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Ljava/util/LinkedList;

.field private final zzb:I

.field private final zzc:I

.field private final zzd:Lcom/google/android/gms/internal/ads/zzffh;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfei;->zza:Ljava/util/LinkedList;

    .line 10
    .line 11
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfei;->zzb:I

    .line 12
    .line 13
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfei;->zzc:I

    .line 14
    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzffh;

    .line 16
    .line 17
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzffh;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfei;->zzd:Lcom/google/android/gms/internal/ads/zzffh;

    .line 21
    .line 22
    return-void
.end method

.method private final zzi()V
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfei;->zza:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfes;

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzfes;->zzd:J

    .line 24
    .line 25
    sub-long/2addr v2, v4

    .line 26
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfei;->zzc:I

    .line 27
    .line 28
    int-to-long v4, v1

    .line 29
    cmp-long v1, v2, v4

    .line 30
    .line 31
    if-ltz v1, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfei;->zzd:Lcom/google/android/gms/internal/ads/zzffh;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzffh;->zzg()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfei;->zzd:Lcom/google/android/gms/internal/ads/zzffh;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffh;->zza()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final zzb()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfei;->zzi()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfei;->zza:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final zzc()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfei;->zzd:Lcom/google/android/gms/internal/ads/zzffh;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffh;->zzb()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final zzd()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfei;->zzd:Lcom/google/android/gms/internal/ads/zzffh;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffh;->zzc()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzfes;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfei;->zzd:Lcom/google/android/gms/internal/ads/zzffh;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffh;->zzf()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfei;->zzi()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfei;->zza:Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfes;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffh;->zzh()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-object v1
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzffg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfei;->zzd:Lcom/google/android/gms/internal/ads/zzffh;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffh;->zzd()Lcom/google/android/gms/internal/ads/zzffg;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfei;->zzd:Lcom/google/android/gms/internal/ads/zzffh;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffh;->zze()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzfes;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfei;->zzd:Lcom/google/android/gms/internal/ads/zzffh;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffh;->zzf()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfei;->zzi()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfei;->zza:Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfei;->zzb:I

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1
.end method
