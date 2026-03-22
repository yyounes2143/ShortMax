.class public final Lcom/google/android/gms/internal/ads/zzedn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzedm;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzedm;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfve;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzedm;Lcom/google/android/gms/internal/ads/zzfve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedn;->zza:Lcom/google/android/gms/internal/ads/zzedm;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedn;->zzb:Lcom/google/android/gms/internal/ads/zzfve;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;)Lcom/google/common/util/concurrent/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedn;->zza:Lcom/google/android/gms/internal/ads/zzedm;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzedm;->zza(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;)Lcom/google/common/util/concurrent/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzedn;->zzb:Lcom/google/android/gms/internal/ads/zzfve;

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcaf;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 10
    .line 11
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzm(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfve;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedn;->zza:Lcom/google/android/gms/internal/ads/zzedm;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzedm;->zzb(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
