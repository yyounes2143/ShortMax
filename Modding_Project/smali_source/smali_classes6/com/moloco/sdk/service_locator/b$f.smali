.class public final Lcom/moloco/sdk/service_locator/b$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/service_locator/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/service_locator/b$f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static volatile b:Lcom/moloco/sdk/internal/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/service_locator/b$f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/b$f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/service_locator/b$f;->a:Lcom/moloco/sdk/service_locator/b$f;

    .line 7
    .line 8
    new-instance v0, Lcom/moloco/sdk/service_locator/q;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/q;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/moloco/sdk/service_locator/b$f;->c:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lcom/moloco/sdk/service_locator/r;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/r;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/moloco/sdk/service_locator/b$f;->d:Lms/i;

    .line 29
    .line 30
    new-instance v0, Lcom/moloco/sdk/service_locator/s;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/s;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/moloco/sdk/service_locator/b$f;->e:Lms/i;

    .line 40
    .line 41
    const/16 v0, 0x8

    .line 42
    .line 43
    sput v0, Lcom/moloco/sdk/service_locator/b$f;->f:I

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final e()Lcom/moloco/sdk/internal/services/init/e;
    .locals 10

    .line 1
    new-instance v9, Lcom/moloco/sdk/internal/services/init/e;

    .line 2
    .line 3
    sget-object v0, Lcom/moloco/sdk/service_locator/b$e;->a:Lcom/moloco/sdk/service_locator/b$e;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$e;->l()Lcom/moloco/sdk/internal/services/j0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$e;->h()Lcom/moloco/sdk/internal/services/x;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sget-object v0, Lcom/moloco/sdk/service_locator/b$k;->a:Lcom/moloco/sdk/service_locator/b$k;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$k;->f()Lcom/moloco/sdk/internal/services/usertracker/e;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    sget-object v0, Lcom/moloco/sdk/service_locator/b$i;->a:Lcom/moloco/sdk/service_locator/b$i;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$i;->a()Lio/ktor/client/HttpClient;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    const-string v5, "https://sdkapi.dsp-api.moloco.com/v2/init"

    .line 26
    .line 27
    const-wide/16 v6, 0xbb8

    .line 28
    .line 29
    const-string v4, "4.0.0"

    .line 30
    .line 31
    move-object v0, v9

    .line 32
    invoke-direct/range {v0 .. v8}, Lcom/moloco/sdk/internal/services/init/e;-><init>(Lcom/moloco/sdk/internal/services/j0;Lcom/moloco/sdk/internal/services/x;Lcom/moloco/sdk/internal/services/usertracker/e;Ljava/lang/String;Ljava/lang/String;JLio/ktor/client/HttpClient;)V

    .line 33
    .line 34
    .line 35
    return-object v9
.end method

.method public static final f()Lcom/moloco/sdk/internal/services/init/l;
    .locals 6

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/init/l;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/service_locator/b$f;->a:Lcom/moloco/sdk/service_locator/b$f;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$f;->b()Lcom/moloco/sdk/internal/services/init/d;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/moloco/sdk/internal/services/init/g;->a:Lcom/moloco/sdk/internal/services/init/g$a;

    .line 10
    .line 11
    sget-object v3, Lcom/moloco/sdk/service_locator/b;->a:Lcom/moloco/sdk/service_locator/b;

    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/moloco/sdk/service_locator/b;->a()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "moloco_sdk_init_cache"

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "getSharedPreferences(...)"

    .line 25
    .line 26
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lcom/moloco/sdk/internal/services/init/g$a;->a(Landroid/content/SharedPreferences;)Lcom/moloco/sdk/internal/services/init/g;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v3}, Lcom/moloco/sdk/internal/scheduling/a;->getIo()Lkotlin/coroutines/CoroutineContext;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v5, 0x1

    .line 43
    invoke-static {v4, v5, v4}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v3}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-direct {v0, v1, v2, v3}, Lcom/moloco/sdk/internal/services/init/l;-><init>(Lcom/moloco/sdk/internal/services/init/d;Lcom/moloco/sdk/internal/services/init/g;Lgt/g0;)V

    .line 56
    .line 57
    .line 58
    return-object v0
.end method

.method public static final g()Lcom/moloco/sdk/internal/services/init/n;
    .locals 3

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/init/n;

    .line 2
    .line 3
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/d;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "https://sdkopmetrics-us.dsp-api.moloco.com/v1/tracking/init"

    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Lcom/moloco/sdk/internal/services/init/n;-><init>(Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/f;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/moloco/sdk/Init$SDKInitResponse;)Lcom/moloco/sdk/internal/e;
    .locals 3
    .param p1    # Lcom/moloco/sdk/Init$SDKInitResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "initResponse"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/moloco/sdk/service_locator/b$f;->b:Lcom/moloco/sdk/internal/e;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    sget-object v0, Lcom/moloco/sdk/service_locator/b$f;->b:Lcom/moloco/sdk/internal/e;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/moloco/sdk/internal/b;

    .line 16
    .line 17
    sget-object v1, Lcom/moloco/sdk/service_locator/b$k;->a:Lcom/moloco/sdk/service_locator/b$k;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$k;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Lcom/moloco/sdk/service_locator/b$h;->a:Lcom/moloco/sdk/service_locator/b$h;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/moloco/sdk/service_locator/b$h;->e()Lcom/moloco/sdk/internal/services/f0;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v0, p1, v1, v2}, Lcom/moloco/sdk/internal/b;-><init>(Lcom/moloco/sdk/Init$SDKInitResponse;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/internal/services/f0;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/moloco/sdk/service_locator/b$f;->b:Lcom/moloco/sdk/internal/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit p0

    .line 38
    goto :goto_2

    .line 39
    :goto_1
    monitor-exit p0

    .line 40
    throw p1

    .line 41
    :cond_1
    :goto_2
    return-object v0
.end method

.method public final b()Lcom/moloco/sdk/internal/services/init/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$f;->d:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/services/init/d;

    .line 8
    .line 9
    return-object v0
.end method

.method public final c()Lcom/moloco/sdk/internal/services/init/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$f;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/services/init/j;

    .line 8
    .line 9
    return-object v0
.end method

.method public final d()Lcom/moloco/sdk/internal/services/init/m;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$f;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/services/init/m;

    .line 8
    .line 9
    return-object v0
.end method
