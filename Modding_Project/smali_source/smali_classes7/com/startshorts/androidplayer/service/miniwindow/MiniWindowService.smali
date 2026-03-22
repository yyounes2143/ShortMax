.class public abstract Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;
.super Landroid/app/Service;
.source "MiniWindowService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final k:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final l:I

.field private static volatile m:Z


# instance fields
.field private a:Landroid/view/WindowManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Landroid/animation/ValueAnimator;

.field private final c:Landroid/view/WindowManager$LayoutParams;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

.field private e:Z

.field private f:Z

.field private g:Z

.field private final h:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Landroid/content/BroadcastReceiver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->k:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$a;

    .line 8
    .line 9
    const/high16 v0, 0x41100000    # 9.0f

    .line 10
    .line 11
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l:I

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [F

    .line 6
    .line 7
    fill-array-data v0, :array_0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->b:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    new-instance v1, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Lnh/h;

    .line 23
    .line 24
    invoke-direct {v3, p0}, Lnh/h;-><init>(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->h:Landroid/os/Handler;

    .line 31
    .line 32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v2, 0x1a

    .line 35
    .line 36
    if-lt v1, v2, :cond_0

    .line 37
    .line 38
    const/16 v1, 0x7f6

    .line 39
    .line 40
    :goto_0
    move v5, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const/16 v1, 0x7d2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :goto_1
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 46
    .line 47
    const/4 v4, -0x2

    .line 48
    const/4 v7, -0x3

    .line 49
    const/4 v3, -0x2

    .line 50
    const/16 v6, 0x22a8

    .line 51
    .line 52
    move-object v2, v1

    .line 53
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    .line 57
    .line 58
    const v2, 0x800033

    .line 59
    .line 60
    .line 61
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 62
    .line 63
    const-wide/16 v1, 0x1f4

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 66
    .line 67
    .line 68
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 69
    .line 70
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;

    .line 77
    .line 78
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;-><init>(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->i:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;

    .line 82
    .line 83
    new-instance v0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$receiver$1;

    .line 84
    .line 85
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$receiver$1;-><init>(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->j:Landroid/content/BroadcastReceiver;

    .line 89
    .line 90
    return-void

    .line 91
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final B()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 20
    .line 21
    iget-object v2, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    .line 22
    .line 23
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 24
    .line 25
    int-to-float v2, v2

    .line 26
    const/high16 v3, 0x3f800000    # 1.0f

    .line 27
    .line 28
    mul-float/2addr v2, v3

    .line 29
    int-to-float v3, v1

    .line 30
    div-float/2addr v2, v3

    .line 31
    sget-object v4, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->Companion:Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow$Companion;

    .line 32
    .line 33
    invoke-virtual {v4, v2}, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow$Companion;->closestRatio(F)F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    iget-object v5, v5, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 42
    .line 43
    invoke-virtual {v4, v2}, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow$Companion;->fontRatio(F)F

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 48
    .line 49
    .line 50
    iget-object v4, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    .line 51
    .line 52
    iget v13, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 53
    .line 54
    iget v11, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 55
    .line 56
    mul-float/2addr v3, v2

    .line 57
    float-to-int v3, v3

    .line 58
    int-to-float v5, v3

    .line 59
    const/high16 v6, 0x3f100000    # 0.5625f

    .line 60
    .line 61
    mul-float/2addr v5, v6

    .line 62
    float-to-int v5, v5

    .line 63
    iget v7, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 64
    .line 65
    iget v9, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 66
    .line 67
    div-int/lit8 v4, v5, 0x2

    .line 68
    .line 69
    add-int/2addr v4, v7

    .line 70
    div-int/lit8 v6, v0, 0x2

    .line 71
    .line 72
    if-lt v4, v6, :cond_0

    .line 73
    .line 74
    sub-int/2addr v0, v5

    .line 75
    sget v4, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l:I

    .line 76
    .line 77
    sub-int/2addr v0, v4

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    sget v0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l:I

    .line 80
    .line 81
    :goto_0
    if-gez v9, :cond_1

    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    sub-int/2addr v1, v3

    .line 86
    sget v4, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l:I

    .line 87
    .line 88
    sub-int v6, v1, v4

    .line 89
    .line 90
    if-le v9, v6, :cond_2

    .line 91
    .line 92
    sub-int/2addr v1, v4

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    move v1, v9

    .line 95
    :goto_1
    sub-int v8, v0, v7

    .line 96
    .line 97
    sub-int v10, v1, v9

    .line 98
    .line 99
    sub-int v12, v5, v11

    .line 100
    .line 101
    sub-int v14, v3, v13

    .line 102
    .line 103
    if-nez v8, :cond_5

    .line 104
    .line 105
    if-nez v10, :cond_5

    .line 106
    .line 107
    if-nez v12, :cond_5

    .line 108
    .line 109
    if-nez v14, :cond_5

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    instance-of v1, v0, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;

    .line 124
    .line 125
    if-eqz v1, :cond_3

    .line 126
    .line 127
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    const/4 v0, 0x0

    .line 131
    :goto_2
    if-nez v0, :cond_4

    .line 132
    .line 133
    return-void

    .line 134
    :cond_4
    iget-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    .line 135
    .line 136
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 137
    .line 138
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 139
    .line 140
    invoke-virtual {v0, v2, v3, v1}, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->update(FII)V

    .line 141
    .line 142
    .line 143
    sget-object v1, Lud/b;->a:Lud/b;

    .line 144
    .line 145
    invoke-virtual {v1, v0}, Lud/b;->N3(Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->b:Landroid/animation/ValueAnimator;

    .line 150
    .line 151
    new-instance v1, Lnh/i;

    .line 152
    .line 153
    move-object v5, v1

    .line 154
    move-object v6, p0

    .line 155
    invoke-direct/range {v5 .. v14}, Lnh/i;-><init>(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;IIIIIIII)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->b:Landroid/animation/ValueAnimator;

    .line 162
    .line 163
    new-instance v1, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$d;

    .line 164
    .line 165
    invoke-direct {v1, p0, v2}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$d;-><init>(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;F)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->b:Landroid/animation/ValueAnimator;

    .line 172
    .line 173
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method private static final C(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;IIIIIIIILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p9}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p9

    .line 10
    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    .line 11
    .line 12
    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast p9, Ljava/lang/Float;

    .line 16
    .line 17
    invoke-virtual {p9}, Ljava/lang/Float;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result p9

    .line 21
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    .line 22
    .line 23
    int-to-float p2, p2

    .line 24
    mul-float/2addr p2, p9

    .line 25
    float-to-int p2, p2

    .line 26
    add-int/2addr p1, p2

    .line 27
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 28
    .line 29
    int-to-float p1, p4

    .line 30
    mul-float/2addr p1, p9

    .line 31
    float-to-int p1, p1

    .line 32
    add-int/2addr p3, p1

    .line 33
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 34
    .line 35
    int-to-float p1, p6

    .line 36
    mul-float/2addr p1, p9

    .line 37
    float-to-int p1, p1

    .line 38
    add-int/2addr p5, p1

    .line 39
    iput p5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 40
    .line 41
    int-to-float p1, p8

    .line 42
    mul-float/2addr p1, p9

    .line 43
    float-to-int p1, p1

    .line 44
    add-int/2addr p7, p1

    .line 45
    iput p7, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 46
    .line 47
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->a:Landroid/view/WindowManager;

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-interface {p1, p2, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->N()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private final D()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->f:Landroid/widget/ImageView;

    .line 10
    .line 11
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_mini_pause:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v0, Lfk/v;->a:Lfk/v;

    .line 18
    .line 19
    invoke-virtual {v0}, Lfk/v;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->f:Landroid/widget/ImageView;

    .line 30
    .line 31
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_mini_play_rtl:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->f:Landroid/widget/ImageView;

    .line 42
    .line 43
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_mini_play:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method private final E()V
    .locals 2

    .line 1
    sget-object v0, Lfk/v;->a:Lfk/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/v;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->m:Landroidx/cardview/widget/CardView;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->h:Landroid/widget/ImageView;

    .line 24
    .line 25
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_mini_restore_rtl:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->g:Landroid/widget/ImageView;

    .line 35
    .line 36
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_mini_next_rtl:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->e:Landroid/widget/ImageView;

    .line 46
    .line 47
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_mini_forward_rtl:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->c:Landroid/widget/ImageView;

    .line 57
    .line 58
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_mini_backward_rtl:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->m:Landroidx/cardview/widget/CardView;

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->h:Landroid/widget/ImageView;

    .line 79
    .line 80
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_mini_restore:I

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->g:Landroid/widget/ImageView;

    .line 90
    .line 91
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_mini_next:I

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->e:Landroid/widget/ImageView;

    .line 101
    .line 102
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_mini_forward:I

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->c:Landroid/widget/ImageView;

    .line 112
    .line 113
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_mini_backward:I

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    .line 117
    .line 118
    :goto_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->D()V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method private final F()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->X()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->j:Landroid/content/BroadcastReceiver;

    .line 20
    .line 21
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->j:Landroid/content/BroadcastReceiver;

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    invoke-static {p0, v1, v0, v2}, Lnh/g;->a(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    :goto_0
    return-void
.end method

.method private final N()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->n:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    .line 12
    .line 13
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 14
    .line 15
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 16
    .line 17
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 18
    .line 19
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 20
    .line 21
    return-void
.end method

.method private final P()V
    .locals 4

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->B0()Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->getX()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    int-to-float v2, v2

    .line 35
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->getRatio()F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    mul-float/2addr v2, v0

    .line 40
    float-to-int v0, v2

    .line 41
    int-to-float v0, v0

    .line 42
    const/high16 v2, 0x3f100000    # 0.5625f

    .line 43
    .line 44
    mul-float/2addr v0, v2

    .line 45
    float-to-int v0, v0

    .line 46
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->g:Z

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    .line 51
    .line 52
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    div-int/lit8 v2, v1, 0x2

    .line 56
    .line 57
    if-lt v3, v2, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    neg-int v1, v0

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    .line 62
    .line 63
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 64
    .line 65
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->a:Landroid/view/WindowManager;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    .line 78
    .line 79
    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;Landroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->v(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;Landroid/os/Message;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;IIIIIIIILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->C(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;IIIIIIIILandroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic d(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->b:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->h:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic g(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/view/WindowManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->a:Landroid/view/WindowManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->u(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->N()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final k()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->a:Landroid/view/WindowManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "window"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Landroid/view/WindowManager;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Landroid/view/WindowManager;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    iput-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->a:Landroid/view/WindowManager;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    .line 32
    .line 33
    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 37
    .line 38
    invoke-virtual {v0}, Lud/b;->B0()Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 51
    .line 52
    const/high16 v3, 0x3f100000    # 0.5625f

    .line 53
    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    int-to-float v1, v2

    .line 57
    const v4, 0x3e75c28f    # 0.24f

    .line 58
    .line 59
    .line 60
    mul-float/2addr v1, v4

    .line 61
    float-to-int v1, v1

    .line 62
    int-to-float v5, v1

    .line 63
    mul-float/2addr v5, v3

    .line 64
    float-to-int v3, v5

    .line 65
    sget v5, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l:I

    .line 66
    .line 67
    sub-int/2addr v2, v1

    .line 68
    sub-int/2addr v2, v5

    .line 69
    new-instance v6, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;

    .line 70
    .line 71
    invoke-direct {v6}, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v4}, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->setRatio(F)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v5}, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->setX(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v2}, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->setY(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v6}, Lud/b;->N3(Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->getX()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->getY()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    int-to-float v2, v2

    .line 96
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->getRatio()F

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    mul-float/2addr v2, v4

    .line 101
    float-to-int v2, v2

    .line 102
    int-to-float v4, v2

    .line 103
    mul-float/2addr v4, v3

    .line 104
    float-to-int v3, v4

    .line 105
    move-object v6, v1

    .line 106
    move v1, v2

    .line 107
    move v2, v0

    .line 108
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->c:Landroid/view/WindowManager$LayoutParams;

    .line 109
    .line 110
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 111
    .line 112
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 113
    .line 114
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 115
    .line 116
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 117
    .line 118
    iget-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->a:Landroid/view/WindowManager;

    .line 119
    .line 120
    if-eqz v1, :cond_3

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->N()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method private final p()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->n:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;

    .line 6
    .line 7
    new-instance v1, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$b;-><init>(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->setListener(Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$b;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final q()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->d:Landroid/widget/ImageView;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->i:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->h:Landroid/widget/ImageView;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->i:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->c:Landroid/widget/ImageView;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->i:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->e:Landroid/widget/ImageView;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->i:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->f:Landroid/widget/ImageView;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->i:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->g:Landroid/widget/ImageView;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->i:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$c;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->p()V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->E()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final u(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "action"

    .line 9
    .line 10
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    const-string v1, "pip_action"

    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private static final v(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;Landroid/os/Message;)Z
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p1, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq p1, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->M(Z)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->B()V

    .line 21
    .line 22
    .line 23
    :goto_0
    return v0
.end method


# virtual methods
.method public abstract A(I)V
.end method

.method public abstract G(Landroid/content/Intent;)Z
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public final H(Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->d:Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 7
    .line 8
    return-void
.end method

.method public final I(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public final J(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->f:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->f:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->D()V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v0, Lcom/startshorts/androidplayer/bean/eventbus/MiniWindowPlayEvent;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/eventbus/MiniWindowPlayEvent;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lau/c;->l(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final K(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->F()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    const v1, 0x3ee66666    # 0.45f

    .line 9
    .line 10
    .line 11
    mul-float/2addr v0, v1

    .line 12
    float-to-int v0, v0

    .line 13
    int-to-float v1, v0

    .line 14
    const/high16 v2, 0x3f100000    # 0.5625f

    .line 15
    .line 16
    mul-float/2addr v1, v2

    .line 17
    float-to-int v1, v1

    .line 18
    sget-object v2, Lfk/z;->a:Lfk/z;

    .line 19
    .line 20
    invoke-virtual {v2}, Lfk/z;->d()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    int-to-float v2, v2

    .line 25
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    sget-object v3, Lkk/f;->a:Lkk/f;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget-object v4, v4, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 42
    .line 43
    new-instance v5, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 44
    .line 45
    invoke-direct {v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 55
    .line 56
    .line 57
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_banner_placeholder:I

    .line 58
    .line 59
    invoke-virtual {v5, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    invoke-virtual {v5, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 67
    .line 68
    .line 69
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    invoke-virtual {v3, v4, v5}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final L()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->i:Landroidx/databinding/ViewStubProxy;

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ljk/e0;->g(Landroidx/databinding/ViewStubProxy;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->t()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->y()V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method protected final M(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x4

    .line 12
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->h:Landroid/os/Handler;

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v1, 0xbb8

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final O(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->j:Landroid/widget/ProgressBar;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->d:Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "mBinding"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final m()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->i:Landroidx/databinding/ViewStubProxy;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->m()V

    .line 22
    .line 23
    .line 24
    const/16 v1, 0x8

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final o(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->j:Landroid/widget/ProgressBar;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->m:Z

    .line 6
    .line 7
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->b(Landroid/view/LayoutInflater;)Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->H(Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Lau/c;->p(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->F()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->q()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->m:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lau/c;->r(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->h:Landroid/os/Handler;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->b:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 35
    .line 36
    .line 37
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->j:Landroid/content/BroadcastReceiver;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->d:Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->a:Landroid/view/WindowManager;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    .line 60
    .line 61
    :catch_1
    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->G(Landroid/content/Intent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->k()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->M(Z)V

    .line 12
    .line 13
    .line 14
    return p1
.end method

.method public final r()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public final receiveAppLanguageUpdatedEvent(Lcom/startshorts/androidplayer/bean/eventbus/AppLanguageUpdatedEvent;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/AppLanguageUpdatedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "receiveAppLanguageUpdatedEvent -> "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "MiniWindowService"

    .line 26
    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->E()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final receiveMiniWindowVisibleEvent(Lcom/startshorts/androidplayer/bean/eventbus/MiniWindowVisibleEvent;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/MiniWindowVisibleEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "receiveMiniWindowVisibleEvent -> "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "MiniWindowService"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/MiniWindowVisibleEvent;->getVisible()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->g:Z

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/MiniWindowVisibleEvent;->getVisible()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->e:Z

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->f:Z

    .line 48
    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->z(Z)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->e:Z

    .line 56
    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->f:Z

    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->x(Z)V

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->P()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract w(Z)V
.end method

.method public abstract x(Z)V
.end method

.method public abstract y()V
.end method

.method public abstract z(Z)V
.end method
