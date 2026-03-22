.class public final Lcom/moloco/sdk/internal/publisher/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lgt/g0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/internal/services/l;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/AdLoad;
    .locals 11
    .param p0    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/publisher/AdFormatType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/internal/services/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/time/b;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/internal/ortb/model/c;",
            "+",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m;",
            ">;",
            "Lcom/moloco/sdk/publisher/AdFormatType;",
            "Lcom/moloco/sdk/internal/services/l;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            ")",
            "Lcom/moloco/sdk/publisher/AdLoad;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "scope"

    .line 2
    .line 3
    move-object v2, p0

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "timeout"

    .line 8
    .line 9
    .line 10
    move-object v3, p1

    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "adUnitId"

    .line 15
    .line 16
    move-object v4, p2

    .line 17
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "recreateXenossAdLoader"

    .line 21
    .line 22
    move-object v5, p3

    .line 23
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "adFormatType"

    .line 27
    .line 28
    move-object v8, p4

    .line 29
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v0, "webViewChecker"

    .line 33
    .line 34
    .line 35
    move-object/from16 v9, p5

    .line 36
    .line 37
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "metricsRecorder"

    .line 41
    .line 42
    move-object/from16 v10, p6

    .line 43
    .line 44
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Lcom/moloco/sdk/internal/publisher/d;

    .line 48
    .line 49
    invoke-static {}, Lcom/moloco/sdk/internal/ortb/d;->a()Lcom/moloco/sdk/internal/ortb/a;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-static {}, Lcom/moloco/sdk/internal/publisher/l0;->a()Lcom/moloco/sdk/internal/publisher/k0;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    move-object v1, v0

    .line 58
    invoke-direct/range {v1 .. v10}, Lcom/moloco/sdk/internal/publisher/d;-><init>(Lgt/g0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/moloco/sdk/internal/ortb/a;Lcom/moloco/sdk/internal/publisher/k0;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/internal/services/l;Lcom/moloco/sdk/acm/recorder/a;)V

    .line 59
    .line 60
    .line 61
    return-object v0
.end method
