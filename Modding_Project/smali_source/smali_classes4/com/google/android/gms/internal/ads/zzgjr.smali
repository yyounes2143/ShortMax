.class public final Lcom/google/android/gms/internal/ads/zzgjr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgnn;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgoq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjp;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgjp;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgjr;->zza:Lcom/google/android/gms/internal/ads/zzgnn;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjq;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgjq;-><init>()V

    .line 11
    .line 12
    .line 13
    const-class v1, Lcom/google/android/gms/internal/ads/zzgjo;

    .line 14
    .line 15
    const-class v2, Lcom/google/android/gms/internal/ads/zzget;

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgoq;->zzb(Lcom/google/android/gms/internal/ads/zzgoo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgoq;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgjr;->zzb:Lcom/google/android/gms/internal/ads/zzgoq;

    .line 22
    .line 23
    return-void
.end method

.method public static zza(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget p0, Lcom/google/android/gms/internal/ads/zzglt;->zza:I

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgny;->zzc()Lcom/google/android/gms/internal/ads/zzgny;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzglt;->zze(Lcom/google/android/gms/internal/ads/zzgny;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnu;->zzb()Lcom/google/android/gms/internal/ads/zzgnu;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "XAES_256_GCM_192_BIT_NONCE"

    .line 20
    .line 21
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgjn;->zzg:Lcom/google/android/gms/internal/ads/zzgjt;

    .line 22
    .line 23
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const-string v1, "XAES_256_GCM_192_BIT_NONCE_NO_PREFIX"

    .line 27
    .line 28
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgjn;->zzh:Lcom/google/android/gms/internal/ads/zzgjt;

    .line 29
    .line 30
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const-string v1, "XAES_256_GCM_160_BIT_NONCE_NO_PREFIX"

    .line 34
    .line 35
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgjn;->zzi:Lcom/google/android/gms/internal/ads/zzgjt;

    .line 36
    .line 37
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const-string v1, "X_AES_GCM_8_BYTE_SALT_NO_PREFIX"

    .line 41
    .line 42
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgjn;->zzj:Lcom/google/android/gms/internal/ads/zzgjt;

    .line 43
    .line 44
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgnu;->zzd(Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnv;->zza()Lcom/google/android/gms/internal/ads/zzgnv;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgjr;->zzb:Lcom/google/android/gms/internal/ads/zzgoq;

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgnv;->zzc(Lcom/google/android/gms/internal/ads/zzgoq;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgno;->zzb()Lcom/google/android/gms/internal/ads/zzgno;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgjr;->zza:Lcom/google/android/gms/internal/ads/zzgnn;

    .line 68
    .line 69
    const-class v1, Lcom/google/android/gms/internal/ads/zzgjt;

    .line 70
    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgno;->zzc(Lcom/google/android/gms/internal/ads/zzgnn;Ljava/lang/Class;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method
