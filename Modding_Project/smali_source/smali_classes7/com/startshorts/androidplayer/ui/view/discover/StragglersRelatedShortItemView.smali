.class public final Lcom/startshorts/androidplayer/ui/view/discover/StragglersRelatedShortItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "StragglersRelatedShortItemView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public a:Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortItemBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/discover/StragglersRelatedShortItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/discover/StragglersRelatedShortItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/discover/StragglersRelatedShortItemView;->t(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic q(Lkotlin/jvm/functions/Function2;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;ILandroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/discover/StragglersRelatedShortItemView;->s(Lkotlin/jvm/functions/Function2;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;ILandroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final s(Lkotlin/jvm/functions/Function2;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;ILandroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method


# virtual methods
.method public final getBinding()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortItemBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/StragglersRelatedShortItemView;->a:Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortItemBinding;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "binding"

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

.method public final r(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;ILkotlin/jvm/functions/Function2;)V
    .locals 7
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            "I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onClickItem"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/discover/StragglersRelatedShortItemView;->getBinding()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortItemBinding;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortItemBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 18
    .line 19
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 20
    .line 21
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/high16 v3, 0x42140000    # 37.0f

    .line 32
    .line 33
    invoke-static {v3}, Ljk/g;->a(F)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 38
    .line 39
    .line 40
    const/high16 v3, 0x42400000    # 48.0f

    .line 41
    .line 42
    invoke-static {v3}, Ljk/g;->a(F)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 47
    .line 48
    .line 49
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 52
    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 56
    .line 57
    .line 58
    const/high16 v3, 0x40c00000    # 6.0f

    .line 59
    .line 60
    invoke-static {v3}, Ljk/g;->a(F)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    int-to-float v3, v3

    .line 65
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 66
    .line 67
    .line 68
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/discover/StragglersRelatedShortItemView;->getBinding()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortItemBinding;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortItemBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/discover/StragglersRelatedShortItemView;->getBinding()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortItemBinding;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v0, "getRoot(...)"

    .line 95
    .line 96
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance v4, Lgj/c;

    .line 100
    .line 101
    invoke-direct {v4, p3, p1, p2}, Lgj/c;-><init>(Lkotlin/jvm/functions/Function2;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;I)V

    .line 102
    .line 103
    .line 104
    const/4 v5, 0x1

    .line 105
    const/4 v6, 0x0

    .line 106
    const-wide/16 v2, 0x0

    .line 107
    .line 108
    invoke-static/range {v1 .. v6}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final setBinding(Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortItemBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortItemBinding;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/StragglersRelatedShortItemView;->a:Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortItemBinding;

    .line 7
    .line 8
    return-void
.end method

.method public final t(Landroid/content/Context;)V
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
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-static {p1, p0, v0}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortItemBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortItemBinding;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/discover/StragglersRelatedShortItemView;->setBinding(Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredRelatedShortItemBinding;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
