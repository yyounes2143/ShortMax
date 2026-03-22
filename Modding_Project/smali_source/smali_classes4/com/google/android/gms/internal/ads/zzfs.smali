.class public final Lcom/google/android/gms/internal/ads/zzfs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzfyq;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzfl;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzfn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzd:Lcom/google/android/gms/internal/ads/zzfr;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfj;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfl;Lcom/google/android/gms/internal/ads/zzfn;Lcom/google/android/gms/internal/ads/zzfr;)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ads/zzfn;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/ads/zzfr;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfyq;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfs;->zza:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfs;->zzb:Lcom/google/android/gms/internal/ads/zzfl;

    .line 18
    .line 19
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfs;->zzc:Lcom/google/android/gms/internal/ads/zzfn;

    .line 20
    .line 21
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfs;->zzd:Lcom/google/android/gms/internal/ads/zzfr;

    .line 22
    .line 23
    return-void
.end method
