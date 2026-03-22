.class public final Lcom/moloco/sdk/service_locator/b$h;
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
    name = "h"
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/service_locator/b$h;
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
    new-instance v0, Lcom/moloco/sdk/service_locator/b$h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/b$h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/service_locator/b$h;->a:Lcom/moloco/sdk/service_locator/b$h;

    .line 7
    .line 8
    new-instance v0, Lcom/moloco/sdk/service_locator/v;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/v;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/moloco/sdk/service_locator/b$h;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lcom/moloco/sdk/service_locator/w;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/w;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/moloco/sdk/service_locator/b$h;->c:Lms/i;

    .line 29
    .line 30
    new-instance v0, Lcom/moloco/sdk/service_locator/x;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/x;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/moloco/sdk/service_locator/b$h;->d:Lms/i;

    .line 40
    .line 41
    new-instance v0, Lcom/moloco/sdk/service_locator/y;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/y;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lcom/moloco/sdk/service_locator/b$h;->e:Lms/i;

    .line 51
    .line 52
    new-instance v0, Lcom/moloco/sdk/service_locator/z;

    .line 53
    .line 54
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/z;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lcom/moloco/sdk/service_locator/b$h;->f:Lms/i;

    .line 62
    .line 63
    const/16 v0, 0x8

    .line 64
    .line 65
    sput v0, Lcom/moloco/sdk/service_locator/b$h;->g:I

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

.method public static final a()Landroid/app/ActivityManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b;->a:Lcom/moloco/sdk/service_locator/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b;->a()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "activity"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "null cannot be cast to non-null type android.app.ActivityManager"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Landroid/app/ActivityManager;

    .line 19
    .line 20
    return-object v0
.end method

.method public static final b()Lcom/moloco/sdk/internal/services/q;
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/q;

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
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/services/q;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static final k()Lcom/moloco/sdk/internal/services/proto/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/proto/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/services/proto/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final l()Lcom/moloco/sdk/internal/services/k;
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/k;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/services/k;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final m()Lcom/moloco/sdk/internal/B;
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/B;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/B;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final c()Landroid/app/ActivityManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$h;->f:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityManager;

    .line 8
    .line 9
    return-object v0
.end method

.method public final d()Lcom/moloco/sdk/internal/services/p;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$h;->d:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/services/p;

    .line 8
    .line 9
    return-object v0
.end method

.method public final e()Lcom/moloco/sdk/internal/services/f0;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/t;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/moloco/sdk/service_locator/b$h;->f()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lcom/moloco/sdk/service_locator/b$k;->a:Lcom/moloco/sdk/service_locator/b$k;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/moloco/sdk/service_locator/b$k;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/internal/services/t;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final f()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/o0;

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
    invoke-direct {v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/o0;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final g()Lcom/moloco/sdk/internal/services/proto/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$h;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/services/proto/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public final h()Lcom/moloco/sdk/internal/services/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$h;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/services/j;

    .line 8
    .line 9
    return-object v0
.end method

.method public final i()Lcom/moloco/sdk/internal/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$h;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public final j()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/L;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/L;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
