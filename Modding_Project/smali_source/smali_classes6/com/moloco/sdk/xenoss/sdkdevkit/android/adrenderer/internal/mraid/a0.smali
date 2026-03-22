.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroid/graphics/Rect;
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
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "getApplicationContext(...)"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->a:Landroid/content/Context;

    .line 19
    .line 20
    new-instance p1, Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->b:Landroid/graphics/Rect;

    .line 26
    .line 27
    new-instance p1, Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->c:Landroid/graphics/Rect;

    .line 33
    .line 34
    new-instance p1, Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->d:Landroid/graphics/Rect;

    .line 40
    .line 41
    new-instance p1, Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->e:Landroid/graphics/Rect;

    .line 47
    .line 48
    new-instance p1, Landroid/graphics/Rect;

    .line 49
    .line 50
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->f:Landroid/graphics/Rect;

    .line 54
    .line 55
    new-instance p1, Landroid/graphics/Rect;

    .line 56
    .line 57
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->g:Landroid/graphics/Rect;

    .line 61
    .line 62
    new-instance p1, Landroid/graphics/Rect;

    .line 63
    .line 64
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->h:Landroid/graphics/Rect;

    .line 68
    .line 69
    new-instance p1, Landroid/graphics/Rect;

    .line 70
    .line 71
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->i:Landroid/graphics/Rect;

    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->b:Landroid/graphics/Rect;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->b:Landroid/graphics/Rect;

    .line 8
    .line 9
    iget-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->c:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->c(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->f:Landroid/graphics/Rect;

    .line 2
    .line 3
    add-int/2addr p3, p1

    .line 4
    add-int/2addr p4, p2

    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->f:Landroid/graphics/Rect;

    .line 9
    .line 10
    iget-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->g:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->c(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final c(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/c;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/c;

    .line 2
    .line 3
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->a:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/c;->c(FLandroid/content/Context;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 13
    .line 14
    int-to-float v2, v2

    .line 15
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->a:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v0, v2, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/c;->c(FLandroid/content/Context;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 22
    .line 23
    int-to-float v3, v3

    .line 24
    iget-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->a:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v0, v3, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/c;->c(FLandroid/content/Context;)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 31
    .line 32
    int-to-float p1, p1

    .line 33
    iget-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->a:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v0, p1, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/c;->c(FLandroid/content/Context;)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {p2, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final d()Landroid/graphics/Rect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->g:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->h:Landroid/graphics/Rect;

    .line 2
    .line 3
    add-int/2addr p3, p1

    .line 4
    add-int/2addr p4, p2

    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->h:Landroid/graphics/Rect;

    .line 9
    .line 10
    iget-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->i:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->c(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final f(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->d:Landroid/graphics/Rect;

    .line 2
    .line 3
    add-int/2addr p3, p1

    .line 4
    add-int/2addr p4, p2

    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->d:Landroid/graphics/Rect;

    .line 9
    .line 10
    iget-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->e:Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->c(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final g()Landroid/graphics/Rect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->i:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Landroid/graphics/Rect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->e:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Landroid/graphics/Rect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/a0;->c:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method
