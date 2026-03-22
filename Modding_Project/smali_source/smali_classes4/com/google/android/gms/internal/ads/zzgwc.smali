.class public final Lcom/google/android/gms/internal/ads/zzgwc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzget;


# static fields
.field private static final zza:Ljava/lang/ThreadLocal;

.field private static final zzb:Ljava/lang/ThreadLocal;


# instance fields
.field private final zzc:[B

.field private final zzd:[B

.field private final zze:[B

.field private final zzf:Ljavax/crypto/spec/SecretKeySpec;

.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwa;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgwa;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgwc;->zza:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwb;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgwb;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgwc;->zzb:Ljava/lang/ThreadLocal;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>([BI[B)V
    .locals 3
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
    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmg;->zza(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    const/16 v1, 0xc

    .line 12
    .line 13
    const/16 v2, 0x10

    .line 14
    .line 15
    if-eq p2, v1, :cond_1

    .line 16
    .line 17
    if-ne p2, v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p2, "IV size should be either 12 or 16 bytes"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    :goto_0
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzg:I

    .line 29
    .line 30
    array-length p2, p1

    .line 31
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgxc;->zza(I)V

    .line 32
    .line 33
    .line 34
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    .line 35
    .line 36
    const-string v1, "AES"

    .line 37
    .line 38
    invoke-direct {p2, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzf:Ljavax/crypto/spec/SecretKeySpec;

    .line 42
    .line 43
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgwc;->zza:Ljava/lang/ThreadLocal;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljavax/crypto/Cipher;

    .line 50
    .line 51
    invoke-virtual {p1, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 52
    .line 53
    .line 54
    new-array p2, v2, [B

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgwc;->zzd([B)[B

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzc:[B

    .line 65
    .line 66
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgwc;->zzd([B)[B

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzd:[B

    .line 71
    .line 72
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zze:[B

    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 76
    .line 77
    const-string p2, "Can not use AES-EAX in FIPS-mode."

    .line 78
    .line 79
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzggu;)Lcom/google/android/gms/internal/ads/zzget;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmg;->zza(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwc;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzggu;->zze()Lcom/google/android/gms/internal/ads/zzgxf;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgey;->zza()Lcom/google/android/gms/internal/ads/zzgfn;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgxf;->zzd(Lcom/google/android/gms/internal/ads/zzgfn;)[B

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzggu;->zzd()Lcom/google/android/gms/internal/ads/zzghb;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzghb;->zzb()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzggu;->zzb()Lcom/google/android/gms/internal/ads/zzgxe;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxe;->zzd()[B

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzgwc;-><init>([BI[B)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 43
    .line 44
    const-string v0, "Can not use AES-EAX in FIPS-mode."

    .line 45
    .line 46
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method private static zzc([B[B)V
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-byte v2, p0, v1

    .line 6
    .line 7
    aget-byte v3, p1, v1

    .line 8
    .line 9
    xor-int/2addr v2, v3

    .line 10
    int-to-byte v2, v2

    .line 11
    aput-byte v2, p0, v1

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method private static zzd([B)[B
    .locals 6

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    const/16 v3, 0xf

    .line 8
    .line 9
    if-ge v2, v3, :cond_0

    .line 10
    .line 11
    aget-byte v3, p0, v2

    .line 12
    .line 13
    add-int/2addr v3, v3

    .line 14
    add-int/lit8 v4, v2, 0x1

    .line 15
    .line 16
    aget-byte v5, p0, v4

    .line 17
    .line 18
    and-int/lit16 v5, v5, 0xff

    .line 19
    .line 20
    ushr-int/lit8 v5, v5, 0x7

    .line 21
    .line 22
    xor-int/2addr v3, v5

    .line 23
    and-int/lit16 v3, v3, 0xff

    .line 24
    .line 25
    int-to-byte v3, v3

    .line 26
    aput-byte v3, v0, v2

    .line 27
    .line 28
    move v2, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    aget-byte v2, p0, v3

    .line 31
    .line 32
    add-int/2addr v2, v2

    .line 33
    aget-byte p0, p0, v1

    .line 34
    .line 35
    shr-int/lit8 p0, p0, 0x7

    .line 36
    .line 37
    and-int/lit16 p0, p0, 0x87

    .line 38
    .line 39
    xor-int/2addr p0, v2

    .line 40
    int-to-byte p0, p0

    .line 41
    aput-byte p0, v0, v3

    .line 42
    .line 43
    return-object v0
.end method

.method private final zze(Ljavax/crypto/Cipher;I[BII)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/16 v2, 0xf

    .line 6
    .line 7
    int-to-byte p2, p2

    .line 8
    aput-byte p2, v1, v2

    .line 9
    .line 10
    if-nez p5, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzc:[B

    .line 13
    .line 14
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/zzgwc;->zzc([B[B)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    new-array p2, v0, [B

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {p1, v1, v2, v0, p2}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    .line 26
    .line 27
    .line 28
    move v3, v2

    .line 29
    :goto_0
    move-object v7, v1

    .line 30
    move-object v1, p2

    .line 31
    move-object p2, v7

    .line 32
    sub-int v4, p5, v3

    .line 33
    .line 34
    if-le v4, v0, :cond_2

    .line 35
    .line 36
    move v4, v2

    .line 37
    :goto_1
    if-ge v4, v0, :cond_1

    .line 38
    .line 39
    add-int v5, p4, v3

    .line 40
    .line 41
    aget-byte v6, v1, v4

    .line 42
    .line 43
    add-int/2addr v5, v4

    .line 44
    aget-byte v5, p3, v5

    .line 45
    .line 46
    xor-int/2addr v5, v6

    .line 47
    int-to-byte v5, v5

    .line 48
    aput-byte v5, v1, v4

    .line 49
    .line 50
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p1, v1, v2, v0, p2}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    .line 54
    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x10

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    add-int/2addr v3, p4

    .line 60
    add-int/2addr p4, p5

    .line 61
    invoke-static {p3, v3, p4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    array-length p4, p3

    .line 66
    if-ne p4, v0, :cond_3

    .line 67
    .line 68
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzc:[B

    .line 69
    .line 70
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/zzgwc;->zzc([B[B)V

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzd:[B

    .line 75
    .line 76
    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    move p5, v2

    .line 81
    :goto_2
    array-length v3, p3

    .line 82
    if-ge p5, v3, :cond_4

    .line 83
    .line 84
    aget-byte v3, p4, p5

    .line 85
    .line 86
    aget-byte v4, p3, p5

    .line 87
    .line 88
    xor-int/2addr v3, v4

    .line 89
    int-to-byte v3, v3

    .line 90
    aput-byte v3, p4, p5

    .line 91
    .line 92
    add-int/lit8 p5, p5, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    aget-byte p3, p4, v3

    .line 96
    .line 97
    xor-int/lit16 p3, p3, 0x80

    .line 98
    .line 99
    int-to-byte p3, p3

    .line 100
    aput-byte p3, p4, v3

    .line 101
    .line 102
    move-object p3, p4

    .line 103
    :goto_3
    invoke-static {v1, p3}, Lcom/google/android/gms/internal/ads/zzgwc;->zzc([B[B)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v1, v2, v0, p2}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    .line 107
    .line 108
    .line 109
    return-object p2
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzgwc;->zze:[B

    .line 6
    .line 7
    array-length v9, v7

    .line 8
    array-length v10, v8

    .line 9
    sub-int v0, v9, v10

    .line 10
    .line 11
    iget v11, v6, Lcom/google/android/gms/internal/ads/zzgwc;->zzg:I

    .line 12
    .line 13
    sub-int/2addr v0, v11

    .line 14
    add-int/lit8 v12, v0, -0x10

    .line 15
    .line 16
    if-ltz v12, :cond_4

    .line 17
    .line 18
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzgpj;->zzc([B[B)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgwc;->zza:Ljava/lang/ThreadLocal;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    move-object v13, v0

    .line 31
    check-cast v13, Ljavax/crypto/Cipher;

    .line 32
    .line 33
    iget-object v14, v6, Lcom/google/android/gms/internal/ads/zzgwc;->zzf:Ljavax/crypto/spec/SecretKeySpec;

    .line 34
    .line 35
    const/4 v15, 0x1

    .line 36
    invoke-virtual {v13, v15, v14}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    move-object/from16 v0, p0

    .line 41
    .line 42
    move-object v1, v13

    .line 43
    move-object/from16 v3, p1

    .line 44
    .line 45
    move v4, v10

    .line 46
    move v5, v11

    .line 47
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgwc;->zze(Ljavax/crypto/Cipher;I[BII)[B

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    const/4 v4, 0x0

    .line 52
    if-nez p2, :cond_0

    .line 53
    .line 54
    new-array v0, v4, [B

    .line 55
    .line 56
    move-object v3, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move-object/from16 v3, p2

    .line 59
    .line 60
    :goto_0
    const/16 v16, 0x0

    .line 61
    .line 62
    array-length v2, v3

    .line 63
    const/16 v17, 0x1

    .line 64
    .line 65
    move-object/from16 v0, p0

    .line 66
    .line 67
    move-object v1, v13

    .line 68
    move/from16 v18, v2

    .line 69
    .line 70
    move/from16 v2, v17

    .line 71
    .line 72
    move/from16 v17, v4

    .line 73
    .line 74
    move/from16 v4, v16

    .line 75
    .line 76
    move-object v15, v5

    .line 77
    move/from16 v5, v18

    .line 78
    .line 79
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgwc;->zze(Ljavax/crypto/Cipher;I[BII)[B

    .line 80
    .line 81
    .line 82
    move-result-object v18

    .line 83
    const/4 v2, 0x2

    .line 84
    add-int v4, v10, v11

    .line 85
    .line 86
    move-object/from16 v3, p1

    .line 87
    .line 88
    move v5, v12

    .line 89
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgwc;->zze(Ljavax/crypto/Cipher;I[BII)[B

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    add-int/lit8 v9, v9, -0x10

    .line 94
    .line 95
    move/from16 v4, v17

    .line 96
    .line 97
    :goto_1
    const/16 v1, 0x10

    .line 98
    .line 99
    if-ge v4, v1, :cond_1

    .line 100
    .line 101
    add-int v1, v9, v4

    .line 102
    .line 103
    aget-byte v1, v7, v1

    .line 104
    .line 105
    aget-byte v2, v18, v4

    .line 106
    .line 107
    xor-int/2addr v1, v2

    .line 108
    aget-byte v2, v15, v4

    .line 109
    .line 110
    xor-int/2addr v1, v2

    .line 111
    aget-byte v2, v0, v4

    .line 112
    .line 113
    xor-int/2addr v1, v2

    .line 114
    or-int v1, v17, v1

    .line 115
    .line 116
    int-to-byte v1, v1

    .line 117
    add-int/lit8 v4, v4, 0x1

    .line 118
    .line 119
    move/from16 v17, v1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_1
    if-nez v17, :cond_2

    .line 123
    .line 124
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgwc;->zzb:Ljava/lang/ThreadLocal;

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Ljavax/crypto/Cipher;

    .line 131
    .line 132
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 133
    .line 134
    invoke-direct {v1, v15}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 135
    .line 136
    .line 137
    const/4 v2, 0x1

    .line 138
    invoke-virtual {v0, v2, v14, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 139
    .line 140
    .line 141
    array-length v1, v8

    .line 142
    add-int/2addr v1, v11

    .line 143
    invoke-virtual {v0, v7, v1, v12}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    return-object v0

    .line 148
    :cond_2
    new-instance v0, Ljavax/crypto/AEADBadTagException;

    .line 149
    .line 150
    const-string v1, "tag mismatch"

    .line 151
    .line 152
    invoke-direct {v0, v1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v0

    .line 156
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 157
    .line 158
    const-string v1, "Decryption failed (OutputPrefix mismatch)."

    .line 159
    .line 160
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v0

    .line 164
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 165
    .line 166
    const-string v1, "ciphertext too short"

    .line 167
    .line 168
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw v0
.end method
