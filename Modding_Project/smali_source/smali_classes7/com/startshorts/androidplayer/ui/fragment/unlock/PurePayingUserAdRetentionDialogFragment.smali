.class public final Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;
.source "PurePayingUserAdRetentionDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment$a;,
        Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final p:Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment$a;
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

.field private o:Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->p:Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment$a;

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
    new-instance v0, Lzi/m;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lzi/m;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->m:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic F(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->R(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->K(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->Q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final I()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->m:Lms/i;

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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->j:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionBinding;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionBinding;->a:Landroid/widget/ImageView;

    .line 13
    .line 14
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment$c;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCoverId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v1, v2

    .line 33
    :goto_0
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_5

    .line 40
    .line 41
    :cond_2
    sget-object v1, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const/4 v3, -0x1

    .line 53
    :goto_1
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->m(I)Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :cond_4
    move-object v1, v2

    .line 64
    :cond_5
    sget-object v2, Lkk/f;->a:Lkk/f;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionBinding;

    .line 71
    .line 72
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionBinding;->c:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 73
    .line 74
    new-instance v4, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 75
    .line 76
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sget-object v1, Lid/c;->a:Lid/c;

    .line 83
    .line 84
    invoke-virtual {v1}, Lid/c;->b()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Lid/c;->a()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 96
    .line 97
    .line 98
    const/4 v1, 0x1

    .line 99
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 100
    .line 101
    .line 102
    const/high16 v1, 0x41a00000    # 20.0f

    .line 103
    .line 104
    invoke-static {v1}, Ljk/g;->b(F)F

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 109
    .line 110
    .line 111
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder_no_corner:I

    .line 112
    .line 113
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 114
    .line 115
    .line 116
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 117
    .line 118
    invoke-virtual {v2, v3, v4}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionBinding;

    .line 126
    .line 127
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 128
    .line 129
    sget v2, Lcom/startshorts/androidplayer/R$string;->pure_paying_user_ad_retention_dialog_fragment_unlocked_today:I

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->getTotalWatchAdNum()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->getCanWatchAdNum()I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    sub-int/2addr v3, v4

    .line 140
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->getTotalWatchAdNum()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionBinding;

    .line 168
    .line 169
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 170
    .line 171
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment$d;

    .line 172
    .line 173
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    .line 178
    .line 179
    const-string v0, "es"

    .line 180
    .line 181
    const-string v1, "de"

    .line 182
    .line 183
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 192
    .line 193
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->e()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_6

    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionBinding;

    .line 208
    .line 209
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentPurePayingUserAdRetentionBinding;->f:Landroid/widget/ImageView;

    .line 210
    .line 211
    const/16 v1, 0x8

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    .line 215
    .line 216
    :cond_6
    return-void
.end method

.method private static final K(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
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
    const/4 v5, 0x6

    .line 4
    const/4 v6, 0x0

    .line 5
    const-string v1, "ad_retention_click"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    move-object v0, v7

    .line 11
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 15
    .line 16
    invoke-virtual {v7, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v0, "ad_active"

    .line 21
    .line 22
    const-string v1, "new_ad_retention"

    .line 23
    .line 24
    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "type"

    .line 28
    .line 29
    const-string v1, "1"

    .line 30
    .line 31
    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    const/4 v5, 0x4

    .line 37
    const-string v1, "watch_ad_click"

    .line 38
    .line 39
    move-object v0, v7

    .line 40
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object v8, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 44
    .line 45
    iget-object v9, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->l:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    iget-object v12, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 52
    .line 53
    new-instance v13, Lzi/n;

    .line 54
    .line 55
    invoke-direct {v13, p0}, Lzi/n;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;)V

    .line 56
    .line 57
    .line 58
    const-string v11, "new_ad_retention"

    .line 59
    .line 60
    invoke-virtual/range {v8 .. v13}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->p0(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private static final R(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;Z)Lkotlin/Unit;
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->I()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

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
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->i:Z

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
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->i:Z

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final O(Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->o:Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment$b;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->j:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

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
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_pure_paying_user_ad_retention:I

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
    const-string v0, "PurePayingUserAdRetentionDialogFragment"

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
    const/4 v6, 0x6

    .line 12
    const/4 v7, 0x0

    .line 13
    const-string v2, "ad_retention_close"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    move-object v1, p1

    .line 19
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 23
    .line 24
    sget-object v0, Lud/a;->a:Lud/a;

    .line 25
    .line 26
    invoke-virtual {v0}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const/4 v6, 0x0

    .line 31
    const-string v2, "AdRetentionDialogFragment"

    .line 32
    .line 33
    invoke-virtual/range {v1 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->a1(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Z)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->o:Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment$b;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->n:Z

    .line 41
    .line 42
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->j:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 43
    .line 44
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->i:Z

    .line 45
    .line 46
    invoke-interface {p1, v0, v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment$b;->a(ZLcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;Z)V

    .line 47
    .line 48
    .line 49
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->j:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->I()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 25
    .line 26
    invoke-direct {p2, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->J()V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 48
    .line 49
    sget-object p2, Lud/a;->a:Lud/a;

    .line 50
    .line 51
    invoke-virtual {p2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const/16 v8, 0x60

    .line 56
    .line 57
    const/4 v9, 0x0

    .line 58
    const-string v1, "AdRetentionDialogFragment"

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v6, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    move-object v0, p1

    .line 65
    invoke-static/range {v0 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->e1(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ZLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const/4 v5, 0x6

    .line 69
    const-string v1, "ad_retention_show"

    .line 70
    .line 71
    const-wide/16 v3, 0x0

    .line 72
    .line 73
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string p2, "dismiss for invalid arguments -> mMethod("

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->j:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p2, ") mEpisode("

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const/16 p2, 0x29

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->g(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 115
    .line 116
    .line 117
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

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
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/PurePayingUserAdRetentionDialogFragment;->n:Z

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 77
    .line 78
    .line 79
    :cond_0
    return-void
.end method
