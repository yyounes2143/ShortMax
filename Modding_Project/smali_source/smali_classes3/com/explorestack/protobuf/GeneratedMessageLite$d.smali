.class public Lcom/explorestack/protobuf/GeneratedMessageLite$d;
.super Lcom/explorestack/protobuf/v;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/explorestack/protobuf/MessageLite;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/explorestack/protobuf/v<",
        "TContainingType;TType;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/explorestack/protobuf/MessageLite;

.field final b:Lcom/explorestack/protobuf/GeneratedMessageLite$c;


# virtual methods
.method public b()Lcom/explorestack/protobuf/WireFormat$FieldType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$d;->b:Lcom/explorestack/protobuf/GeneratedMessageLite$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/GeneratedMessageLite$c;->getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$d;->a:Lcom/explorestack/protobuf/MessageLite;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$d;->b:Lcom/explorestack/protobuf/GeneratedMessageLite$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/GeneratedMessageLite$c;->getNumber()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$d;->b:Lcom/explorestack/protobuf/GeneratedMessageLite$c;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/explorestack/protobuf/GeneratedMessageLite$c;->d:Z

    .line 4
    .line 5
    return v0
.end method
