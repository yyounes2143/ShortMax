.class public final Lcom/google/android/gms/internal/ads/zzfdi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfca;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfcd;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfjy;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfjq;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfhu;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzcmq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfjy;Lcom/google/android/gms/internal/ads/zzfjq;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/internal/ads/zzcmq;Lcom/google/android/gms/internal/ads/zzfhu;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfdi;->zza:Lcom/google/android/gms/internal/ads/zzfca;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfdi;->zzb:Lcom/google/android/gms/internal/ads/zzfcd;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdi;->zzc:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfdi;->zzd:Lcom/google/android/gms/internal/ads/zzfjq;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfdi;->zzf:Lcom/google/android/gms/internal/ads/zzcmq;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfdi;->zze:Lcom/google/android/gms/internal/ads/zzfhu;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzcyi;)V
    .locals 2
    .param p2    # Lcom/google/android/gms/internal/ads/zzcyi;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzfdi;->zzb(Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzcyi;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzcyi;)V
    .locals 2
    .param p3    # Lcom/google/android/gms/internal/ads/zzcyi;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdi;->zza:Lcom/google/android/gms/internal/ads/zzfca;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfca;->zzai:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfdi;->zzc:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfdi;->zze:Lcom/google/android/gms/internal/ads/zzfhu;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfca;->zzax:Lcom/google/android/gms/ads/internal/util/client/zzv;

    .line 12
    .line 13
    invoke-virtual {p2, p1, v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzfjy;->zzd(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfhu;Lcom/google/android/gms/internal/ads/zzcyi;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfdi;->zzd:Lcom/google/android/gms/internal/ads/zzfjq;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdi;->zzb:Lcom/google/android/gms/internal/ads/zzfcd;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfcd;->zzb:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p3, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzfjq;->zza(Ljava/lang/String;Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final zzc(Ljava/util/List;I)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzkx:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 18
    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmq;->zzj(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfdi;->zzf:Lcom/google/android/gms/internal/ads/zzcmq;

    .line 42
    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zze()Ljava/util/Random;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcmq;->zze(Ljava/lang/String;Ljava/util/Random;)Lcom/google/common/util/concurrent/e;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfdh;

    .line 57
    .line 58
    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/zzfdh;-><init>(Lcom/google/android/gms/internal/ads/zzfdi;I)V

    .line 59
    .line 60
    .line 61
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaf;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 62
    .line 63
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzr(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgdj;Ljava/util/concurrent/Executor;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    return-void
.end method
