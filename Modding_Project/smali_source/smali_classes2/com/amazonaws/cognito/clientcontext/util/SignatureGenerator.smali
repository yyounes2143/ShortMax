.class public Lcom/amazonaws/cognito/clientcontext/util/SignatureGenerator;
.super Ljava/lang/Object;
.source "SignatureGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "HMAC_SHA256_Signature"

    .line 2
    .line 3
    const-string v1, "Exception while completing context data signature"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "HmacSHA256"

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 8
    .line 9
    sget-object v3, Lcom/amazonaws/cognito/clientcontext/data/ConfigurationConstant;->a:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-direct {v2, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {v1, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 p2, 0x0

    .line 37
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    invoke-direct {p0, p1}, Lcom/amazonaws/cognito/clientcontext/util/SignatureGenerator;->b(Ljava/lang/Exception;)V

    .line 44
    .line 45
    .line 46
    const-string p1, ""

    .line 47
    .line 48
    :goto_0
    return-object p1
.end method
