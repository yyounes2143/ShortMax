.class final Lcom/google/android/gms/internal/ads/zzgoz;
.super Ljava/lang/ThreadLocal;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpa;->zza()Ljava/security/SecureRandom;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
