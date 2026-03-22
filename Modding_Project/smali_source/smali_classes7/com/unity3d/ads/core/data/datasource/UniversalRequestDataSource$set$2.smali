.class final Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$set$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UniversalRequestDataSource.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;->set(Ljava/lang/String;Lcom/google/protobuf/ByteString;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/unity3d/ads/datastore/UniversalRequestStoreOuterClass$UniversalRequestStore;",
        "Lrs/c<",
        "-",
        "Lcom/unity3d/ads/datastore/UniversalRequestStoreOuterClass$UniversalRequestStore;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.ads.core.data.datasource.UniversalRequestDataSource$set$2"
    f = "UniversalRequestDataSource.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $data:Lcom/google/protobuf/ByteString;

.field final synthetic $key:Ljava/lang/String;

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/protobuf/ByteString;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ByteString;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$set$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$set$2;->$key:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$set$2;->$data:Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$set$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$set$2;->$key:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$set$2;->$data:Lcom/google/protobuf/ByteString;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$set$2;-><init>(Ljava/lang/String;Lcom/google/protobuf/ByteString;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$set$2;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final invoke(Lcom/unity3d/ads/datastore/UniversalRequestStoreOuterClass$UniversalRequestStore;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/unity3d/ads/datastore/UniversalRequestStoreOuterClass$UniversalRequestStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/datastore/UniversalRequestStoreOuterClass$UniversalRequestStore;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/datastore/UniversalRequestStoreOuterClass$UniversalRequestStore;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$set$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$set$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$set$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/unity3d/ads/datastore/UniversalRequestStoreOuterClass$UniversalRequestStore;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$set$2;->invoke(Lcom/unity3d/ads/datastore/UniversalRequestStoreOuterClass$UniversalRequestStore;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$set$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$set$2;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lcom/unity3d/ads/datastore/UniversalRequestStoreOuterClass$UniversalRequestStore;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/unity3d/ads/datastore/UniversalRequestStoreOuterClass$UniversalRequestStore$Builder;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$set$2;->$key:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$set$2;->$data:Lcom/google/protobuf/ByteString;

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/datastore/UniversalRequestStoreOuterClass$UniversalRequestStore$Builder;->putUniversalRequestMap(Ljava/lang/String;Lcom/google/protobuf/ByteString;)Lcom/unity3d/ads/datastore/UniversalRequestStoreOuterClass$UniversalRequestStore$Builder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "dataBuilder.build()"

    .line 33
    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method
