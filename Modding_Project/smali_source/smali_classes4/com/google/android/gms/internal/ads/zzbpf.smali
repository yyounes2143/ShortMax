.class public final Lcom/google/android/gms/internal/ads/zzbpf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzboi;

.field private zzb:Lcom/google/common/util/concurrent/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzboi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpf;->zza:Lcom/google/android/gms/internal/ads/zzboi;

    .line 5
    .line 6
    return-void
.end method

.method private final zzd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpf;->zzb:Lcom/google/common/util/concurrent/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcak;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcak;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpf;->zzb:Lcom/google/common/util/concurrent/e;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpf;->zza:Lcom/google/android/gms/internal/ads/zzboi;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzboi;->zzb(Lcom/google/android/gms/internal/ads/zzavu;)Lcom/google/android/gms/internal/ads/zzboc;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbpc;

    .line 20
    .line 21
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzbpc;-><init>(Lcom/google/android/gms/internal/ads/zzcak;)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbpd;

    .line 25
    .line 26
    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzbpd;-><init>(Lcom/google/android/gms/internal/ads/zzcak;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcar;->zzj(Lcom/google/android/gms/internal/ads/zzcao;Lcom/google/android/gms/internal/ads/zzcam;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbop;Lcom/google/android/gms/internal/ads/zzboo;)Lcom/google/android/gms/internal/ads/zzbpi;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbpf;->zzd()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbpi;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpf;->zzb:Lcom/google/common/util/concurrent/e;

    .line 7
    .line 8
    const-string v1, "google.afma.activeView.handleUpdate"

    .line 9
    .line 10
    invoke-direct {p1, v0, v1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbpi;-><init>(Lcom/google/common/util/concurrent/e;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbop;Lcom/google/android/gms/internal/ads/zzboo;)V

    .line 11
    .line 12
    .line 13
    return-object p1
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkf;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbpf;->zzd()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpf;->zzb:Lcom/google/common/util/concurrent/e;

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbpe;

    .line 7
    .line 8
    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbpe;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkf;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 12
    .line 13
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpf;->zzb:Lcom/google/common/util/concurrent/e;

    .line 18
    .line 19
    return-void
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkf;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpf;->zzb:Lcom/google/common/util/concurrent/e;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbpb;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbpb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbkf;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzm(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfve;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpf;->zzb:Lcom/google/common/util/concurrent/e;

    .line 15
    .line 16
    return-void
.end method
