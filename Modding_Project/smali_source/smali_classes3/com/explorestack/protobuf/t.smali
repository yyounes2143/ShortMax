.class public final Lcom/explorestack/protobuf/t;
.super Lcom/explorestack/protobuf/AbstractMessage;
.source "DynamicMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/t$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private final b:Lcom/explorestack/protobuf/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/e0<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

.field private final d:Lcom/explorestack/protobuf/j2;

.field private e:I


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/e0;[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/j2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            "Lcom/explorestack/protobuf/e0<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;[",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Lcom/explorestack/protobuf/j2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/t;->e:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/explorestack/protobuf/t;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/explorestack/protobuf/t;->b:Lcom/explorestack/protobuf/e0;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/explorestack/protobuf/t;->c:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/explorestack/protobuf/t;->d:Lcom/explorestack/protobuf/j2;

    .line 14
    .line 15
    return-void
.end method

.method static synthetic b(Lcom/explorestack/protobuf/t;)Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/t;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/explorestack/protobuf/t;)Lcom/explorestack/protobuf/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/t;->b:Lcom/explorestack/protobuf/e0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/explorestack/protobuf/t;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/t;->d:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/explorestack/protobuf/t;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/t;->c:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static g(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/t;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$DescriptorProto;->W()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-array v0, v0, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 10
    .line 11
    new-instance v1, Lcom/explorestack/protobuf/t;

    .line 12
    .line 13
    invoke-static {}, Lcom/explorestack/protobuf/e0;->r()Lcom/explorestack/protobuf/e0;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {}, Lcom/explorestack/protobuf/j2;->c()Lcom/explorestack/protobuf/j2;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-direct {v1, p0, v2, v0, v3}, Lcom/explorestack/protobuf/t;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/e0;[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/j2;)V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method

.method static i(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/e0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            "Lcom/explorestack/protobuf/e0<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/e0;->A(Lcom/explorestack/protobuf/e0$c;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/e0;->D()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public static j(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/t$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/t$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/t$b;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/t$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private q(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/t;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

.method private r(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/t;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/t;->b:Lcom/explorestack/protobuf/e0;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t;->h()Lcom/explorestack/protobuf/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t;->h()Lcom/explorestack/protobuf/t;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/t;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/t;->q(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/explorestack/protobuf/t;->b:Lcom/explorestack/protobuf/e0;

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

.method public getOneofFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/t;->r(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/explorestack/protobuf/t;->c:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

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

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/t;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/t$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/t$a;-><init>(Lcom/explorestack/protobuf/t;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/t;->q(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/explorestack/protobuf/t;->b:Lcom/explorestack/protobuf/e0;

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

.method public getRepeatedFieldCount(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/t;->q(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/explorestack/protobuf/t;->b:Lcom/explorestack/protobuf/e0;

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

.method public getSerializedSize()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/t;->e:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/t;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->z()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/explorestack/protobuf/t;->b:Lcom/explorestack/protobuf/e0;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/explorestack/protobuf/e0;->u()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/explorestack/protobuf/t;->d:Lcom/explorestack/protobuf/j2;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->f()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    :goto_0
    add-int/2addr v0, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/t;->b:Lcom/explorestack/protobuf/e0;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/explorestack/protobuf/e0;->y()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v1, p0, Lcom/explorestack/protobuf/t;->d:Lcom/explorestack/protobuf/j2;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    goto :goto_0

    .line 46
    :goto_1
    iput v0, p0, Lcom/explorestack/protobuf/t;->e:I

    .line 47
    .line 48
    return v0
.end method

.method public getUnknownFields()Lcom/explorestack/protobuf/j2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/t;->d:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Lcom/explorestack/protobuf/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/t;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

.method public hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/t;->q(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/explorestack/protobuf/t;->b:Lcom/explorestack/protobuf/e0;

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
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/t;->r(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/explorestack/protobuf/t;->c:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

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

.method public isInitialized()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/t;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/t;->b:Lcom/explorestack/protobuf/e0;

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

.method public k()Lcom/explorestack/protobuf/t$b;
    .locals 3

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/t$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/t;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/t$b;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/t$a;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public n()Lcom/explorestack/protobuf/t$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t;->k()Lcom/explorestack/protobuf/t$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/t$b;->n(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/t$b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t;->k()Lcom/explorestack/protobuf/t$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t;->k()Lcom/explorestack/protobuf/t$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t;->n()Lcom/explorestack/protobuf/t$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/t;->n()Lcom/explorestack/protobuf/t$b;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/t;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MessageOptions;->z()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/explorestack/protobuf/t;->b:Lcom/explorestack/protobuf/e0;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/e0;->T(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/explorestack/protobuf/t;->d:Lcom/explorestack/protobuf/j2;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->l(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/t;->b:Lcom/explorestack/protobuf/e0;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/e0;->V(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/explorestack/protobuf/t;->d:Lcom/explorestack/protobuf/j2;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method
