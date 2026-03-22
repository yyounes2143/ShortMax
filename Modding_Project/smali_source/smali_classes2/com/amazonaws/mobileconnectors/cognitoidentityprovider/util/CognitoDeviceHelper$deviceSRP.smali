.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;
.super Ljava/lang/Object;
.source "CognitoDeviceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "deviceSRP"
.end annotation


# static fields
.field private static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/math/BigInteger;

.field private static final e:Ljava/math/BigInteger;

.field private static final f:Ljava/security/SecureRandom;


# instance fields
.field private final a:Ljava/math/BigInteger;

.field private final b:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->c:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Ljava/math/BigInteger;

    .line 9
    .line 10
    const-string v1, "FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AAAC42DAD33170D04507A33A85521ABDF1CBA64ECFB850458DBEF0A8AEA71575D060C7DB3970F85A6E1E4C7ABF5AE8CDB0933D71E8C94E04A25619DCEE3D2261AD2EE6BF12FFA06D98A0864D87602733EC86A64521F2B18177B200CBBE117577A615D6C770988C0BAD946E208E24FA074E5AB3143DB5BFCE0FD108E4B82D120A93AD2CAFFFFFFFFFFFFFFFF"

    .line 11
    .line 12
    const/16 v2, 0x10

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->d:Ljava/math/BigInteger;

    .line 18
    .line 19
    const-wide/16 v0, 0x2

    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->e:Ljava/math/BigInteger;

    .line 26
    .line 27
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v1, 0x1a

    .line 30
    .line 31
    if-lt v0, v1, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lf1/a;->a()Ljava/security/SecureRandom;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->f:Ljava/security/SecureRandom;

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
    new-instance v0, Ljava/security/SecureRandom;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->f:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    :goto_0
    return-void

    .line 50
    :goto_1
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 51
    .line 52
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance p2, Ljava/math/BigInteger;

    .line 9
    .line 10
    const/16 p3, 0x80

    .line 11
    .line 12
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->f:Ljava/security/SecureRandom;

    .line 13
    .line 14
    invoke-direct {p2, p3, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->a:Ljava/math/BigInteger;

    .line 18
    .line 19
    invoke-static {p2, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->b(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->b:Ljava/math/BigInteger;

    .line 24
    .line 25
    return-void
.end method

.method public static a()V
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->c:Ljava/lang/ThreadLocal;

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
    return-void
.end method

.method private static b(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 1

    .line 1
    invoke-static {}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->g(Ljava/math/BigInteger;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->h([B)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->c()[B

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance p1, Ljava/math/BigInteger;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-direct {p1, v0, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->e:Ljava/math/BigInteger;

    .line 21
    .line 22
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->d:Ljava/math/BigInteger;

    .line 23
    .line 24
    invoke-virtual {p0, p1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static c()[B
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->c:Ljava/lang/ThreadLocal;

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
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .line 1
    invoke-static {}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->a()V

    .line 2
    .line 3
    .line 4
    const-string v0, ":"

    .line 5
    .line 6
    filled-new-array {p1, p2, v0, p3}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->i([Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->c()[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public static g(Ljava/math/BigInteger;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->c:Ljava/lang/ThreadLocal;

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
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public static h([B)V
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->c:Ljava/lang/ThreadLocal;

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
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static varargs i([Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->c:Ljava/lang/ThreadLocal;

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
    array-length v1, p0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    aget-object v3, p0, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    sget-object v4, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method


# virtual methods
.method public d()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->a:Ljava/math/BigInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->b:Ljava/math/BigInteger;

    .line 2
    .line 3
    return-object v0
.end method
