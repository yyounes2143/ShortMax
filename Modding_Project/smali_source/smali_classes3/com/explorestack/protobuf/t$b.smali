.class public final Lcom/explorestack/protobuf/t$b;
.super Lcom/explorestack/protobuf/AbstractMessage$Builder;
.source "DynamicMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractMessage$Builder<",
        "Lcom/explorestack/protobuf/t$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private b:Lcom/explorestack/protobuf/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/e0<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

.field private d:Lcom/explorestack/protobuf/j2;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/explorestack/protobuf/t$b;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 4
    invoke-static {}, Lcom/explorestack/protobuf/e0;->L()Lcom/explorestack/protobuf/e0;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/j2;->c()Lcom/explorestack/protobuf/j2;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/t$b;->d:Lcom/explorestack/protobuf/j2;

    .line 6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->W()I

    move-result p1

    new-array p1, p1, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    iput-object p1, p0, Lcom/explorestack/protobuf/t$b;->c:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/t$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/t$b;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;)V

    return-void
.end method

.method private j(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p2, Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/explorestack/protobuf/t$b;->l(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/t$b;->l(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method private k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/e0;->C()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/explorestack/protobuf/e0;->j()Lcom/explorestack/protobuf/e0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private l(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/explorestack/protobuf/i0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    instance-of p1, p2, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string p2, "DynamicMessage should use EnumValueDescriptor to set Enum Value."

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method private t(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "FieldDescriptor does not match message type."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method private u(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "OneofDescriptor does not match message type."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method


# virtual methods
.method public a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/t$b;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/t$b;->t(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/explorestack/protobuf/t$b;->k()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/e0;->g(Lcom/explorestack/protobuf/e0$c;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/t$b;->a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/t$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b()Lcom/explorestack/protobuf/t;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t$b;->isInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t$b;->c()Lcom/explorestack/protobuf/t;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/t;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/explorestack/protobuf/t$b;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/explorestack/protobuf/t$b;->c:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 19
    .line 20
    array-length v4, v3

    .line 21
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 26
    .line 27
    iget-object v4, p0, Lcom/explorestack/protobuf/t$b;->d:Lcom/explorestack/protobuf/j2;

    .line 28
    .line 29
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/t;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/e0;[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/j2;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t$b;->b()Lcom/explorestack/protobuf/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t$b;->b()Lcom/explorestack/protobuf/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t$b;->c()Lcom/explorestack/protobuf/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t$b;->c()Lcom/explorestack/protobuf/t;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/explorestack/protobuf/t;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->y()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isOptional()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    iget-object v2, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/e0;->A(Lcom/explorestack/protobuf/e0$c;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    sget-object v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 54
    .line 55
    if-ne v2, v3, :cond_1

    .line 56
    .line 57
    iget-object v2, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v3}, Lcom/explorestack/protobuf/t;->g(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/t;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v1, v3}, Lcom/explorestack/protobuf/e0;->N(Lcom/explorestack/protobuf/e0$c;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v2, v1, v3}, Lcom/explorestack/protobuf/e0;->N(Lcom/explorestack/protobuf/e0$c;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/explorestack/protobuf/e0;->H()V

    .line 84
    .line 85
    .line 86
    new-instance v0, Lcom/explorestack/protobuf/t;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/explorestack/protobuf/t$b;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 91
    .line 92
    iget-object v3, p0, Lcom/explorestack/protobuf/t$b;->c:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 93
    .line 94
    array-length v4, v3

    .line 95
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 100
    .line 101
    iget-object v4, p0, Lcom/explorestack/protobuf/t$b;->d:Lcom/explorestack/protobuf/j2;

    .line 102
    .line 103
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/t;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/e0;[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/j2;)V

    .line 104
    .line 105
    .line 106
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t$b;->e()Lcom/explorestack/protobuf/t$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t$b;->e()Lcom/explorestack/protobuf/t$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t$b;->e()Lcom/explorestack/protobuf/t$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/t$b;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/t$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/t$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/t$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/t$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/t$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t$b;->i()Lcom/explorestack/protobuf/t$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t$b;->i()Lcom/explorestack/protobuf/t$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t$b;->i()Lcom/explorestack/protobuf/t$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t$b;->i()Lcom/explorestack/protobuf/t$b;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t$b;->i()Lcom/explorestack/protobuf/t$b;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/explorestack/protobuf/t$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/e0;->C()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/e0;->L()Lcom/explorestack/protobuf/e0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/explorestack/protobuf/e0;->h()V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {}, Lcom/explorestack/protobuf/j2;->c()Lcom/explorestack/protobuf/j2;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/explorestack/protobuf/t$b;->d:Lcom/explorestack/protobuf/j2;

    .line 26
    .line 27
    return-object p0
.end method

.method public f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/t$b;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/t$b;->t(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/explorestack/protobuf/t$b;->k()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/explorestack/protobuf/t$b;->c:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 18
    .line 19
    aget-object v2, v1, v0

    .line 20
    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object v2, v1, v0

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/e0;->i(Lcom/explorestack/protobuf/e0$c;)V

    .line 29
    .line 30
    .line 31
    return-object p0
.end method

.method public g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/t$b;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/t$b;->u(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->c:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    aget-object p1, v0, p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/t$b;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/t$b;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object p0
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
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/e0;->s()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t$b;->m()Lcom/explorestack/protobuf/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t$b;->m()Lcom/explorestack/protobuf/t;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/t$b;->t(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/e0;->t(Lcom/explorestack/protobuf/e0$c;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 28
    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/explorestack/protobuf/t;->g(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/t;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_2
    :goto_0
    return-object v0
.end method

.method public getFieldBuilder(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "getFieldBuilder() called on a dynamic message type."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public getOneofFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/t$b;->u(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->c:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    aget-object p1, v0, p1

    .line 11
    .line 12
    return-object p1
.end method

.method public getRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/t$b;->t(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/e0;->w(Lcom/explorestack/protobuf/e0$c;I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public getRepeatedFieldBuilder(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p2, "getRepeatedFieldBuilder() called on a dynamic message type."

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public getRepeatedFieldCount(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/t$b;->t(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/e0;->x(Lcom/explorestack/protobuf/e0$c;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public getUnknownFields()Lcom/explorestack/protobuf/j2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->d:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/t$b;->t(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/e0;->A(Lcom/explorestack/protobuf/e0$c;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public hasOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/t$b;->u(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->c:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    aget-object p1, v0, p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public i()Lcom/explorestack/protobuf/t$b;
    .locals 5

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/t$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/t$b;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/t$b;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/e0;->I(Lcom/explorestack/protobuf/e0;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/explorestack/protobuf/t$b;->d:Lcom/explorestack/protobuf/j2;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/t$b;->o(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/t$b;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/explorestack/protobuf/t$b;->c:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 21
    .line 22
    iget-object v2, v0, Lcom/explorestack/protobuf/t$b;->c:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 23
    .line 24
    array-length v3, v1

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public isInitialized()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/t;->i(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/e0;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public m()Lcom/explorestack/protobuf/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/t;->g(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/t$b;->n(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/t$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/t$b;->n(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/t$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/t$b;->o(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/t$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/t$b;->o(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/t$b;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/t$b;
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/t;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    check-cast p1, Lcom/explorestack/protobuf/t;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/explorestack/protobuf/t;->b(Lcom/explorestack/protobuf/t;)Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/explorestack/protobuf/t$b;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 12
    .line 13
    if-ne v0, v1, :cond_3

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/explorestack/protobuf/t$b;->k()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/explorestack/protobuf/t;->d(Lcom/explorestack/protobuf/t;)Lcom/explorestack/protobuf/e0;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/e0;->I(Lcom/explorestack/protobuf/e0;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/explorestack/protobuf/t;->e(Lcom/explorestack/protobuf/t;)Lcom/explorestack/protobuf/j2;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/t$b;->o(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/t$b;

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/t$b;->c:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 36
    .line 37
    array-length v2, v1

    .line 38
    if-ge v0, v2, :cond_2

    .line 39
    .line 40
    aget-object v2, v1, v0

    .line 41
    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    invoke-static {p1}, Lcom/explorestack/protobuf/t;->f(Lcom/explorestack/protobuf/t;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    aget-object v2, v2, v0

    .line 49
    .line 50
    aput-object v2, v1, v0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-static {p1}, Lcom/explorestack/protobuf/t;->f(Lcom/explorestack/protobuf/t;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    aget-object v1, v1, v0

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    iget-object v1, p0, Lcom/explorestack/protobuf/t$b;->c:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 62
    .line 63
    aget-object v1, v1, v0

    .line 64
    .line 65
    invoke-static {p1}, Lcom/explorestack/protobuf/t;->f(Lcom/explorestack/protobuf/t;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    aget-object v2, v2, v0

    .line 70
    .line 71
    if-eq v1, v2, :cond_1

    .line 72
    .line 73
    iget-object v1, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/explorestack/protobuf/t$b;->c:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 76
    .line 77
    aget-object v2, v2, v0

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/e0;->i(Lcom/explorestack/protobuf/e0$c;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/explorestack/protobuf/t$b;->c:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/explorestack/protobuf/t;->f(Lcom/explorestack/protobuf/t;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    aget-object v2, v2, v0

    .line 89
    .line 90
    aput-object v2, v1, v0

    .line 91
    .line 92
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    return-object p0

    .line 96
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    const-string v0, "mergeFrom(Message) can only merge messages of the same type."

    .line 99
    .line 100
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_4
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Lcom/explorestack/protobuf/t$b;

    .line 109
    .line 110
    return-object p1
.end method

.method public bridge synthetic newBuilderForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/t$b;->p(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/t$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public o(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/t$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->d:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/j2;->h(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/j2$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2$b;->t(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/j2$b;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/explorestack/protobuf/t$b;->d:Lcom/explorestack/protobuf/j2;

    .line 16
    .line 17
    return-object p0
.end method

.method public p(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/t$b;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/t$b;->t(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/explorestack/protobuf/t$b;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Lcom/explorestack/protobuf/t$b;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v0, "newBuilderForField is only valid for fields with message type."

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public q(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/t$b;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/t$b;->t(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/explorestack/protobuf/t$b;->k()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/t$b;->j(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getIndex()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v1, p0, Lcom/explorestack/protobuf/t$b;->c:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 29
    .line 30
    aget-object v1, v1, v0

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    if-eq v1, p1, :cond_1

    .line 35
    .line 36
    iget-object v2, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/e0;->i(Lcom/explorestack/protobuf/e0$c;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/t$b;->c:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 42
    .line 43
    aput-object p1, v1, v0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getSyntax()Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    .line 55
    .line 56
    if-ne v0, v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 69
    .line 70
    if-eq v0, v1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    iget-object p2, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 83
    .line 84
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/e0;->i(Lcom/explorestack/protobuf/e0$c;)V

    .line 85
    .line 86
    .line 87
    return-object p0

    .line 88
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 89
    .line 90
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/e0;->N(Lcom/explorestack/protobuf/e0$c;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-object p0
.end method

.method public r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/t$b;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/t$b;->t(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/explorestack/protobuf/t$b;->k()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/explorestack/protobuf/t$b;->b:Lcom/explorestack/protobuf/e0;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/explorestack/protobuf/e0;->O(Lcom/explorestack/protobuf/e0$c;ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public s(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/t$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/t$b;->d:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/t$b;->q(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/t$b;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/t$b;->r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/t$b;

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
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/t$b;->s(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/t$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
