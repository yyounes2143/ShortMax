.class public final Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "YouMightLikeView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nYouMightLikeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 YouMightLikeView.kt\ncom/startshorts/androidplayer/ui/view/search/YouMightLikeView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,137:1\n1#2:138\n1872#3,3:139\n*S KotlinDebug\n*F\n+ 1 YouMightLikeView.kt\ncom/startshorts/androidplayer/ui/view/search/YouMightLikeView\n*L\n88#1:139,3\n*E\n"
    }
.end annotation


# static fields
.field public static final d:Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/search/YouMightLikeKey;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->d:Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView$a;

    .line 8
    .line 9
    return-void
.end method

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
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->c:Ljava/util/List;

    .line 5
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->u(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic q(Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->v(Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r(Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;Lcom/startshorts/androidplayer/bean/search/YouMightLikeKey;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->t(Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;Lcom/startshorts/androidplayer/bean/search/YouMightLikeKey;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final t(Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;Lcom/startshorts/androidplayer/bean/search/YouMightLikeKey;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->a:Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/search/b$c;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/search/YouMightLikeKey;->getHotName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const-string p1, ""

    .line 25
    .line 26
    :cond_0
    invoke-direct {p2, p1}, Lcom/startshorts/androidplayer/viewmodel/search/b$c;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

.method private static final v(Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->x(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->w()V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method private final x(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [F

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-wide/16 v0, 0x1f4

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method


# virtual methods
.method public final getBinding()Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->b:Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;

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

.method public final getMList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/search/YouMightLikeKey;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;->b:Lcom/google/android/flexbox/FlexboxLayout;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->c:Ljava/util/List;

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    add-int/lit8 v4, v2, 0x1

    .line 31
    .line 32
    if-gez v2, :cond_0

    .line 33
    .line 34
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 35
    .line 36
    .line 37
    :cond_0
    check-cast v3, Lcom/startshorts/androidplayer/bean/search/YouMightLikeKey;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;->b:Lcom/google/android/flexbox/FlexboxLayout;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const/4 v6, 0x0

    .line 54
    invoke-static {v5, v6, v1}, Lcom/startshorts/androidplayer/databinding/ItemYouMightLikeKeywordBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ItemYouMightLikeKeywordBinding;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemYouMightLikeKeywordBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/YouMightLikeKey;->getHotName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/YouMightLikeKey;->isHot()Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_1

    .line 78
    .line 79
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemYouMightLikeKeywordBinding;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 80
    .line 81
    invoke-static {v6}, Ljk/b0;->l(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemYouMightLikeKeywordBinding;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 86
    .line 87
    invoke-static {v6}, Ljk/b0;->d(Landroid/view/View;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemYouMightLikeKeywordBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 91
    .line 92
    new-instance v7, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v8, "history key word:"

    .line 98
    .line 99
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    iget-object v8, v5, Lcom/startshorts/androidplayer/databinding/ItemYouMightLikeKeywordBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 113
    .line 114
    const-string v6, "clRoot"

    .line 115
    .line 116
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance v11, Lvj/i;

    .line 120
    .line 121
    invoke-direct {v11, p0, v3}, Lvj/i;-><init>(Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;Lcom/startshorts/androidplayer/bean/search/YouMightLikeKey;)V

    .line 122
    .line 123
    .line 124
    const/4 v12, 0x1

    .line 125
    const/4 v13, 0x0

    .line 126
    const-wide/16 v9, 0x0

    .line 127
    .line 128
    invoke-static/range {v8 .. v13}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 136
    .line 137
    .line 138
    move v2, v4

    .line 139
    goto :goto_0

    .line 140
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->c:Ljava/util/List;

    .line 146
    .line 147
    check-cast v1, Ljava/util/Collection;

    .line 148
    .line 149
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    .line 151
    .line 152
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_3

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;->b:Lcom/google/android/flexbox/FlexboxLayout;

    .line 163
    .line 164
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    new-instance v2, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView$b;

    .line 169
    .line 170
    invoke-direct {v2, p0, v0}, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView$b;-><init>(Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;Ljava/util/List;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 174
    .line 175
    .line 176
    :cond_3
    return-void
.end method

.method public final setBinding(Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->b:Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;

    .line 7
    .line 8
    return-void
.end method

.method public final setHotData(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/search/YouMightLikeKey;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;->b:Lcom/google/android/flexbox/FlexboxLayout;

    .line 11
    .line 12
    invoke-static {v0}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Ljava/lang/Iterable;

    .line 16
    .line 17
    sget-object v0, Lkotlin/random/Random;->a:Lkotlin/random/Random$Default;

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->w(Ljava/lang/Iterable;Lkotlin/random/Random;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->c:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->c:Ljava/util/List;

    .line 29
    .line 30
    check-cast p1, Ljava/util/Collection;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->s()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final u(Landroid/content/Context;)V
    .locals 6
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
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v0, p0, v1}, Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->setBinding(Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Ljk/d;->a(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 27
    .line 28
    .line 29
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->a:Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v2, "initView -> activity  =="

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, " || searchHistoryViewModel == "

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->a:Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v1, "YouMightLikeView"

    .line 75
    .line 76
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object v0, p1, Lcom/startshorts/androidplayer/databinding/ViewYouMightLikeBinding;->c:Landroid/widget/ImageView;

    .line 84
    .line 85
    const-string p1, "ivRefresh"

    .line 86
    .line 87
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v3, Lvj/j;

    .line 91
    .line 92
    invoke-direct {v3, p0}, Lvj/j;-><init>(Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;)V

    .line 93
    .line 94
    .line 95
    const/4 v4, 0x1

    .line 96
    const/4 v5, 0x0

    .line 97
    const-wide/16 v1, 0x0

    .line 98
    .line 99
    invoke-static/range {v0 .. v5}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/search/YouMightLikeView;->setHotData(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
