.class public final Lcom/google/android/gms/internal/ads/zzfrv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfrs;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzfrs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfrt;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfrt;-><init>(Lcom/google/android/gms/internal/ads/zzfru;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfrv;->zza:Lcom/google/android/gms/internal/ads/zzfrs;

    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfrv;->zzb:Lcom/google/android/gms/internal/ads/zzfrs;

    .line 10
    .line 11
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfrs;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfrv;->zzb:Lcom/google/android/gms/internal/ads/zzfrs;

    .line 2
    .line 3
    return-object v0
.end method
