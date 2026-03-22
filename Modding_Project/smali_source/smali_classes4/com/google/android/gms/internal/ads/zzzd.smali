.class public abstract Lcom/google/android/gms/internal/ads/zzzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzzc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Lcom/google/android/gms/internal/ads/zzzl;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public zze()Lcom/google/android/gms/internal/ads/zzmc;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public zzj()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->zza:Lcom/google/android/gms/internal/ads/zzzc;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzb:Lcom/google/android/gms/internal/ads/zzzl;

    .line 5
    .line 6
    return-void
.end method

.method public zzk(Lcom/google/android/gms/internal/ads/zze;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public zzn()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public abstract zzo([Lcom/google/android/gms/internal/ads/zzmd;Lcom/google/android/gms/internal/ads/zzxk;Lcom/google/android/gms/internal/ads/zzvh;Lcom/google/android/gms/internal/ads/zzbl;)Lcom/google/android/gms/internal/ads/zzze;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation
.end method

.method public abstract zzp(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected final zzq()Lcom/google/android/gms/internal/ads/zzzl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzb:Lcom/google/android/gms/internal/ads/zzzl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzzc;Lcom/google/android/gms/internal/ads/zzzl;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->zza:Lcom/google/android/gms/internal/ads/zzzc;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzd;->zza:Lcom/google/android/gms/internal/ads/zzzc;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzd;->zzb:Lcom/google/android/gms/internal/ads/zzzl;

    .line 14
    .line 15
    return-void
.end method

.method protected final zzs()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzd;->zza:Lcom/google/android/gms/internal/ads/zzzc;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzzc;->zzm()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
