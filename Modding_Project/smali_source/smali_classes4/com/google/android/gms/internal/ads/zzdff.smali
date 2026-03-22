.class public Lcom/google/android/gms/internal/ads/zzdff;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdgn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcfg;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdgn;Lcom/google/android/gms/internal/ads/zzcfg;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/zzcfg;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdff;->zza:Lcom/google/android/gms/internal/ads/zzdgn;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdff;->zzb:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->zzb:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzG()Landroid/webkit/WebView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final zzb()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->zzb:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzG()Landroid/webkit/WebView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcfg;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->zzb:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzd(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddv;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzddv;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdfe;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdff;->zzb:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdfe;-><init>(Lcom/google/android/gms/internal/ads/zzcfg;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzddv;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzdgn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdff;->zza:Lcom/google/android/gms/internal/ads/zzdgn;

    .line 2
    .line 3
    return-object v0
.end method

.method public zzf(Lcom/google/android/gms/internal/ads/zzcur;)Ljava/util/Set;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzddv;

    .line 4
    .line 5
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzddv;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public zzg(Lcom/google/android/gms/internal/ads/zzcur;)Ljava/util/Set;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzddv;

    .line 4
    .line 5
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzddv;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
