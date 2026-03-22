.class public Lcom/ss/ttm/ttvideodecode/Native;
.super Ljava/lang/Object;
.source "Native.java"


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

.method private static native _encryptAesCbc128([B[B)[B
.end method

.method private static native _getDecodedStr([B[B)Ljava/lang/String;
.end method

.method private static native _getEncryptionKey([B)Ljava/lang/String;
.end method

.method private static native _getSignature(Ljava/lang/String;)[B
.end method

.method private static native _getSupportedMethod()I
.end method

.method public static encryptAesCbc128([B[B)[B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttm/ttvideodecode/Native;->_encryptAesCbc128([B[B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getDecodedStr([B[B)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttm/ttvideodecode/Native;->_getDecodedStr([B[B)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getEncryptionKey([B)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttm/ttvideodecode/Native;->_getEncryptionKey([B)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getSignature(Ljava/lang/String;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/ttm/ttvideodecode/Native;->_getSignature(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getSupportedMethod()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttm/ttvideodecode/Native;->_getSupportedMethod()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
