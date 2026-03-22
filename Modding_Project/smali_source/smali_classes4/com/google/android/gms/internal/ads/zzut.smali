.class final Lcom/google/android/gms/internal/ads/zzut;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Ljava/util/Map;

.field private zzc:Lcom/google/android/gms/internal/ads/zzgi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaea;Lcom/google/android/gms/internal/ads/zzakr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzut;->zza:Ljava/util/Map;

    .line 10
    .line 11
    new-instance p1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzut;->zzb:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgi;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzut;->zzc:Lcom/google/android/gms/internal/ads/zzgi;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzut;->zzc:Lcom/google/android/gms/internal/ads/zzgi;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzut;->zza:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzut;->zzb:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
