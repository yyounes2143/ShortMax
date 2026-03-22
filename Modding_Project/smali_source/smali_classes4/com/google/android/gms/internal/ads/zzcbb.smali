.class final Lcom/google/android/gms/internal/ads/zzcbb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:I

.field final synthetic zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcbf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcbf;II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcbb;->zza:I

    .line 2
    .line 3
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcbb;->zzb:I

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbb;->zzc:Lcom/google/android/gms/internal/ads/zzcbf;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbb;->zzc:Lcom/google/android/gms/internal/ads/zzcbf;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcbf;->zzi(Lcom/google/android/gms/internal/ads/zzcbf;)Lcom/google/android/gms/internal/ads/zzcbg;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcbb;->zza:I

    .line 10
    .line 11
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcbb;->zzb:I

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcbf;->zzi(Lcom/google/android/gms/internal/ads/zzcbf;)Lcom/google/android/gms/internal/ads/zzcbg;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcbg;->zzj(II)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
