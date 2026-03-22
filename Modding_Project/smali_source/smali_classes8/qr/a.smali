.class public final Lqr/a;
.super Ljava/lang/Object;
.source "BodyProgress.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final a:Lyr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyr/a<",
            "Lat/n<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lyr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyr/a<",
            "Lat/n<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lyr/a;

    .line 2
    .line 3
    const-string v1, "UploadProgressListenerAttributeKey"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lyr/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lqr/a;->a:Lyr/a;

    .line 9
    .line 10
    new-instance v0, Lyr/a;

    .line 11
    .line 12
    const-string v1, "DownloadProgressListenerAttributeKey"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lyr/a;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lqr/a;->b:Lyr/a;

    .line 18
    .line 19
    return-void
.end method

.method public static final synthetic a()Lyr/a;
    .locals 1

    .line 1
    sget-object v0, Lqr/a;->b:Lyr/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b()Lyr/a;
    .locals 1

    .line 1
    sget-object v0, Lqr/a;->a:Lyr/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final c(Ltr/c;Lat/n;)Ltr/c;
    .locals 3
    .param p0    # Ltr/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/c;",
            "Lat/n<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ltr/c;"
        }
    .end annotation

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
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ltr/c;->b()Lio/ktor/utils/io/ByteReadChannel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p0}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {p0}, Lio/ktor/http/d;->b(Lwr/k;)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v0, v1, v2, p1}, Lio/ktor/client/utils/ByteChannelUtilsKt;->a(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Long;Lat/n;)Lio/ktor/utils/io/ByteReadChannel;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0}, Ltr/c;->x()Lio/ktor/client/call/HttpClientCall;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0, p1}, Lrr/b;->a(Lio/ktor/client/call/HttpClientCall;Lio/ktor/utils/io/ByteReadChannel;)Lio/ktor/client/call/HttpClientCall;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method
