.class public final Lcom/moloco/sdk/internal/error/crash/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/error/crash/d;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/moloco/sdk/internal/error/crash/filters/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/error/api/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/acm/recorder/a;
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

.method public constructor <init>(Ljava/util/List;Lcom/moloco/sdk/internal/error/api/a;Lcom/moloco/sdk/acm/recorder/a;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/error/api/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/moloco/sdk/internal/error/crash/filters/a;",
            ">;",
            "Lcom/moloco/sdk/internal/error/api/a;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "exceptionFilters"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errorReporter"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "metricsRecorder"

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
    iput-object p1, p0, Lcom/moloco/sdk/internal/error/crash/e;->a:Ljava/util/List;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/moloco/sdk/internal/error/crash/e;->b:Lcom/moloco/sdk/internal/error/api/a;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/moloco/sdk/internal/error/crash/e;->c:Lcom/moloco/sdk/acm/recorder/a;

    .line 24
    .line 25
    const-string p1, "CrashHandlerService"

    .line 26
    .line 27
    iput-object p1, p0, Lcom/moloco/sdk/internal/error/crash/e;->d:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 8
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "crash"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/error/crash/e;->b(Ljava/lang/Throwable;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/moloco/sdk/internal/error/crash/e;->c:Lcom/moloco/sdk/acm/recorder/a;

    .line 13
    .line 14
    new-instance v1, Lcom/moloco/sdk/acm/b;

    .line 15
    .line 16
    sget-object v2, Lcom/moloco/sdk/internal/client_metrics_data/a;->D:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/moloco/sdk/internal/error/crash/e;->b:Lcom/moloco/sdk/internal/error/api/a;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Lcom/moloco/sdk/internal/error/api/a;->a(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/moloco/sdk/internal/error/crash/e;->d:Ljava/lang/String;

    .line 37
    .line 38
    const/16 v6, 0xc

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    const-string v3, "App Crashed"

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/error/crash/e;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/moloco/sdk/internal/error/crash/filters/a;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Lcom/moloco/sdk/internal/error/crash/filters/a;->a(Ljava/lang/Throwable;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return p1
.end method
