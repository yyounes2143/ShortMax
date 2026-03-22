.class public abstract Lcom/explorestack/protobuf/GeneratedMessageLite$b;
.super Lcom/explorestack/protobuf/GeneratedMessageLite;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/explorestack/protobuf/GeneratedMessageLite$b<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/explorestack/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected d:Lcom/explorestack/protobuf/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/e0<",
            "Lcom/explorestack/protobuf/GeneratedMessageLite$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/explorestack/protobuf/e0;->r()Lcom/explorestack/protobuf/e0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$b;->d:Lcom/explorestack/protobuf/e0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->h()Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->k()Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method q()Lcom/explorestack/protobuf/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/e0<",
            "Lcom/explorestack/protobuf/GeneratedMessageLite$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$b;->d:Lcom/explorestack/protobuf/e0;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$b;->d:Lcom/explorestack/protobuf/e0;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/explorestack/protobuf/e0;->j()Lcom/explorestack/protobuf/e0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$b;->d:Lcom/explorestack/protobuf/e0;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$b;->d:Lcom/explorestack/protobuf/e0;

    .line 18
    .line 19
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->n()Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
