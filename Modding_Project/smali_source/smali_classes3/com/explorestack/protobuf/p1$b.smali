.class Lcom/explorestack/protobuf/p1$b;
.super Ljava/util/AbstractList;
.source "RepeatedFieldBuilderV3.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/explorestack/protobuf/AbstractMessage;",
        "BType:",
        "Lcom/explorestack/protobuf/AbstractMessage$Builder;",
        "IType::",
        "Lcom/explorestack/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/util/AbstractList<",
        "TMType;>;",
        "Ljava/util/List<",
        "TMType;>;"
    }
.end annotation


# instance fields
.field a:Lcom/explorestack/protobuf/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/p1<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/p1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/p1<",
            "TMType;TBType;TIType;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/explorestack/protobuf/p1$b;->a:Lcom/explorestack/protobuf/p1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)Lcom/explorestack/protobuf/AbstractMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TMType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/p1$b;->a:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->n(I)Lcom/explorestack/protobuf/AbstractMessage;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method c()V
    .locals 1

    .line 1
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 6
    .line 7
    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/p1$b;->a(I)Lcom/explorestack/protobuf/AbstractMessage;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/p1$b;->a:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->m()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
