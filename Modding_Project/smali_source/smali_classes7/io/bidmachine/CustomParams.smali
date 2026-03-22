.class public final Lio/bidmachine/CustomParams;
.super Ljava/lang/Object;
.source "CustomParams.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final customMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/CustomParams;->customMap:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;D)Lio/bidmachine/CustomParams;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    .line 12
    iget-object p3, p0, Lio/bidmachine/CustomParams;->customMap:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addParam(Ljava/lang/String;F)Lio/bidmachine/CustomParams;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 10
    iget-object v0, p0, Lio/bidmachine/CustomParams;->customMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addParam(Ljava/lang/String;I)Lio/bidmachine/CustomParams;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 8
    iget-object v0, p0, Lio/bidmachine/CustomParams;->customMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/CustomParams;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/CustomParams;->customMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addParam(Ljava/lang/String;Z)Lio/bidmachine/CustomParams;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 14
    iget-object v0, p0, Lio/bidmachine/CustomParams;->customMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic addParam(Ljava/lang/String;D)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/CustomParams;->addParam(Ljava/lang/String;D)Lio/bidmachine/CustomParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addParam(Ljava/lang/String;F)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/CustomParams;->addParam(Ljava/lang/String;F)Lio/bidmachine/CustomParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addParam(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/CustomParams;->addParam(Ljava/lang/String;I)Lio/bidmachine/CustomParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/CustomParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/CustomParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addParam(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/CustomParams;->addParam(Ljava/lang/String;Z)Lio/bidmachine/CustomParams;

    move-result-object p1

    return-object p1
.end method

.method public addParams(Ljava/util/Map;)Lio/bidmachine/CustomParams;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/CustomParams;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/CustomParams;->customMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public bridge synthetic addParams(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/CustomParams;->addParams(Ljava/util/Map;)Lio/bidmachine/CustomParams;

    move-result-object p1

    return-object p1
.end method

.method public final fillStructBuilder(Lcom/explorestack/protobuf/Struct$Builder;)V
    .locals 1
    .param p1    # Lcom/explorestack/protobuf/Struct$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "builder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/CustomParams;->customMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lfr/e;->e(Lcom/explorestack/protobuf/Struct$Builder;Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
