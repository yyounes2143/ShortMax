.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$c;
.super Ljava/lang/Object;
.source "DiscoverCategoryViewPagerItemAdapter.kt"

# interfaces
.implements Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:F

.field final synthetic b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$c;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$c;->a:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 2
    sget-object p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->t:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$b;

    invoke-static {p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$b;->a(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$b;)F

    move-result p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$c;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;F)V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "view"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    int-to-float v1, v1

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 17
    .line 18
    .line 19
    const/high16 v1, -0x40800000    # -1.0f

    .line 20
    .line 21
    cmpg-float v1, p2, v1

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    if-gez v1, :cond_0

    .line 26
    .line 27
    iget v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$c;->a:F

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$c;->a:F

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 39
    .line 40
    cmpg-float v1, p2, v1

    .line 41
    .line 42
    if-gtz v1, :cond_2

    .line 43
    .line 44
    cmpg-float v1, p2, v3

    .line 45
    .line 46
    if-gez v1, :cond_1

    .line 47
    .line 48
    int-to-float v1, v2

    .line 49
    add-float v4, v1, p2

    .line 50
    .line 51
    iget v5, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$c;->a:F

    .line 52
    .line 53
    sub-float/2addr v1, v5

    .line 54
    mul-float/2addr v4, v1

    .line 55
    add-float/2addr v4, v5

    .line 56
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    int-to-float v1, v2

    .line 64
    sub-float v4, v1, p2

    .line 65
    .line 66
    iget v5, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$c;->a:F

    .line 67
    .line 68
    sub-float/2addr v1, v5

    .line 69
    mul-float/2addr v4, v1

    .line 70
    add-float/2addr v4, v5

    .line 71
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    iget v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$c;->a:F

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 81
    .line 82
    .line 83
    iget v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$c;->a:F

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 86
    .line 87
    .line 88
    :goto_0
    sget-object v1, Lfk/v;->a:Lfk/v;

    .line 89
    .line 90
    invoke-virtual {v1}, Lfk/v;->b()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_3

    .line 95
    .line 96
    const/4 v2, -0x1

    .line 97
    :cond_3
    cmpg-float v4, p2, v3

    .line 98
    .line 99
    if-gez v4, :cond_5

    .line 100
    .line 101
    if-eqz v1, :cond_6

    .line 102
    .line 103
    :cond_4
    int-to-float v3, v0

    .line 104
    goto :goto_1

    .line 105
    :cond_5
    if-eqz v1, :cond_4

    .line 106
    .line 107
    :cond_6
    :goto_1
    if-gez v4, :cond_7

    .line 108
    .line 109
    int-to-float p2, v2

    .line 110
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->x()F

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    const/high16 v1, 0x40400000    # 3.0f

    .line 115
    .line 116
    sub-float/2addr v0, v1

    .line 117
    mul-float/2addr p2, v0

    .line 118
    goto :goto_2

    .line 119
    :cond_7
    int-to-float v0, v2

    .line 120
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->x()F

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    sget-object v2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->t:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$b;

    .line 125
    .line 126
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$b;->b(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$b;)F

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    mul-float/2addr p2, v2

    .line 131
    add-float/2addr v1, p2

    .line 132
    mul-float p2, v0, v1

    .line 133
    .line 134
    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    :catch_0
    return-void
.end method
