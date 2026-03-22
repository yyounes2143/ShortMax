.class final Lcom/google/android/gms/internal/ads/zzaah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaai;


# instance fields
.field final synthetic zza:Ljava/util/concurrent/Executor;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdn;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaah;->zza:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzb:Lcom/google/android/gms/internal/ads/zzdn;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zza:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaah;->zzb:Lcom/google/android/gms/internal/ads/zzdn;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaah;->zza:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdn;->zza(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
