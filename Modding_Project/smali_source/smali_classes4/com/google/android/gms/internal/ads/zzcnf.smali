.class final Lcom/google/android/gms/internal/ads/zzcnf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkf;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcni;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcni;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zza:Lcom/google/android/gms/internal/ads/zzcni;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zza:Lcom/google/android/gms/internal/ads/zzcni;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcni;->zzg(Lcom/google/android/gms/internal/ads/zzcni;Ljava/util/Map;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcni;->zzb(Lcom/google/android/gms/internal/ads/zzcni;)Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcne;

    .line 15
    .line 16
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzcne;-><init>(Lcom/google/android/gms/internal/ads/zzcnf;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
