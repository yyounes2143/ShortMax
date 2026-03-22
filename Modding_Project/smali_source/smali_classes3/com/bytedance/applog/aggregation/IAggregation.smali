.class public interface abstract Lcom/bytedance/applog/aggregation/IAggregation;
.super Ljava/lang/Object;
.source "Defines.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/aggregation/IAggregation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/applog/aggregation/IAggregation$Companion;

.field public static final TYPE_AVG:I = 0x4

.field public static final TYPE_COUNT:I = 0x1

.field public static final TYPE_INTERVAL:I = 0x10

.field public static final TYPE_MERGE:I = 0x8

.field public static final TYPE_SUM:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/applog/aggregation/IAggregation$Companion;->$$INSTANCE:Lcom/bytedance/applog/aggregation/IAggregation$Companion;

    .line 2
    .line 3
    sput-object v0, Lcom/bytedance/applog/aggregation/IAggregation;->Companion:Lcom/bytedance/applog/aggregation/IAggregation$Companion;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract flush(Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;)V
    .param p1    # Lcom/bytedance/applog/aggregation/IAggregationFlushCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract newMetricsTracker(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Lcom/bytedance/applog/aggregation/IMetricsTracker;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/bytedance/applog/aggregation/IMetricsTracker;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
