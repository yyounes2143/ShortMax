.class public final Lcom/moloco/sdk/service_locator/b$b;
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
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/service_locator/b$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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

.field public static final f:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/service_locator/b$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/b$b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/service_locator/b$b;->a:Lcom/moloco/sdk/service_locator/b$b;

    .line 7
    .line 8
    new-instance v0, Lcom/moloco/sdk/service_locator/c;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/c;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/moloco/sdk/service_locator/b$b;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lcom/moloco/sdk/service_locator/d;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/d;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/moloco/sdk/service_locator/b$b;->c:Lms/i;

    .line 29
    .line 30
    new-instance v0, Lcom/moloco/sdk/service_locator/e;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/e;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/moloco/sdk/service_locator/b$b;->d:Lms/i;

    .line 40
    .line 41
    new-instance v0, Lcom/moloco/sdk/service_locator/f;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/f;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lcom/moloco/sdk/service_locator/b$b;->e:Lms/i;

    .line 51
    .line 52
    new-instance v0, Lcom/moloco/sdk/service_locator/g;

    .line 53
    .line 54
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/g;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lcom/moloco/sdk/service_locator/b$b;->f:Lms/i;

    .line 62
    .line 63
    const/16 v0, 0x8

    .line 64
    .line 65
    sput v0, Lcom/moloco/sdk/service_locator/b$b;->g:I

    .line 66
    .line 67
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

.method public static final a()Lcom/moloco/sdk/internal/services/analytics/b;
    .locals 4

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/analytics/b;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/service_locator/b$i;->a:Lcom/moloco/sdk/service_locator/b$i;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$i;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/moloco/sdk/service_locator/b$k;->a:Lcom/moloco/sdk/service_locator/b$k;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/moloco/sdk/service_locator/b$k;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v2}, Lcom/moloco/sdk/service_locator/b$k;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v0, v1, v3, v2}, Lcom/moloco/sdk/internal/services/analytics/b;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public static final b()Lcom/moloco/sdk/internal/services/g;
    .locals 3

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/g;

    .line 2
    .line 3
    sget-object v1, Landroidx/lifecycle/ProcessLifecycleOwner;->Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;->get()Landroidx/lifecycle/LifecycleOwner;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lcom/moloco/sdk/service_locator/b$b;->a:Lcom/moloco/sdk/service_locator/b$b;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/moloco/sdk/service_locator/b$b;->h()Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/internal/services/g;-><init>(Landroidx/lifecycle/Lifecycle;Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public static final c()Lcom/moloco/sdk/internal/error/c;
    .locals 5

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/error/c;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/service_locator/b$c;->a:Lcom/moloco/sdk/service_locator/b$c;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$c;->b()Lcom/moloco/sdk/internal/services/config/a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lcom/moloco/sdk/internal/error/api/b;

    .line 10
    .line 11
    sget-object v3, Lcom/moloco/sdk/service_locator/b$h;->a:Lcom/moloco/sdk/service_locator/b$h;

    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/moloco/sdk/service_locator/b$h;->h()Lcom/moloco/sdk/internal/services/j;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/d;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/a;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-direct {v2, v3, v4}, Lcom/moloco/sdk/internal/error/api/b;-><init>(Lcom/moloco/sdk/internal/services/j;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/a;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/internal/error/c;-><init>(Lcom/moloco/sdk/internal/services/config/a;Lcom/moloco/sdk/internal/error/api/a;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public static final i()Lcom/moloco/sdk/internal/ilrd/g;
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/ilrd/g;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/service_locator/b;->a:Lcom/moloco/sdk/service_locator/b;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b;->a()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/ilrd/g;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static final j()Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;
    .locals 3

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/service_locator/b$b;->a:Lcom/moloco/sdk/service_locator/b$b;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$b;->d()Lcom/moloco/sdk/internal/services/analytics/a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/moloco/sdk/service_locator/b$h;->a:Lcom/moloco/sdk/service_locator/b$h;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/moloco/sdk/service_locator/b$h;->h()Lcom/moloco/sdk/internal/services/j;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;-><init>(Lcom/moloco/sdk/internal/services/analytics/a;Lcom/moloco/sdk/internal/services/j;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public final d()Lcom/moloco/sdk/internal/services/analytics/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$b;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/services/analytics/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public final e()Lcom/moloco/sdk/internal/services/r;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$b;->d:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/services/r;

    .line 8
    .line 9
    return-object v0
.end method

.method public final f()Lcom/moloco/sdk/internal/error/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$b;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/error/b;

    .line 8
    .line 9
    return-object v0
.end method

.method public final g()Lcom/moloco/sdk/internal/ilrd/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$b;->f:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/ilrd/g;

    .line 8
    .line 9
    return-object v0
.end method

.method public final h()Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$b;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/services/SingleObserverBackgroundThenForegroundAnalyticsListener;

    .line 8
    .line 9
    return-object v0
.end method
