.class public final synthetic Lcom/google/android/gms/internal/ads/zzcfw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcfy;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzedf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcfy;Lcom/google/android/gms/internal/ads/zzedf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfw;->zza:Lcom/google/android/gms/internal/ads/zzcfy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfw;->zzb:Lcom/google/android/gms/internal/ads/zzedf;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfx;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfw;->zza:Lcom/google/android/gms/internal/ads/zzcfy;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfx;-><init>(Lcom/google/android/gms/internal/ads/zzcfy;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfw;->zzb:Lcom/google/android/gms/internal/ads/zzedf;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzedf;->zzf(Lcom/google/android/gms/internal/ads/zzcfx;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
