.class public final Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;
.super Landroid/widget/FrameLayout;
.source "GuideLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout$a;,
        Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout$b;,
        Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGuideLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GuideLayout.kt\ncom/startshorts/androidplayer/ui/view/guide/core/GuideLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,145:1\n1863#2,2:146\n1863#2,2:152\n13423#3,2:148\n13423#3,2:150\n*S KotlinDebug\n*F\n+ 1 GuideLayout.kt\ncom/startshorts/androidplayer/ui/view/guide/core/GuideLayout\n*L\n74#1:146,2\n120#1:152,2\n109#1:148,2\n112#1:150,2\n*E\n"
    }
.end annotation


# static fields
.field public static final f:Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lcom/startshorts/androidplayer/ui/view/guide/core/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Lcom/startshorts/androidplayer/ui/view/guide/model/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->f:Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startshorts/androidplayer/ui/view/guide/model/a;Lcom/startshorts/androidplayer/ui/view/guide/core/a;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/ui/view/guide/model/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/ui/view/guide/core/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    const-string v0, "page"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->b:Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->i()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->setGuidePage(Lcom/startshorts/androidplayer/ui/view/guide/model/a;)V

    .line 25
    .line 26
    .line 27
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->a:Lcom/startshorts/androidplayer/ui/view/guide/core/a;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->e(Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->l(Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/startshorts/androidplayer/ui/view/guide/model/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->f(Lcom/startshorts/androidplayer/ui/view/guide/model/a;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d(Lcom/startshorts/androidplayer/ui/view/guide/model/a;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->h()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 27
    .line 28
    const/4 v3, -0x1

    .line 29
    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->f()[I

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    array-length v4, v3

    .line 39
    move v5, v2

    .line 40
    :goto_0
    if-ge v5, v4, :cond_1

    .line 41
    .line 42
    aget v6, v3, v5

    .line 43
    .line 44
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    new-instance v7, Lij/c;

    .line 49
    .line 50
    invoke-direct {v7, p0}, Lij/c;-><init>(Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v5, v5, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->d()[I

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    array-length v4, v3

    .line 66
    :goto_1
    if-ge v2, v4, :cond_2

    .line 67
    .line 68
    aget v5, v3, v2

    .line 69
    .line 70
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    new-instance v6, Lij/d;

    .line 75
    .line 76
    invoke-direct {v6, p1}, Lij/d;-><init>(Lcom/startshorts/androidplayer/ui/view/guide/model/a;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->a:Lcom/startshorts/androidplayer/ui/view/guide/core/a;

    .line 86
    .line 87
    if-eqz v2, :cond_3

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->i()Ljj/b;

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->j()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Ljava/lang/Iterable;

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Lkj/a;

    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 122
    .line 123
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    check-cast v1, Landroid/view/ViewGroup;

    .line 127
    .line 128
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->a:Lcom/startshorts/androidplayer/ui/view/guide/core/a;

    .line 129
    .line 130
    invoke-virtual {v0, v1, v2}, Lkj/a;->a(Landroid/view/ViewGroup;Lcom/startshorts/androidplayer/ui/view/guide/core/a;)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    return-void
.end method

.method private static final e(Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final f(Lcom/startshorts/androidplayer/ui/view/guide/model/a;Landroid/view/View;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->e()Lyd/d;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lyd/d;->a(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private final g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Landroid/view/ViewGroup;

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
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->d:Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout$b;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-interface {v0, p0}, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout$b;->a(Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method private final h(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->c:Lcom/startshorts/androidplayer/ui/view/guide/model/a;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->g()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_6

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 34
    .line 35
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    check-cast v2, Landroid/view/ViewGroup;

    .line 39
    .line 40
    invoke-interface {v1, v2}, Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight;->a(Landroid/view/View;)Landroid/graphics/RectF;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-interface {v1}, Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight;->getShape()Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight$Shape;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    const/4 v3, -0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    sget-object v4, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout$c;->$EnumSwitchMapping$0:[I

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    aget v3, v4, v3

    .line 61
    .line 62
    :goto_1
    const/4 v4, 0x1

    .line 63
    if-eq v3, v4, :cond_5

    .line 64
    .line 65
    const/4 v4, 0x2

    .line 66
    if-eq v3, v4, :cond_4

    .line 67
    .line 68
    const/4 v4, 0x3

    .line 69
    if-eq v3, v4, :cond_3

    .line 70
    .line 71
    const/4 v4, 0x4

    .line 72
    if-eq v3, v4, :cond_2

    .line 73
    .line 74
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->b:Landroid/graphics/Paint;

    .line 75
    .line 76
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->b:Landroid/graphics/Paint;

    .line 81
    .line 82
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    invoke-interface {v1}, Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight;->b()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    int-to-float v3, v3

    .line 91
    invoke-interface {v1}, Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight;->b()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    int-to-float v4, v4

    .line 96
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->b:Landroid/graphics/Paint;

    .line 97
    .line 98
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->b:Landroid/graphics/Paint;

    .line 103
    .line 104
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_5
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    invoke-interface {v1}, Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight;->getRadius()F

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->b:Landroid/graphics/Paint;

    .line 121
    .line 122
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 123
    .line 124
    .line 125
    :goto_2
    invoke-direct {p0, p1, v1, v2}, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->j(Landroid/graphics/Canvas;Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight;Landroid/graphics/RectF;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_6
    return-void
.end method

.method private final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->b:Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    .line 8
    .line 9
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->e:I

    .line 38
    .line 39
    return-void
.end method

.method private final j(Landroid/graphics/Canvas;Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight;Landroid/graphics/RectF;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static final l(Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->c:Lcom/startshorts/androidplayer/ui/view/guide/model/a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->k()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->k()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private final setGuidePage(Lcom/startshorts/androidplayer/ui/view/guide/model/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->c:Lcom/startshorts/androidplayer/ui/view/guide/model/a;

    .line 2
    .line 3
    new-instance p1, Lij/e;

    .line 4
    .line 5
    invoke-direct {p1, p0}, Lij/e;-><init>(Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final k()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->c:Lcom/startshorts/androidplayer/ui/view/guide/model/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->d(Lcom/startshorts/androidplayer/ui/view/guide/model/a;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->c:Lcom/startshorts/androidplayer/ui/view/guide/model/a;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->c()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    :goto_1
    const/high16 v0, -0x4e000000

    .line 38
    .line 39
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->h(Landroid/graphics/Canvas;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final setOnGuideLayoutDismissListener(Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;->d:Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout$b;

    .line 2
    .line 3
    return-void
.end method
