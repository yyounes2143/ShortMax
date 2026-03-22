.class Lcom/explorestack/protobuf/u1$c;
.super Lcom/explorestack/protobuf/u1$g;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/u1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/u1<",
        "TK;TV;>.g;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/explorestack/protobuf/u1;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/u1;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/u1$c;->b:Lcom/explorestack/protobuf/u1;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/explorestack/protobuf/u1$g;-><init>(Lcom/explorestack/protobuf/u1;Lcom/explorestack/protobuf/u1$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/u1;Lcom/explorestack/protobuf/u1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/u1$c;-><init>(Lcom/explorestack/protobuf/u1;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/u1$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/explorestack/protobuf/u1$c;->b:Lcom/explorestack/protobuf/u1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/u1$b;-><init>(Lcom/explorestack/protobuf/u1;Lcom/explorestack/protobuf/u1$a;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
