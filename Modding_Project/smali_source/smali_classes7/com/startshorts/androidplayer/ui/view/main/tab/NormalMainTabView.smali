.class public final Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;
.super Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;
.source "NormalMainTabView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private d:Landroid/widget/ImageView;
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

.method private final A(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView$a;->$EnumSwitchMapping$0:[I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    aget p1, v0, p1

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    const/4 v1, -0x1

    .line 15
    if-eq p1, v0, :cond_4

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    if-eq p1, v0, :cond_3

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    if-eq p1, v0, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    if-eq p1, v0, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x5

    .line 27
    if-eq p1, v0, :cond_0

    .line 28
    .line 29
    move p1, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$string;->main_activity_tab_profile:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget p1, Lcom/startshorts/androidplayer/R$string;->main_activity_tab_my_list:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    sget p1, Lcom/startshorts/androidplayer/R$string;->main_activity_tab_reward:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    sget p1, Lcom/startshorts/androidplayer/R$string;->main_activity_tab_shorts:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    sget p1, Lcom/startshorts/androidplayer/R$string;->main_activity_tab_discover:I

    .line 44
    .line 45
    :goto_0
    if-eq p1, v1, :cond_6

    .line 46
    .line 47
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 52
    .line 53
    .line 54
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;->d:Landroid/widget/ImageView;

    .line 55
    .line 56
    if-eqz v0, :cond_6

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    :cond_6
    return-void
.end method

.method private final B(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

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

.method private final C()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;->getMTab()Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    sget-object v1, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->PROFILE:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->q()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;->d:Landroid/widget/ImageView;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_main_tab_profile_normal_white:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    sget v0, Lcom/startshorts/androidplayer/R$id;->high_light_view:I

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sget v2, Lcom/startshorts/androidplayer/R$color;->color_main_activity_tab_high_light_bg:I

    .line 47
    .line 48
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const v2, 0x106000b

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    .line 72
    .line 73
    :cond_3
    return-void
.end method

.method private final y(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;->getMTab()Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    sget-object v2, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->PROFILE:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 15
    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    sget-object v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->q()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;->d:Landroid/widget/ImageView;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ic_main_tab_profile_normal:I

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    sget v0, Lcom/startshorts/androidplayer/R$id;->high_light_view:I

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const v3, 0x106000d

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;->getMTab()Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-eqz v3, :cond_3

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-eqz v3, :cond_3

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :cond_3
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    sget p1, Lcom/startshorts/androidplayer/R$color;->color_main_activity_tab_text_selected:I

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    sget p1, Lcom/startshorts/androidplayer/R$color;->color_main_activity_tab_text_normal:I

    .line 91
    .line 92
    :goto_1
    invoke-static {v2, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    .line 98
    .line 99
    :cond_5
    return-void
.end method

.method private final z(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView$a;->$EnumSwitchMapping$0:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, -0x1

    .line 15
    if-eq v0, v1, :cond_8

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq v0, v1, :cond_6

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    if-eq v0, v1, :cond_4

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x5

    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    move p1, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->isSelected()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_main_tab_profile_selected:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_main_tab_profile_normal:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->isSelected()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_main_tab_my_list_selected:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_main_tab_my_list_normal:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->isSelected()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_main_tab_rewards_selected:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_5
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_main_tab_rewards_normal:I

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->isSelected()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_7

    .line 72
    .line 73
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_main_tab_shorts_selected:I

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_7
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_main_tab_shorts_normal:I

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->isSelected()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_9

    .line 84
    .line 85
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_main_tab_discover_selected:I

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_9
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_main_tab_discover_normal:I

    .line 89
    .line 90
    :goto_0
    if-eq p1, v2, :cond_a

    .line 91
    .line 92
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;->d:Landroid/widget/ImageView;

    .line 93
    .line 94
    if-eqz v0, :cond_a

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    .line 98
    .line 99
    :cond_a
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;->C()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;->y(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_main_tab_normal:I

    .line 2
    .line 3
    return v0
.end method

.method public o(Lcom/startshorts/androidplayer/bean/tab/MainTab$State;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/tab/MainTab$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;->getMTab()Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getState()Lcom/startshorts/androidplayer/bean/tab/MainTab$State;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eq v1, p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->setState(Lcom/startshorts/androidplayer/bean/tab/MainTab$State;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;->z(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;->B(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
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
    check-cast p1, Landroid/widget/ImageView;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;->d:Landroid/widget/ImageView;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

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
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;->z(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;->B(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V

    .line 10
    .line 11
    .line 12
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
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;->z(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;->A(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;->B(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
