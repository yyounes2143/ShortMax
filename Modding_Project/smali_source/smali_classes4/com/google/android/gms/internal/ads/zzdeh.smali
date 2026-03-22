.class public final Lcom/google/android/gms/internal/ads/zzdeh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfjy;

.field private final zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfjy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfca;->zzp:Ljava/util/List;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdeh;->zza:Ljava/util/List;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdeh;->zzb:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfca;->zzax:Lcom/google/android/gms/ads/internal/util/client/zzv;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdeh;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdeh;->zzd:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdeh;->zzb:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdeh;->zza:Ljava/util/List;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdeh;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfjy;->zze(Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdeh;->zzd:Z

    .line 16
    .line 17
    :cond_0
    return-void
.end method
