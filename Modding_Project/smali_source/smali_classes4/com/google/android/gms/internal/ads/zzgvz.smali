.class public final Lcom/google/android/gms/internal/ads/zzgvz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgww;


# static fields
.field private static final zza:Ljava/lang/ThreadLocal;


# instance fields
.field private final zzb:Ljavax/crypto/spec/SecretKeySpec;

.field private final zzc:I

.field private final zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgvy;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgvy;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgvz;->zza:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmg;->zza(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxc;->zza(I)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 16
    .line 17
    const-string v1, "AES"

    .line 18
    .line 19
    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvz;->zzb:Ljavax/crypto/spec/SecretKeySpec;

    .line 23
    .line 24
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgvz;->zza:Ljava/lang/ThreadLocal;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljavax/crypto/Cipher;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getBlockSize()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgvz;->zzd:I

    .line 37
    .line 38
    if-gt p2, p1, :cond_0

    .line 39
    .line 40
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgvz;->zzc:I

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 44
    .line 45
    const-string p2, "invalid IV size"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 52
    .line 53
    const-string p2, "Can not use AES-CTR in FIPS-mode, as BoringCrypto module is not available."

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method


# virtual methods
.method public final zza([B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgvz;->zzc:I

    .line 3
    .line 4
    if-lt v0, v3, :cond_1

    .line 5
    .line 6
    new-array v1, v3, [B

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    sub-int/2addr v0, v3

    .line 13
    new-array v7, v0, [B

    .line 14
    .line 15
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgvz;->zza:Ljava/lang/ThreadLocal;

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Ljavax/crypto/Cipher;

    .line 22
    .line 23
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzgvz;->zzd:I

    .line 24
    .line 25
    new-array v5, v5, [B

    .line 26
    .line 27
    invoke-static {v1, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 31
    .line 32
    invoke-direct {v1, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgvz;->zzb:Ljavax/crypto/spec/SecretKeySpec;

    .line 37
    .line 38
    invoke-virtual {v4, v2, v5, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 39
    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    move-object v1, v4

    .line 43
    move-object v2, p1

    .line 44
    move v4, v0

    .line 45
    move-object v5, v7

    .line 46
    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-ne p1, v0, :cond_0

    .line 51
    .line 52
    return-object v7

    .line 53
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 54
    .line 55
    const-string v0, "stored output\'s length does not match input\'s length"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 62
    .line 63
    const-string v0, "ciphertext too short"

    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method
