.class public Lcom/amazonaws/services/s3/model/ObjectMetadata;
.super Ljava/lang/Object;
.source "ObjectMetadata.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;
.implements Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;
.implements Lcom/amazonaws/services/s3/internal/ObjectRestoreResult;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Date;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->AES256:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->h:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v0, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->KMS:Lcom/amazonaws/services/s3/model/SSEAlgorithm;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/SSEAlgorithm;->getAlgorithm()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->i:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 7
    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    iget-object v2, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a:Ljava/util/Map;

    .line 8
    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/TreeMap;

    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    :goto_1
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 9
    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Date;

    invoke-static {v0}, Lcom/amazonaws/util/DateUtils;->b(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Date;

    .line 10
    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->e:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->c:Ljava/util/Date;

    invoke-static {v0}, Lcom/amazonaws/util/DateUtils;->b(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->c:Ljava/util/Date;

    .line 12
    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->f:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->f:Ljava/lang/Boolean;

    .line 13
    iget-object p1, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->g:Ljava/util/Date;

    invoke-static {p1}, Lcom/amazonaws/util/DateUtils;->b(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->g:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public A()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Date;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/util/DateUtils;->b(Ljava/util/Date;)Ljava/util/Date;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public C()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->c:Ljava/util/Date;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/util/DateUtils;->b(Ljava/util/Date;)Ljava/util/Date;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public D()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "Content-Range"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, "/"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ltz v1, :cond_0

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    return-wide v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->u()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    return-wide v0
.end method

.method public E()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public F(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public G()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string/jumbo v1, "x-amz-server-side-encryption"

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string/jumbo v1, "x-amz-server-side-encryption-aws-kms-key-id"

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string/jumbo v1, "x-amz-server-side-encryption-customer-algorithm"

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string/jumbo v1, "x-amz-server-side-encryption-customer-key-MD5"

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string/jumbo v1, "x-amz-storage-class"

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public L()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string/jumbo v1, "x-amz-version-id"

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    return-object v0
.end method

.method public N()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string/jumbo v1, "x-amz-request-charged"

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public O(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "Cache-Control"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public P(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "Content-Disposition"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "Content-Encoding"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public S(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p2, "Content-Length"

    .line 8
    .line 9
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public U(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "Content-MD5"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public V(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "Content-Type"

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public W(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public X(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->c:Ljava/util/Date;

    .line 2
    .line 3
    return-void
.end method

.method public Y(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 4
    .line 5
    const-string/jumbo v0, "x-amz-request-charged"

    .line 6
    .line 7
    .line 8
    const-string v1, "requester"

    .line 9
    .line 10
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->q()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string/jumbo v1, "x-amz-server-side-encryption"

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public f(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->g:Ljava/util/Date;

    .line 2
    .line 3
    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->f:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string/jumbo v1, "x-amz-server-side-encryption-customer-algorithm"

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public j(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->d:Ljava/util/Date;

    .line 2
    .line 3
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string/jumbo v1, "x-amz-server-side-encryption-customer-key-MD5"

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .line 1
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "Cache-Control"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "Content-Disposition"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "Content-Encoding"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method

.method public u()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "Content-Length"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Long;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    return-wide v0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    return-wide v0
.end method

.method public v()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "Content-MD5"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "Content-Type"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "ETag"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method
