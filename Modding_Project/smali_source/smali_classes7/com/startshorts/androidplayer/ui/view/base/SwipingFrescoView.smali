.class public final Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;
.super Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;
.source "SwipingFrescoView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private j:Z

.field private final k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private final p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->k:I

    .line 3
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    move-result p1

    div-int/lit8 p1, p1, 0x6

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->p:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->k:I

    .line 6
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    move-result p1

    div-int/lit8 p1, p1, 0x6

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->p:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->k:I

    .line 9
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    move-result p1

    div-int/lit8 p1, p1, 0x6

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->p:I

    return-void
.end method


# virtual methods
.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    float-to-int v0, v0

    .line 24
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->m:I

    .line 25
    .line 26
    sub-int/2addr v2, v0

    .line 27
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->m:I

    .line 28
    .line 29
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->l:I

    .line 30
    .line 31
    sub-int v3, v0, v3

    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->k:I

    .line 38
    .line 39
    if-le v3, v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    float-to-int p1, p1

    .line 46
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->o:I

    .line 47
    .line 48
    sub-int/2addr p1, v3

    .line 49
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->k:I

    .line 54
    .line 55
    if-ge p1, v3, :cond_1

    .line 56
    .line 57
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->j:Z

    .line 58
    .line 59
    :cond_1
    iget p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->l:I

    .line 60
    .line 61
    sub-int/2addr v0, p1

    .line 62
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-ltz p1, :cond_5

    .line 67
    .line 68
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->j:Z

    .line 69
    .line 70
    if-eqz p1, :cond_5

    .line 71
    .line 72
    iget p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->n:I

    .line 73
    .line 74
    add-int/2addr p1, v2

    .line 75
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->n:I

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->j:Z

    .line 80
    .line 81
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->n:I

    .line 82
    .line 83
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->p:I

    .line 88
    .line 89
    if-lt v0, v2, :cond_3

    .line 90
    .line 91
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 94
    .line 95
    .line 96
    :cond_3
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->n:I

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    float-to-int v0, v0

    .line 104
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->l:I

    .line 105
    .line 106
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->m:I

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    float-to-int p1, p1

    .line 113
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;->o:I

    .line 114
    .line 115
    :cond_5
    :goto_0
    return v1
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView$a;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method
