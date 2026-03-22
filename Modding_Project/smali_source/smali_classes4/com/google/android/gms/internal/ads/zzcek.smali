.class public final synthetic Lcom/google/android/gms/internal/ads/zzcek;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzccb;

.field public final synthetic zzb:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzccb;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcek;->zza:Lcom/google/android/gms/internal/ads/zzccb;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcek;->zzb:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzceo;->zza:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcek;->zza:Lcom/google/android/gms/internal/ads/zzccb;

    .line 4
    .line 5
    const-string v1, "onGcacheInfoEvent"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcek;->zzb:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbna;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
