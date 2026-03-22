.class public final Lhk/e;
.super Ljava/lang/Object;
.source "RSAUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lhk/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lhk/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lhk/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lhk/e;->a:Lhk/e;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a([BLjava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/16 v0, 0x75

    .line 2
    .line 3
    const-string v1, "data"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "publicKey"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const-string v1, "getBytes(...)"

    .line 20
    .line 21
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p2, p3}, Landroid/util/Base64;->decode([BI)[B

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    .line 29
    .line 30
    invoke-direct {v1, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 31
    .line 32
    .line 33
    const-string p2, "RSA"

    .line 34
    .line 35
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 44
    .line 45
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-virtual {v1, v2, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 51
    .line 52
    .line 53
    array-length p2, p1

    .line 54
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 55
    .line 56
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 57
    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    move v5, v4

    .line 61
    move v6, v5

    .line 62
    :goto_0
    sub-int v7, p2, v5

    .line 63
    .line 64
    if-lez v7, :cond_1

    .line 65
    .line 66
    if-le v7, v0, :cond_0

    .line 67
    .line 68
    invoke-virtual {v1, p1, v5, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception p1

    .line 74
    goto :goto_2

    .line 75
    :cond_0
    invoke-virtual {v1, p1, v5, v7}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    :goto_1
    array-length v7, v5

    .line 80
    invoke-virtual {v3, v5, v4, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 81
    .line 82
    .line 83
    add-int/2addr v6, v2

    .line 84
    mul-int/lit8 v5, v6, 0x75

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 92
    .line 93
    .line 94
    invoke-static {p1, p3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-object p1

    .line 99
    :goto_2
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 100
    .line 101
    new-instance v2, Landroid/os/Bundle;

    .line 102
    .line 103
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string p2, "err_msg"

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    invoke-virtual {v2, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 116
    .line 117
    const/4 v5, 0x4

    .line 118
    const/4 v6, 0x0

    .line 119
    const-string v1, "create_api_rc4_rsa_key_failed"

    .line 120
    .line 121
    const-wide/16 v3, 0x0

    .line 122
    .line 123
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 127
    .line 128
    new-instance p3, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v0, "encryptByPublicKey exception -> "

    .line 134
    .line 135
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    const-string p3, "RSAUtil"

    .line 150
    .line 151
    invoke-virtual {p2, p3, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const/4 p1, 0x0

    .line 155
    return-object p1
.end method
