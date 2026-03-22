.class public Lcom/google/android/gms/internal/ads/zzcoz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcqy;

.field private final zzb:Landroid/view/View;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfcb;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcfg;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcfg;Lcom/google/android/gms/internal/ads/zzcqy;Lcom/google/android/gms/internal/ads/zzfcb;)V
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoz;->zzb:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoz;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcoz;->zza:Lcom/google/android/gms/internal/ads/zzcqy;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcoz;->zzc:Lcom/google/android/gms/internal/ads/zzfcb;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoz;->zzb:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzcfg;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoz;->zzd:Lcom/google/android/gms/internal/ads/zzcfg;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcqy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoz;->zza:Lcom/google/android/gms/internal/ads/zzcqy;

    .line 2
    .line 3
    return-object v0
.end method

.method public zzd(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzcxk;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxk;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcxk;-><init>(Ljava/util/Set;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzfcb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoz;->zzc:Lcom/google/android/gms/internal/ads/zzfcb;

    .line 2
    .line 3
    return-object v0
.end method
