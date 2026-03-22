.class final Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$get$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UniversalRequestDataSource.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;->get(Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lat/n<",
        "Lkt/c<",
        "-",
        "Lcom/unity3d/ads/datastore/UniversalRequestStoreOuterClass$UniversalRequestStore;",
        ">;",
        "Ljava/lang/Throwable;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.ads.core.data.datasource.UniversalRequestDataSource$get$2"
    f = "UniversalRequestDataSource.kt"
    l = {
        0x10
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lrs/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$get$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkt/c;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Lrs/c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$get$2;->invoke(Lkt/c;Ljava/lang/Throwable;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkt/c;Ljava/lang/Throwable;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkt/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkt/c<",
            "-",
            "Lcom/unity3d/ads/datastore/UniversalRequestStoreOuterClass$UniversalRequestStore;",
            ">;",
            "Ljava/lang/Throwable;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    new-instance v0, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$get$2;

    invoke-direct {v0, p3}, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$get$2;-><init>(Lrs/c;)V

    iput-object p1, v0, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$get$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$get$2;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$get$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$get$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$get$2;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lkt/c;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$get$2;->L$1:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Ljava/lang/Throwable;

    .line 34
    .line 35
    instance-of v3, v1, Landroidx/datastore/core/CorruptionException;

    .line 36
    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    invoke-static {}, Lcom/unity3d/ads/datastore/UniversalRequestStoreOuterClass$UniversalRequestStore;->getDefaultInstance()Lcom/unity3d/ads/datastore/UniversalRequestStoreOuterClass$UniversalRequestStore;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v3, "getDefaultInstance()"

    .line 44
    .line 45
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    iput-object v3, p0, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$get$2;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    iput v2, p0, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource$get$2;->label:I

    .line 52
    .line 53
    invoke-interface {p1, v1, p0}, Lkt/c;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-ne p1, v0, :cond_2

    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p1

    .line 63
    :cond_3
    throw v1
.end method
