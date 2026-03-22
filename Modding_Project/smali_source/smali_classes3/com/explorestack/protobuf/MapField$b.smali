.class Lcom/explorestack/protobuf/MapField$b;
.super Ljava/lang/Object;
.source "MapField.java"

# interfaces
.implements Lcom/explorestack/protobuf/MapField$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/MapField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/MapField$a<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/explorestack/protobuf/s0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/s0<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/s0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/s0<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/explorestack/protobuf/MapField$b;->a:Lcom/explorestack/protobuf/s0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/explorestack/protobuf/Message;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$b;->a:Lcom/explorestack/protobuf/s0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/s0;->n()Lcom/explorestack/protobuf/s0$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/s0$b;->o(Ljava/lang/Object;)Lcom/explorestack/protobuf/s0$b;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/s0$b;->r(Ljava/lang/Object;)Lcom/explorestack/protobuf/s0$b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/explorestack/protobuf/s0$b;->c()Lcom/explorestack/protobuf/s0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public b(Lcom/explorestack/protobuf/Message;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Message;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/s0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/s0;->h()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/s0;->j()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public c()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/MapField$b;->a:Lcom/explorestack/protobuf/s0;

    .line 2
    .line 3
    return-object v0
.end method
