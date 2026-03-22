.class public Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "SubsProOldStyleView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private b:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


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
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final B(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    const-string v1, "getString(...)"

    .line 12
    .line 13
    if-eq p1, v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-eq p1, v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x5

    .line 22
    if-eq p1, v0, :cond_3

    .line 23
    .line 24
    const/4 v0, 0x6

    .line 25
    if-eq p1, v0, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x7

    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_view_per_year_new:I

    .line 36
    .line 37
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_view_per_month_new:I

    .line 54
    .line 55
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_view_per_week_new:I

    .line 72
    .line 73
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-object p2

    .line 85
    :cond_4
    :goto_1
    const-string p1, ""

    .line 86
    .line 87
    return-object p1
.end method

.method private final C(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    const-string v1, "getString(...)"

    .line 12
    .line 13
    if-eq p1, v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-eq p1, v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x5

    .line 22
    if-eq p1, v0, :cond_3

    .line 23
    .line 24
    const/4 v0, 0x6

    .line 25
    if-eq p1, v0, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x7

    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_view_renew_per_year:I

    .line 36
    .line 37
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_view_renew_per_month:I

    .line 54
    .line 55
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_view_renew_per_week:I

    .line 72
    .line 73
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-object p2

    .line 85
    :cond_4
    :goto_1
    const-string p1, ""

    .line 86
    .line 87
    return-object p1
.end method

.method private final D(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "IDR"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "INR"

    .line 13
    .line 14
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "THB"

    .line 21
    .line 22
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const-string v0, "JPY"

    .line 29
    .line 30
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    const-string v0, "ZAR"

    .line 37
    .line 38
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    const-string v0, "KRW"

    .line 45
    .line 46
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    const-string v0, "VND"

    .line 53
    .line 54
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    :cond_0
    const/4 v1, 0x1

    .line 61
    :cond_1
    return v1
.end method

.method private static final E(Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;ZLandroid/view/View;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->b:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v2, v1

    .line 22
    :goto_1
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    :cond_2
    sub-int/2addr v0, v2

    .line 29
    sub-int/2addr v0, v1

    .line 30
    sget-object p1, Lfk/z;->a:Lfk/z;

    .line 31
    .line 32
    invoke-virtual {p1}, Lfk/z;->b()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    sub-int/2addr v0, p2

    .line 37
    invoke-virtual {p1}, Lfk/z;->d()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    sub-int/2addr v0, p2

    .line 42
    invoke-virtual {p1}, Lfk/z;->m()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    sub-int/2addr v0, p2

    .line 47
    invoke-virtual {p1}, Lfk/z;->s()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    sub-int/2addr v0, p1

    .line 52
    sget-object p1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->Companion:Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;

    .line 53
    .line 54
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;->getCardName(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->c:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 63
    .line 64
    if-eqz p2, :cond_3

    .line 65
    .line 66
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    new-instance p1, Lck/g;

    .line 70
    .line 71
    invoke-direct {p1, p2, p0}, Lck/g;-><init>(Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;)V

    .line 72
    .line 73
    .line 74
    const/high16 p0, 0x41900000    # 18.0f

    .line 75
    .line 76
    const/high16 p3, 0x41500000    # 13.0f

    .line 77
    .line 78
    invoke-static {p2, p0, p3, v0, p1}, Ljk/y;->c(Landroid/widget/TextView;FFILkotlin/jvm/functions/Function0;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    sget p1, Lcom/startshorts/androidplayer/R$color;->color_subs_type_view_pro_card_name_start:I

    .line 86
    .line 87
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    sget p3, Lcom/startshorts/androidplayer/R$color;->color_subs_type_view_pro_card_name_end:I

    .line 96
    .line 97
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-virtual {p2, p0, p1}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor(II)V

    .line 102
    .line 103
    .line 104
    :cond_3
    return-void
.end method

.method private static final F(Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p1, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final G(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;I)Lkotlin/Unit;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 7
    .line 8
    int-to-long v2, p2

    .line 9
    const/4 p2, 0x1

    .line 10
    invoke-virtual {v1, v2, v3, p2}, Lcom/startshorts/androidplayer/utils/TimeUtil;->c(JZ)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    sget-object p2, Lqf/h;->a:Lqf/h;

    .line 18
    .line 19
    invoke-virtual {p2, p0}, Lqf/h;->o(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    invoke-static {p0}, Ljk/u;->d(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-lez p0, :cond_0

    .line 30
    .line 31
    sget-object p2, Lfk/u;->a:Lfk/u;

    .line 32
    .line 33
    sget v1, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 34
    .line 35
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p2, v1, p0}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string p2, " | "

    .line 48
    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object p0, p1, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 56
    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p0
.end method

.method private static final H(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lqf/h;->a:Lqf/h;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lqf/h;->o(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p0}, Ljk/u;->d(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-lez p0, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p1, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p1, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 28
    .line 29
    sget v1, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 30
    .line 31
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, v1, p0}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p0, p1, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 48
    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    const/16 p1, 0x8

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 57
    .line 58
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p0
.end method

.method public static synthetic setSku$default(Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 7

    .line 1
    if-nez p7, :cond_3

    .line 2
    .line 3
    and-int/lit8 p7, p6, 0x4

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p7, :cond_0

    .line 7
    .line 8
    move-object v4, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v4, p3

    .line 11
    :goto_0
    and-int/lit8 p3, p6, 0x8

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    const/4 p4, 0x0

    .line 16
    :cond_1
    move v5, p4

    .line 17
    and-int/lit8 p3, p6, 0x10

    .line 18
    .line 19
    if-eqz p3, :cond_2

    .line 20
    .line 21
    move-object v6, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    move-object v6, p5

    .line 24
    :goto_1
    move-object v1, p0

    .line 25
    move-object v2, p1

    .line 26
    move-object v3, p2

    .line 27
    invoke-virtual/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->setSku(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 32
    .line 33
    const-string p1, "Super calls with default arguments not supported in this target, function: setSku"

    .line 34
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public static synthetic v(Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->F(Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->H(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->G(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y(Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;ZLandroid/view/View;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->E(Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;ZLandroid/view/View;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->m:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    const-string v2, "ReproductionSubsView"

    .line 15
    .line 16
    const-string v3, "cancelCountDownJob"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->m:Lkotlinx/coroutines/r;

    .line 22
    .line 23
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_subs_type_pro_2:I

    .line 2
    .line 3
    return v0
.end method

.method public final setSku(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;)V
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "from"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "sku"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayment()Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    move-result-object v2

    const/high16 v4, 0x41200000    # 10.0f

    .line 2
    const-string v5, ""

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v2, :cond_e

    sget-object v8, Lqf/h;->a:Lqf/h;

    invoke-virtual {v8, v2}, Lqf/h;->m(Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 3
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    if-lez v8, :cond_2

    .line 4
    iget-object v8, v0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    if-eqz v8, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getLabelIcon()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 6
    sget-object v9, Lkk/f;->a:Lkk/f;

    .line 7
    iget-object v10, v0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->k:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 8
    new-instance v11, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    invoke-direct {v11}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 9
    invoke-virtual {v11, v8}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 10
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    invoke-virtual {v9, v10, v11}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 12
    iget-object v8, v0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->k:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    if-eqz v8, :cond_2

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_2
    iget-object v8, v0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->j:Landroid/view/View;

    if-eqz v8, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayment()Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_1

    :cond_3
    move v9, v7

    :goto_1
    if-lez v9, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayment()Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->isFirstBuy()Ljava/lang/Boolean;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    goto :goto_2

    :cond_4
    move v9, v7

    :goto_2
    if-eqz v9, :cond_5

    move v9, v7

    goto :goto_3

    :cond_5
    const/4 v9, 0x4

    :goto_3
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_6
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayAmount()Ljava/lang/Float;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_4

    :cond_7
    move v8, v9

    .line 15
    :goto_4
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getFirstAmount()Ljava/lang/Float;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    goto :goto_5

    :cond_8
    move v10, v9

    :goto_5
    cmpl-float v9, v10, v9

    if-lez v9, :cond_a

    cmpg-float v8, v10, v8

    if-gez v8, :cond_a

    .line 16
    iget-object v8, v0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    if-eqz v8, :cond_c

    .line 17
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    move-result v9

    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPriceText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->B(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPriceText()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_9

    move-object v9, v5

    :cond_9
    invoke-direct {v0, v9}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->D(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 19
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_6

    .line 20
    :cond_a
    iget-object v8, v0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    if-eqz v8, :cond_c

    .line 21
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    move-result v9

    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getOriginPriceText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->B(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getOriginPriceText()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_b

    move-object v9, v5

    :cond_b
    invoke-direct {v0, v9}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->D(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 23
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 24
    :cond_c
    :goto_6
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    if-eqz v4, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    move-result v8

    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getOriginPriceText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v8, v2}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :cond_d
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    if-eqz v2, :cond_12

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 26
    :cond_e
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->j:Landroid/view/View;

    if-eqz v2, :cond_f

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 27
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 28
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v2, v8}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->B(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 29
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v2, v8}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->B(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    :goto_7
    iget-object v8, v0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    if-eqz v8, :cond_11

    .line 31
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->D(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 33
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 34
    :cond_11
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    if-eqz v2, :cond_12

    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v4, v8}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :cond_12
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getExpireTime()J

    move-result-wide v8

    .line 36
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountTime()Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v10, 0x0

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_9

    :cond_13
    move-wide v12, v10

    .line 37
    :goto_9
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    move-result-wide v14

    .line 38
    sget-object v4, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    invoke-virtual {v4}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->f()Z

    move-result v4

    const/16 v3, 0x3e8

    if-eqz v4, :cond_14

    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    move-result v4

    if-eqz v4, :cond_14

    sub-long/2addr v8, v14

    int-to-long v3, v3

    div-long/2addr v8, v3

    goto :goto_a

    :cond_14
    sub-long/2addr v12, v14

    int-to-long v3, v3

    div-long v8, v12, v3

    :goto_a
    cmp-long v3, v8, v10

    if-lez v3, :cond_16

    .line 39
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    if-eqz v3, :cond_15

    invoke-static {v3}, Ljk/b0;->l(Landroid/view/View;)V

    .line 40
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->A()V

    .line 41
    sget-object v3, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    long-to-int v4, v8

    new-instance v8, Lck/d;

    invoke-direct {v8, v1, v0}, Lck/d;-><init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;)V

    new-instance v9, Lck/e;

    move-object/from16 v10, p5

    invoke-direct {v9, v1, v0, v10}, Lck/e;-><init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v3, v4, v8, v9}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->d(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    move-result-object v3

    iput-object v3, v0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->m:Lkotlinx/coroutines/r;

    goto :goto_b

    .line 42
    :cond_16
    sget-object v3, Lqf/h;->a:Lqf/h;

    invoke-virtual {v3, v1}, Lqf/h;->o(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    move-result v3

    .line 43
    invoke-static/range {p2 .. p2}, Ljk/u;->d(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I

    move-result v4

    if-lez v4, :cond_18

    if-nez v3, :cond_18

    .line 44
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    if-eqz v3, :cond_17

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 45
    :cond_17
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    if-eqz v3, :cond_19

    sget-object v8, Lfk/u;->a:Lfk/u;

    sget v9, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v9, v4}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 46
    :cond_18
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    if-eqz v3, :cond_19

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 47
    :cond_19
    :goto_b
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1c

    const/4 v8, 0x2

    if-eq v3, v8, :cond_1b

    const/4 v8, 0x4

    if-eq v3, v8, :cond_1a

    const/4 v8, 0x5

    if-eq v3, v8, :cond_1c

    const/4 v8, 0x6

    if-eq v3, v8, :cond_1b

    const/4 v8, 0x7

    if-eq v3, v8, :cond_1a

    goto :goto_c

    .line 48
    :cond_1a
    sget-object v3, Lfk/u;->a:Lfk/u;

    sget v5, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_annual_pro_card_desc:I

    invoke-virtual {v3, v5}, Lfk/u;->d(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    .line 49
    :cond_1b
    sget-object v3, Lfk/u;->a:Lfk/u;

    sget v5, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_monthly_pro_card_desc:I

    invoke-virtual {v3, v5}, Lfk/u;->d(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    .line 50
    :cond_1c
    sget-object v3, Lfk/u;->a:Lfk/u;

    sget v5, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_weekly_pro_card_desc:I

    invoke-virtual {v3, v5}, Lfk/u;->d(I)Ljava/lang/String;

    move-result-object v5

    .line 51
    :goto_c
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_d

    :cond_1d
    move v4, v7

    :goto_d
    if-eqz v4, :cond_1e

    .line 52
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    if-eqz v2, :cond_20

    invoke-static {v2}, Ljk/b0;->d(Landroid/view/View;)V

    goto :goto_e

    .line 53
    :cond_1e
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    if-eqz v3, :cond_20

    .line 54
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->e()Ljava/lang/String;

    move-result-object v2

    const-string v4, "fil"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/high16 v2, 0x41300000    # 11.0f

    .line 56
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v2, 0x3

    .line 57
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 58
    :cond_1f
    invoke-static {v3}, Ljk/b0;->l(Landroid/view/View;)V

    .line 59
    :cond_20
    :goto_e
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->g:Landroid/view/View;

    if-eqz v2, :cond_21

    .line 60
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 61
    new-instance v3, Lck/f;

    invoke-direct {v3, v0, v7, v2, v1}, Lck/f;-><init>(Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;ZLandroid/view/View;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_21
    return-void
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/startshorts/androidplayer/R$id;->card_bg_view:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->b:Landroid/view/View;

    .line 13
    .line 14
    sget p1, Lcom/startshorts/androidplayer/R$id;->card_name_tv:I

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->c:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 23
    .line 24
    sget p1, Lcom/startshorts/androidplayer/R$id;->card_desc_tv:I

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 33
    .line 34
    sget p1, Lcom/startshorts/androidplayer/R$id;->discount_tv:I

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 43
    .line 44
    sget p1, Lcom/startshorts/androidplayer/R$id;->first_recharge_tv:I

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 53
    .line 54
    sget p1, Lcom/startshorts/androidplayer/R$id;->detail_layout:I

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->g:Landroid/view/View;

    .line 61
    .line 62
    sget p1, Lcom/startshorts/androidplayer/R$id;->current_price_tv:I

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 71
    .line 72
    sget p1, Lcom/startshorts/androidplayer/R$id;->renew_price_tv:I

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 79
    .line 80
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 81
    .line 82
    sget p1, Lcom/startshorts/androidplayer/R$id;->llLabel:I

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->j:Landroid/view/View;

    .line 89
    .line 90
    sget p1, Lcom/startshorts/androidplayer/R$id;->ivPayLogo:I

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 97
    .line 98
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->k:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 99
    .line 100
    sget p1, Lcom/startshorts/androidplayer/R$id;->tvLabel:I

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 107
    .line 108
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 109
    .line 110
    return-void
.end method

.method public final z(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->b:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method
