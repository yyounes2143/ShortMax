.class public final synthetic Lcom/google/android/gms/internal/ads/zzbns;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzboi;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzboh;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzboi;Lcom/google/android/gms/internal/ads/zzavu;Lcom/google/android/gms/internal/ads/zzboh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbns;->zza:Lcom/google/android/gms/internal/ads/zzboi;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbns;->zzb:Lcom/google/android/gms/internal/ads/zzboh;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbns;->zza:Lcom/google/android/gms/internal/ads/zzboi;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbns;->zzb:Lcom/google/android/gms/internal/ads/zzboh;

    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzboi;->zzh(Lcom/google/android/gms/internal/ads/zzboi;Lcom/google/android/gms/internal/ads/zzavu;Lcom/google/android/gms/internal/ads/zzboh;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
