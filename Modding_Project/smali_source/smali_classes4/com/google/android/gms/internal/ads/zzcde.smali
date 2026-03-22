.class final Lcom/google/android/gms/internal/ads/zzcde;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcdf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcdf;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zza:Lcom/google/android/gms/internal/ads/zzcdf;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzA()Lcom/google/android/gms/internal/ads/zzcdg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcde;->zza:Lcom/google/android/gms/internal/ads/zzcdf;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdg;->zzc(Lcom/google/android/gms/internal/ads/zzcdf;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
