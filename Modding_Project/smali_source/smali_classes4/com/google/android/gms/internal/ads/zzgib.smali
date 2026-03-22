.class public final Lcom/google/android/gms/internal/ads/zzgib;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgoq;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgnn;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzgfa;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzghz;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzghz;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/google/android/gms/internal/ads/zzghy;

    .line 7
    .line 8
    const-class v2, Lcom/google/android/gms/internal/ads/zzget;

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgoq;->zzb(Lcom/google/android/gms/internal/ads/zzgoo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgoq;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgib;->zzb:Lcom/google/android/gms/internal/ads/zzgoq;

    .line 15
    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgia;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgia;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgib;->zzc:Lcom/google/android/gms/internal/ads/zzgnn;

    .line 22
    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:Lcom/google/android/gms/internal/ads/zzgtz;

    .line 24
    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgtk;->zzg()Lcom/google/android/gms/internal/ads/zzhba;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v3, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    .line 30
    .line 31
    invoke-static {v3, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgmz;->zzd(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgtz;Lcom/google/android/gms/internal/ads/zzhba;)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgib;->zzd:Lcom/google/android/gms/internal/ads/zzgfa;

    .line 36
    .line 37
    return-void
.end method

.method public static zza(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const/4 p0, 0x1

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgmg;->zza(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget v0, Lcom/google/android/gms/internal/ads/zzgle;->zza:I

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgny;->zzc()Lcom/google/android/gms/internal/ads/zzgny;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgle;->zze(Lcom/google/android/gms/internal/ads/zzgny;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnv;->zza()Lcom/google/android/gms/internal/ads/zzgnv;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgib;->zzb:Lcom/google/android/gms/internal/ads/zzgoq;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnv;->zzc(Lcom/google/android/gms/internal/ads/zzgoq;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgno;->zzb()Lcom/google/android/gms/internal/ads/zzgno;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgib;->zzc:Lcom/google/android/gms/internal/ads/zzgnn;

    .line 31
    .line 32
    const-class v2, Lcom/google/android/gms/internal/ads/zzgid;

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgno;->zzc(Lcom/google/android/gms/internal/ads/zzgnn;Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnu;->zzb()Lcom/google/android/gms/internal/ads/zzgnu;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgic;->zza:Lcom/google/android/gms/internal/ads/zzgic;

    .line 47
    .line 48
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgid;->zzc(Lcom/google/android/gms/internal/ads/zzgic;)Lcom/google/android/gms/internal/ads/zzgid;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v3, "CHACHA20_POLY1305"

    .line 53
    .line 54
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgic;->zzc:Lcom/google/android/gms/internal/ads/zzgic;

    .line 58
    .line 59
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgid;->zzc(Lcom/google/android/gms/internal/ads/zzgic;)Lcom/google/android/gms/internal/ads/zzgid;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const-string v3, "CHACHA20_POLY1305_RAW"

    .line 64
    .line 65
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnu;->zzd(Ljava/util/Map;)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmp;->zzc()Lcom/google/android/gms/internal/ads/zzgmp;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgib;->zzd:Lcom/google/android/gms/internal/ads/zzgfa;

    .line 80
    .line 81
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgmp;->zzd(Lcom/google/android/gms/internal/ads/zzgfa;Z)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 86
    .line 87
    const-string v0, "Registering ChaCha20Poly1305 is not supported in FIPS mode"

    .line 88
    .line 89
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0
.end method
