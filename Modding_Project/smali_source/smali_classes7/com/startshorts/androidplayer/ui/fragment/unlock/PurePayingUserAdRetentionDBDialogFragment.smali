.class public final Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;
.source "PurePayingUserAdRetentionDBDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment$a;,
        Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final p:Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private i:Z

.field private j:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final m:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private n:Z

.field private o:Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->p:Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lzi/k;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lzi/k;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->m:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic F(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->R(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->K(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->Q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final I()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->m:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final J()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBinding;->a:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment$c;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCoverId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v0, v1

    .line 28
    :goto_0
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_4

    .line 35
    .line 36
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 v2, -0x1

    .line 48
    :goto_1
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->m(I)Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_3
    move-object v0, v1

    .line 59
    :cond_4
    sget-object v1, Lkk/f;->a:Lkk/f;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBinding;

    .line 66
    .line 67
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBinding;->c:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 68
    .line 69
    new-instance v3, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 70
    .line 71
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-object v0, Lid/c;->a:Lid/c;

    .line 78
    .line 79
    invoke-virtual {v0}, Lid/c;->b()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lid/c;->a()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-virtual {v3, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 91
    .line 92
    .line 93
    const/4 v0, 0x1

    .line 94
    invoke-virtual {v3, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 95
    .line 96
    .line 97
    const/high16 v4, 0x41a00000    # 20.0f

    .line 98
    .line 99
    invoke-static {v4}, Ljk/g;->b(F)F

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 104
    .line 105
    .line 106
    sget v4, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder_no_corner:I

    .line 107
    .line 108
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 109
    .line 110
    .line 111
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 112
    .line 113
    invoke-virtual {v1, v2, v3}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBinding;

    .line 121
    .line 122
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 123
    .line 124
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 125
    .line 126
    if-eqz v2, :cond_5

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isIaaUserEpisode()Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-ne v2, v0, :cond_5

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBinding;

    .line 139
    .line 140
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 141
    .line 142
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 143
    .line 144
    .line 145
    sget v0, Lcom/startshorts/androidplayer/R$string;->iaa_watch_ad_unlock_dialog_btn_subtitle:I

    .line 146
    .line 147
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    goto :goto_2

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->j:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 153
    .line 154
    if-eqz v0, :cond_6

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBinding;

    .line 161
    .line 162
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 163
    .line 164
    invoke-static {v2}, Ljk/b0;->l(Landroid/view/View;)V

    .line 165
    .line 166
    .line 167
    sget v2, Lcom/startshorts/androidplayer/R$string;->pure_paying_user_ad_retention_dialog_fragment_unlocked_today:I

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->getTotalWatchAdNum()I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->getCanWatchAdNum()I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    sub-int/2addr v3, v4

    .line 178
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->getTotalWatchAdNum()I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    if-nez v0, :cond_7

    .line 199
    .line 200
    :cond_6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBinding;

    .line 205
    .line 206
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 207
    .line 208
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 209
    .line 210
    .line 211
    const-string v0, ""

    .line 212
    .line 213
    :cond_7
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBinding;

    .line 221
    .line 222
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionDbBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 223
    .line 224
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment$d;

    .line 225
    .line 226
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    .line 231
    .line 232
    return-void
.end method

.method private static final K(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 13
    .line 14
    return-object p0
.end method

.method private final Q()V
    .locals 14

    .line 1
    sget-object v7, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v8, "scene"

    .line 9
    .line 10
    const-string v9, "db_facsimile_pay"

    .line 11
    .line 12
    invoke-virtual {v2, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    const/4 v5, 0x4

    .line 18
    const/4 v6, 0x0

    .line 19
    const-string v1, "ad_retention_click"

    .line 20
    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 28
    .line 29
    invoke-virtual {v7, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v0, "ad_active"

    .line 34
    .line 35
    const-string v1, "new_ad_retention"

    .line 36
    .line 37
    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "type"

    .line 41
    .line 42
    const-string v1, "1"

    .line 43
    .line 44
    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, "watch_ad_click"

    .line 51
    .line 52
    move-object v0, v7

    .line 53
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    sget-object v8, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 57
    .line 58
    iget-object v9, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->l:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    iget-object v12, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 65
    .line 66
    new-instance v13, Lzi/l;

    .line 67
    .line 68
    invoke-direct {v13, p0}, Lzi/l;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;)V

    .line 69
    .line 70
    .line 71
    const-string v11, "new_ad_retention"

    .line 72
    .line 73
    invoke-virtual/range {v8 .. v13}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->p0(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private static final R(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;Z)Lkotlin/Unit;
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->x()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->E(F)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->I()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v6, Lcom/startshorts/androidplayer/viewmodel/immersion/e$l;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->i:Z

    .line 23
    .line 24
    const/4 v4, 0x4

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    move-object v0, v6

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$l;-><init>(Landroid/content/Context;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v6}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method


# virtual methods
.method public final L(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method public final M(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-void
.end method

.method public final N(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final O(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->o:Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment$b;

    .line 2
    .line 3
    return-void
.end method

.method public final P(Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->j:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 2
    .line 3
    return-void
.end method

.method public j()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_pure_paying_user_ad_retention_db:I

    .line 2
    .line 3
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "PurePayingUserAdRetentionDBDialogFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 8
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 12
    .line 13
    sget-object v0, Lud/a;->a:Lud/a;

    .line 14
    .line 15
    invoke-virtual {v0}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const/4 v6, 0x0

    .line 20
    const-string v2, "PurePayingUserAdRetentionDBDialogFragment"

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    move-object v1, p1

    .line 24
    invoke-virtual/range {v1 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->a1(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Z)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v0, "scene"

    .line 33
    .line 34
    const-string v1, "db_facsimile_pay"

    .line 35
    .line 36
    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    const/4 v6, 0x4

    .line 42
    const/4 v7, 0x0

    .line 43
    const-string v2, "ad_retention_close"

    .line 44
    .line 45
    const-wide/16 v4, 0x0

    .line 46
    .line 47
    move-object v1, p1

    .line 48
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->o:Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment$b;

    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->n:Z

    .line 56
    .line 57
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->j:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 58
    .line 59
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->i:Z

    .line 60
    .line 61
    invoke-interface {p1, v0, v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment$b;->a(ZLcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;Z)V

    .line 62
    .line 63
    .line 64
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isIaaUserEpisode()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->j:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string p2, "dismiss for invalid arguments -> mMethod("

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->j:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p2, ") mEpisode("

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const/16 p2, 0x29

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->g(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->I()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 75
    .line 76
    invoke-direct {p2, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    const/4 p2, 0x0

    .line 89
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->J()V

    .line 93
    .line 94
    .line 95
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 96
    .line 97
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 98
    .line 99
    sget-object p2, Lud/a;->a:Lud/a;

    .line 100
    .line 101
    invoke-virtual {p2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    const/16 v8, 0x60

    .line 106
    .line 107
    const/4 v9, 0x0

    .line 108
    const-string v1, "PurePayingUserAdRetentionDBDialogFragment"

    .line 109
    .line 110
    const/4 v2, 0x0

    .line 111
    const/4 v5, 0x0

    .line 112
    const/4 v6, 0x0

    .line 113
    const/4 v7, 0x0

    .line 114
    move-object v0, p1

    .line 115
    invoke-static/range {v0 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->e1(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ZLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    new-instance v2, Landroid/os/Bundle;

    .line 119
    .line 120
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string p2, "scene"

    .line 124
    .line 125
    const-string v0, "db_facsimile_pay"

    .line 126
    .line 127
    invoke-virtual {v2, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 131
    .line 132
    const/4 v5, 0x4

    .line 133
    const-string v1, "ad_retention_show"

    .line 134
    .line 135
    const-wide/16 v3, 0x0

    .line 136
    .line 137
    move-object v0, p1

    .line 138
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public final receiveEpisodeListUnlockedEvent(Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "receive EpisodeListUnlockedEvent -> unlockType("

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getUnlockType()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ") userRecharged("

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getUserRecharged()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ") episodeId("

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getFirstUnlockedEpisodeId()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 v1, 0x29

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->q(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 60
    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getFirstUnlockedEpisodeId()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-ne v0, p1, :cond_0

    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDBDialogFragment;->n:Z

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 77
    .line 78
    .line 79
    :cond_0
    return-void
.end method
