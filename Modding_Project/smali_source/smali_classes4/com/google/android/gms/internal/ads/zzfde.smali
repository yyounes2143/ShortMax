.class public final synthetic Lcom/google/android/gms/internal/ads/zzfde;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkf;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzded;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcmq;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfjy;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzeca;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzded;Lcom/google/android/gms/internal/ads/zzcmq;Lcom/google/android/gms/internal/ads/zzfjy;Lcom/google/android/gms/internal/ads/zzeca;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfde;->zza:Lcom/google/android/gms/internal/ads/zzded;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfde;->zzb:Lcom/google/android/gms/internal/ads/zzcmq;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfde;->zzc:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfde;->zzd:Lcom/google/android/gms/internal/ads/zzeca;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfde;->zza:Lcom/google/android/gms/internal/ads/zzded;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfg;

    .line 4
    .line 5
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzbke;->zzc(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzded;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "u"

    .line 9
    .line 10
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Ljava/lang/String;

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 19
    .line 20
    const-string p1, "URL missing from click GMSG."

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfde;->zzd:Lcom/google/android/gms/internal/ads/zzeca;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfde;->zzc:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfde;->zzb:Lcom/google/android/gms/internal/ads/zzcmq;

    .line 31
    .line 32
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbke;->zza(Lcom/google/android/gms/internal/ads/zzcfg;Ljava/lang/String;)Lcom/google/common/util/concurrent/e;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    new-instance v3, Lcom/google/android/gms/internal/ads/zzfdg;

    .line 37
    .line 38
    invoke-direct {v3, p1, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfdg;-><init>(Lcom/google/android/gms/internal/ads/zzcfg;Lcom/google/android/gms/internal/ads/zzcmq;Lcom/google/android/gms/internal/ads/zzfjy;Lcom/google/android/gms/internal/ads/zzeca;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcaf;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 42
    .line 43
    invoke-static {p2, v3, p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzr(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgdj;Ljava/util/concurrent/Executor;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
