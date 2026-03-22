.class public final Lcom/moloco/sdk/internal/services/encryption/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/encryption/a;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation


# instance fields
.field public final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljavax/crypto/spec/SecretKeySpec;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/moloco/sdk/internal/services/encryption/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/moloco/sdk/internal/services/encryption/b;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/moloco/sdk/internal/services/encryption/g;->b:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lcom/moloco/sdk/internal/services/encryption/c;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/moloco/sdk/internal/services/encryption/c;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/moloco/sdk/internal/services/encryption/g;->c:Lms/i;

    .line 25
    .line 26
    new-instance v0, Lcom/moloco/sdk/internal/services/encryption/d;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/moloco/sdk/internal/services/encryption/d;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/moloco/sdk/internal/services/encryption/g;->d:Lms/i;

    .line 36
    .line 37
    new-instance v0, Lcom/moloco/sdk/internal/services/encryption/e;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/moloco/sdk/internal/services/encryption/e;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/moloco/sdk/internal/services/encryption/g;->e:Lms/i;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/encryption/g;->j()Ljavax/crypto/spec/SecretKeySpec;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/moloco/sdk/internal/services/encryption/g;->f:Ljavax/crypto/spec/SecretKeySpec;

    .line 53
    .line 54
    new-instance v0, Lcom/moloco/sdk/internal/services/encryption/f;

    .line 55
    .line 56
    invoke-direct {v0}, Lcom/moloco/sdk/internal/services/encryption/f;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/moloco/sdk/internal/services/encryption/g;->g:Lms/i;

    .line 64
    .line 65
    return-void
.end method

.method public static final d()Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "decode(...)"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/text/StringsKt;->C([B)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :array_0
    .array-data 1
        0x51t
        0x55t
        0x56t
        0x54t
        0x4ct
        0x30t
        0x64t
        0x44t
        0x54t
        0x53t
        0x39t
        0x4ft
        0x62t
        0x31t
        0x42t
        0x68t
        0x5at
        0x47t
        0x52t
        0x70t
        0x62t
        0x6dt
        0x63t
        0x3dt
    .end array-data
.end method

.method public static final f()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/text/StringsKt;->C([B)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    nop

    .line 13
    :array_0
    .array-data 1
        0x41t
        0x45t
        0x53t
    .end array-data
.end method

.method public static final g()Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x25

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/text/StringsKt;->C([B)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :array_0
    .array-data 1
        0x52t
        0x53t
        0x41t
        0x2ft
        0x45t
        0x43t
        0x42t
        0x2ft
        0x4ft
        0x41t
        0x45t
        0x50t
        0x57t
        0x69t
        0x74t
        0x68t
        0x53t
        0x48t
        0x41t
        0x2dt
        0x32t
        0x35t
        0x36t
        0x41t
        0x6et
        0x64t
        0x4dt
        0x47t
        0x46t
        0x31t
        0x50t
        0x61t
        0x64t
        0x64t
        0x69t
        0x6et
        0x67t
    .end array-data
.end method

.method public static final h()Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "decode(...)"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/text/StringsKt;->C([B)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    nop

    .line 23
    :array_0
    .array-data 1
        0x55t
        0x6ct
        0x4et
        0x42t
    .end array-data
.end method

.method public static final i()Ljavax/crypto/spec/IvParameterSpec;
    .locals 2

    .line 1
    const-string v0, "UHJqdF9DaHJvbm9z"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 11
    .line 12
    .line 13
    return-object v1
.end method


# virtual methods
.method public a()Ljavax/crypto/spec/IvParameterSpec;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/encryption/g;->g:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    return-object v0
.end method

.method public a(Ljava/lang/String;)[B
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "rsaPublicKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/encryption/g;->b()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v0

    const-string v1, "getEncoded(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/moloco/sdk/internal/services/encryption/g;->c([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public a([B)[B
    .locals 4
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/encryption/g;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/encryption/g;->b()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/encryption/g;->a()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 4
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string v0, "doFinal(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b()Ljavax/crypto/spec/SecretKeySpec;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/encryption/g;->f:Ljavax/crypto/spec/SecretKeySpec;

    .line 2
    .line 3
    return-object v0
.end method

.method public c([BLjava/lang/String;)[B
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "input"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "publicKey"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/encryption/g;->n()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p2}, Lcom/moloco/sdk/internal/services/encryption/g;->e(Ljava/lang/String;)Ljava/security/PublicKey;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/encryption/g;->b()Ljavax/crypto/spec/SecretKeySpec;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string p2, "doFinal(...)"

    .line 40
    .line 41
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object p1
.end method

.method public final e(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/encryption/g;->m()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "generatePublic(...)"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object p1
.end method

.method public final j()Ljavax/crypto/spec/SecretKeySpec;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/encryption/g;->k()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x100

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/encryption/g;->k()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v1
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/encryption/g;->d:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/encryption/g;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/encryption/g;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/encryption/g;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method
