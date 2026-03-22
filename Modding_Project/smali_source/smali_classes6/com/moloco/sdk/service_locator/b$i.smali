.class public final Lcom/moloco/sdk/service_locator/b$i;
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
    name = "i"
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/service_locator/b$i;
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

.field public static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/service_locator/b$i;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/b$i;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/service_locator/b$i;->a:Lcom/moloco/sdk/service_locator/b$i;

    .line 7
    .line 8
    new-instance v0, Lcom/moloco/sdk/service_locator/a0;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/a0;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/moloco/sdk/service_locator/b$i;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lcom/moloco/sdk/service_locator/b0;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/b0;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/moloco/sdk/service_locator/b$i;->c:Lms/i;

    .line 29
    .line 30
    new-instance v0, Lcom/moloco/sdk/service_locator/c0;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/c0;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/moloco/sdk/service_locator/b$i;->d:Lms/i;

    .line 40
    .line 41
    new-instance v0, Lcom/moloco/sdk/service_locator/d0;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/d0;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lcom/moloco/sdk/service_locator/b$i;->e:Lms/i;

    .line 51
    .line 52
    const/16 v0, 0x8

    .line 53
    .line 54
    sput v0, Lcom/moloco/sdk/service_locator/b$i;->f:I

    .line 55
    .line 56
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

.method public static final e()Lio/ktor/client/HttpClient;
    .locals 2

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$e;->a:Lcom/moloco/sdk/service_locator/b$e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$e;->h()Lcom/moloco/sdk/internal/services/x;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Lcom/moloco/sdk/internal/services/x;->invoke()Lcom/moloco/sdk/internal/services/w;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$e;->l()Lcom/moloco/sdk/internal/services/j0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/moloco/sdk/internal/services/j0;->invoke()Lcom/moloco/sdk/internal/services/i0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v1, v0}, Lcom/moloco/sdk/internal/http/e;->a(Lcom/moloco/sdk/internal/services/w;Lcom/moloco/sdk/internal/services/i0;)Lio/ktor/client/HttpClient;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static final f()Lcom/moloco/sdk/internal/services/c;
    .locals 3

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/c;

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
    sget-object v2, Lcom/moloco/sdk/service_locator/b$e;->a:Lcom/moloco/sdk/service_locator/b$e;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/moloco/sdk/service_locator/b$e;->l()Lcom/moloco/sdk/internal/services/j0;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/internal/services/c;-><init>(Landroid/content/Context;Lcom/moloco/sdk/internal/services/j0;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static final g()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
    .locals 2

    .line 1
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l$a;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/service_locator/b$i;->a:Lcom/moloco/sdk/service_locator/b$i;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$i;->d()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/o;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l$a;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/o;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public static final h()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/p;
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/p;

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
    invoke-direct {v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/p;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public final a()Lio/ktor/client/HttpClient;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$i;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/ktor/client/HttpClient;

    .line 8
    .line 9
    return-object v0
.end method

.method public final b()Lcom/moloco/sdk/internal/services/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$i;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/services/b;

    .line 8
    .line 9
    return-object v0
.end method

.method public final c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$i;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 8
    .line 9
    return-object v0
.end method

.method public final d()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/o;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$i;->d:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/o;

    .line 8
    .line 9
    return-object v0
.end method
