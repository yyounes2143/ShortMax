.class public final Lcom/explorestack/protobuf/j2$b;
.super Ljava/lang/Object;
.source "UnknownFieldSet.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageLite$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/j2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/explorestack/protobuf/j2$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lcom/explorestack/protobuf/j2$c$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private B()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/explorestack/protobuf/j2$b;->a:Ljava/util/Map;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/explorestack/protobuf/j2$b;->b:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/explorestack/protobuf/j2$b;->c:Lcom/explorestack/protobuf/j2$c$a;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic a()Lcom/explorestack/protobuf/j2$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/j2$b;->i()Lcom/explorestack/protobuf/j2$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static i()Lcom/explorestack/protobuf/j2$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/j2$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/explorestack/protobuf/j2$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {v0}, Lcom/explorestack/protobuf/j2$b;->B()V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method private k(I)Lcom/explorestack/protobuf/j2$c$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$b;->c:Lcom/explorestack/protobuf/j2$c$a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v1, p0, Lcom/explorestack/protobuf/j2$b;->b:I

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$c$a;->g()Lcom/explorestack/protobuf/j2$c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v1, v0}, Lcom/explorestack/protobuf/j2$b;->b(ILcom/explorestack/protobuf/j2$c;)Lcom/explorestack/protobuf/j2$b;

    .line 15
    .line 16
    .line 17
    :cond_1
    if-nez p1, :cond_2

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$b;->a:Ljava/util/Map;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/explorestack/protobuf/j2$c;

    .line 32
    .line 33
    iput p1, p0, Lcom/explorestack/protobuf/j2$b;->b:I

    .line 34
    .line 35
    invoke-static {}, Lcom/explorestack/protobuf/j2$c;->t()Lcom/explorestack/protobuf/j2$c$a;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/explorestack/protobuf/j2$b;->c:Lcom/explorestack/protobuf/j2$c$a;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/j2$c$a;->i(Lcom/explorestack/protobuf/j2$c;)Lcom/explorestack/protobuf/j2$c$a;

    .line 44
    .line 45
    .line 46
    :cond_3
    iget-object p1, p0, Lcom/explorestack/protobuf/j2$b;->c:Lcom/explorestack/protobuf/j2$c$a;

    .line 47
    .line 48
    return-object p1
.end method


