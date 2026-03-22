.class final Lcom/google/android/gms/internal/ads/zzgcb$zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzgcb$zzc;

.field static final zzb:Lcom/google/android/gms/internal/ads/zzgcb$zzc;


# instance fields
.field final zzc:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcb$zzc;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgcb$zzc$1;

    .line 4
    .line 5
    const-string v2, "Failure occurred while trying to finish a future."

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgcb$zzc$1;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcb$zzc;-><init>(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgcb$zzc;->zza:Lcom/google/android/gms/internal/ads/zzgcb$zzc;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcb$zzc;

    .line 16
    .line 17
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgcb$zzc$2;

    .line 18
    .line 19
    const-string v2, "Failure.exception is unexpectedly null."

    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgcb$zzc$2;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcb$zzc;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgcb$zzc;->zzb:Lcom/google/android/gms/internal/ads/zzgcb$zzc;

    .line 28
    .line 29
    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcb$zzc;->zzc:Ljava/lang/Throwable;

    .line 8
    .line 9
    return-void
.end method
