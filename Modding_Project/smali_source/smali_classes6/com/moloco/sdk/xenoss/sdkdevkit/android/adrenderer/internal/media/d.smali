.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLegacyMediaDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegacyMediaDownloader.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/LegacyMediaDownloader\n+ 2 builders.kt\nio/ktor/client/request/BuildersKt\n*L\n1#1,103:1\n332#2:104\n225#2:105\n99#2,2:106\n22#2:108\n*S KotlinDebug\n*F\n+ 1 LegacyMediaDownloader.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/LegacyMediaDownloader\n*L\n81#1:104\n81#1:105\n81#1:106,2\n81#1:108\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/internal/services/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/error/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lio/ktor/client/HttpClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/services/g0;Lcom/moloco/sdk/internal/error/b;Lio/ktor/client/HttpClient;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/services/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/error/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "connectivityService"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errorReportingService"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "httpClient"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->a:Lcom/moloco/sdk/internal/services/g0;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->b:Lcom/moloco/sdk/internal/error/b;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->c:Lio/ktor/client/HttpClient;

    .line 24
    .line 25
    const-string p1, "LegacyMediaDownloader"

    .line 26
    .line 27
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->d:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method

.method public static final a(Lio/ktor/client/plugins/HttpRequestRetry$a;I)J
    .locals 0

    .line 1
    const-string p1, "$this$delayMillis"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p0, 0x64

    .line 7
    .line 8
    return-wide p0
.end method

.method public static final synthetic b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;)Lcom/moloco/sdk/internal/services/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->a:Lcom/moloco/sdk/internal/services/g0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->e(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->g(Z)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final h(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;Lio/ktor/client/plugins/HttpRequestRetry$Configuration;)Lkotlin/Unit;
    .locals 5

    .line 1
    const-string v0, "$this$retry"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0xa

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->u(I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/i;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/i;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-static {p1, v3, v1, v4, v2}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->c(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v4}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->o(IZ)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->s(I)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/k;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/k;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->l(Lkotlin/jvm/functions/Function2;)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method

.method public static final i(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;Lio/ktor/client/plugins/HttpRequestRetry$b;Lio/ktor/client/request/HttpRequestBuilder;)Lkotlin/Unit;
    .locals 8

    .line 1
    const-string v0, "$this$modifyRequest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "it"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->d:Ljava/lang/String;

    .line 14
    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string p2, "Retry attempt #"

    .line 21
    .line 22
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpRequestRetry$b;->b()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p2, " for "

    .line 33
    .line 34
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lio/ktor/client/plugins/HttpRequestRetry$b;->a()Lio/ktor/client/request/HttpRequestBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lio/ktor/client/request/HttpRequestBuilder;->i()Lio/ktor/http/h;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const/16 v6, 0xc

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p0
.end method

.method public static final synthetic j(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;)Lcom/moloco/sdk/internal/error/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->b:Lcom/moloco/sdk/internal/error/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/io/File;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/moloco/sdk/internal/scheduling/a;->getIo()Lkotlin/coroutines/CoroutineContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;Ljava/lang/String;Ljava/io/File;Lrs/c;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p3}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final e(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Ltr/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;->c:Lio/ktor/client/HttpClient;

    .line 2
    .line 3
    new-instance v1, Lio/ktor/client/request/HttpRequestBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/ktor/client/request/HttpRequestBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v1, p1}, Lio/ktor/client/request/a;->b(Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/h;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/h;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/d;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p1}, Lio/ktor/client/plugins/c;->i(Lio/ktor/client/request/HttpRequestBuilder;Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lwr/m;->b:Lwr/m$a;

    .line 20
    .line 21
    invoke-virtual {p1}, Lwr/m$a;->a()Lwr/m;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v1, p1}, Lio/ktor/client/request/HttpRequestBuilder;->n(Lwr/m;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lio/ktor/client/statement/HttpStatement;

    .line 29
    .line 30
    invoke-direct {p1, v1, v0}, Lio/ktor/client/statement/HttpStatement;-><init>(Lio/ktor/client/request/HttpRequestBuilder;Lio/ktor/client/HttpClient;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lio/ktor/client/statement/HttpStatement;->d(Lrs/c;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public final g(Z)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "HTTP_REQUEST_COMPLETE_TIMEOUT"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p1, "HTTP_REQUEST_NOT_COMPLETE_TIMEOUT"

    .line 7
    .line 8
    :goto_0
    return-object p1
.end method
