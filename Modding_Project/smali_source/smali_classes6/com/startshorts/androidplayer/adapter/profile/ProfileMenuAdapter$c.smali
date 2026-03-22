.class final Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$c;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "ProfileMenuAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$c;->h:Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$c;->g:Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic f(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$c;->k(ILcom/startshorts/androidplayer/bean/profile/ProfileMenu;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$c;->g:Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/profile/ProfileMenu;)V
    .locals 5
    .param p2    # Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$c;->h:Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;->E()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 22
    .line 23
    sget p2, Lcom/startshorts/androidplayer/R$string;->profile_fragment_reward_tip:I

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object p2, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->k1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->abTestValue()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const-string v0, "1"

    .line 53
    .line 54
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v1, 0x0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    const/4 v0, 0x1

    .line 70
    const/high16 v2, 0x41900000    # 18.0f

    .line 71
    .line 72
    invoke-static {v0, v2, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    float-to-int p2, p2

    .line 77
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 82
    .line 83
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ic_coin_discover_reward:I

    .line 84
    .line 85
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    if-eqz v2, :cond_1

    .line 90
    .line 91
    const/4 v3, 0x0

    .line 92
    const/4 v4, 0x2

    .line 93
    invoke-virtual {v2, v3, v4, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-virtual {v0, v2, v1, v1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 104
    .line 105
    sget v0, Lcom/startshorts/androidplayer/R$string;->sign_in_success_dialog_bonus:I

    .line 106
    .line 107
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$c;->h:Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;->E()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    const-string v0, "2"

    .line 130
    .line 131
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    if-eqz p2, :cond_3

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 142
    .line 143
    invoke-virtual {p2, v1, v1, v1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 151
    .line 152
    sget v0, Lcom/startshorts/androidplayer/R$string;->profile_fragment_reward_tip2:I

    .line 153
    .line 154
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$c;->h:Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;

    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;->E()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    :cond_3
    :goto_0
    return-void
.end method
