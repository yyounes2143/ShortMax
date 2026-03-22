.class final Lio/ktor/client/plugins/HttpRequestLifecycleKt$attachToClientEngineJob$handler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpRequestLifecycle.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/HttpRequestLifecycleKt;->c(Lgt/s;Lkotlinx/coroutines/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Lgt/s;


# direct methods
.method constructor <init>(Lgt/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRequestLifecycleKt$attachToClientEngineJob$handler$1;->d:Lgt/s;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/HttpRequestLifecycleKt$attachToClientEngineJob$handler$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lio/ktor/client/plugins/HttpRequestLifecycleKt;->b()Ldu/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling request because engine Job failed with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldu/a;->b(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestLifecycleKt$attachToClientEngineJob$handler$1;->d:Lgt/s;

    const-string v1, "Engine failed"

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/t;->d(Lkotlinx/coroutines/r;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lio/ktor/client/plugins/HttpRequestLifecycleKt;->b()Ldu/a;

    move-result-object p1

    const-string v0, "Cancelling request because engine Job completed"

    invoke-interface {p1, v0}, Ldu/a;->b(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lio/ktor/client/plugins/HttpRequestLifecycleKt$attachToClientEngineJob$handler$1;->d:Lgt/s;

    invoke-interface {p1}, Lgt/s;->complete()Z

    :goto_0
    return-void
.end method
