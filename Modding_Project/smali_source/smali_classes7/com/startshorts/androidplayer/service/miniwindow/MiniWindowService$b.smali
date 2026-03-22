.class public final Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;
.super Ljava/lang/Object;
.source "MiniWindowService.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMiniWindowService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MiniWindowService.kt\ncom/startshorts/androidplayer/service/miniwindow/MiniWindowService$initVideoView$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,637:1\n254#2:638\n*S KotlinDebug\n*F\n+ 1 MiniWindowService.kt\ncom/startshorts/androidplayer/service/miniwindow/MiniWindowService$initVideoView$1\n*L\n271#1:638\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->d(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public b(F)V
    .locals 4

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->h(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/view/WindowManager$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 15
    .line 16
    iget-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->h(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/view/WindowManager$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 23
    .line 24
    int-to-float v0, v0

    .line 25
    mul-float/2addr p1, v0

    .line 26
    const/high16 v2, 0x3f100000    # 0.5625f

    .line 27
    .line 28
    mul-float/2addr v2, p1

    .line 29
    int-to-float v1, v1

    .line 30
    sub-float v1, v2, v1

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    int-to-float v3, v3

    .line 34
    div-float/2addr v1, v3

    .line 35
    sub-float v0, p1, v0

    .line 36
    .line 37
    div-float/2addr v0, v3

    .line 38
    iget-object v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 39
    .line 40
    invoke-static {v3}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->h(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/view/WindowManager$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    float-to-int p1, p1

    .line 45
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 46
    .line 47
    float-to-int p1, v2

    .line 48
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 49
    .line 50
    iget p1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 51
    .line 52
    float-to-int v1, v1

    .line 53
    sub-int/2addr p1, v1

    .line 54
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 55
    .line 56
    iget p1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 57
    .line 58
    float-to-int v0, v0

    .line 59
    sub-int/2addr p1, v0

    .line 60
    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 61
    .line 62
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->g(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/view/WindowManager;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 81
    .line 82
    invoke-static {v1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->h(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/view/WindowManager$LayoutParams;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->j(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    const-string v2, "controllerLayout"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    move v1, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    xor-int/2addr v1, v2

    .line 25
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->M(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public d(FF)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    cmpg-float v0, p2, v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->h(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/view/WindowManager$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 18
    .line 19
    float-to-int p1, p1

    .line 20
    add-int/2addr v1, p1

    .line 21
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 22
    .line 23
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->h(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/view/WindowManager$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 30
    .line 31
    float-to-int p2, p2

    .line 32
    add-int/2addr v0, p2

    .line 33
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 34
    .line 35
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->g(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/view/WindowManager;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object p2, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->h(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/view/WindowManager$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {p1, p2, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->j(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public onDoubleTap()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->Companion:Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow$Companion;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->getRatio()F

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow$Companion;->nextRatio(F)F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->setRatio(F)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 50
    .line 51
    iget-object v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 62
    .line 63
    int-to-float v4, v3

    .line 64
    mul-float/2addr v4, v2

    .line 65
    float-to-int v4, v4

    .line 66
    int-to-float v5, v4

    .line 67
    const/high16 v6, 0x3f100000    # 0.5625f

    .line 68
    .line 69
    mul-float/2addr v5, v6

    .line 70
    float-to-int v5, v5

    .line 71
    iget-object v6, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 72
    .line 73
    invoke-static {v6}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->h(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/view/WindowManager$LayoutParams;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 78
    .line 79
    iget-object v7, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 80
    .line 81
    invoke-static {v7}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->h(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/view/WindowManager$LayoutParams;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 86
    .line 87
    iget-object v8, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 88
    .line 89
    invoke-static {v8}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->h(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/view/WindowManager$LayoutParams;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 94
    .line 95
    iget-object v8, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 96
    .line 97
    invoke-static {v8}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->h(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/view/WindowManager$LayoutParams;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 102
    .line 103
    iget-object v8, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 104
    .line 105
    invoke-static {v8}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->h(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/view/WindowManager$LayoutParams;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    div-int/lit8 v9, v5, 0x2

    .line 110
    .line 111
    add-int/2addr v6, v9

    .line 112
    div-int/lit8 v9, v0, 0x2

    .line 113
    .line 114
    if-lt v6, v9, :cond_2

    .line 115
    .line 116
    sub-int/2addr v0, v5

    .line 117
    invoke-static {}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->c()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    sub-int/2addr v0, v5

    .line 122
    goto :goto_1

    .line 123
    :cond_2
    invoke-static {}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->c()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    :goto_1
    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 128
    .line 129
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 130
    .line 131
    invoke-static {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->h(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/view/WindowManager$LayoutParams;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-gez v7, :cond_3

    .line 136
    .line 137
    const/4 v7, 0x0

    .line 138
    goto :goto_2

    .line 139
    :cond_3
    sub-int/2addr v3, v4

    .line 140
    invoke-static {}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->c()I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    sub-int v4, v3, v4

    .line 145
    .line 146
    if-le v7, v4, :cond_4

    .line 147
    .line 148
    invoke-static {}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->c()I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    sub-int v7, v3, v4

    .line 153
    .line 154
    :cond_4
    :goto_2
    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 155
    .line 156
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 157
    .line 158
    invoke-static {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->g(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/view/WindowManager;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    if-eqz v0, :cond_5

    .line 163
    .line 164
    iget-object v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 165
    .line 166
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    iget-object v4, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 175
    .line 176
    invoke-static {v4}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->h(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/view/WindowManager$LayoutParams;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-interface {v0, v3, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    .line 182
    .line 183
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 184
    .line 185
    invoke-static {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->j(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 189
    .line 190
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 195
    .line 196
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow$Companion;->fontRatio(F)F

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method public onUp()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->e(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v2, 0xc8

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
