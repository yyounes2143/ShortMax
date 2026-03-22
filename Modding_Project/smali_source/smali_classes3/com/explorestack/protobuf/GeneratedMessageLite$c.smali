.class final Lcom/explorestack/protobuf/GeneratedMessageLite$c;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/explorestack/protobuf/e0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/e0$c<",
        "Lcom/explorestack/protobuf/GeneratedMessageLite$c;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/explorestack/protobuf/i0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/i0$d<",
            "*>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Lcom/explorestack/protobuf/WireFormat$FieldType;

.field final d:Z

.field final e:Z


# virtual methods
.method public a(Lcom/explorestack/protobuf/GeneratedMessageLite$c;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$c;->b:I

    .line 2
    .line 3
    iget p1, p1, Lcom/explorestack/protobuf/GeneratedMessageLite$c;->b:I

    .line 4
    .line 5
    sub-int/2addr v0, p1

    .line 6
    return v0
.end method

.method public b()Lcom/explorestack/protobuf/i0$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/i0$d<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$c;->a:Lcom/explorestack/protobuf/i0$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageLite$c;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$c;->a(Lcom/explorestack/protobuf/GeneratedMessageLite$c;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getLiteJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$c;->c:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/WireFormat$FieldType;->getJavaType()Lcom/explorestack/protobuf/WireFormat$JavaType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLiteType()Lcom/explorestack/protobuf/WireFormat$FieldType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$c;->c:Lcom/explorestack/protobuf/WireFormat$FieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$c;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public internalMergeFrom(Lcom/explorestack/protobuf/MessageLite$Builder;Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    .line 2
    .line 3
    check-cast p2, Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->l(Lcom/explorestack/protobuf/GeneratedMessageLite;)Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public isPacked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$c;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRepeated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$c;->d:Z

    .line 2
    .line 3
    return v0
.end method
