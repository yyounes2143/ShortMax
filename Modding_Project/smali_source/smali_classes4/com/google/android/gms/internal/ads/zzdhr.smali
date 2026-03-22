.class public final Lcom/google/android/gms/internal/ads/zzdhr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdhp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdhp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhr;->zza:Lcom/google/android/gms/internal/ads/zzdhp;

    .line 5
    .line 6
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdhp;)Lcom/google/android/gms/internal/ads/zzdhr;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhr;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdhr;-><init>(Lcom/google/android/gms/internal/ads/zzdhp;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdhp;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdhp;->zzd()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhgz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhr;->zza:Lcom/google/android/gms/internal/ads/zzdhp;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdhr;->zzc(Lcom/google/android/gms/internal/ads/zzdhp;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzd()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhr;->zza:Lcom/google/android/gms/internal/ads/zzdhp;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdhr;->zzc(Lcom/google/android/gms/internal/ads/zzdhp;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
