.class public final Lcom/bytedance/applog/aggregation/IAggregation$Companion;
.super Ljava/lang/Object;
.source "Defines.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/applog/aggregation/IAggregation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/bytedance/applog/aggregation/IAggregation$Companion;

.field public static final TYPE_AVG:I = 0x4

.field public static final TYPE_COUNT:I = 0x1

.field public static final TYPE_INTERVAL:I = 0x10

.field public static final TYPE_MERGE:I = 0x8

.field public static final TYPE_SUM:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/applog/aggregation/IAggregation$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/applog/aggregation/IAggregation$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/applog/aggregation/IAggregation$Companion;->$$INSTANCE:Lcom/bytedance/applog/aggregation/IAggregation$Companion;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic newInstance$default(Lcom/bytedance/applog/aggregation/IAggregation$Companion;Lcom/bytedance/applog/aggregation/IMetricsCache;Landroid/os/Looper;ILjava/lang/Object;)Lcom/bytedance/applog/aggregation/IAggregation;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/applog/aggregation/IAggregation$Companion;->newInstance(Lcom/bytedance/applog/aggregation/IMetricsCache;Landroid/os/Looper;)Lcom/bytedance/applog/aggregation/IAggregation;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final newInstance(Lcom/bytedance/applog/aggregation/IMetricsCache;)Lcom/bytedance/applog/aggregation/IAggregation;
    .locals 2
    .param p1    # Lcom/bytedance/applog/aggregation/IMetricsCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/bytedance/applog/aggregation/IAggregation$Companion;->newInstance$default(Lcom/bytedance/applog/aggregation/IAggregation$Companion;Lcom/bytedance/applog/aggregation/IMetricsCache;Landroid/os/Looper;ILjava/lang/Object;)Lcom/bytedance/applog/aggregation/IAggregation;

    move-result-object p1

    return-object p1
.end method

.method public final newInstance(Lcom/bytedance/applog/aggregation/IMetricsCache;Landroid/os/Looper;)Lcom/bytedance/applog/aggregation/IAggregation;
    .locals 1
    .param p1    # Lcom/bytedance/applog/aggregation/IMetricsCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/bytedance/applog/aggregation/AggregationImpl;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/applog/aggregation/AggregationImpl;-><init>(Lcom/bytedance/applog/aggregation/IMetricsCache;Landroid/os/Looper;)V

    return-object v0
.end method
