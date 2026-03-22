.class public Lcom/explorestack/protobuf/t0;
.super Ljava/lang/Object;
.source "MapEntryLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/t0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/explorestack/protobuf/t0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t0$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static b(Lcom/explorestack/protobuf/t0$b;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/t0$b<",
            "TK;TV;>;TK;TV;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/t0$b;->a:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1, p1}, Lcom/explorestack/protobuf/e0;->n(Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object p0, p0, Lcom/explorestack/protobuf/t0$b;->c:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-static {p0, v0, p2}, Lcom/explorestack/protobuf/e0;->n(Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p1, p0

    .line 16
    return p1
.end method

.method static d(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/t0$b;Lcom/explorestack/protobuf/y;)Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/n;",
            "Lcom/explorestack/protobuf/t0$b<",
            "TK;TV;>;",
            "Lcom/explorestack/protobuf/y;",
            ")",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/explorestack/protobuf/t0$b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/explorestack/protobuf/t0$b;->d:Ljava/lang/Object;

    .line 4
    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n;->K()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    iget-object v3, p1, Lcom/explorestack/protobuf/t0$b;->a:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getWireType()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-static {v4, v3}, Lcom/explorestack/protobuf/WireFormat;->c(II)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget-object v2, p1, Lcom/explorestack/protobuf/t0$b;->a:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 26
    .line 27
    invoke-static {p0, p2, v2, v0}, Lcom/explorestack/protobuf/t0;->e(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-object v3, p1, Lcom/explorestack/protobuf/t0$b;->c:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getWireType()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x2

    .line 39
    invoke-static {v4, v3}, Lcom/explorestack/protobuf/WireFormat;->c(II)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-ne v2, v3, :cond_3

    .line 44
    .line 45
    iget-object v2, p1, Lcom/explorestack/protobuf/t0$b;->c:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 46
    .line 47
    invoke-static {p0, p2, v2, v1}, Lcom/explorestack/protobuf/t0;->e(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {p0, v2}, Lcom/explorestack/protobuf/n;->O(I)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_0

    .line 57
    .line 58
    :goto_1
    new-instance p0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 59
    .line 60
    invoke-direct {p0, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-object p0
.end method

.method static e(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/n;",
            "Lcom/explorestack/protobuf/y;",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/t0$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    if-eq v0, p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x3

    .line 16
    if-eq v0, p1, :cond_0

    .line 17
    .line 18
    invoke-static {p0, p2, v1}, Lcom/explorestack/protobuf/e0;->M(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 24
    .line 25
    const-string p1, "Groups are not allowed in maps."

    .line 26
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/n;->t()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_2
    check-cast p3, Lcom/explorestack/protobuf/MessageLite;

    .line 41
    .line 42
    invoke-interface {p3}, Lcom/explorestack/protobuf/MessageLite;->toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p0, p2, p1}, Lcom/explorestack/protobuf/n;->B(Lcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/y;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p2}, Lcom/explorestack/protobuf/MessageLite$Builder;->buildPartial()Lcom/explorestack/protobuf/MessageLite;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method static f(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/t0$b;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/explorestack/protobuf/CodedOutputStream;",
            "Lcom/explorestack/protobuf/t0$b<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/explorestack/protobuf/t0$b;->a:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {p0, v0, v1, p2}, Lcom/explorestack/protobuf/e0;->Q(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p1, Lcom/explorestack/protobuf/t0$b;->c:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 8
    .line 9
    const/4 p2, 0x2

    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/explorestack/protobuf/e0;->Q(Lcom/explorestack/protobuf/CodedOutputStream;Lcom/explorestack/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/t0;->a:Lcom/explorestack/protobuf/t0$b;

    .line 6
    .line 7
    invoke-static {v0, p2, p3}, Lcom/explorestack/protobuf/t0;->b(Lcom/explorestack/protobuf/t0$b;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-static {p2}, Lcom/explorestack/protobuf/CodedOutputStream;->E(I)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    add-int/2addr p1, p2

    .line 16
    return p1
.end method

.method c()Lcom/explorestack/protobuf/t0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t0$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/t0;->a:Lcom/explorestack/protobuf/t0$b;

    .line 2
    .line 3
    return-object v0
.end method
