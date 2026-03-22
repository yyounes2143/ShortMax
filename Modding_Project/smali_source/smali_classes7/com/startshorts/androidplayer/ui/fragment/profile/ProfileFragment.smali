.class public final Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;
.source "ProfileFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment<",
        "Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;",
        "Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nProfileFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileFragment.kt\ncom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,821:1\n15#2,9:822\n295#3,2:831\n360#3,7:833\n774#3:840\n865#3,2:841\n1971#3,14:843\n*S KotlinDebug\n*F\n+ 1 ProfileFragment.kt\ncom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment\n*L\n248#1:822,9\n651#1:831,2\n665#1:833,7\n749#1:840\n749#1:841,2\n749#1:843,14\n*E\n"
    }
.end annotation


# static fields
.field public static final M:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final A:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$mPropertyObserver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private B:Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private C:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private D:Lcom/startshorts/androidplayer/ui/fragment/base/PermissionBottomSheetDialogFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private E:J

.field private F:Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private G:J

.field private H:Lek/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private I:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private J:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private K:Z

.field private L:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final w:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final x:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final y:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final z:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->M:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lsi/c;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lsi/c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->w:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lsi/d;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lsi/d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->x:Lms/i;

    .line 25
    .line 26
    new-instance v0, Lsi/e;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lsi/e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->y:Lms/i;

    .line 36
    .line 37
    new-instance v0, Lsi/f;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lsi/f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->z:Lms/i;

    .line 47
    .line 48
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$mPropertyObserver$1;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$mPropertyObserver$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->A:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$mPropertyObserver$1;

    .line 54
    .line 55
    return-void
.end method

