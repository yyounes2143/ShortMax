.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->C()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/v;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    sget-object v1, Lcom/moloco/sdk/service_locator/b$g;->a:Lcom/moloco/sdk/service_locator/b$g;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$g;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$g;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/z;->e()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/x;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    sget-object v1, Lcom/moloco/sdk/service_locator/b$e;->a:Lcom/moloco/sdk/service_locator/b$e;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$e;->k()Lcom/moloco/sdk/internal/services/g0;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    sget-object v1, Lcom/moloco/sdk/service_locator/b$i;->a:Lcom/moloco/sdk/service_locator/b$i;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$i;->a()Lio/ktor/client/HttpClient;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/a0;->a(Landroid/content/Context;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/y;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    move-object v1, v0

    .line 43
    invoke-direct/range {v1 .. v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/v;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/x;Lcom/moloco/sdk/internal/services/g0;Lio/ktor/client/HttpClient;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/y;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method
