.class public final synthetic Lcom/google/android/gms/internal/ads/zzels;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzelu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzelu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzels;->zza:Lcom/google/android/gms/internal/ads/zzelu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzels;->zza:Lcom/google/android/gms/internal/ads/zzelu;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzelu;->zze:Lcom/google/android/gms/internal/ads/zzelv;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzelv;->zzd(Lcom/google/android/gms/internal/ads/zzelv;)Lcom/google/android/gms/internal/ads/zzell;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzell;->zzb()Lcom/google/android/gms/internal/ads/zzcxm;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcxm;->zzu()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
