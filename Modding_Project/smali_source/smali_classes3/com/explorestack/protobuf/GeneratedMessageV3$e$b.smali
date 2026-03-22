.class Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;
.super Ljava/lang/Object;
.source "GeneratedMessageV3.java"

# interfaces
.implements Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessageV3$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

.field private final b:Lcom/explorestack/protobuf/Message;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/explorestack/protobuf/GeneratedMessageV3;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->a:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    new-array p2, p1, [Ljava/lang/Class;

    .line 8
    .line 9
    const-string p4, "getDefaultInstance"

    .line 10
    .line 11
    invoke-static {p3, p4, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const/4 p3, 0x0

    .line 16
    new-array p1, p1, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {p2, p3, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageV3;

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->s(Lcom/explorestack/protobuf/GeneratedMessageV3;)Lcom/explorestack/protobuf/MapField;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->j()Lcom/explorestack/protobuf/Message;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->b:Lcom/explorestack/protobuf/Message;

    .line 33
    .line 34
    return-void
.end method

.method private q(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->b:Lcom/explorestack/protobuf/Message;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->b:Lcom/explorestack/protobuf/Message;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/explorestack/protobuf/Message;->toBuilder()Lcom/explorestack/protobuf/Message$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Lcom/explorestack/protobuf/Message$Builder;->build()Lcom/explorestack/protobuf/Message;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method private r(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$b;",
            ")",
            "Lcom/explorestack/protobuf/MapField<",
            "**>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->a:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->internalGetMapField(I)Lcom/explorestack/protobuf/MapField;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private s(Lcom/explorestack/protobuf/GeneratedMessageV3;)Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3;",
            ")",
            "Lcom/explorestack/protobuf/MapField<",
            "**>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->a:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->internalGetMapField(I)Lcom/explorestack/protobuf/MapField;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private t(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$b;",
            ")",
            "Lcom/explorestack/protobuf/MapField<",
            "**>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->a:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->internalGetMutableMapField(I)Lcom/explorestack/protobuf/MapField;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method


# virtual methods
.method public a(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->t(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->k()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public b(Lcom/explorestack/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->h(Lcom/explorestack/protobuf/GeneratedMessageV3;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->i(Lcom/explorestack/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public c(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->l(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->d(Lcom/explorestack/protobuf/GeneratedMessageV3$b;I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public d(Lcom/explorestack/protobuf/GeneratedMessageV3$b;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->r(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->h()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public e(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->t(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->k()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p2, Lcom/explorestack/protobuf/Message;

    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->q(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public f(Lcom/explorestack/protobuf/GeneratedMessageV3;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "hasField() is not supported for repeated fields."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public g(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "hasField() is not supported for repeated fields."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public h(Lcom/explorestack/protobuf/GeneratedMessageV3;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->s(Lcom/explorestack/protobuf/GeneratedMessageV3;)Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->h()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public i(Lcom/explorestack/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->s(Lcom/explorestack/protobuf/GeneratedMessageV3;)Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->h()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public j(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->a(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    .line 2
    .line 3
    .line 4
    check-cast p2, Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->e(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public k(Lcom/explorestack/protobuf/GeneratedMessageV3$b;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->t(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->k()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p3, Lcom/explorestack/protobuf/Message;

    .line 10
    .line 11
    invoke-direct {p0, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->q(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-interface {p1, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public l(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->r(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Lcom/explorestack/protobuf/MapField;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->h()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public m(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Nested builder not supported for map fields."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public n(Lcom/explorestack/protobuf/GeneratedMessageV3$b;I)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p2, "Nested builder not supported for map fields."

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public o(Lcom/explorestack/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->b(Lcom/explorestack/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public p()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$b;->b:Lcom/explorestack/protobuf/Message;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
