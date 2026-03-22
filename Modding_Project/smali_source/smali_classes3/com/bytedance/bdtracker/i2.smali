.class public final Lcom/bytedance/bdtracker/i2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final synthetic c:[Lkotlin/reflect/KProperty;


# instance fields
.field public final a:Lms/i;

.field public final b:Lms/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-class v1, Lcom/bytedance/bdtracker/i2;

    .line 4
    .line 5
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "aggregation"

    .line 10
    .line 11
    const-string v4, "getAggregation()Lcom/bytedance/applog/aggregation/IAggregation;"

    .line 12
    .line 13
    invoke-direct {v0, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 21
    .line 22
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v3, "trackMap"

    .line 27
    .line 28
    const-string v4, "getTrackMap()Ljava/util/Map;"

    .line 29
    .line 30
    invoke-direct {v2, v1, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x2

    .line 38
    new-array v2, v2, [Lkotlin/reflect/KProperty;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    aput-object v0, v2, v3

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    aput-object v1, v2, v0

    .line 45
    .line 46
    sput-object v2, Lcom/bytedance/bdtracker/i2;->c:[Lkotlin/reflect/KProperty;

    .line 47
    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/os/Looper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "looper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "context"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/bytedance/bdtracker/i2$a;

    .line 20
    .line 21
    invoke-direct {v0, p2, p3, p1}, Lcom/bytedance/bdtracker/i2$a;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/bytedance/bdtracker/i2;->a:Lms/i;

    .line 29
    .line 30
    sget-object p1, Lcom/bytedance/bdtracker/i2$c;->a:Lcom/bytedance/bdtracker/i2$c;

    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/bytedance/bdtracker/i2;->b:Lms/i;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final a(Lcom/bytedance/bdtracker/p2;)Lcom/bytedance/applog/aggregation/IMetricsTracker;
    .locals 7
    .param p1    # Lcom/bytedance/bdtracker/p2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/bdtracker/i2;->b:Lms/i;

    sget-object v1, Lcom/bytedance/bdtracker/i2;->c:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/bytedance/bdtracker/o2;->a()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/aggregation/IMetricsTracker;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/i2;->a:Lms/i;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/aggregation/IAggregation;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "data::class.java.simpleName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/bytedance/bdtracker/o2;->c()I

    move-result v4

    invoke-interface {p1}, Lcom/bytedance/bdtracker/o2;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {p1}, Lcom/bytedance/bdtracker/o2;->f()Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/bytedance/applog/aggregation/IAggregation;->newMetricsTracker(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Lcom/bytedance/applog/aggregation/IMetricsTracker;

    move-result-object v0

    .line 7
    iget-object v3, p0, Lcom/bytedance/bdtracker/i2;->b:Lms/i;

    aget-object v1, v1, v2

    invoke-interface {v3}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/bytedance/bdtracker/o2;->a()Ljava/util/List;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public final a(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/bytedance/applog/aggregation/Metrics;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/i2;->a:Lms/i;

    sget-object v1, Lcom/bytedance/bdtracker/i2;->c:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/applog/aggregation/IAggregation;

    .line 2
    new-instance v1, Lcom/bytedance/bdtracker/i2$b;

    invoke-direct {v1, p1}, Lcom/bytedance/bdtracker/i2$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1}, Lcom/bytedance/applog/aggregation/IAggregation;->flush(Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;)V

    return-void
.end method
