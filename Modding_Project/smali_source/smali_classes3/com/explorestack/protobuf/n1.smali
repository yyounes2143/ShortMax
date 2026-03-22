.class final Lcom/explorestack/protobuf/n1;
.super Ljava/lang/Object;
.source "RawMessageInfo.java"

# interfaces
.implements Lcom/explorestack/protobuf/y0;


# instance fields
.field private final a:Lcom/explorestack/protobuf/MessageLite;

.field private final b:Ljava/lang/String;

.field private final c:[Ljava/lang/Object;

.field private final d:I


# virtual methods
.method a()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/n1;->c:[Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/n1;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefaultInstance()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/n1;->a:Lcom/explorestack/protobuf/MessageLite;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSyntax()Lcom/explorestack/protobuf/ProtoSyntax;
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/n1;->d:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/explorestack/protobuf/ProtoSyntax;->PROTO2:Lcom/explorestack/protobuf/ProtoSyntax;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/explorestack/protobuf/ProtoSyntax;->PROTO3:Lcom/explorestack/protobuf/ProtoSyntax;

    .line 11
    .line 12
    :goto_0
    return-object v0
.end method

.method public isMessageSetWireFormat()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/n1;->d:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method
