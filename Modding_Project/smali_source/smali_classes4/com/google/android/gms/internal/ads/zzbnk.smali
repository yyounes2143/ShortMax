.class final Lcom/google/android/gms/internal/ads/zzbnk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkf;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbnl;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbkf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnl;Lcom/google/android/gms/internal/ads/zzbkf;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnk;->zza:Lcom/google/android/gms/internal/ads/zzbnl;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnk;->zzb:Lcom/google/android/gms/internal/ads/zzbkf;

    .line 10
    .line 11
    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzbnk;)Lcom/google/android/gms/internal/ads/zzbkf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbnk;->zzb:Lcom/google/android/gms/internal/ads/zzbkf;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfg;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnk;->zzb:Lcom/google/android/gms/internal/ads/zzbkf;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnk;->zza:Lcom/google/android/gms/internal/ads/zzbnl;

    .line 6
    .line 7
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbkf;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
