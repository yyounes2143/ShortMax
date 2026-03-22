.class public abstract Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "GeneratedMessageV3.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessageV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;",
        ">",
        "Lcom/explorestack/protobuf/GeneratedMessageV3;",
        "Lcom/explorestack/protobuf/MessageOrBuilder;"
    }
.end annotation


# instance fields
.field private final a:Lcom/explorestack/protobuf/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/e0<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    .line 2
    invoke-static {}, Lcom/explorestack/protobuf/e0;->L()Lcom/explorestack/protobuf/e0;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/explorestack/protobuf/e0;

    return-void
.end method

.method protected constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$d<",
            "TMessageType;*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    .line 4
    invoke-static {p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;->a(Lcom/explorestack/protobuf/GeneratedMessageV3$d;)Lcom/explorestack/protobuf/e0;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/explorestack/protobuf/e0;

    return-void
.end method

.method static synthetic b(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;)Lcom/explorestack/protobuf/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/explorestack/protobuf/e0;

    .line 2
    .line 3
    return-object p0
.end method

.method private h(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v0, "FieldDescriptor does not match message type."

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method


# virtual methods
.method protected d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/explorestack/protobuf/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/e0;->D()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/explorestack/protobuf/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/e0;->y()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected f()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/explorestack/protobuf/e0;

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

.method protected g()Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage<",
            "TMessageType;>.a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage$a;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;ZLcom/explorestack/protobuf/GeneratedMessageV3$a;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 2
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
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->access$800(Lcom/explorestack/protobuf/GeneratedMessageV3;Z)Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->f()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v1

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

.method public getAllFieldsRaw()Ljava/util/Map;
    .locals 2
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
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->access$800(Lcom/explorestack/protobuf/GeneratedMessageV3;Z)Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->f()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v1

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

.method public getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->h(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/explorestack/protobuf/e0;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/e0;->t(Lcom/explorestack/protobuf/e0$c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 34
    .line 35
    if-ne v0, v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/explorestack/protobuf/t;->g(Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/t;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_2
    return-object v0

    .line 52
    :cond_3
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method

.method public getRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->h(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/explorestack/protobuf/e0;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/e0;->w(Lcom/explorestack/protobuf/e0$c;I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->getRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->h(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/explorestack/protobuf/e0;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/e0;->x(Lcom/explorestack/protobuf/e0$c;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->getRepeatedFieldCount(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->h(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/explorestack/protobuf/e0;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/e0;->A(Lcom/explorestack/protobuf/e0$c;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public isInitialized()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->isInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->d()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method protected makeExtensionsImmutable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/explorestack/protobuf/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/e0;->H()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->N()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    move-object v1, p2

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    new-instance v4, Lcom/explorestack/protobuf/MessageReflection$c;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->a:Lcom/explorestack/protobuf/e0;

    .line 16
    .line 17
    invoke-direct {v4, p2}, Lcom/explorestack/protobuf/MessageReflection$c;-><init>(Lcom/explorestack/protobuf/e0;)V

    .line 18
    .line 19
    .line 20
    move-object v0, p1

    .line 21
    move-object v2, p3

    .line 22
    move v5, p4

    .line 23
    invoke-static/range {v0 .. v5}, Lcom/explorestack/protobuf/MessageReflection;->g(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/MessageReflection$MergeTarget;I)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method protected parseUnknownFieldProto3(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
