.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;Lcom/moloco/sdk/internal/ortb/model/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/ortb/model/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;",
            "Lcom/moloco/sdk/internal/ortb/model/c;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;",
            ")",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/q;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "customUserEventBuilderService"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "bid"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "externalLinkHandler"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "watermark"

    .line 22
    .line 23
    .line 24
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c;

    .line 28
    .line 29
    move-object v1, v0

    .line 30
    move-object v2, p0

    .line 31
    move-object v3, p1

    .line 32
    move-object v4, p2

    .line 33
    move-object v5, p3

    .line 34
    move-object v6, p4

    .line 35
    move-object v7, p5

    .line 36
    invoke-direct/range {v1 .. v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/c;-><init>(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;Lcom/moloco/sdk/internal/ortb/model/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;Lcom/moloco/sdk/internal/ortb/model/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;ILjava/lang/Object;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x4

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    move-object v2, p2

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v3, p3

    .line 10
    move-object v4, p4

    .line 11
    move-object v5, p5

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/w;->a(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;Lcom/moloco/sdk/internal/ortb/model/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final c(Landroid/content/Context;Ljava/lang/String;Lcom/moloco/sdk/internal/services/f0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/internal/services/f0;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            ")",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/c0;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/b0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adm"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "clickthroughService"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v0, "watermark"

    .line 17
    .line 18
    .line 19
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "metricsRecorder"

    .line 23
    .line 24
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;

    .line 28
    .line 29
    sget-object v1, Lcom/moloco/sdk/service_locator/b$h;->a:Lcom/moloco/sdk/service_locator/b$h;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$h;->f()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    sget-object v1, Lcom/moloco/sdk/service_locator/b$i;->a:Lcom/moloco/sdk/service_locator/b$i;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$i;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    move-object v1, v0

    .line 42
    move-object v2, p0

    .line 43
    move-object v3, p1

    .line 44
    move-object v4, p2

    .line 45
    move-object v5, p3

    .line 46
    move-object v8, p4

    .line 47
    invoke-direct/range {v1 .. v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/D;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/moloco/sdk/internal/services/f0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;Lcom/moloco/sdk/acm/recorder/a;)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method
