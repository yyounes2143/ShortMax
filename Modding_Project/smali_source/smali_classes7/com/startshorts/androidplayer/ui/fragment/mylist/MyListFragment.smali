.class public final Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;
.source "MyListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment<",
        "Lcom/startshorts/androidplayer/databinding/FragmentMyListBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final k:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private i:Lcom/startshorts/androidplayer/ui/fragment/base/PermissionBottomSheetDialogFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;->k:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_my_list:I

    .line 5
    .line 6
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;->j:I

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic D(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;->G(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;Lcom/startshorts/androidplayer/ui/fragment/base/PermissionBottomSheetDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;->i:Lcom/startshorts/androidplayer/ui/fragment/base/PermissionBottomSheetDialogFragment;

    .line 2
    .line 3
    return-void
.end method

.method private final F()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentMyListBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentMyListBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    const/high16 v2, 0x41a00000    # 20.0f

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Led/a;->a:Led/a;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "requireActivity(...)"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v1, v2}, Led/a;->b(Landroid/app/Activity;Z)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 31
    .line 32
    const/4 v1, -0x2

    .line 33
    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    instance-of v1, v1, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentMyListBinding;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentMyListBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 52
    .line 53
    new-instance v3, Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    sget v4, Lcom/startshorts/androidplayer/R$drawable;->ic_toolbar_back:I

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    .line 66
    .line 67
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 68
    .line 69
    sget-object v5, Lfk/z;->a:Lfk/z;

    .line 70
    .line 71
    invoke-virtual {v5}, Lfk/z;->h()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    invoke-virtual {v5}, Lfk/z;->h()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    invoke-direct {v4, v6, v7}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 80
    .line 81
    .line 82
    iput v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 83
    .line 84
    iput v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 85
    .line 86
    iput v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 87
    .line 88
    invoke-virtual {v5}, Lfk/z;->d()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    .line 97
    .line 98
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/mylist/n;

    .line 99
    .line 100
    invoke-direct {v4, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/n;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentMyListBinding;

    .line 114
    .line 115
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentMyListBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 116
    .line 117
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 118
    .line 119
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 120
    .line 121
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 122
    .line 123
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentMyListBinding;

    .line 134
    .line 135
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentMyListBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 136
    .line 137
    const-string v3, "toolbarView"

    .line 138
    .line 139
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 143
    .line 144
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    invoke-static {v1, v3}, Ljk/b0;->g(Landroid/view/View;I)V

    .line 149
    .line 150
    .line 151
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentMyListBinding;

    .line 156
    .line 157
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentMyListBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 158
    .line 159
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 160
    .line 161
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 162
    .line 163
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 164
    .line 165
    sget-object v2, Lfk/z;->a:Lfk/z;

    .line 166
    .line 167
    invoke-virtual {v2}, Lfk/z;->d()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method private static final G(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final H()V
    .locals 10

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->J0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 11
    .line 12
    new-instance v1, Ljava/util/Date;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/utils/TimeUtil;->f(Ljava/util/Date;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lud/b;->a:Lud/b;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lud/b;->J1(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    sget-object v2, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->w()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    instance-of v3, v2, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 48
    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    check-cast v2, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 v2, 0x0

    .line 55
    :goto_0
    if-eqz v2, :cond_4

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->o0()V

    .line 58
    .line 59
    .line 60
    :cond_4
    const/4 v2, 0x0

    .line 61
    invoke-virtual {v1, v0, v2}, Lud/b;->W4(Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 65
    .line 66
    new-instance v5, Landroid/os/Bundle;

    .line 67
    .line 68
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v1, "scene"

    .line 72
    .line 73
    const-string v2, "mylist_window"

    .line 74
    .line 75
    invoke-virtual {v5, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    const/4 v8, 0x4

    .line 81
    const/4 v9, 0x0

    .line 82
    const-string v4, "login_windows_show"

    .line 83
    .line 84
    const-wide/16 v6, 0x0

    .line 85
    .line 86
    move-object v3, v0

    .line 87
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    const/4 v8, 0x6

    .line 91
    const-string v4, "login_guide_show"

    .line 92
    .line 93
    const/4 v5, 0x0

    .line 94
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;

    .line 98
    .line 99
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->b0(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment$b;

    .line 106
    .line 107
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->a0(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$b;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const-string v2, "getChildFragmentManager(...)"

    .line 118
    .line 119
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->v(Landroidx/fragment/app/FragmentManager;)Z

    .line 123
    .line 124
    .line 125
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;->i:Lcom/startshorts/androidplayer/ui/fragment/base/PermissionBottomSheetDialogFragment;

    .line 126
    .line 127
    return-void
.end method


# virtual methods
.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;->i:Lcom/startshorts/androidplayer/ui/fragment/base/PermissionBottomSheetDialogFragment;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 12
    .line 13
    .line 14
    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;->H()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "MyListFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public t()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->t()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;->F()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget v1, Lcom/startshorts/androidplayer/R$id;->fl_container:I

    .line 16
    .line 17
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 27
    .line 28
    .line 29
    return-void
.end method
