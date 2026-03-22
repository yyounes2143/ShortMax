.class final Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt$toEventParams$algorithmsListValue$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AdaptiveRenderingAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt;->b(Lrq/n;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lrq/l;",
        "Lcom/explorestack/protobuf/Value;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt$toEventParams$algorithmsListValue$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt$toEventParams$algorithmsListValue$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt$toEventParams$algorithmsListValue$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt$toEventParams$algorithmsListValue$1;->d:Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt$toEventParams$algorithmsListValue$1;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final b(Lrq/l;)Lcom/explorestack/protobuf/Value;
    .locals 5
    .param p1    # Lrq/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "brokenCreativeAlgorithmResult"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lrq/l;->a()Lrq/k;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "newBuilder()"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lrq/k;->b()Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;->getKey()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v4, "name"

    .line 28
    .line 29
    invoke-static {v1, v4, v3}, Lfr/f;->g(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0}, Lrq/k;->c()F

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v4, "weight"

    .line 42
    .line 43
    invoke-static {v1, v4, v3}, Lfr/f;->f(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/Number;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0}, Lrq/k;->a()F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v3, "threshold"

    .line 56
    .line 57
    invoke-static {v1, v3, v0}, Lfr/f;->f(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/Number;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v1, "brokenCreativeAlgorithmR\u2026build()\n                }"

    .line 66
    .line 67
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v2, "algorithm"

    .line 78
    .line 79
    invoke-static {v1, v2, v0}, Lfr/f;->e(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1}, Lrq/l;->c()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-static {v1}, Lio/bidmachine/core/h;->a(Z)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-string v2, "result"

    .line 96
    .line 97
    invoke-static {v0, v2, v1}, Lfr/f;->f(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/Number;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p1}, Lrq/l;->b()J

    .line 102
    .line 103
    .line 104
    move-result-wide v1

    .line 105
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string v1, "duration"

    .line 110
    .line 111
    invoke-static {v0, v1, p1}, Lfr/f;->f(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/Number;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1}, Lfr/f;->i(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/Value;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrq/l;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt$toEventParams$algorithmsListValue$1;->b(Lrq/l;)Lcom/explorestack/protobuf/Value;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
