.class public final Lcom/google/android/gms/internal/ads/zzdku;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcws;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdit;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdiy;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdit;Lcom/google/android/gms/internal/ads/zzdiy;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdku;->zza:Lcom/google/android/gms/internal/ads/zzdit;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdku;->zzb:Lcom/google/android/gms/internal/ads/zzdiy;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdku;->zzc:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdku;->zzd:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzdku;Lcom/google/android/gms/internal/ads/zzcfg;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdku;->zzb(Lcom/google/android/gms/internal/ads/zzcfg;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzcfg;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdks;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdks;-><init>(Lcom/google/android/gms/internal/ads/zzcfg;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdku;->zzc:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final zzt()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdku;->zzb:Lcom/google/android/gms/internal/ads/zzdiy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdiy;->zzd()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdku;->zza:Lcom/google/android/gms/internal/ads/zzdit;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdit;->zzu()Lcom/google/android/gms/internal/ads/zzedh;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdit;->zzw()Lcom/google/common/util/concurrent/e;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zzfG:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdit;->zzw()Lcom/google/common/util/concurrent/e;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdit;->zzp()Lcom/google/android/gms/internal/ads/zzcak;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    const/4 v2, 0x2

    .line 55
    new-array v2, v2, [Lcom/google/common/util/concurrent/e;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    aput-object v1, v2, v3

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    aput-object v0, v2, v1

    .line 62
    .line 63
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzl([Lcom/google/common/util/concurrent/e;)Lcom/google/common/util/concurrent/e;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdkt;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdkt;-><init>(Lcom/google/android/gms/internal/ads/zzdku;)V

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdku;->zzd:Ljava/util/concurrent/Executor;

    .line 73
    .line 74
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzr(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgdj;Ljava/util/concurrent/Executor;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    if-eqz v1, :cond_4

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdit;->zzr()Lcom/google/android/gms/internal/ads/zzcfg;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdit;->zzs()Lcom/google/android/gms/internal/ads/zzcfg;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    if-nez v0, :cond_3

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    move-object v1, v0

    .line 96
    :goto_0
    if-eqz v1, :cond_4

    .line 97
    .line 98
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdku;->zzb(Lcom/google/android/gms/internal/ads/zzcfg;)V

    .line 99
    .line 100
    .line 101
    :cond_4
    :goto_1
    return-void
.end method
