.class public final Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt;
.super Ljava/lang/Object;
.source "AdaptiveRenderingAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Lrq/t;Lfr/a;)Lfr/a;
    .locals 2
    .param p0    # Lrq/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lfr/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "baseBMError"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lfr/a;

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    invoke-virtual {p0}, Lrq/t;->b()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p1, v1, p0}, Lfr/a;-><init>(Lfr/a;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static final b(Lrq/n;)Ljava/util/Map;
    .locals 5
    .param p0    # Lrq/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrq/n;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lrq/n;->c()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt$toEventParams$algorithmsListValue$1;->d:Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt$toEventParams$algorithmsListValue$1;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lfr/f;->c(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/explorestack/protobuf/ListValue;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "newBuilder()"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v2, "result"

    .line 26
    .line 27
    invoke-virtual {p0}, Lrq/n;->e()D

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v1, v2, v3}, Lfr/f;->f(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/Number;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "phase"

    .line 40
    .line 41
    invoke-virtual {p0}, Lrq/n;->b()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v1, v2, v3}, Lfr/f;->f(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/Number;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "component"

    .line 54
    .line 55
    invoke-virtual {p0}, Lrq/n;->a()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v1, v2, v3}, Lfr/f;->g(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "duration"

    .line 64
    .line 65
    invoke-virtual {p0}, Lrq/n;->d()J

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {v1, v2, p0}, Lfr/f;->f(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Ljava/lang/Number;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string v1, "algorithms"

    .line 78
    .line 79
    invoke-static {p0, v1, v0}, Lfr/f;->d(Lcom/explorestack/protobuf/Struct$Builder;Ljava/lang/String;Lcom/explorestack/protobuf/ListValue;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p0}, Lfr/f;->i(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/Value;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    new-instance v0, Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v1, "adaptive_rendering_context"

    .line 93
    .line 94
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    return-object v0

    .line 98
    :catchall_0
    const/4 p0, 0x0

    .line 99
    return-object p0
.end method
