.class Lcom/explorestack/protobuf/MessageReflection$c;
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
    name = "c"
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
.method constructor <init>(Lcom/explorestack/protobuf/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/e0<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/explorestack/protobuf/MessageReflection$c;->a:Lcom/explorestack/protobuf/e0;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$c;->a:Lcom/explorestack/protobuf/e0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/e0;->g(Lcom/explorestack/protobuf/e0$c;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public b()Lcom/explorestack/protobuf/MessageReflection$MergeTarget$ContainerType;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/MessageReflection$MergeTarget$ContainerType;->EXTENSION_SET:Lcom/explorestack/protobuf/MessageReflection$MergeTarget$ContainerType;

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
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageReflection$c;->i(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    check-cast p3, Lcom/explorestack/protobuf/Message;

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    invoke-interface {p4, p3}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-interface {p4, p1, p2}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message$Builder;

    .line 23
    .line 24
    .line 25
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message$Builder;->buildPartial()Lcom/explorestack/protobuf/Message;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
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
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageReflection$c;->i(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    check-cast p3, Lcom/explorestack/protobuf/Message;

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    invoke-interface {p4, p3}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1, p4, p2}, Lcom/explorestack/protobuf/n;->B(Lcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/y;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message$Builder;->buildPartial()Lcom/explorestack/protobuf/Message;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public e(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/MessageReflection$MergeTarget;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p2, "newMergeTargetForField() called on FieldSet object"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public f(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Lcom/explorestack/protobuf/Message;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p3}, Lcom/explorestack/protobuf/MessageReflection$c;->i(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/explorestack/protobuf/Message;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p4, v0}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    .line 23
    .line 24
    .line 25
    move-result p3

    .line 26
    invoke-virtual {p1, p3, p4, p2}, Lcom/explorestack/protobuf/n;->x(ILcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/y;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p4}, Lcom/explorestack/protobuf/Message$Builder;->buildPartial()Lcom/explorestack/protobuf/Message;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public finish()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "finish() called on FieldSet object"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
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
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "getDescriptorForType() called on FieldSet object"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public getOneofFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public h(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/WireFormat$Utf8Validation;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->needsUtf8Check()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/explorestack/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/explorestack/protobuf/WireFormat$Utf8Validation;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    sget-object p1, Lcom/explorestack/protobuf/WireFormat$Utf8Validation;->LOOSE:Lcom/explorestack/protobuf/WireFormat$Utf8Validation;

    .line 11
    .line 12
    return-object p1
.end method

.method public hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$c;->a:Lcom/explorestack/protobuf/e0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/e0;->A(Lcom/explorestack/protobuf/e0$c;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public hasOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public i(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$c;->a:Lcom/explorestack/protobuf/e0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/e0;->t(Lcom/explorestack/protobuf/e0$c;)Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/MessageReflection$c;->a:Lcom/explorestack/protobuf/e0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/e0;->N(Lcom/explorestack/protobuf/e0$c;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
