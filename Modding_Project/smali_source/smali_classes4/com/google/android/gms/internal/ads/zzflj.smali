.class public final Lcom/google/android/gms/internal/ads/zzflj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzflk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzflk;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzflk;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzflj;->zza:Lcom/google/android/gms/internal/ads/zzflk;

    .line 7
    .line 8
    return-void
.end method

.method public static zza(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzflj;->zza:Lcom/google/android/gms/internal/ads/zzflk;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzflk;->zza(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static zzb()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzflj;->zza:Lcom/google/android/gms/internal/ads/zzflk;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflk;->zzb()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
