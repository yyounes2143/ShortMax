.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;
.super Ljava/lang/Object;
.source "CognitoUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthenticationHelper"
.end annotation


# static fields
.field private static final d:Ljava/math/BigInteger;

.field private static final e:Ljava/math/BigInteger;

.field private static final f:Ljava/math/BigInteger;

.field private static final g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/security/SecureRandom;


# instance fields
.field private a:Ljava/math/BigInteger;

.field private b:Ljava/math/BigInteger;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    .line 2
    .line 3
    const-string v1, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AAAC42DAD33170D04507A33A85521ABDF1CBA64ECFB850458DBEF0A8AEA71575D060C7DB3970F85A6E1E4C7ABF5AE8CDB0933D71E8C94E04A25619DCEE3D2261AD2EE6BF12FFA06D98A0864D87602733EC86A64521F2B18177B200CBBE117577A615D6C770988C0BAD946E208E24FA074E5AB3143DB5BFCE0FD108E4B82D120A93AD2CAFFFFFFFFFFFFFFFF"

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->d:Ljava/math/BigInteger;

    .line 11
    .line 12
    const-wide/16 v1, 0x2

    .line 13
    .line 14
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sput-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->e:Ljava/math/BigInteger;

    .line 19
    .line 20
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper$1;

    .line 21
    .line 22
    invoke-direct {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper$1;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->g:Ljava/lang/ThreadLocal;

    .line 26
    .line 27
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v4, 0x1a

    .line 30
    .line 31
    if-lt v3, v4, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lf1/a;->a()Ljava/security/SecureRandom;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    sput-object v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->h:Ljava/security/SecureRandom;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    new-instance v3, Ljava/security/SecureRandom;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 45
    .line 46
    .line 47
    sput-object v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->h:Ljava/security/SecureRandom;

    .line 48
    .line 49
    :goto_0
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/security/MessageDigest;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v1, Ljava/math/BigInteger;

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 77
    .line 78
    .line 79
    sput-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->f:Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    return-void

    .line 82
    :goto_1
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-direct {v1, v2, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    .line 5
    .line 6
    const/16 v1, 0x400

    .line 7
    .line 8
    sget-object v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->h:Ljava/security/SecureRandom;

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->d:Ljava/math/BigInteger;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->a:Ljava/math/BigInteger;

    .line 20
    .line 21
    sget-object v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->e:Ljava/math/BigInteger;

    .line 22
    .line 23
    invoke-virtual {v2, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->b:Ljava/math/BigInteger;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    const-string v0, "_"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    const/4 v1, 0x2

    .line 50
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const/4 v0, 0x1

    .line 55
    aget-object p1, p1, v0

    .line 56
    .line 57
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->c:Ljava/lang/String;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->c:Ljava/lang/String;

    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method static synthetic a()Ljava/math/BigInteger;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->d:Ljava/math/BigInteger;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public b()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->b:Ljava/math/BigInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 5

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->g:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/security/MessageDigest;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->b:Ljava/math/BigInteger;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/math/BigInteger;

    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 33
    .line 34
    .line 35
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->c:Ljava/lang/String;

    .line 47
    .line 48
    sget-object v4, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 49
    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 62
    .line 63
    .line 64
    const-string p1, ":"

    .line 65
    .line 66
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p4}, Ljava/math/BigInteger;->toByteArray()[B

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 89
    .line 90
    .line 91
    new-instance p2, Ljava/math/BigInteger;

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {p2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 98
    .line 99
    .line 100
    sget-object p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->f:Ljava/math/BigInteger;

    .line 101
    .line 102
    sget-object p4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->e:Ljava/math/BigInteger;

    .line 103
    .line 104
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->d:Ljava/math/BigInteger;

    .line 105
    .line 106
    invoke-virtual {p4, p2, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 107
    .line 108
    .line 109
    move-result-object p4

    .line 110
    invoke-virtual {p1, p4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$AuthenticationHelper;->a:Ljava/math/BigInteger;

    .line 119
    .line 120
    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p3, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {p1, p2, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    :try_start_0
    const-string p2, "HmacSHA256"

    .line 137
    .line 138
    invoke-static {p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->f(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;

    .line 139
    .line 140
    .line 141
    move-result-object p2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    invoke-virtual {p2, p1, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->g([B[B)V

    .line 151
    .line 152
    .line 153
    const-string p1, "Caldera Derived Key"

    .line 154
    .line 155
    const/16 p3, 0x10

    .line 156
    .line 157
    invoke-virtual {p2, p1, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/Hkdf;->d(Ljava/lang/String;I)[B

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    return-object p1

    .line 162
    :catch_0
    move-exception p1

    .line 163
    new-instance p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p3

    .line 169
    invoke-direct {p2, p3, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    throw p2

    .line 173
    :cond_0
    new-instance p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    .line 174
    .line 175
    const-string p2, "Hash of A and B cannot be zero"

    .line 176
    .line 177
    invoke-direct {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p1
.end method
