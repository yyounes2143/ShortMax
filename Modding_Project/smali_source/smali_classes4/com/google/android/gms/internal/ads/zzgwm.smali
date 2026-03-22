.class public final Lcom/google/android/gms/internal/ads/zzgwm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzgwm;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzgwm;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzgwk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwm;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgwn;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgwn;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwm;-><init>(Lcom/google/android/gms/internal/ads/zzgwu;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgwm;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwm;

    .line 14
    .line 15
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgwr;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgwr;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwm;-><init>(Lcom/google/android/gms/internal/ads/zzgwu;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgwm;->zzb:Lcom/google/android/gms/internal/ads/zzgwm;

    .line 24
    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwm;

    .line 26
    .line 27
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgwt;

    .line 28
    .line 29
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgwt;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwm;-><init>(Lcom/google/android/gms/internal/ads/zzgwu;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwm;

    .line 36
    .line 37
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgws;

    .line 38
    .line 39
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgws;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwm;-><init>(Lcom/google/android/gms/internal/ads/zzgwu;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwm;

    .line 46
    .line 47
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgwo;

    .line 48
    .line 49
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgwo;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwm;-><init>(Lcom/google/android/gms/internal/ads/zzgwu;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwm;

    .line 56
    .line 57
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgwq;

    .line 58
    .line 59
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgwq;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwm;-><init>(Lcom/google/android/gms/internal/ads/zzgwu;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwm;

    .line 66
    .line 67
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgwp;

    .line 68
    .line 69
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgwp;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgwm;-><init>(Lcom/google/android/gms/internal/ads/zzgwu;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgwu;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmh;->zzb()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "The Android Project"

    .line 12
    .line 13
    const-string v2, "java.vendor"

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwh;

    .line 26
    .line 27
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgwh;-><init>(Lcom/google/android/gms/internal/ads/zzgwu;Lcom/google/android/gms/internal/ads/zzgwl;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwm;->zzc:Lcom/google/android/gms/internal/ads/zzgwk;

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwi;

    .line 34
    .line 35
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgwi;-><init>(Lcom/google/android/gms/internal/ads/zzgwu;Lcom/google/android/gms/internal/ads/zzgwl;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwj;

    .line 40
    .line 41
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgwj;-><init>(Lcom/google/android/gms/internal/ads/zzgwu;Lcom/google/android/gms/internal/ads/zzgwl;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0
.end method

.method public static varargs zzb([Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p0

    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    aget-object v2, p0, v1

    .line 11
    .line 12
    invoke-static {v2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwm;->zzc:Lcom/google/android/gms/internal/ads/zzgwk;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgwk;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
