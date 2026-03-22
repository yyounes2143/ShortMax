.class final Lcom/google/android/gms/internal/ads/zzeiy;
.super Lcom/google/android/gms/internal/ads/zzcoz;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeja;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcfg;Lcom/google/android/gms/internal/ads/zzcqy;Lcom/google/android/gms/internal/ads/zzfcb;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p2, p1, p4, p5}, Lcom/google/android/gms/internal/ads/zzcoz;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcfg;Lcom/google/android/gms/internal/ads/zzcqy;Lcom/google/android/gms/internal/ads/zzfcb;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zzd(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzcxk;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcxk;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzcxk;-><init>(Ljava/util/Set;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method
