.class final Lcom/google/android/gms/internal/ads/zzdns;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdj;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfca;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfcd;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcmq;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzdny;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdny;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/internal/ads/zzcmq;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdns;->zza:Lcom/google/android/gms/internal/ads/zzfca;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdns;->zzb:Lcom/google/android/gms/internal/ads/zzfcd;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdns;->zzc:Lcom/google/android/gms/internal/ads/zzcmq;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdns;->zzd:Lcom/google/android/gms/internal/ads/zzdny;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfg;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdns;->zza:Lcom/google/android/gms/internal/ads/zzfca;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdns;->zzb:Lcom/google/android/gms/internal/ads/zzfcd;

    .line 6
    .line 7
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzW(Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzN()Lcom/google/android/gms/internal/ads/zzcgy;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzkB:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdns;->zzc:Lcom/google/android/gms/internal/ads/zzcmq;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdns;->zzd:Lcom/google/android/gms/internal/ads/zzdny;

    .line 37
    .line 38
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdny;->zzd(Lcom/google/android/gms/internal/ads/zzdny;)Lcom/google/android/gms/internal/ads/zzeca;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdny;->zze(Lcom/google/android/gms/internal/ads/zzdny;)Lcom/google/android/gms/internal/ads/zzfjy;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-interface {p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzcgy;->zzM(Lcom/google/android/gms/internal/ads/zzcmq;Lcom/google/android/gms/internal/ads/zzeca;Lcom/google/android/gms/internal/ads/zzfjy;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdny;->zzd(Lcom/google/android/gms/internal/ads/zzdny;)Lcom/google/android/gms/internal/ads/zzeca;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdny;->zzc(Lcom/google/android/gms/internal/ads/zzdny;)Lcom/google/android/gms/internal/ads/zzdsj;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {p1, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzcgy;->zzO(Lcom/google/android/gms/internal/ads/zzcmq;Lcom/google/android/gms/internal/ads/zzeca;Lcom/google/android/gms/internal/ads/zzdsj;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zznt:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 61
    .line 62
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcgy;->zzP(Lcom/google/android/gms/internal/ads/zzfca;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void
.end method
