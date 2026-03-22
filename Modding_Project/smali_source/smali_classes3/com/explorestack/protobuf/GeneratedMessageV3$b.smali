.class public abstract Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.super Lcom/explorestack/protobuf/AbstractMessage$Builder;
.source "GeneratedMessageV3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessageV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/GeneratedMessageV3$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
        "TBuilderType;>;>",
        "Lcom/explorestack/protobuf/AbstractMessage$Builder<",
        "TBuilderType;>;"
    }
.end annotation


# instance fields
.field private builderParent:Lcom/explorestack/protobuf/GeneratedMessageV3$c;

.field private isClean:Z

.field private meAsParent:Lcom/explorestack/protobuf/GeneratedMessageV3$b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
            "TBuilderType;>.a;"
        }
    .end annotation
.end field

.field private unknownFields:Lcom/explorestack/protobuf/j2;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method protected constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;-><init>()V

    .line 3
    invoke-static {}, Lcom/explorestack/protobuf/j2;->c()Lcom/explorestack/protobuf/j2;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 4
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->builderParent:Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    return-void
.end method

.method static synthetic access$900(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getAllFieldsMutable()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getAllFieldsMutable()Ljava/util/Map;
    .locals 6
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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->a(Lcom/explorestack/protobuf/GeneratedMessageV3$e;)Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ge v2, v3, :cond_5

    .line 24
    .line 25
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getFieldCount()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    add-int/lit8 v3, v3, -0x1

    .line 42
    .line 43
    add-int/2addr v2, v3

    .line 44
    invoke-virtual {p0, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->hasOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_0

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_0
    invoke-virtual {p0, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getOneofFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_4

    .line 73
    .line 74
    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-nez v4, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    return-object v0
.end method

.method private setUnknownFieldsInternal(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/j2;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->c(Lcom/explorestack/protobuf/GeneratedMessageV3$e;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;->e(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 4
    invoke-static {}, Lcom/explorestack/protobuf/j2;->c()Lcom/explorestack/protobuf/j2;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ")TBuilderType;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->c(Lcom/explorestack/protobuf/GeneratedMessageV3$e;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;->a(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;",
            ")TBuilderType;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->b(Lcom/explorestack/protobuf/GeneratedMessageV3$e;Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->a(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 6
    invoke-interface {p0}, Lcom/explorestack/protobuf/MessageOrBuilder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 7
    invoke-interface {p0}, Lcom/explorestack/protobuf/Message$Builder;->buildPartial()Lcom/explorestack/protobuf/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object v0

    return-object v0
.end method

.method dispose()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->builderParent:Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 3
    .line 4
    return-void
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 1
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
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getAllFieldsMutable()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->a(Lcom/explorestack/protobuf/GeneratedMessageV3$e;)Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->c(Lcom/explorestack/protobuf/GeneratedMessageV3$e;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;->c(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    check-cast v0, Ljava/util/List;

    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_0
    return-object v0
.end method

.method public getFieldBuilder(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->c(Lcom/explorestack/protobuf/GeneratedMessageV3$e;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;->m(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Lcom/explorestack/protobuf/Message$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getOneofFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->b(Lcom/explorestack/protobuf/GeneratedMessageV3$e;Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->b(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method protected getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->meAsParent:Lcom/explorestack/protobuf/GeneratedMessageV3$b$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/GeneratedMessageV3$b$a;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b$a;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/GeneratedMessageV3$a;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->meAsParent:Lcom/explorestack/protobuf/GeneratedMessageV3$b$a;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->meAsParent:Lcom/explorestack/protobuf/GeneratedMessageV3$b$a;

    .line 14
    .line 15
    return-object v0
.end method

.method public getRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->c(Lcom/explorestack/protobuf/GeneratedMessageV3$e;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1, p0, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;->d(Lcom/explorestack/protobuf/GeneratedMessageV3$b;I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getRepeatedFieldBuilder(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->c(Lcom/explorestack/protobuf/GeneratedMessageV3$e;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1, p0, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;->n(Lcom/explorestack/protobuf/GeneratedMessageV3$b;I)Lcom/explorestack/protobuf/Message$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->c(Lcom/explorestack/protobuf/GeneratedMessageV3$e;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;->l(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/j2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->c(Lcom/explorestack/protobuf/GeneratedMessageV3$e;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;->g(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public hasOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->b(Lcom/explorestack/protobuf/GeneratedMessageV3$e;Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->d(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method protected abstract internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
.end method

.method protected internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "No map fields found in "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method protected internalGetMutableMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "No map fields found in "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method protected isClean()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean:Z

    .line 2
    .line 3
    return v0
.end method

.method public isInitialized()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    return v3

    .line 39
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    sget-object v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 44
    .line 45
    if-ne v2, v4, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/explorestack/protobuf/Message;

    .line 74
    .line 75
    invoke-interface {v2}, Lcom/explorestack/protobuf/Message;->isInitialized()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    return v3

    .line 82
    :cond_3
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_0

    .line 87
    .line 88
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lcom/explorestack/protobuf/Message;

    .line 93
    .line 94
    invoke-interface {v1}, Lcom/explorestack/protobuf/Message;->isInitialized()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_0

    .line 99
    .line 100
    return v3

    .line 101
    :cond_4
    const/4 v0, 0x1

    .line 102
    return v0
.end method

.method protected markClean()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean:Z

    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    return-object p1
.end method

.method public mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/j2;",
            ")TBuilderType;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 4
    invoke-static {v0}, Lcom/explorestack/protobuf/j2;->h(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2$b;->t(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/j2$b;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    return-object p1
.end method

.method public newBuilderForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->c(Lcom/explorestack/protobuf/GeneratedMessageV3$e;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;->p()Lcom/explorestack/protobuf/Message$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method protected onBuilt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->builderParent:Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->markClean()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected final onChanged()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->builderParent:Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;->markDirty()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->c(Lcom/explorestack/protobuf/GeneratedMessageV3$e;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;->j(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "I",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->c(Lcom/explorestack/protobuf/GeneratedMessageV3$e;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;

    move-result-object p1

    .line 3
    invoke-interface {p1, p0, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;->k(Lcom/explorestack/protobuf/GeneratedMessageV3$b;ILjava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    return-object p1
.end method

.method public setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/j2;",
            ")TBuilderType;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFieldsInternal(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    move-result-object p1

    return-object p1
.end method

.method protected setUnknownFieldsProto3(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/j2;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFieldsInternal(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
