.class final Lcom/google/android/gms/internal/ads/zzcfn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcfg;

.field private final zzb:Lcom/google/android/gms/ads/internal/overlay/zzr;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcfg;Lcom/google/android/gms/ads/internal/overlay/zzr;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/ads/internal/overlay/zzr;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zza:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzr;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zzd()V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzdk()V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzds()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzr;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzds()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final zzdt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzr;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzdt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zza:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->zzaa()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final zzdv()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzr;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzdv()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final zzdw(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzr;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzdw(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zza:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfg;->zzY()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
