.class Lcom/explorestack/protobuf/s0$c$a;
.super Lcom/explorestack/protobuf/b;
.source "MapEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/s0$c;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/s0;Lcom/explorestack/protobuf/WireFormat$FieldType;Lcom/explorestack/protobuf/WireFormat$FieldType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/b<",
        "Lcom/explorestack/protobuf/s0<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/protobuf/s0$c;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/s0$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/s0$c$a;->a:Lcom/explorestack/protobuf/s0$c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/s0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/n;",
            "Lcom/explorestack/protobuf/y;",
            ")",
            "Lcom/explorestack/protobuf/s0<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/s0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/s0$c$a;->a:Lcom/explorestack/protobuf/s0$c;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, p1, p2, v2}, Lcom/explorestack/protobuf/s0;-><init>(Lcom/explorestack/protobuf/s0$c;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lcom/explorestack/protobuf/s0$a;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/s0$c$a;->a(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/s0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
