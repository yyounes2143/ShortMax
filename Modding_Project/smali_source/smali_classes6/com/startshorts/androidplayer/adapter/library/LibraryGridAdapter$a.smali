.class final Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter$a;
.super Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;
.source "LibraryGridAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder<",
        "Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic k:Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter;Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter$a;->k:Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 16
    .line 17
    new-instance p1, Lcom/startshorts/androidplayer/adapter/library/b;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/startshorts/androidplayer/adapter/library/b;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter$a;->j:Lms/i;

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic g()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter$a;->i()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private static final i()F
    .locals 1

    .line 1
    const/high16 v0, 0x40c00000    # 6.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    return v0
.end method

.method private final j()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter$a;->j:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final k(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    const/high16 v0, 0x40800000    # 4.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v1, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final l(Landroid/widget/TextView;)V
    .locals 3

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
    const/high16 v1, 0x40800000    # 4.0f

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 25
    .line 26
    .line 27
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 28
    .line 29
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic e(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter$a;->h(ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h(ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;)V
    .locals 5
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 9
    .line 10
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter$a;->k:Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v3, Lid/c;->a:Lid/c;

    .line 25
    .line 26
    invoke-virtual {v3}, Lid/c;->b()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {v1, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lid/c;->a()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter;->p(Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter;)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter;->o(Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter$a;->j()F

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 63
    .line 64
    .line 65
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 68
    .line 69
    .line 70
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    invoke-virtual {p1, v0, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 89
    .line 90
    const-string/jumbo v0, "tvLabelStyle"

    .line 91
    .line 92
    .line 93
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getCornerLabelStyle()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getCornerLabelText()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-virtual {p0, p1, v0, p2}, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter$a;->m(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final m(Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 2
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq p2, v1, :cond_3

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    if-eq p2, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    if-eq p2, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x6

    .line 21
    if-eq p2, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    sget v1, Lcom/startshorts/androidplayer/R$color;->drama_member_only_label:I

    .line 29
    .line 30
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_member_only_label:I

    .line 42
    .line 43
    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter$a;->l(Landroid/widget/TextView;)V

    .line 51
    .line 52
    .line 53
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_label_style_member_only:I

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    sget v0, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter$a;->k(Landroid/widget/TextView;)V

    .line 73
    .line 74
    .line 75
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_label_style_new:I

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    sget v0, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 86
    .line 87
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter$a;->k(Landroid/widget/TextView;)V

    .line 95
    .line 96
    .line 97
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_label_style_hot:I

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    sget v1, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 108
    .line 109
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_excusive_label:I

    .line 121
    .line 122
    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter$a;->l(Landroid/widget/TextView;)V

    .line 130
    .line 131
    .line 132
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_label_style_exclusive:I

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 135
    .line 136
    .line 137
    :goto_0
    if-eqz p3, :cond_5

    .line 138
    .line 139
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    if-nez p2, :cond_4

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_4
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    const/4 p2, 0x0

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_5
    :goto_1
    const/4 p2, 0x4

    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    :goto_2
    return-void
.end method