# virtual methods
.method public A(II)Lcom/explorestack/protobuf/j2$b;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/j2$b;->k(I)Lcom/explorestack/protobuf/j2$c$a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    int-to-long v0, p2

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/j2$c$a;->f(J)Lcom/explorestack/protobuf/j2$c$a;

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p2, "Zero is not a valid field number."

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public b(ILcom/explorestack/protobuf/j2$c;)Lcom/explorestack/protobuf/j2$b;
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$b;->c:Lcom/explorestack/protobuf/j2$c$a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/explorestack/protobuf/j2$b;->b:I

    .line 8
    .line 9
    if-ne v0, p1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/explorestack/protobuf/j2$b;->c:Lcom/explorestack/protobuf/j2$c$a;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/explorestack/protobuf/j2$b;->b:I

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$b;->a:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Ljava/util/TreeMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/explorestack/protobuf/j2$b;->a:Ljava/util/Map;

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$b;->a:Ljava/util/Map;

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string p2, "Zero is not a valid field number."

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/j2$b;->e()Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c()Lcom/explorestack/protobuf/j2;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/j2$b;->k(I)Lcom/explorestack/protobuf/j2$c$a;

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$b;->a:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/explorestack/protobuf/j2;->c()Lcom/explorestack/protobuf/j2;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$b;->a:Ljava/util/Map;

    .line 19
    .line 20
    check-cast v0, Ljava/util/TreeMap;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lcom/explorestack/protobuf/j2;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/explorestack/protobuf/j2$b;->a:Ljava/util/Map;

    .line 33
    .line 34
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {v1, v2, v0}, Lcom/explorestack/protobuf/j2;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    move-object v0, v1

    .line 42
    :goto_0
    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/explorestack/protobuf/j2$b;->a:Ljava/util/Map;

    .line 44
    .line 45
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/j2$b;->f()Lcom/explorestack/protobuf/j2$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/j2$b;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/j2$b;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/explorestack/protobuf/j2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public f()Lcom/explorestack/protobuf/j2$b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/j2$b;->B()V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public g()Lcom/explorestack/protobuf/j2$b;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/j2$b;->k(I)Lcom/explorestack/protobuf/j2$c$a;

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$b;->a:Ljava/util/Map;

    .line 6
    .line 7
    check-cast v0, Ljava/util/TreeMap;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/explorestack/protobuf/j2;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/explorestack/protobuf/j2$b;->a:Ljava/util/Map;

    .line 24
    .line 25
    invoke-direct {v2, v3, v0}, Lcom/explorestack/protobuf/j2;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/j2$b;->t(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/j2$b;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/j2$b;->j()Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public j()Lcom/explorestack/protobuf/j2;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/j2;->c()Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public l(I)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget v0, p0, Lcom/explorestack/protobuf/j2$b;->b:I

    .line 4
    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/explorestack/protobuf/j2$b;->a:Ljava/util/Map;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 23
    :goto_1
    return p1

    .line 24
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string v0, "Zero is not a valid field number."

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public m(ILcom/explorestack/protobuf/j2$c;)Lcom/explorestack/protobuf/j2$b;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/j2$b;->l(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/j2$b;->k(I)Lcom/explorestack/protobuf/j2$c$a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/j2$c$a;->i(Lcom/explorestack/protobuf/j2$c;)Lcom/explorestack/protobuf/j2$c$a;

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/j2$b;->b(ILcom/explorestack/protobuf/j2$c;)Lcom/explorestack/protobuf/j2$b;

    .line 18
    .line 19
    .line 20
    :goto_0
    return-object p0

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string p2, "Zero is not a valid field number."

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-static {v0, p1}, Lcom/explorestack/protobuf/n;->D(ILjava/io/InputStream;)I

    move-result v0

    .line 3
    new-instance v1, Lcom/explorestack/protobuf/a$a$a;

    invoke-direct {v1, p1, v0}, Lcom/explorestack/protobuf/a$a$a;-><init>(Ljava/io/InputStream;I)V

    .line 4
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/j2$b;->u(Ljava/io/InputStream;)Lcom/explorestack/protobuf/j2$b;

    const/4 p1, 0x1

    return p1
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/j2$b;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/j2$b;->o(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/j2$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/j2$b;->p(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/j2$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/j2$b;->s(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/j2$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/j2$b;->q(Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/j2$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/j2$b;->r(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/j2$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/j2$b;->u(Ljava/io/InputStream;)Lcom/explorestack/protobuf/j2$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/j2$b;->v(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/j2$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/j2$b;->w([B)Lcom/explorestack/protobuf/j2$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/j2$b;->x([BII)Lcom/explorestack/protobuf/j2$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/j2$b;->y([BIILcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/j2$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/j2$b;->z([BLcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/j2$b;

    move-result-object p1

    return-object p1
.end method

.method public n(ILcom/explorestack/protobuf/n;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->a(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Lcom/explorestack/protobuf/WireFormat;->b(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz p1, :cond_5

    .line 11
    .line 12
    if-eq p1, v1, :cond_4

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq p1, v2, :cond_3

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    if-eq p1, v2, :cond_2

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    if-eq p1, v2, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x5

    .line 24
    if-ne p1, v2, :cond_0

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/j2$b;->k(I)Lcom/explorestack/protobuf/j2$c$a;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2}, Lcom/explorestack/protobuf/n;->u()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/j2$c$a;->b(I)Lcom/explorestack/protobuf/j2$c$a;

    .line 35
    .line 36
    .line 37
    return v1

    .line 38
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/explorestack/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    throw p1

    .line 43
    :cond_1
    const/4 p1, 0x0

    .line 44
    return p1

    .line 45
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {}, Lcom/explorestack/protobuf/w;->g()Lcom/explorestack/protobuf/w;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p2, v0, p1, v2}, Lcom/explorestack/protobuf/n;->x(ILcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/y;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/j2$b;->k(I)Lcom/explorestack/protobuf/j2$c$a;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/j2$c$a;->d(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/j2$c$a;

    .line 65
    .line 66
    .line 67
    return v1

    .line 68
    :cond_3
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/j2$b;->k(I)Lcom/explorestack/protobuf/j2$c$a;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p2}, Lcom/explorestack/protobuf/n;->r()Lcom/explorestack/protobuf/ByteString;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/j2$c$a;->e(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/j2$c$a;

    .line 77
    .line 78
    .line 79
    return v1

    .line 80
    :cond_4
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/j2$b;->k(I)Lcom/explorestack/protobuf/j2$c$a;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p2}, Lcom/explorestack/protobuf/n;->v()J

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/j2$c$a;->c(J)Lcom/explorestack/protobuf/j2$c$a;

    .line 89
    .line 90
    .line 91
    return v1

    .line 92
    :cond_5
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/j2$b;->k(I)Lcom/explorestack/protobuf/j2$c$a;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p2}, Lcom/explorestack/protobuf/n;->z()J

    .line 97
    .line 98
    .line 99
    move-result-wide v2

    .line 100
    invoke-virtual {p1, v2, v3}, Lcom/explorestack/protobuf/j2$c$a;->f(J)Lcom/explorestack/protobuf/j2$c$a;

    .line 101
    .line 102
    .line 103
    return v1
.end method

.method public o(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/j2$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->newCodedInput()Lcom/explorestack/protobuf/n;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/j2$b;->q(Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/j2$b;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/n;->a(I)V
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :catch_1
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    const-string v1, "Reading from a ByteString threw an IOException (should never happen)."

    .line 20
    .line 21
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :goto_1
    throw p1
.end method

.method public p(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/j2$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/j2$b;->o(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/j2$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public q(Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/j2$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/explorestack/protobuf/j2$b;->n(ILcom/explorestack/protobuf/n;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    :cond_1
    return-object p0
.end method

.method public r(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/j2$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/j2$b;->q(Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/j2$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public s(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/j2$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/explorestack/protobuf/j2;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/j2$b;->t(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/j2$b;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public t(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/j2$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/j2;->c()Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/explorestack/protobuf/j2;->a(Lcom/explorestack/protobuf/j2;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/explorestack/protobuf/j2$c;

    .line 46
    .line 47
    invoke-virtual {p0, v1, v0}, Lcom/explorestack/protobuf/j2$b;->m(ILcom/explorestack/protobuf/j2$c;)Lcom/explorestack/protobuf/j2$b;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-object p0
.end method

.method public u(Ljava/io/InputStream;)Lcom/explorestack/protobuf/j2$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/explorestack/protobuf/n;->g(Ljava/io/InputStream;)Lcom/explorestack/protobuf/n;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/j2$b;->q(Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/j2$b;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/n;->a(I)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public v(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/j2$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/j2$b;->u(Ljava/io/InputStream;)Lcom/explorestack/protobuf/j2$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public w([B)Lcom/explorestack/protobuf/j2$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/explorestack/protobuf/n;->l([B)Lcom/explorestack/protobuf/n;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/j2$b;->q(Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/j2$b;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/n;->a(I)V
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :catch_1
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    const-string v1, "Reading from a byte array threw an IOException (should never happen)."

    .line 20
    .line 21
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :goto_1
    throw p1
.end method

.method public x([BII)Lcom/explorestack/protobuf/j2$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/explorestack/protobuf/n;->m([BII)Lcom/explorestack/protobuf/n;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/j2$b;->q(Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/j2$b;

    .line 6
    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/n;->a(I)V
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :catch_1
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    const-string p3, "Reading from a byte array threw an IOException (should never happen)."

    .line 20
    .line 21
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw p2

    .line 25
    :goto_1
    throw p1
.end method

.method public y([BIILcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/j2$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/j2$b;->x([BII)Lcom/explorestack/protobuf/j2$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public z([BLcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/j2$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/j2$b;->w([B)Lcom/explorestack/protobuf/j2$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
