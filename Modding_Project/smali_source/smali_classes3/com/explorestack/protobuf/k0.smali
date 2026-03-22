.class public Lcom/explorestack/protobuf/k0;
.super Lcom/explorestack/protobuf/l0;
.source "LazyField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/k0$c;,
        Lcom/explorestack/protobuf/k0$b;
    }
.end annotation


# instance fields
.field private final f:Lcom/explorestack/protobuf/MessageLite;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/explorestack/protobuf/l0;-><init>(Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/explorestack/protobuf/k0;->f:Lcom/explorestack/protobuf/MessageLite;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/k0;->g()Lcom/explorestack/protobuf/MessageLite;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public g()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/k0;->f:Lcom/explorestack/protobuf/MessageLite;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/l0;->d(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/MessageLite;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/k0;->g()Lcom/explorestack/protobuf/MessageLite;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/k0;->g()Lcom/explorestack/protobuf/MessageLite;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
