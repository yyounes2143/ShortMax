.class public final synthetic Lcom/google/android/gms/internal/ads/zzdid;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdio;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdkr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdio;Lcom/google/android/gms/internal/ads/zzdkr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdid;->zza:Lcom/google/android/gms/internal/ads/zzdio;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzb:Lcom/google/android/gms/internal/ads/zzdkr;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdid;->zza:Lcom/google/android/gms/internal/ads/zzdio;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdid;->zzb:Lcom/google/android/gms/internal/ads/zzdkr;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdio;->zzy(Lcom/google/android/gms/internal/ads/zzdio;Lcom/google/android/gms/internal/ads/zzdkr;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