.method public static final synthetic A0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->X0(ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final A1(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->s:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 10
    .line 11
    sget v2, Lcom/startshorts/androidplayer/R$string;->normal_login_guide_dialog_fragment_log_in:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->i:Landroid/widget/ImageView;

    .line 27
    .line 28
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->k:Lcom/airbnb/lottie/LottieAnimationView;

    .line 38
    .line 39
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->L:Landroid/view/View;

    .line 45
    .line 46
    if-nez p1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->p:Landroidx/databinding/ViewStubProxy;

    .line 55
    .line 56
    const-string v0, "tip2Viewstub"

    .line 57
    .line 58
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Ljk/e0;->c(Landroidx/databinding/ViewStubProxy;)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->L:Landroid/view/View;

    .line 66
    .line 67
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->L:Landroid/view/View;

    .line 68
    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->L0()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->i()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->h()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-lez v2, :cond_2

    .line 97
    .line 98
    const-string v2, "0"

    .line 99
    .line 100
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_2

    .line 105
    .line 106
    sget v2, Lcom/startshorts/androidplayer/R$id;->login_get_bonus:I

    .line 107
    .line 108
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Landroid/widget/TextView;

    .line 113
    .line 114
    sget v3, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_bonus:I

    .line 115
    .line 116
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v1, v3, v0}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->L:Landroid/view/View;

    .line 136
    .line 137
    if-eqz p1, :cond_4

    .line 138
    .line 139
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 140
    .line 141
    .line 142
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 147
    .line 148
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->j:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 149
    .line 150
    const/4 v0, 0x1

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 159
    .line 160
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->j:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 161
    .line 162
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$k;

    .line 163
    .line 164
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$k;-><init>(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public static final synthetic B0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->Y0(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final B1()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->F:Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->o:Landroidx/databinding/ViewStubProxy;

    .line 13
    .line 14
    const-string v2, "subsViewstub"

    .line 15
    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljk/e0;->c(Landroidx/databinding/ViewStubProxy;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    instance-of v2, v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->F:Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$l;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$l;-><init>(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->setMListener(Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView$b;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Lsi/h;

    .line 44
    .line 45
    invoke-direct {v2, p0}, Lsi/h;-><init>(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->setMOnDiscountCountdownFinish(Lkotlin/jvm/functions/Function0;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->j1()V

    .line 61
    .line 62
    .line 63
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->K:Z

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->K:Z

    .line 68
    .line 69
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 70
    .line 71
    const/4 v7, 0x6

    .line 72
    const/4 v8, 0x0

    .line 73
    const-string v3, "profile_pay_show"

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    const-wide/16 v5, 0x0

    .line 77
    .line 78
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void
.end method

.method public static final synthetic C0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->Z0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final C1(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->j1()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final synthetic D0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->f1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final D1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->C:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->q:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->C:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$m;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$m;-><init>(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->C:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public static final synthetic E0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->g1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final E1(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->T0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$g;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$g;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final synthetic F0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->s1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic G0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->I:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic H0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->G:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic I0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;Lcom/startshorts/androidplayer/ui/fragment/base/PermissionBottomSheetDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->D:Lcom/startshorts/androidplayer/ui/fragment/base/PermissionBottomSheetDialogFragment;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic J0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->w1(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic K0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->y1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic L0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->E1(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final M0(IZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    move-object v1, v0

    .line 16
    check-cast v1, Ljava/lang/Iterable;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    move-object v3, v2

    .line 33
    check-cast v3, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;->getType()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-ne v3, p1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v2, 0x0

    .line 43
    :goto_0
    check-cast v2, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;

    .line 44
    .line 45
    if-nez v2, :cond_3

    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const-string v0, ",visible="

    .line 53
    .line 54
    if-gez p1, :cond_4

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v3, "changeRedPointVisible not found -> profileMenu="

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p2, ",index="

    .line 76
    .line 77
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->g(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v3, "changeRedPointVisible -> profileMenu="

    .line 97
    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    if-eqz p2, :cond_5

    .line 118
    .line 119
    const/4 p2, 0x0

    .line 120
    goto :goto_1

    .line 121
    :cond_5
    const/16 p2, 0x8

    .line 122
    .line 123
    :goto_1
    invoke-virtual {v2, p2}, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;->setRedPointVisibility(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    if-eqz p2, :cond_6

    .line 131
    .line 132
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 133
    .line 134
    .line 135
    :cond_6
    :goto_2
    return-void
.end method

.method private final N0()Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$checkActBannerVisible$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$checkActBannerVisible$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "checkActBannerVisible"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method private final O0()V
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->E:J

    .line 8
    .line 9
    sub-long v2, v0, v2

    .line 10
    .line 11
    const-wide/32 v4, 0xea60

    .line 12
    .line 13
    .line 14
    cmp-long v2, v2, v4

    .line 15
    .line 16
    if-lez v2, :cond_0

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->E:J

    .line 19
    .line 20
    sget-object v3, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 21
    .line 22
    const/4 v7, 0x7

    .line 23
    const/4 v8, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-static/range {v3 .. v8}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Z0(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLandroid/content/Context;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private final P0(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->O0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->A1(Z)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->b1()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private final Q0()V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->k0()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->D0()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->c1()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->B1()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->D0()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->B1()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->c1()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method private final R0()V
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->D1()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->d1()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private final S0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->T0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;

    .line 6
    .line 7
    const-string v2, "subs"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final T0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->y:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final U0()Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->z:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final V0()Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->w:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final W0()Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->x:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final X0(ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    sget p1, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_subs_success:I

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_subs_update_success:I

    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->Q0()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->W0()Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v9, Lcom/startshorts/androidplayer/viewmodel/subs/a$b;

    .line 20
    .line 21
    const/16 v7, 0x20

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    const-string v1, "profile_pay"

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    move-object v0, v9

    .line 29
    move-object v2, p2

    .line 30
    move-object v3, p3

    .line 31
    move-object v4, p4

    .line 32
    invoke-direct/range {v0 .. v8}, Lcom/startshorts/androidplayer/viewmodel/subs/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v9}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->N(Lcom/startshorts/androidplayer/viewmodel/subs/a;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private final Y0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->W0()Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/subs/a$a;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/subs/a$a;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->N(Lcom/startshorts/androidplayer/viewmodel/subs/a;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final Z0()V
    .locals 4

    .line 1
    const-string v0, "hideActBanner"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->a:Landroidx/databinding/ViewStubProxy;

    .line 13
    .line 14
    const-string v1, "actBannerViewstub"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v0, v1, v2, v3}, Ljk/e0;->b(Landroidx/databinding/ViewStubProxy;IILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->J:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 26
    .line 27
    return-void
.end method

.method private final a1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->H:Lek/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->H:Lek/b;

    .line 10
    .line 11
    return-void
.end method

.method private final b1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->i:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->k:Lcom/airbnb/lottie/LottieAnimationView;

    .line 19
    .line 20
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->L:Landroid/view/View;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->j:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->j:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private final c1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->F:Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final d1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->C:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final e1()V
    .locals 5

    .line 1
    new-instance v0, Lfk/e;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "getViewLifecycleOwner(...)"

    .line 17
    .line 18
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->T0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$b;

    .line 26
    .line 27
    invoke-direct {v4, p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1, v2, v3, v4}, Lfk/e;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lfk/e$a;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lfk/e;->d()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private final f1()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->e0()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x1869f

    .line 8
    .line 9
    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 19
    .line 20
    const-string v1, "99999+"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method private final g1()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->g0()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x1869f

    .line 8
    .line 9
    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 19
    .line 20
    const-string v1, "99999+"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method private final h1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->g:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$c;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final i1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_profile_coins:I

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/high16 v2, 0x40000000    # 2.0f

    .line 18
    .line 19
    invoke-static {v1, v2}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x0

    .line 32
    add-int/2addr v3, v1

    .line 33
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->r:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v1, v0, v2, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->t:Landroid/view/View;

    .line 55
    .line 56
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$e;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private final j1()V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->a:Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->p()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->F:Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->G(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    sget-object v0, Lud/a;->a:Lud/a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lud/a;->B()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v1, v0

    .line 24
    check-cast v1, Ljava/util/Collection;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget-object v1, Lqf/h;->a:Lqf/h;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lqf/h;->f(Ljava/util/List;)Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->F:Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->G(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->F:Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->G(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_1
    return-void
.end method

.method private static final k1(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final l1(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class p0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final m1(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lsi/j;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lsi/j;-><init>(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$i;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$i;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private static final n1(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;Lcom/startshorts/androidplayer/viewmodel/profile/f;)Lkotlin/Unit;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/profile/f$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/profile/f$a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/profile/f$a;->a()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->o0(Ljava/util/List;)Z

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/profile/f$b;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/profile/f$b;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/profile/f$b;->a()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->u1(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method private static final o1(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lsi/i;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lsi/i;-><init>(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$i;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$i;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public static synthetic p0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->C1(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final p1(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;Lcom/startshorts/androidplayer/viewmodel/subs/b;)Lkotlin/Unit;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/subs/b$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/subs/b$b;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/b$b;->a()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_4

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->S0()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/subs/b$c;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/subs/b$c;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/b$c;->a()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->r1(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/subs/b$g;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/subs/b$g;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/b$g;->b()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->t1(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/subs/b$a;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/subs/b$a;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/b$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v1, 0x1

    .line 60
    if-ne v0, v1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->U()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/subs/b$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->V(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    return-object p0
.end method

.method public static synthetic q0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;Lcom/startshorts/androidplayer/viewmodel/subs/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->p1(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;Lcom/startshorts/androidplayer/viewmodel/subs/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final q1()V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->A:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$mPropertyObserver$1;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->O(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic r0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->m1(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final r1(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzc/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->T0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic s0(I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->x1(I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final s1()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->W0()Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/subs/a$e;->a:Lcom/startshorts/androidplayer/viewmodel/subs/a$e;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->N(Lcom/startshorts/androidplayer/viewmodel/subs/a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic t0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->l1(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final t1(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :goto_0
    if-lez v1, :cond_b

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p1, :cond_8

    .line 14
    .line 15
    move-object v2, p1

    .line 16
    check-cast v2, Ljava/lang/Iterable;

    .line 17
    .line 18
    new-instance v3, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_3

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    move-object v5, v4

    .line 38
    check-cast v5, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 39
    .line 40
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getWeight()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-lez v5, :cond_2

    .line 45
    .line 46
    const/4 v5, 0x1

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v5, v0

    .line 49
    :goto_2
    if-eqz v5, :cond_1

    .line 50
    .line 51
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_4

    .line 64
    .line 65
    move-object v3, v1

    .line 66
    goto :goto_3

    .line 67
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_5

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_5
    move-object v4, v3

    .line 79
    check-cast v4, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 80
    .line 81
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getWeight()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    move-object v6, v5

    .line 90
    check-cast v6, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 91
    .line 92
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getWeight()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-ge v4, v6, :cond_7

    .line 97
    .line 98
    move-object v3, v5

    .line 99
    move v4, v6

    .line 100
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-nez v5, :cond_6

    .line 105
    .line 106
    :goto_3
    check-cast v3, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_8
    move-object v3, v1

    .line 110
    :goto_4
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->F:Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;

    .line 111
    .line 112
    if-eqz v2, :cond_b

    .line 113
    .line 114
    if-nez v3, :cond_9

    .line 115
    .line 116
    if-eqz p1, :cond_a

    .line 117
    .line 118
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    move-object v1, p1

    .line 123
    check-cast v1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_9
    move-object v1, v3

    .line 127
    :cond_a
    :goto_5
    invoke-virtual {v2, v1}, Lcom/startshorts/androidplayer/ui/view/subs/ProfileSubsView;->G(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 128
    .line 129
    .line 130
    :cond_b
    return-void
.end method

.method public static synthetic u0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->k1(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final u1(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, -0x1

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;->getType()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v4, 0x1

    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move v1, v3

    .line 44
    :goto_1
    if-eq v3, v1, :cond_5

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    instance-of v2, v0, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    check-cast v0, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    const/4 v0, 0x0

    .line 58
    :goto_2
    if-nez v0, :cond_4

    .line 59
    .line 60
    return-void

    .line 61
    :cond_4
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;->F(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 65
    .line 66
    .line 67
    :cond_5
    :goto_3
    return-void
.end method

.method public static synthetic v0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->o1(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final v1(Lcom/startshorts/androidplayer/bean/account/Account;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/Account;->getHeadPic()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/high16 v1, 0x42800000    # 64.0f

    .line 8
    .line 9
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sget-object v2, Lkk/f;->a:Lkk/f;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 20
    .line 21
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 22
    .line 23
    new-instance v4, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 24
    .line 25
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-virtual {v4, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCircleCrop(Z)V

    .line 45
    .line 46
    .line 47
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_default_avatar:I

    .line 48
    .line 49
    invoke-virtual {v4, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    invoke-virtual {v2, v3, v4}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->s:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "requireContext(...)"

    .line 70
    .line 71
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getFormatNickname(Landroid/content/Context;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->b1()V

    .line 82
    .line 83
    .line 84
    :cond_0
    if-eqz p1, :cond_1

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/Account;->getUserCode()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-nez p1, :cond_2

    .line 91
    .line 92
    :cond_1
    const-string p1, ""

    .line 93
    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 101
    .line 102
    sget v1, Lcom/startshorts/androidplayer/R$string;->profile_fragment_uid:I

    .line 103
    .line 104
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->g1()V

    .line 116
    .line 117
    .line 118
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->f1()V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public static synthetic w0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;Lcom/startshorts/androidplayer/viewmodel/profile/f;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->n1(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;Lcom/startshorts/androidplayer/viewmodel/profile/f;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final w1(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "showActBanner"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentProfileBinding;->a:Landroidx/databinding/ViewStubProxy;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljk/e0;->g(Landroidx/databinding/ViewStubProxy;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 29
    .line 30
    :goto_0
    move-object v1, v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    goto :goto_0

    .line 34
    :goto_1
    if-eqz v1, :cond_3

    .line 35
    .line 36
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->J:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 37
    .line 38
    sget-object v0, Lud/b;->a:Lud/b;

    .line 39
    .line 40
    invoke-virtual {v0}, Lud/b;->l1()Lcom/startshorts/androidplayer/bean/act/ResourceIndex;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x0

    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    new-instance v2, Lcom/startshorts/androidplayer/bean/act/ResourceIndex;

    .line 48
    .line 49
    sget-object v4, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    invoke-direct {v2, v3, v4, v5}, Lcom/startshorts/androidplayer/bean/act/ResourceIndex;-><init>(IJ)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Lud/b;->z4(Lcom/startshorts/androidplayer/bean/act/ResourceIndex;)V

    .line 59
    .line 60
    .line 61
    :goto_2
    move v5, v3

    .line 62
    goto :goto_3

    .line 63
    :cond_1
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/act/ResourceIndex;->getIndex()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/act/ResourceIndex;->getTime()J

    .line 68
    .line 69
    .line 70
    move-result-wide v5

    .line 71
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 74
    .line 75
    .line 76
    move-result-wide v7

    .line 77
    sget-object v4, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 78
    .line 79
    const/4 v9, 0x1

    .line 80
    invoke-virtual/range {v4 .. v9}, Lcom/startshorts/androidplayer/utils/TimeUtil;->n(JJI)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    rem-int v3, v0, v2

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :goto_3
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 106
    .line 107
    invoke-virtual {v0}, Lfk/z;->m()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    int-to-float v4, v0

    .line 112
    new-instance v6, Lsi/g;

    .line 113
    .line 114
    invoke-direct {v6}, Lsi/g;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    const/16 v10, 0x80

    .line 122
    .line 123
    const/4 v11, 0x0

    .line 124
    const-string v3, "profile_banner"

    .line 125
    .line 126
    const/4 v9, 0x0

    .line 127
    move-object v8, p1

    .line 128
    invoke-static/range {v1 .. v11}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->B(Lcom/startshorts/androidplayer/ui/view/act/ActBanner;Ljava/lang/ref/WeakReference;Ljava/lang/String;FILkotlin/jvm/functions/Function1;Landroidx/lifecycle/Lifecycle;Ljava/util/List;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    return-void
.end method

.method public static final synthetic x0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->P0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final x1(I)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/bean/act/ResourceIndex;

    .line 4
    .line 5
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-direct {v1, p0, v2, v3}, Lcom/startshorts/androidplayer/bean/act/ResourceIndex;-><init>(IJ)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lud/b;->z4(Lcom/startshorts/androidplayer/bean/act/ResourceIndex;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method public static final synthetic y0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->I:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final y1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->H:Lek/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lek/b;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "requireContext(...)"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lek/b;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->H:Lek/b;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->H:Lek/b;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public static final synthetic z0(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->G:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private final z1()V
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
    invoke-virtual {v1, v0}, Lud/b;->L1(Ljava/lang/String;)Z

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
    invoke-virtual {v1, v0, v2}, Lud/b;->Y4(Ljava/lang/String;Z)V

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
    const-string v2, "porfile_windows"

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
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$j;

    .line 106
    .line 107
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$j;-><init>(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->D:Lcom/startshorts/androidplayer/ui/fragment/base/PermissionBottomSheetDialogFragment;

    .line 126
    .line 127
    return-void
.end method


# virtual methods
.method public i0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$d;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->B(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->k0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->i0()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_profile:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->D:Lcom/startshorts/androidplayer/ui/fragment/base/PermissionBottomSheetDialogFragment;

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

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->a1()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->J:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->F()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->K:Z

    .line 6
    .line 7
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$f;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$g;

    .line 13
    .line 14
    invoke-direct {v2}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$g;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v1, v2}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->z1()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->D:Lcom/startshorts/androidplayer/ui/fragment/base/PermissionBottomSheetDialogFragment;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->P0(Z)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->R0()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->Q0()V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->v()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->O0()V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->U0()Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/comingsoon/a$b;->a:Lcom/startshorts/androidplayer/viewmodel/comingsoon/a$b;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/comingsoon/ComingSoonViewModel;->F(Lcom/startshorts/androidplayer/viewmodel/comingsoon/a;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->N0()Lkotlinx/coroutines/r;

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->J:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->H()V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->V0()Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/profile/e$b;->a:Lcom/startshorts/androidplayer/viewmodel/profile/e$b;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/profile/e;)V

    .line 72
    .line 73
    .line 74
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
    const-string v0, "ProfileFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public final receiveRefreshAccountEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->m()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string p1, "receiveRefreshAccountEvent"

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->q1()V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->v1(Lcom/startshorts/androidplayer/bean/account/Account;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->D:Lcom/startshorts/androidplayer/ui/fragment/base/PermissionBottomSheetDialogFragment;

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    :goto_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->P0(Z)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->R0()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->Q0()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final receiveRefreshMyListRedPointEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshMyListRedPointEvent;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshMyListRedPointEvent;
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->m()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshMyListRedPointEvent;->getShortIds()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/util/Collection;

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    xor-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    const/4 v0, 0x5

    .line 26
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->M0(IZ)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public t()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->t()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->e1()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->q1()V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->v1(Lcom/startshorts/androidplayer/bean/account/Account;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->i1()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->h1()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->V0()Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/profile/e$a;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "requireContext(...)"

    .line 36
    .line 37
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/profile/e$a;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/profile/ProfileViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/profile/e;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->v()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->B:Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/login/ProfileLoginButton;->release()V

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->A:Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$mPropertyObserver$1;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->d1(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
