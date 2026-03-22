.class public final Lcom/google/android/gms/internal/ads/zzbus;
.super Lcom/google/android/gms/internal/ads/zzbut;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbut;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zzb()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbuq;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbuq;-><init>(Lcom/google/android/gms/internal/ads/zzbur;)V

    .line 9
    .line 10
    .line 11
    const-string v2, "FlagsAccessedBeforeInitialized"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
