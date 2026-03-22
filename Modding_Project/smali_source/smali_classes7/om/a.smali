.class Lom/a;
.super Lom/h;
.source "DisplayAdObjectParams.java"


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/adcom/Ad;)V
    .locals 0
    .param p1    # Lcom/explorestack/protobuf/adcom/Ad;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lom/h;-><init>(Lcom/explorestack/protobuf/adcom/Ad;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getEventList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Llp/b;->g(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method k(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v1, "height"

    .line 10
    .line 11
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method l(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Llp/b;->b()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v1, "width"

    .line 10
    .line 11
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method
