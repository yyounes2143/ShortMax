.class public final Lcom/moloco/sdk/service_locator/b$a;
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
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/service_locator/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/service_locator/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/service_locator/b$a;->a:Lcom/moloco/sdk/service_locator/b$a;

    .line 7
    .line 8
    new-instance v0, Lcom/moloco/sdk/service_locator/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/moloco/sdk/service_locator/a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/moloco/sdk/service_locator/b$a;->b:Lms/i;

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    sput v0, Lcom/moloco/sdk/service_locator/b$a;->c:I

    .line 22
    .line 23
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

.method public static final c()Lcom/moloco/sdk/internal/services/l;
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/l;

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
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/services/l;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/l0;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$g;->a:Lcom/moloco/sdk/service_locator/b$g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$g;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/moloco/sdk/service_locator/b$b;->a:Lcom/moloco/sdk/service_locator/b$b;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$b;->f()Lcom/moloco/sdk/internal/error/b;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/m0;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;Lcom/moloco/sdk/internal/error/b;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/l0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public final b()Lcom/moloco/sdk/internal/services/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/service_locator/b$a;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/internal/services/l;

    .line 8
    .line 9
    return-object v0
.end method
