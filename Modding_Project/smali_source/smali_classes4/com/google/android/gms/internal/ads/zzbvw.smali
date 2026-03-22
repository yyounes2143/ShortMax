.class final Lcom/google/android/gms/internal/ads/zzbvw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field public final zza:J

.field public final zzb:Lcom/google/android/gms/internal/ads/zzbvu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbvx;Lcom/google/android/gms/internal/ads/zzbvu;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbvw;->zza:J

    .line 16
    .line 17
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvw;->zzb:Lcom/google/android/gms/internal/ads/zzbvu;

    .line 18
    .line 19
    return-void
.end method
