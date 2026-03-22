.class public final Lcom/moloco/sdk/internal/services/analytics/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/analytics/a;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "persistentHttpRequest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "customUserEventBuilderService"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "configService"

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
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/analytics/b;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/analytics/b;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/moloco/sdk/internal/services/analytics/b;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;

    .line 24
    .line 25
    return-void
.end method

.method public static final synthetic a(Lcom/moloco/sdk/internal/services/analytics/b;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/services/analytics/b;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;

    return-object p0
.end method

.method public static final synthetic b(Lcom/moloco/sdk/internal/services/analytics/b;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/services/analytics/b;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/moloco/sdk/internal/services/analytics/b;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/services/analytics/b;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(J)V
    .locals 7

    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/analytics/b;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;

    invoke-interface {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moloco/sdk/internal/services/analytics/b;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;

    invoke-interface {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 8
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recording applicationBackground with timestamp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 10
    const-string v2, "AnalyticsService"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    sget-object v0, Lcom/moloco/sdk/internal/scheduling/e;->a:Lcom/moloco/sdk/internal/scheduling/e;

    invoke-virtual {v0}, Lcom/moloco/sdk/internal/scheduling/e;->a()Lgt/g0;

    move-result-object v1

    new-instance v4, Lcom/moloco/sdk/internal/services/analytics/b$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/moloco/sdk/internal/services/analytics/b$a;-><init>(Lcom/moloco/sdk/internal/services/analytics/b;JLrs/c;)V

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    :cond_0
    return-void
.end method

.method public a(JJ)V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/analytics/b;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;

    invoke-interface {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moloco/sdk/internal/services/analytics/b;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;

    invoke-interface {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recording applicationForeground with timestamp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", lastBgTimestamp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 5
    const-string v2, "AnalyticsService"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/moloco/sdk/internal/scheduling/e;->a:Lcom/moloco/sdk/internal/scheduling/e;

    invoke-virtual {v0}, Lcom/moloco/sdk/internal/scheduling/e;->a()Lgt/g0;

    move-result-object v1

    new-instance v0, Lcom/moloco/sdk/internal/services/analytics/b$b;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/moloco/sdk/internal/services/analytics/b$b;-><init>(Lcom/moloco/sdk/internal/services/analytics/b;JJLrs/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    :cond_0
    return-void
.end method
