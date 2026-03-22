.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(JLio/ktor/client/plugins/HttpTimeout$a;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "$this$timeout"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p2, p0}, Lio/ktor/client/plugins/HttpTimeout$a;->g(Ljava/lang/Long;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static final b(Lio/ktor/client/request/HttpRequestBuilder;J)V
    .locals 1
    .param p0    # Lio/ktor/client/request/HttpRequestBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/b;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/b;-><init>(J)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Lio/ktor/client/plugins/d;->e(Lio/ktor/client/request/HttpRequestBuilder;Lkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
