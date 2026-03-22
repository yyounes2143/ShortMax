.class public Lcom/explorestack/protobuf/s0$b;
.super Lcom/explorestack/protobuf/AbstractMessage$Builder;
.source "MapEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/explorestack/protobuf/AbstractMessage$Builder<",
        "Lcom/explorestack/protobuf/s0$b<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/explorestack/protobuf/s0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/s0$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/s0$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/s0$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3
    iget-object v2, p1, Lcom/explorestack/protobuf/t0$b;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/explorestack/protobuf/t0$b;->d:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/s0$b;-><init>(Lcom/explorestack/protobuf/s0$c;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/s0$c;Lcom/explorestack/protobuf/s0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/s0$b;-><init>(Lcom/explorestack/protobuf/s0$c;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/s0$c;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/s0$c<",
            "TK;TV;>;TK;TV;ZZ)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/explorestack/protobuf/s0$b;->a:Lcom/explorestack/protobuf/s0$c;

    .line 6
    iput-object p2, p0, Lcom/explorestack/protobuf/s0$b;->b:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lcom/explorestack/protobuf/s0$b;->c:Ljava/lang/Object;

    .line 8
    iput-boolean p4, p0, Lcom/explorestack/protobuf/s0$b;->d:Z

    .line 9
    iput-boolean p5, p0, Lcom/explorestack/protobuf/s0$b;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/s0$c;Ljava/lang/Object;Ljava/lang/Object;ZZLcom/explorestack/protobuf/s0$a;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/explorestack/protobuf/s0$b;-><init>(Lcom/explorestack/protobuf/s0$c;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method private e(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/explorestack/protobuf/s0$b;->a:Lcom/explorestack/protobuf/s0$c;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/explorestack/protobuf/s0$c;->e:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "Wrong FieldDescriptor \""

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, "\" used in message \""

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/explorestack/protobuf/s0$b;->a:Lcom/explorestack/protobuf/s0$c;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/explorestack/protobuf/s0$c;->e:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0
.end method


# virtual methods
.method public a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/s0$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/explorestack/protobuf/s0$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string p2, "There is no repeated field in a map entry message."

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/s0$b;->a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/s0$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b()Lcom/explorestack/protobuf/s0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/s0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0$b;->c()Lcom/explorestack/protobuf/s0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/s0;->isInitialized()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0$b;->b()Lcom/explorestack/protobuf/s0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0$b;->b()Lcom/explorestack/protobuf/s0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0$b;->c()Lcom/explorestack/protobuf/s0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0$b;->c()Lcom/explorestack/protobuf/s0;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/explorestack/protobuf/s0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/s0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/s0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/s0$b;->a:Lcom/explorestack/protobuf/s0$c;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/explorestack/protobuf/s0$b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/explorestack/protobuf/s0$b;->c:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/s0;-><init>(Lcom/explorestack/protobuf/s0$c;Ljava/lang/Object;Ljava/lang/Object;Lcom/explorestack/protobuf/s0$a;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/s0$b;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/s0$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0$b;->j()Lcom/explorestack/protobuf/s0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0$b;->j()Lcom/explorestack/protobuf/s0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0$b;->j()Lcom/explorestack/protobuf/s0$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0$b;->j()Lcom/explorestack/protobuf/s0$b;

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

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0$b;->j()Lcom/explorestack/protobuf/s0$b;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/s0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ")",
            "Lcom/explorestack/protobuf/s0$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/s0$b;->e(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x1

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0$b;->g()Lcom/explorestack/protobuf/s0$b;

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0$b;->i()Lcom/explorestack/protobuf/s0$b;

    .line 16
    .line 17
    .line 18
    :goto_0
    return-object p0
.end method

.method public g()Lcom/explorestack/protobuf/s0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/s0$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/s0$b;->a:Lcom/explorestack/protobuf/s0$c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/explorestack/protobuf/t0$b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/explorestack/protobuf/s0$b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/explorestack/protobuf/s0$b;->d:Z

    .line 9
    .line 10
    return-object p0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/explorestack/protobuf/s0$b;->a:Lcom/explorestack/protobuf/s0$c;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/explorestack/protobuf/s0$c;->e:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 29
    .line 30
    invoke-virtual {p0, v2}, Lcom/explorestack/protobuf/s0$b;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Lcom/explorestack/protobuf/s0$b;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0$b;->k()Lcom/explorestack/protobuf/s0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0$b;->k()Lcom/explorestack/protobuf/s0;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/s0$b;->a:Lcom/explorestack/protobuf/s0$c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/explorestack/protobuf/s0$c;->e:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 4
    .line 5
    return-object v0
.end method

.method public getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/s0$b;->e(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0$b;->l()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/s0$b;->m()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 25
    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast v0, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->findValueByNumberCreatingIfUnknown(I)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_1
    return-object v0
.end method

.method public getRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string p2, "There is no repeated field in a map entry message."

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public getRepeatedFieldCount(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string v0, "There is no repeated field in a map entry message."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public getUnknownFields()Lcom/explorestack/protobuf/j2;
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

.method public hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/s0$b;->e(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x1

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/explorestack/protobuf/s0$b;->d:Z

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean p1, p0, Lcom/explorestack/protobuf/s0$b;->e:Z

    .line 15
    .line 16
    :goto_0
    return p1
.end method

.method public i()Lcom/explorestack/protobuf/s0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/s0$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/s0$b;->a:Lcom/explorestack/protobuf/s0$c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/explorestack/protobuf/t0$b;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/explorestack/protobuf/s0$b;->c:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/explorestack/protobuf/s0$b;->e:Z

    .line 9
    .line 10
    return-object p0
.end method

.method public isInitialized()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/s0$b;->a:Lcom/explorestack/protobuf/s0$c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/s0$b;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/s0;->e(Lcom/explorestack/protobuf/s0$c;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public j()Lcom/explorestack/protobuf/s0$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/s0$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/explorestack/protobuf/s0$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/s0$b;->a:Lcom/explorestack/protobuf/s0$c;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/explorestack/protobuf/s0$b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/explorestack/protobuf/s0$b;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/explorestack/protobuf/s0$b;->d:Z

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/explorestack/protobuf/s0$b;->e:Z

    .line 12
    .line 13
    move-object v0, v6

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/explorestack/protobuf/s0$b;-><init>(Lcom/explorestack/protobuf/s0$c;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    .line 15
    .line 16
    .line 17
    return-object v6
.end method

.method public k()Lcom/explorestack/protobuf/s0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/s0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/s0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/s0$b;->a:Lcom/explorestack/protobuf/s0$c;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/explorestack/protobuf/t0$b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/explorestack/protobuf/t0$b;->d:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/s0;-><init>(Lcom/explorestack/protobuf/s0$c;Ljava/lang/Object;Ljava/lang/Object;Lcom/explorestack/protobuf/s0$a;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public l()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/s0$b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/s0$b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public n(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/s0$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/explorestack/protobuf/s0$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/s0$b;->e(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/s0$b;->o(Ljava/lang/Object;)Lcom/explorestack/protobuf/s0$b;

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    check-cast p2, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getNumber()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 39
    .line 40
    if-ne p1, v0, :cond_2

    .line 41
    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/explorestack/protobuf/s0$b;->a:Lcom/explorestack/protobuf/s0$c;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/explorestack/protobuf/t0$b;->d:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Lcom/explorestack/protobuf/s0$b;->a:Lcom/explorestack/protobuf/s0$c;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/explorestack/protobuf/t0$b;->d:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Lcom/explorestack/protobuf/Message;

    .line 63
    .line 64
    invoke-interface {p1}, Lcom/explorestack/protobuf/Message;->toBuilder()Lcom/explorestack/protobuf/Message$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p2, Lcom/explorestack/protobuf/Message;

    .line 69
    .line 70
    invoke-interface {p1, p2}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p1}, Lcom/explorestack/protobuf/Message$Builder;->build()Lcom/explorestack/protobuf/Message;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/s0$b;->r(Ljava/lang/Object;)Lcom/explorestack/protobuf/s0$b;

    .line 79
    .line 80
    .line 81
    :goto_1
    return-object p0
.end method

.method public newBuilderForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/s0$b;->e(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/explorestack/protobuf/s0$b;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lcom/explorestack/protobuf/Message;

    .line 22
    .line 23
    invoke-interface {p1}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "\""

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, "\" is not a message value field."

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method public o(Ljava/lang/Object;)Lcom/explorestack/protobuf/s0$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/explorestack/protobuf/s0$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/s0$b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/explorestack/protobuf/s0$b;->d:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public p(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/s0$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "I",
            "Ljava/lang/Object;",
            ")",
            "Lcom/explorestack/protobuf/s0$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string p2, "There is no repeated field in a map entry message."

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public q(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/s0$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/j2;",
            ")",
            "Lcom/explorestack/protobuf/s0$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    return-object p0
.end method

.method public r(Ljava/lang/Object;)Lcom/explorestack/protobuf/s0$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/explorestack/protobuf/s0$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/s0$b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/explorestack/protobuf/s0$b;->e:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/s0$b;->n(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/s0$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/s0$b;->p(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/s0$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/s0$b;->q(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/s0$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
