.class public Lcom/explorestack/protobuf/l0;
.super Ljava/lang/Object;
.source "LazyFieldLite.java"


# static fields
.field private static final e:Lcom/explorestack/protobuf/y;


# instance fields
.field private a:Lcom/explorestack/protobuf/ByteString;

.field private b:Lcom/explorestack/protobuf/y;

.field protected volatile c:Lcom/explorestack/protobuf/MessageLite;

.field private volatile d:Lcom/explorestack/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/y;->b()Lcom/explorestack/protobuf/y;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/explorestack/protobuf/l0;->e:Lcom/explorestack/protobuf/y;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/l0;->a(Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/explorestack/protobuf/l0;->b:Lcom/explorestack/protobuf/y;

    .line 4
    iput-object p2, p0, Lcom/explorestack/protobuf/l0;->a:Lcom/explorestack/protobuf/ByteString;

    return-void
.end method

.method private static a(Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/ByteString;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string p1, "found null ByteString"

    .line 9
    .line 10
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 15
    .line 16
    const-string p1, "found null ExtensionRegistry"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method


# virtual methods
.method protected b(Lcom/explorestack/protobuf/MessageLite;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/l0;->c:Lcom/explorestack/protobuf/MessageLite;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/l0;->c:Lcom/explorestack/protobuf/MessageLite;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/explorestack/protobuf/l0;->a:Lcom/explorestack/protobuf/ByteString;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/explorestack/protobuf/MessageLite;->getParserForType()Lcom/explorestack/protobuf/j1;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/explorestack/protobuf/l0;->a:Lcom/explorestack/protobuf/ByteString;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/explorestack/protobuf/l0;->b:Lcom/explorestack/protobuf/y;

    .line 26
    .line 27
    invoke-interface {v0, v1, v2}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/explorestack/protobuf/MessageLite;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/explorestack/protobuf/l0;->c:Lcom/explorestack/protobuf/MessageLite;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/explorestack/protobuf/l0;->a:Lcom/explorestack/protobuf/ByteString;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/explorestack/protobuf/l0;->d:Lcom/explorestack/protobuf/ByteString;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iput-object p1, p0, Lcom/explorestack/protobuf/l0;->c:Lcom/explorestack/protobuf/MessageLite;

    .line 41
    .line 42
    sget-object v0, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/explorestack/protobuf/l0;->d:Lcom/explorestack/protobuf/ByteString;
    :try_end_1
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/explorestack/protobuf/l0;->c:Lcom/explorestack/protobuf/MessageLite;

    .line 48
    .line 49
    sget-object p1, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/explorestack/protobuf/l0;->d:Lcom/explorestack/protobuf/ByteString;

    .line 52
    .line 53
    :goto_0
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    throw p1
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/l0;->d:Lcom/explorestack/protobuf/ByteString;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/l0;->d:Lcom/explorestack/protobuf/ByteString;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/l0;->a:Lcom/explorestack/protobuf/ByteString;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/l0;->c:Lcom/explorestack/protobuf/MessageLite;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/explorestack/protobuf/l0;->c:Lcom/explorestack/protobuf/MessageLite;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageLite;->getSerializedSize()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0

    .line 32
    :cond_2
    const/4 v0, 0x0

    .line 33
    return v0
.end method

.method public d(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/l0;->b(Lcom/explorestack/protobuf/MessageLite;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/explorestack/protobuf/l0;->c:Lcom/explorestack/protobuf/MessageLite;

    .line 5
    .line 6
    return-object p1
.end method

.method public e(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/l0;->c:Lcom/explorestack/protobuf/MessageLite;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/explorestack/protobuf/l0;->a:Lcom/explorestack/protobuf/ByteString;

    .line 5
    .line 6
    iput-object v1, p0, Lcom/explorestack/protobuf/l0;->d:Lcom/explorestack/protobuf/ByteString;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/explorestack/protobuf/l0;->c:Lcom/explorestack/protobuf/MessageLite;

    .line 9
    .line 10
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/explorestack/protobuf/l0;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/l0;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/explorestack/protobuf/l0;->c:Lcom/explorestack/protobuf/MessageLite;

    .line 14
    .line 15
    iget-object v1, p1, Lcom/explorestack/protobuf/l0;->c:Lcom/explorestack/protobuf/MessageLite;

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/explorestack/protobuf/l0;->f()Lcom/explorestack/protobuf/ByteString;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/explorestack/protobuf/l0;->f()Lcom/explorestack/protobuf/ByteString;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :cond_2
    if-eqz v0, :cond_3

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_3
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1, v1}, Lcom/explorestack/protobuf/l0;->d(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    :cond_4
    invoke-interface {v1}, Lcom/explorestack/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/l0;->d(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    return p1
.end method

.method public f()Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/l0;->d:Lcom/explorestack/protobuf/ByteString;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/l0;->d:Lcom/explorestack/protobuf/ByteString;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/l0;->a:Lcom/explorestack/protobuf/ByteString;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_1
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/protobuf/l0;->d:Lcom/explorestack/protobuf/ByteString;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/explorestack/protobuf/l0;->d:Lcom/explorestack/protobuf/ByteString;

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/l0;->c:Lcom/explorestack/protobuf/MessageLite;

    .line 25
    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    sget-object v0, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/explorestack/protobuf/l0;->d:Lcom/explorestack/protobuf/ByteString;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/l0;->c:Lcom/explorestack/protobuf/MessageLite;

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/explorestack/protobuf/MessageLite;->toByteString()Lcom/explorestack/protobuf/ByteString;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/explorestack/protobuf/l0;->d:Lcom/explorestack/protobuf/ByteString;

    .line 40
    .line 41
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/l0;->d:Lcom/explorestack/protobuf/ByteString;

    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-object v0

    .line 45
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
