.class final Lcom/google/android/gms/internal/ads/zzavk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfqb;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfod;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzavm;Lcom/google/android/gms/internal/ads/zzfod;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:Lcom/google/android/gms/internal/ads/zzfod;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza(Ljava/io/File;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zza:Lcom/google/android/gms/internal/ads/zzfod;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfod;->zza(Ljava/io/File;)Z

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p1

    .line 8
    :catch_0
    const/4 p1, 0x0

    .line 9
    return p1
.end method
