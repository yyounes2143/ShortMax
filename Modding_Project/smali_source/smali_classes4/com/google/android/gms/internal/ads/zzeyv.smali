.class final Lcom/google/android/gms/internal/ads/zzeyv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzffd;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzezr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzezr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyv;->zza:Lcom/google/android/gms/internal/ads/zzezr;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzffe;)Lcom/google/common/util/concurrent/e;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeyw;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzeyw;->zzb:Lcom/google/android/gms/internal/ads/zzezs;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeyw;->zza:Lcom/google/android/gms/internal/ads/zzezq;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeyv;->zza:Lcom/google/android/gms/internal/ads/zzezr;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    check-cast v1, Lcom/google/android/gms/internal/ads/zzeys;

    .line 11
    .line 12
    invoke-virtual {v1, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzeys;->zzb(Lcom/google/android/gms/internal/ads/zzezs;Lcom/google/android/gms/internal/ads/zzezq;Lcom/google/android/gms/internal/ads/zzcve;)Lcom/google/common/util/concurrent/e;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfes;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyv;->zza:Lcom/google/android/gms/internal/ads/zzezr;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzeys;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeys;->zza()Lcom/google/android/gms/internal/ads/zzcve;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzfes;->zza:Lcom/google/android/gms/internal/ads/zzcve;

    .line 10
    .line 11
    return-void
.end method
