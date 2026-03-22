.class public final Lof/c;
.super Ljava/lang/Object;
.source "PlayerDecryptor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lof/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:J

.field private final g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/io/ByteArrayInputStream;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private h:Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lof/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "decryptIV"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lof/c;->a:Ljava/lang/String;

    .line 15
    .line 16
    const-wide/16 p1, -0x1

    .line 17
    .line 18
    iput-wide p1, p0, Lof/c;->f:J

    .line 19
    .line 20
    new-instance p1, Ljava/util/LinkedList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lof/c;->g:Ljava/util/LinkedList;

    .line 26
    .line 27
    const/16 p1, 0x400

    .line 28
    .line 29
    iput p1, p0, Lof/c;->j:I

    .line 30
    .line 31
    return-void
.end method

.method private final a(I)Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-direct {v0, p1, v1, v2, v1}, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;-><init>(ILjava/nio/ByteBuffer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private final b([B[B)[B
    .locals 4

    .line 1
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 2
    .line 3
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 8
    .line 9
    const-string v2, "AES"

    .line 10
    .line 11
    invoke-direct {v1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    .line 15
    .line 16
    iget-object v2, p0, Lof/c;->a:Ljava/lang/String;

    .line 17
    .line 18
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "getBytes(...)"

    .line 25
    .line 26
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-virtual {v0, v2, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "doFinal(...)"

    .line 41
    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object p1
.end method

.method private final c(Ljava/util/LinkedList;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/io/ByteArrayInputStream;",
            ">;I)[B"
        }
    .end annotation

    .line 1
    new-array v0, p2, [B

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v1, "iterator(...)"

    .line 8
    .line 9
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "next(...)"

    .line 24
    .line 25
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast v2, Ljava/io/ByteArrayInputStream;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    sub-int v4, p2, v1

    .line 35
    .line 36
    invoke-static {v3, v4}, Lkotlin/ranges/e;->j(II)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v2, v0, v1, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    add-int/2addr v1, v3

    .line 45
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-object v0
.end method

.method private final d(Ljava/util/LinkedList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/io/ByteArrayInputStream;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "iterator(...)"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "next(...)"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast v1, Ljava/io/ByteArrayInputStream;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-int/2addr v0, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return v0
.end method

.method private final e(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lof/c;->i:Lof/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lof/a;->b(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return-object p1
.end method

.method private final f([B)Lof/b;
    .locals 6

    .line 1
    const-string/jumbo v0, "substring(...)"

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    const-string v2, "UTF_8"

    .line 7
    .line 8
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {v2, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    const/16 v1, 0x10

    .line 18
    .line 19
    invoke-virtual {v2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/16 v3, 0x14

    .line 27
    .line 28
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/lit8 v4, v1, 0x10

    .line 40
    .line 41
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/16 v5, 0x18

    .line 49
    .line 50
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    new-instance v2, Lof/b;

    .line 62
    .line 63
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 64
    .line 65
    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const-string v4, "getBytes(...)"

    .line 70
    .line 71
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v2, p1, v1, v3, v0}, Lof/b;-><init>(Ljava/lang/String;I[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    return-object v2

    .line 78
    :catch_0
    move-exception p1

    .line 79
    iget-object v0, p0, Lof/c;->i:Lof/a;

    .line 80
    .line 81
    if-eqz v0, :cond_0

    .line 82
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v2, "parseDecryptRule failed: "

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-interface {v0, p1}, Lof/a;->onError(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_0
    const/4 p1, 0x0

    .line 108
    return-object p1
.end method


# virtual methods
.method public final g(Ljava/nio/ByteBuffer;)Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;
    .locals 9
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lof/c;->h:Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;->END:Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x2

    .line 8
    invoke-direct {p0, p1}, Lof/c;->a(I)Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    iget-boolean v0, p0, Lof/c;->d:Z

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-direct {p0, v1}, Lof/c;->a(I)Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_1
    iget-boolean v0, p0, Lof/c;->b:Z

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    invoke-direct {p0, v1}, Lof/c;->a(I)Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_2
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-direct {v0, v1, p1}, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;-><init>(ILjava/nio/ByteBuffer;)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_3
    if-nez p1, :cond_4

    .line 45
    .line 46
    invoke-direct {p0, v1}, Lof/c;->a(I)Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    new-array v2, v0, [B

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 58
    .line 59
    .line 60
    if-nez v0, :cond_5

    .line 61
    .line 62
    invoke-direct {p0, v1}, Lof/c;->a(I)Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :cond_5
    iget-object p1, p0, Lof/c;->g:Ljava/util/LinkedList;

    .line 68
    .line 69
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 70
    .line 71
    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lof/c;->g:Ljava/util/LinkedList;

    .line 78
    .line 79
    invoke-direct {p0, p1}, Lof/c;->d(Ljava/util/LinkedList;)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iget-boolean v0, p0, Lof/c;->c:Z

    .line 84
    .line 85
    const/4 v2, 0x1

    .line 86
    if-nez v0, :cond_6

    .line 87
    .line 88
    iget v0, p0, Lof/c;->j:I

    .line 89
    .line 90
    if-lt p1, v0, :cond_8

    .line 91
    .line 92
    iget-object v3, p0, Lof/c;->g:Ljava/util/LinkedList;

    .line 93
    .line 94
    invoke-direct {p0, v3, v0}, Lof/c;->c(Ljava/util/LinkedList;I)[B

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-direct {p0, v0}, Lof/c;->f([B)Lof/b;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iput-object v0, p0, Lof/c;->e:Lof/b;

    .line 103
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v3, "decryptRule -> "

    .line 110
    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object v3, p0, Lof/c;->e:Lof/b;

    .line 115
    .line 116
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-direct {p0, v0}, Lof/c;->e(Ljava/lang/String;)Lkotlin/Unit;

    .line 124
    .line 125
    .line 126
    iput-boolean v2, p0, Lof/c;->c:Z

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_6
    iget-object v0, p0, Lof/c;->e:Lof/b;

    .line 130
    .line 131
    if-nez v0, :cond_8

    .line 132
    .line 133
    iget-object v0, p0, Lof/c;->i:Lof/a;

    .line 134
    .line 135
    if-eqz v0, :cond_7

    .line 136
    .line 137
    const-string v1, "not need decrypt"

    .line 138
    .line 139
    invoke-interface {v0, v1}, Lof/a;->b(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_7
    iput-boolean v2, p0, Lof/c;->b:Z

    .line 143
    .line 144
    iget-object v0, p0, Lof/c;->g:Ljava/util/LinkedList;

    .line 145
    .line 146
    invoke-direct {p0, v0, p1}, Lof/c;->c(Ljava/util/LinkedList;I)[B

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    array-length v0, p1

    .line 151
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 156
    .line 157
    .line 158
    new-instance v1, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;

    .line 159
    .line 160
    array-length p1, p1

    .line 161
    invoke-direct {v1, p1, v0}, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;-><init>(ILjava/nio/ByteBuffer;)V

    .line 162
    .line 163
    .line 164
    return-object v1

    .line 165
    :cond_8
    :goto_0
    iget-object v0, p0, Lof/c;->e:Lof/b;

    .line 166
    .line 167
    if-nez v0, :cond_9

    .line 168
    .line 169
    invoke-direct {p0, v1}, Lof/c;->a(I)Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    return-object p1

    .line 174
    :cond_9
    invoke-virtual {v0}, Lof/b;->a()I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    const/16 v4, 0x400

    .line 179
    .line 180
    add-int/2addr v3, v4

    .line 181
    if-le v3, p1, :cond_a

    .line 182
    .line 183
    invoke-direct {p0, v1}, Lof/c;->a(I)Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    return-object p1

    .line 188
    :cond_a
    iget-object v3, p0, Lof/c;->g:Ljava/util/LinkedList;

    .line 189
    .line 190
    invoke-direct {p0, v3, p1}, Lof/c;->c(Ljava/util/LinkedList;I)[B

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v0}, Lof/b;->a()I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    add-int/2addr v5, v4

    .line 199
    invoke-static {v3, v4, v5}, Lkotlin/collections/n;->w([BII)[B

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    :try_start_0
    invoke-virtual {v0}, Lof/b;->b()[B

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    invoke-direct {p0, v5, v6}, Lof/c;->b([B[B)[B

    .line 208
    .line 209
    .line 210
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    goto :goto_1

    .line 212
    :catch_0
    move-exception v5

    .line 213
    iget-object v6, p0, Lof/c;->i:Lof/a;

    .line 214
    .line 215
    if-eqz v6, :cond_b

    .line 216
    .line 217
    new-instance v7, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v8, "decrypt failed: "

    .line 223
    .line 224
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    invoke-interface {v6, v5}, Lof/a;->onError(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    :cond_b
    const/4 v5, 0x0

    .line 242
    :goto_1
    if-eqz v5, :cond_d

    .line 243
    .line 244
    iput-boolean v2, p0, Lof/c;->b:Z

    .line 245
    .line 246
    array-length v1, v5

    .line 247
    add-int/lit16 v2, p1, -0x400

    .line 248
    .line 249
    invoke-virtual {v0}, Lof/b;->a()I

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    sub-int/2addr v2, v6

    .line 254
    add-int/2addr v1, v2

    .line 255
    new-array v2, v1, [B

    .line 256
    .line 257
    array-length v6, v5

    .line 258
    const/4 v7, 0x0

    .line 259
    invoke-static {v5, v7, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0}, Lof/b;->a()I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    add-int/2addr v0, v4

    .line 267
    invoke-static {v3, v0, p1}, Lkotlin/collections/n;->w([BII)[B

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    array-length v0, v5

    .line 272
    array-length v3, p1

    .line 273
    invoke-static {p1, v7, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    .line 275
    .line 276
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 281
    .line 282
    .line 283
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 284
    .line 285
    .line 286
    move-result-wide v2

    .line 287
    iget-wide v4, p0, Lof/c;->f:J

    .line 288
    .line 289
    sub-long/2addr v2, v4

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    const-string v4, "decrypt cost "

    .line 296
    .line 297
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v4, "ms"

    .line 304
    .line 305
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-direct {p0, v0}, Lof/c;->e(Ljava/lang/String;)Lkotlin/Unit;

    .line 313
    .line 314
    .line 315
    iget-object v0, p0, Lof/c;->i:Lof/a;

    .line 316
    .line 317
    if-eqz v0, :cond_c

    .line 318
    .line 319
    invoke-interface {v0, v2, v3}, Lof/a;->a(J)V

    .line 320
    .line 321
    .line 322
    :cond_c
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;

    .line 323
    .line 324
    invoke-direct {v0, v1, p1}, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;-><init>(ILjava/nio/ByteBuffer;)V

    .line 325
    .line 326
    .line 327
    return-object v0

    .line 328
    :cond_d
    invoke-direct {p0, v1}, Lof/c;->a(I)Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptResult;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    return-object p1
.end method

.method public final h()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lof/c;->d:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lof/c;->b:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lof/c;->e:Lof/b;

    .line 9
    .line 10
    iput-boolean v0, p0, Lof/c;->c:Z

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    iput-wide v0, p0, Lof/c;->f:J

    .line 15
    .line 16
    iget-object v0, p0, Lof/c;->g:Ljava/util/LinkedList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final i(Lof/a;)V
    .locals 0
    .param p1    # Lof/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lof/c;->i:Lof/a;

    .line 2
    .line 3
    return-void
.end method

.method public final j(Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "state"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v1, "updateState -> "

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {p0, v0}, Lof/c;->e(Ljava/lang/String;)Lkotlin/Unit;

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;->START:Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;

    .line 29
    .line 30
    if-ne p1, v0, :cond_0

    .line 31
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    iput-wide v0, p0, Lof/c;->f:J

    .line 37
    .line 38
    :cond_0
    iput-object p1, p0, Lof/c;->h:Lcom/startshorts/androidplayer/manager/player/feature/decryptor/DecryptState;

    .line 39
    .line 40
    return-void
.end method
