.class public final Lcom/startshorts/androidplayer/ui/view/main/tab/RewardsMainTabView;
.super Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;
.source "RewardsMainTabView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private d:Lcom/airbnb/lottie/LottieAnimationView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
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

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final A()V
    .locals 3

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$id;->high_light_view:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget v2, Lcom/startshorts/androidplayer/R$color;->color_main_activity_tab_high_light_bg:I

    .line 14
    .line 15
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/RewardsMainTabView;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const v2, 0x106000b

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method private final y(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$id;->high_light_view:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const v2, 0x106000d

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/RewardsMainTabView;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;->getMTab()Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v2, 0x0

    .line 49
    :goto_0
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    sget p1, Lcom/startshorts/androidplayer/R$color;->color_main_activity_tab_text_selected:I

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    sget p1, Lcom/startshorts/androidplayer/R$color;->color_main_activity_tab_text_normal:I

    .line 59
    .line 60
    :goto_1
    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void
.end method

.method private final z(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->isSelected()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget p1, Lcom/startshorts/androidplayer/R$color;->color_main_activity_tab_text_selected:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$color;->color_main_activity_tab_text_normal:I

    .line 11
    .line 12
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/RewardsMainTabView;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "currentTabType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/main/tab/RewardsMainTabView;->A()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/main/tab/RewardsMainTabView;->y(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_main_tab_rewards:I

    .line 2
    .line 3
    return v0
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
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
    invoke-super {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;->u(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/startshorts/androidplayer/R$id;->tab_iv:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/RewardsMainTabView;->d:Lcom/airbnb/lottie/LottieAnimationView;

    .line 18
    .line 19
    sget p1, Lcom/startshorts/androidplayer/R$id;->tab_tv:I

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/RewardsMainTabView;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 28
    .line 29
    return-void
.end method

.method public v(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/tab/MainTab;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/main/tab/RewardsMainTabView;->z(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public x(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/tab/MainTab;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;->x(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/main/tab/RewardsMainTabView;->z(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
