.class public final Lcom/google/android/gms/internal/ads/zzbfa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbeo;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzbeo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "gads:debug_logging_feature:enable"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbeo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbfa;->zza:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 9
    .line 10
    const-string v0, "gads:debug_logging_feature:intercept_web_view"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbeo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbfa;->zzb:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 17
    .line 18
    return-void
.end method
