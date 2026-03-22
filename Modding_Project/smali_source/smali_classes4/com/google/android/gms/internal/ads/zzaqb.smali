.class final Lcom/google/android/gms/internal/ads/zzaqb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:J

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzaqd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaqd;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqb;->zza:Ljava/lang/String;

    .line 2
    .line 3
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaqb;->zzb:J

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqb;->zzc:Lcom/google/android/gms/internal/ads/zzaqd;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqb;->zzc:Lcom/google/android/gms/internal/ads/zzaqd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzi(Lcom/google/android/gms/internal/ads/zzaqd;)Lcom/google/android/gms/internal/ads/zzaqo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaqb;->zza:Ljava/lang/String;

    .line 8
    .line 9
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaqb;->zzb:J

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaqo;->zza(Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzi(Lcom/google/android/gms/internal/ads/zzaqd;)Lcom/google/android/gms/internal/ads/zzaqo;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqd;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqo;->zzb(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
