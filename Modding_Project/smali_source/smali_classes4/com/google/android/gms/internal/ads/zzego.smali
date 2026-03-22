.class public final Lcom/google/android/gms/internal/ads/zzego;
.super Lcom/google/android/gms/internal/ads/zzegq;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzche;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdgw;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcvf;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdbw;

.field private final zze:Lcom/google/android/gms/internal/ads/zzehb;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzedr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzche;Lcom/google/android/gms/internal/ads/zzdgw;Lcom/google/android/gms/internal/ads/zzcvf;Lcom/google/android/gms/internal/ads/zzdbw;Lcom/google/android/gms/internal/ads/zzehb;Lcom/google/android/gms/internal/ads/zzedr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegq;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzego;->zza:Lcom/google/android/gms/internal/ads/zzche;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzego;->zzb:Lcom/google/android/gms/internal/ads/zzdgw;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzcvf;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzego;->zzd:Lcom/google/android/gms/internal/ads/zzdbw;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzego;->zze:Lcom/google/android/gms/internal/ads/zzehb;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzego;->zzf:Lcom/google/android/gms/internal/ads/zzedr;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method protected final zzc(Lcom/google/android/gms/internal/ads/zzfcw;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcn;)Lcom/google/common/util/concurrent/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzcvf;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcvf;->zzk(Lcom/google/android/gms/internal/ads/zzfcw;)Lcom/google/android/gms/internal/ads/zzcvf;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzcvf;->zzg(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzcvf;

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcuy;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzego;->zze:Lcom/google/android/gms/internal/ads/zzehb;

    .line 12
    .line 13
    invoke-direct {p1, p4, p3, p2}, Lcom/google/android/gms/internal/ads/zzcuy;-><init>(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzehb;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcvf;->zzh(Lcom/google/android/gms/internal/ads/zzcuy;)Lcom/google/android/gms/internal/ads/zzcvf;

    .line 17
    .line 18
    .line 19
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zzdR:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 20
    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzego;->zzf:Lcom/google/android/gms/internal/ads/zzedr;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcvf;->zze(Lcom/google/android/gms/internal/ads/zzedr;)Lcom/google/android/gms/internal/ads/zzcvf;

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzego;->zza:Lcom/google/android/gms/internal/ads/zzche;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzche;->zzg()Lcom/google/android/gms/internal/ads/zzdha;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcvf;->zzl()Lcom/google/android/gms/internal/ads/zzcvh;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdha;->zzf(Lcom/google/android/gms/internal/ads/zzcvh;)Lcom/google/android/gms/internal/ads/zzdha;

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzego;->zzd:Lcom/google/android/gms/internal/ads/zzdbw;

    .line 56
    .line 57
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdha;->zze(Lcom/google/android/gms/internal/ads/zzdbw;)Lcom/google/android/gms/internal/ads/zzdha;

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzego;->zzb:Lcom/google/android/gms/internal/ads/zzdgw;

    .line 61
    .line 62
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdha;->zzd(Lcom/google/android/gms/internal/ads/zzdgw;)Lcom/google/android/gms/internal/ads/zzdha;

    .line 63
    .line 64
    .line 65
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcop;

    .line 66
    .line 67
    const/4 p3, 0x0

    .line 68
    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzcop;-><init>(Landroid/view/ViewGroup;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdha;->zzc(Lcom/google/android/gms/internal/ads/zzcop;)Lcom/google/android/gms/internal/ads/zzdha;

    .line 72
    .line 73
    .line 74
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdha;->zzg()Lcom/google/android/gms/internal/ads/zzdhb;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhb;->zza()Lcom/google/android/gms/internal/ads/zzcse;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcse;->zzi()Lcom/google/common/util/concurrent/e;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcse;->zzh(Lcom/google/common/util/concurrent/e;)Lcom/google/common/util/concurrent/e;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1
.end method
