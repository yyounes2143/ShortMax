.class public final Lcom/google/android/gms/internal/ads/zzfjq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeca;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeca;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zza:Lcom/google/android/gms/internal/ads/zzeca;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzecc;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    move-object v0, v6

    .line 12
    move-object v3, p2

    .line 13
    move-object v4, p1

    .line 14
    move v5, p3

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzecc;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zza:Lcom/google/android/gms/internal/ads/zzeca;

    .line 19
    .line 20
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/zzeca;->zzd(Lcom/google/android/gms/internal/ads/zzecc;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
