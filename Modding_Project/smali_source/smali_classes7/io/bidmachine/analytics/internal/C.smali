.class public final Lio/bidmachine/analytics/internal/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;

.field private final c:[B

.field private final d:Z

.field private final e:[B

.field private final f:Ljava/security/Key;

.field private final g:Lio/bidmachine/analytics/internal/B;


# direct methods
.method public constructor <init>([BLjava/lang/String;[BZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/C;->a:[B

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/C;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/bidmachine/analytics/internal/C;->c:[B

    .line 5
    iput-boolean p4, p0, Lio/bidmachine/analytics/internal/C;->d:Z

    .line 6
    new-instance p1, Lio/bidmachine/analytics/internal/r;

    invoke-direct {p1}, Lio/bidmachine/analytics/internal/r;-><init>()V

    invoke-interface {p1}, Lio/bidmachine/analytics/internal/D;->a()Ljava/security/KeyPair;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/analytics/internal/C;->e:[B

    .line 8
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/C;->f:Ljava/security/Key;

    .line 9
    new-instance p1, Lio/bidmachine/analytics/internal/w;

    invoke-direct {p1}, Lio/bidmachine/analytics/internal/w;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/internal/C;->g:Lio/bidmachine/analytics/internal/B;

    return-void
.end method

.method public synthetic constructor <init>([BLjava/lang/String;[BZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 10
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/analytics/internal/C;-><init>([BLjava/lang/String;[BZ)V

    return-void
.end method

.method private final a(Ljava/security/Key;[B)[B
    .locals 2

    .line 7
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 9
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p2

    .line 10
    const-string v0, "ECDH"

    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    const/4 p1, 0x1

    .line 12
    invoke-virtual {v0, p2, p1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 13
    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p1

    return-object p1
.end method

.method private final a([B[B)[B
    .locals 1

    .line 14
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 15
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 16
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->C(Ljava/util/List;)V

    .line 18
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x1

    .line 20
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 21
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a()Ljava/security/Key;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/C;->f:Ljava/security/Key;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/C;->e:[B

    iget-object v2, p0, Lio/bidmachine/analytics/internal/C;->a:[B

    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/analytics/internal/C;->a(Ljava/security/Key;[B[B)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/security/Key;[B[B)Ljava/security/Key;
    .locals 1

    .line 2
    invoke-direct {p0, p1, p3}, Lio/bidmachine/analytics/internal/C;->a(Ljava/security/Key;[B)[B

    move-result-object p1

    .line 3
    iget-boolean v0, p0, Lio/bidmachine/analytics/internal/C;->d:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p2, p3}, Lio/bidmachine/analytics/internal/C;->a([B[B)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 5
    :goto_0
    iget-object p3, p0, Lio/bidmachine/analytics/internal/C;->g:Lio/bidmachine/analytics/internal/B;

    iget-object v0, p0, Lio/bidmachine/analytics/internal/C;->c:[B

    invoke-interface {p3, p1, p2, v0}, Lio/bidmachine/analytics/internal/B;->a([B[B[B)[B

    move-result-object p1

    .line 6
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object p3, p0, Lio/bidmachine/analytics/internal/C;->b:Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p2
.end method

.method public final b()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/C;->e:[B

    .line 2
    .line 3
    return-object v0
.end method
