.class public final Lio/ktor/client/plugins/HttpRequestLifecycleKt;
.super Ljava/lang/Object;
.source "HttpRequestLifecycle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final a:Ldu/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "io.ktor.client.plugins.HttpRequestLifecycle"

    .line 2
    .line 3
    invoke-static {v0}, Lcs/a;->a(Ljava/lang/String;)Ldu/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/ktor/client/plugins/HttpRequestLifecycleKt;->a:Ldu/a;

    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic a(Lgt/s;Lkotlinx/coroutines/r;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/ktor/client/plugins/HttpRequestLifecycleKt;->c(Lgt/s;Lkotlinx/coroutines/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b()Ldu/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/HttpRequestLifecycleKt;->a:Ldu/a;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final c(Lgt/s;Lkotlinx/coroutines/r;)V
    .locals 1

    .line 1
    new-instance v0, Lio/ktor/client/plugins/HttpRequestLifecycleKt$attachToClientEngineJob$handler$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/ktor/client/plugins/HttpRequestLifecycleKt$attachToClientEngineJob$handler$1;-><init>(Lgt/s;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, v0}, Lkotlinx/coroutines/r;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lgt/s0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Lio/ktor/client/plugins/HttpRequestLifecycleKt$attachToClientEngineJob$1;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lio/ktor/client/plugins/HttpRequestLifecycleKt$attachToClientEngineJob$1;-><init>(Lgt/s0;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Lkotlinx/coroutines/r;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lgt/s0;

    .line 16
    .line 17
    .line 18
    return-void
.end method
