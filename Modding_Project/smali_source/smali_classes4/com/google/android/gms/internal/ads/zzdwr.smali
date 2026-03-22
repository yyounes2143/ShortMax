.class public final synthetic Lcom/google/android/gms/internal/ads/zzdwr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdwu;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbvq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdwu;Lcom/google/android/gms/internal/ads/zzbvq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwr;->zza:Lcom/google/android/gms/internal/ads/zzdwu;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwr;->zzb:Lcom/google/android/gms/internal/ads/zzbvq;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwr;->zza:Lcom/google/android/gms/internal/ads/zzdwu;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwr;->zzb:Lcom/google/android/gms/internal/ads/zzbvq;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwu;->zza(Lcom/google/android/gms/internal/ads/zzdwu;Lcom/google/android/gms/internal/ads/zzbvq;)Lcom/google/android/gms/internal/ads/zzdyy;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
