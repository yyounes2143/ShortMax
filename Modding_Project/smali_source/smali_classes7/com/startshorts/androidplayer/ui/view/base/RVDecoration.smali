.class public Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "RVDecoration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$a;,
        Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;,
        Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final f:Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Z

.field private final e:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->f:Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;Landroid/graphics/drawable/Drawable;Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;Z)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dividerLine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "padding"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->a:Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;

    .line 5
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->b:Landroid/graphics/drawable/Drawable;

    .line 6
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->c:Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;

    .line 7
    iput-boolean p4, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->d:Z

    .line 8
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->e:Landroid/graphics/Rect;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;Landroid/graphics/drawable/Drawable;Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 1
    new-instance p3, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;

    const/4 p6, 0x0

    invoke-direct {p3, p6, p6, p6, p6}, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;-><init>(IIII)V

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;-><init>(Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;Landroid/graphics/drawable/Drawable;Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;Z)V

    return-void
.end method

.method private final drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->c:Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;->d()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->c:Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;->a()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    sub-int/2addr v2, v3

    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    sub-int/2addr v4, v5

    .line 41
    invoke-virtual {p1, v3, v0, v4, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    move v0, v1

    .line 50
    :goto_0
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->d:Z

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    add-int/lit8 v3, v3, -0x1

    .line 64
    .line 65
    :goto_1
    if-ge v1, v3, :cond_3

    .line 66
    .line 67
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    if-eqz v5, :cond_2

    .line 76
    .line 77
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->e:Landroid/graphics/Rect;

    .line 78
    .line 79
    invoke-virtual {v5, v4, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->e:Landroid/graphics/Rect;

    .line 83
    .line 84
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 85
    .line 86
    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    invoke-static {v4}, Ljk/h;->b(F)I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    add-int/2addr v5, v4

    .line 95
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->b:Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    sub-int v4, v5, v4

    .line 102
    .line 103
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->b:Landroid/graphics/drawable/Drawable;

    .line 104
    .line 105
    invoke-virtual {v6, v4, v0, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    .line 107
    .line 108
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->b:Landroid/graphics/drawable/Drawable;

    .line 109
    .line 110
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    .line 112
    .line 113
    add-int/lit8 v1, v1, 0x1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method private final drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->c:Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;->b()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->c:Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;->c()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    sub-int/2addr v2, v3

    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    sub-int/2addr v4, v5

    .line 41
    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    move v0, v1

    .line 50
    :goto_0
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->d:Z

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    add-int/lit8 v3, v3, -0x1

    .line 64
    .line 65
    :goto_1
    if-ge v1, v3, :cond_2

    .line 66
    .line 67
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->e:Landroid/graphics/Rect;

    .line 72
    .line 73
    invoke-virtual {p2, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 74
    .line 75
    .line 76
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->e:Landroid/graphics/Rect;

    .line 77
    .line 78
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 79
    .line 80
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-static {v4}, Ljk/h;->b(F)I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    add-int/2addr v5, v4

    .line 89
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->b:Landroid/graphics/drawable/Drawable;

    .line 90
    .line 91
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    sub-int v4, v5, v4

    .line 96
    .line 97
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->b:Landroid/graphics/drawable/Drawable;

    .line 98
    .line 99
    invoke-virtual {v6, v0, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 100
    .line 101
    .line 102
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->b:Landroid/graphics/drawable/Drawable;

    .line 103
    .line 104
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 105
    .line 106
    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 111
    .line 112
    .line 113
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "outRect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "parent"

    .line 12
    .line 13
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p2, "state"

    .line 17
    .line 18
    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->a:Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;

    .line 22
    .line 23
    sget-object p3, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;->VERTICAL:Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;

    .line 24
    .line 25
    const/4 p4, 0x0

    .line 26
    if-ne p2, p3, :cond_0

    .line 27
    .line 28
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->b:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-virtual {p1, p4, p4, p4, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->b:Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-virtual {p1, p4, p4, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "parent"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "state"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    if-nez p3, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->a:Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;

    .line 24
    .line 25
    sget-object v0, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;->HORIZONTAL:Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;

    .line 26
    .line 27
    if-ne p3, v0, :cond_1

    .line 28
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method
