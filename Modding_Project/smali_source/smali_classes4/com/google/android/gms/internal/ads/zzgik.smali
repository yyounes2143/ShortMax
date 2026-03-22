.class public final Lcom/google/android/gms/internal/ads/zzgik;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgfa;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgnn;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzgoq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtz;->zzb:Lcom/google/android/gms/internal/ads/zzgtz;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvb;->zzg()Lcom/google/android/gms/internal/ads/zzhba;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    .line 8
    .line 9
    const-class v3, Lcom/google/android/gms/internal/ads/zzget;

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzgmz;->zzd(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgtz;Lcom/google/android/gms/internal/ads/zzhba;)Lcom/google/android/gms/internal/ads/zzgfa;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgik;->zzb:Lcom/google/android/gms/internal/ads/zzgfa;

    .line 16
    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgii;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgii;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgik;->zzc:Lcom/google/android/gms/internal/ads/zzgnn;

    .line 23
    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgij;

    .line 25
    .line 26
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgij;-><init>()V

    .line 27
    .line 28
    .line 29
    const-class v1, Lcom/google/android/gms/internal/ads/zzgit;

    .line 30
    .line 31
    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzgoq;->zzb(Lcom/google/android/gms/internal/ads/zzgoo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgoq;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgik;->zzd:Lcom/google/android/gms/internal/ads/zzgoq;

    .line 36
    .line 37
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
    sget v0, Lcom/google/android/gms/internal/ads/zzgjd;->zza:I

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgny;->zzc()Lcom/google/android/gms/internal/ads/zzgny;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgjd;->zze(Lcom/google/android/gms/internal/ads/zzgny;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgno;->zzb()Lcom/google/android/gms/internal/ads/zzgno;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgik;->zzc:Lcom/google/android/gms/internal/ads/zzgnn;

    .line 22
    .line 23
    const-class v2, Lcom/google/android/gms/internal/ads/zzgiy;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgno;->zzc(Lcom/google/android/gms/internal/ads/zzgnn;Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnv;->zza()Lcom/google/android/gms/internal/ads/zzgnv;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgik;->zzd:Lcom/google/android/gms/internal/ads/zzgoq;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnv;->zzc(Lcom/google/android/gms/internal/ads/zzgoq;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmp;->zzc()Lcom/google/android/gms/internal/ads/zzgmp;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgik;->zzb:Lcom/google/android/gms/internal/ads/zzgfa;

    .line 42
    .line 43
    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgmp;->zzd(Lcom/google/android/gms/internal/ads/zzgfa;Z)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 48
    .line 49
    const-string v0, "Registering KMS Envelope AEAD is not supported in FIPS mode"

    .line 50
    .line 51
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method
