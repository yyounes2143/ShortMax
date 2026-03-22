.class Lcom/explorestack/protobuf/MessageReflection$b;
.super Ljava/lang/Object;
.source "MessageReflection.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageReflection$MergeTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/MessageReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/explorestack/protobuf/Message$Builder;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/Message$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/explorestack/protobuf/MessageReflection$b;->a:Lcom/explorestack/protobuf/Message$Builder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/explorestack/protobuf/w;Lcom/explorestack/protobuf/Descriptors$Descriptor;I)Lcom/explorestack/protobuf/w$b;
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/w;->f(Lcom/explorestack/protobuf/Descriptors$Descriptor;I)Lcom/explorestack/protobuf/w$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$b;->a:Lcom/explorestack/protobuf/Message$Builder;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/Message$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public b()Lcom/explorestack/protobuf/MessageReflection$MergeTarget$ContainerType;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/MessageReflection$MergeTarget$ContainerType;->MESSAGE:Lcom/explorestack/protobuf/MessageReflection$MergeTarget$ContainerType;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p4, p0, Lcom/explorestack/protobuf/MessageReflection$b;->a:Lcom/explorestack/protobuf/Message$Builder;

    .line 9
    .line 10
    invoke-interface {p4, p3}, Lcom/explorestack/protobuf/Message$Builder;->newBuilderForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    :goto_0
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageReflection$b;->i(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Lcom/explorestack/protobuf/Message;

    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    invoke-interface {p4, p3}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-interface {p4, p1, p2}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message$Builder;

    .line 32
    .line 33
    .line 34
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message$Builder;->buildPartial()Lcom/explorestack/protobuf/Message;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method public d(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p4, p0, Lcom/explorestack/protobuf/MessageReflection$b;->a:Lcom/explorestack/protobuf/Message$Builder;

    .line 9
    .line 10
    invoke-interface {p4, p3}, Lcom/explorestack/protobuf/Message$Builder;->newBuilderForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    :goto_0
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageReflection$b;->i(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Lcom/explorestack/protobuf/Message;

    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    invoke-interface {p4, p3}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p1, p4, p2}, Lcom/explorestack/protobuf/n;->B(Lcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/y;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message$Builder;->buildPartial()Lcom/explorestack/protobuf/Message;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method public e(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p2}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/explorestack/protobuf/MessageReflection$b;->a:Lcom/explorestack/protobuf/Message$Builder;

    .line 9
    .line 10
    invoke-interface {p2, p1}, Lcom/explorestack/protobuf/Message$Builder;->newBuilderForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :goto_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/MessageReflection$b;->i(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/explorestack/protobuf/Message;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-interface {p2, p1}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    .line 29
    .line 30
    .line 31
    :cond_1
    new-instance p1, Lcom/explorestack/protobuf/MessageReflection$b;

    .line 32
    .line 33
    invoke-direct {p1, p2}, Lcom/explorestack/protobuf/MessageReflection$b;-><init>(Lcom/explorestack/protobuf/Message$Builder;)V

    .line 34
    .line 35
    .line 36
    return-object p1
.end method

.method public f(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p4, p0, Lcom/explorestack/protobuf/MessageReflection$b;->a:Lcom/explorestack/protobuf/Message$Builder;

    .line 9
    .line 10
    invoke-interface {p4, p3}, Lcom/explorestack/protobuf/Message$Builder;->newBuilderForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    :goto_0
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageReflection$b;->i(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/explorestack/protobuf/Message;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {p4, v0}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    invoke-virtual {p1, p3, p4, p2}, Lcom/explorestack/protobuf/n;->x(ILcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/y;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message$Builder;->buildPartial()Lcom/explorestack/protobuf/Message;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public finish()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$b;->a:Lcom/explorestack/protobuf/Message$Builder;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/explorestack/protobuf/Message$Builder;->buildPartial()Lcom/explorestack/protobuf/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public g(Lcom/explorestack/protobuf/w;Ljava/lang/String;)Lcom/explorestack/protobuf/w$b;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/w;->e(Ljava/lang/String;)Lcom/explorestack/protobuf/w$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$b;->a:Lcom/explorestack/protobuf/Message$Builder;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/explorestack/protobuf/Message$Builder;->getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getOneofFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$b;->a:Lcom/explorestack/protobuf/Message$Builder;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/MessageOrBuilder;->getOneofFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public h(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/WireFormat$Utf8Validation;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->needsUtf8Check()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/explorestack/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/explorestack/protobuf/WireFormat$Utf8Validation;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    .line 11
    .line 12
    .line 13
    sget-object p1, Lcom/explorestack/protobuf/WireFormat$Utf8Validation;->LOOSE:Lcom/explorestack/protobuf/WireFormat$Utf8Validation;

    .line 14
    .line 15
    return-object p1
.end method

.method public hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$b;->a:Lcom/explorestack/protobuf/Message$Builder;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/MessageOrBuilder;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public hasOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$b;->a:Lcom/explorestack/protobuf/Message$Builder;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/MessageOrBuilder;->hasOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public i(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$b;->a:Lcom/explorestack/protobuf/Message$Builder;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/MessageOrBuilder;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/MessageReflection$MergeTarget;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$b;->a:Lcom/explorestack/protobuf/Message$Builder;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/Message$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
