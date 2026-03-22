.class public final synthetic Lcom/google/android/gms/internal/ads/zzdxw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdyb;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbom;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdyb;Lcom/google/android/gms/internal/ads/zzbom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxw;->zza:Lcom/google/android/gms/internal/ads/zzdyb;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxw;->zzb:Lcom/google/android/gms/internal/ads/zzbom;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxw;->zza:Lcom/google/android/gms/internal/ads/zzdyb;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxw;->zzb:Lcom/google/android/gms/internal/ads/zzbom;

    .line 4
    .line 5
    check-cast p1, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyb;->zzd(Lcom/google/android/gms/internal/ads/zzdyb;Lcom/google/android/gms/internal/ads/zzbom;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/e;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
