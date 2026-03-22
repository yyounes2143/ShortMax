.class public final Lcom/google/android/gms/internal/ads/zzeja;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzedm;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcpx;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbdz;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgdy;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfha;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcpx;Lcom/google/android/gms/internal/ads/zzfha;Lcom/google/android/gms/internal/ads/zzgdy;Lcom/google/android/gms/internal/ads/zzbdz;)V
    .locals 0
    .param p5    # Lcom/google/android/gms/internal/ads/zzbdz;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeja;->zza:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzb:Lcom/google/android/gms/internal/ads/zzcpx;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeja;->zze:Lcom/google/android/gms/internal/ads/zzfha;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzd:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzc:Lcom/google/android/gms/internal/ads/zzbdz;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzeja;Lcom/google/android/gms/internal/ads/zzbdu;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzc:Lcom/google/android/gms/internal/ads/zzbdz;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdz;->zze(Lcom/google/android/gms/internal/ads/zzbdw;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;)Lcom/google/common/util/concurrent/e;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzeiy;

    .line 2
    .line 3
    new-instance v2, Landroid/view/View;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeja;->zza:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance v4, Lcom/google/android/gms/internal/ads/zzeiw;

    .line 11
    .line 12
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzeiw;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfca;->zzu:Ljava/util/List;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object v5, v0

    .line 23
    check-cast v5, Lcom/google/android/gms/internal/ads/zzfcb;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    move-object v0, v6

    .line 27
    move-object v1, p0

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeiy;-><init>(Lcom/google/android/gms/internal/ads/zzeja;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcfg;Lcom/google/android/gms/internal/ads/zzcqy;Lcom/google/android/gms/internal/ads/zzfcb;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcrq;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcrq;-><init>(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzb:Lcom/google/android/gms/internal/ads/zzcpx;

    .line 38
    .line 39
    invoke-virtual {p1, v0, v6}, Lcom/google/android/gms/internal/ads/zzcpx;->zza(Lcom/google/android/gms/internal/ads/zzcrq;Lcom/google/android/gms/internal/ads/zzcoz;)Lcom/google/android/gms/internal/ads/zzcot;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdu;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcot;->zzm()Lcom/google/android/gms/internal/ads/zzeiz;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfca;->zzs:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 50
    .line 51
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzfcf;->zzb:Ljava/lang/String;

    .line 52
    .line 53
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfcf;->zza:Ljava/lang/String;

    .line 54
    .line 55
    invoke-direct {v0, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzbdu;-><init>(Lcom/google/android/gms/ads/internal/zzg;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfgu;->zzt:Lcom/google/android/gms/internal/ads/zzfgu;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeja;->zze:Lcom/google/android/gms/internal/ads/zzfha;

    .line 61
    .line 62
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    new-instance v2, Lcom/google/android/gms/internal/ads/zzeix;

    .line 66
    .line 67
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzeix;-><init>(Lcom/google/android/gms/internal/ads/zzeja;Lcom/google/android/gms/internal/ads/zzbdu;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzd:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 71
    .line 72
    invoke-static {v2, v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzfgk;->zzd(Lcom/google/android/gms/internal/ads/zzfgf;Lcom/google/android/gms/internal/ads/zzgdy;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfgs;)Lcom/google/android/gms/internal/ads/zzfgq;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgu;->zzu:Lcom/google/android/gms/internal/ads/zzfgu;

    .line 77
    .line 78
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfgq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfgq;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcot;->zza()Lcom/google/android/gms/internal/ads/zzcos;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfgq;->zzd(Lcom/google/common/util/concurrent/e;)Lcom/google/android/gms/internal/ads/zzfgq;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgq;->zza()Lcom/google/android/gms/internal/ads/zzfgg;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeja;->zzc:Lcom/google/android/gms/internal/ads/zzbdz;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfca;->zzs:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfcf;->zza:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method
