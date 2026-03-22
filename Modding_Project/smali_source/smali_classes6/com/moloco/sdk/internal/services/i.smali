.class public final Lcom/moloco/sdk/internal/services/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/f;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/i;->a:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()Lcom/moloco/sdk/internal/services/e;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/i;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/a0;->a(Landroid/content/Context;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/y;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/y;->invoke()Lcom/moloco/sdk/common_adapter_internal/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/common_adapter_internal/b;->e()F

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v0}, Lcom/moloco/sdk/common_adapter_internal/b;->f()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0}, Lcom/moloco/sdk/common_adapter_internal/b;->b()F

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-virtual {v0}, Lcom/moloco/sdk/common_adapter_internal/b;->c()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {v0}, Lcom/moloco/sdk/common_adapter_internal/b;->d()F

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    invoke-virtual {v0}, Lcom/moloco/sdk/common_adapter_internal/b;->a()I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/i;->a:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v8, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 46
    .line 47
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/i;->a:Landroid/content/Context;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget v9, v0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 58
    .line 59
    new-instance v0, Lcom/moloco/sdk/internal/services/e;

    .line 60
    .line 61
    move-object v1, v0

    .line 62
    invoke-direct/range {v1 .. v9}, Lcom/moloco/sdk/internal/services/e;-><init>(IFIFFIFF)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method public b()Lcom/moloco/sdk/internal/services/H;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/i;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/moloco/sdk/internal/services/H;->a:Lcom/moloco/sdk/internal/services/H;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lcom/moloco/sdk/internal/services/H;->c:Lcom/moloco/sdk/internal/services/H;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget-object v0, Lcom/moloco/sdk/internal/services/H;->b:Lcom/moloco/sdk/internal/services/H;

    .line 26
    .line 27
    :goto_0
    return-object v0
.end method

.method public invoke()Lcom/moloco/sdk/internal/services/e;
    .locals 1
    .annotation runtime Lms/c;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/i;->a()Lcom/moloco/sdk/internal/services/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
