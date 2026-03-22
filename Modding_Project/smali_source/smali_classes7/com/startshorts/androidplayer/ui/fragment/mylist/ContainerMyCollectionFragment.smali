.class public final Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;
.source "ContainerMyCollectionFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment<",
        "Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nContainerMyCollectionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContainerMyCollectionFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,492:1\n1863#2,2:493\n15#3,9:495\n15#3,9:505\n1#4:504\n*S KotlinDebug\n*F\n+ 1 ContainerMyCollectionFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment\n*L\n179#1:493,2\n288#1:495,9\n393#1:505,9\n*E\n"
    }
.end annotation


# static fields
.field public static final r:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private i:I

.field private j:Lcom/startshorts/androidplayer/ui/fragment/base/PermissionBottomSheetDialogFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final k:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final l:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$mOnPageChangeCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Z

.field private o:Z

.field private p:Z

.field private final q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->r:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$a;

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
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/b;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->k:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$mOnPageChangeCallback$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$mOnPageChangeCallback$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->l:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$mOnPageChangeCallback$1;

    .line 21
    .line 22
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_collection_list:I

    .line 23
    .line 24
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->q:I

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic D(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->T(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)Lcom/startshorts/androidplayer/viewmodel/mylist/MyListViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->j0(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)Lcom/startshorts/androidplayer/viewmodel/mylist/MyListViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;Lcom/startshorts/androidplayer/viewmodel/mylist/c;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->k0(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;Lcom/startshorts/androidplayer/viewmodel/mylist/c;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;Ljava/lang/Class;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->W(Ljava/lang/Class;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->a0(Ljava/lang/Class;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->b0()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic J(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final synthetic K(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->m:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic L(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->n:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic M(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->o:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic N(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic O(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->m:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic P(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->l0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Q(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->n0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic R(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;Ljava/lang/Class;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->r0(Ljava/lang/Class;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final S()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

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
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

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
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/mylist/a;

    .line 99
    .line 100
    invoke-direct {v4, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)V

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
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;

    .line 114
    .line 115
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

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
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;

    .line 134
    .line 135
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

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
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;

    .line 156
    .line 157
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

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

.method private static final T(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;Landroid/view/View;)V
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

.method private final W(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->c0(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    instance-of v1, p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->p1()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    instance-of v1, p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->u1()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :cond_1
    :goto_0
    return v0
.end method

.method private final X()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->m:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final Z()Landroidx/viewpager2/adapter/FragmentStateAdapter;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->m:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    const-class v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/Class;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    int-to-long v3, v3

    .line 44
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$createFragmentStateAdapter$2;

    .line 53
    .line 54
    invoke-direct {v2, p0, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$createFragmentStateAdapter$2;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;Ljava/util/List;Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    return-object v2
.end method

.method private final a0(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->c0(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->k1()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->n1()V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method private final b0()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;

    .line 2
    .line 3
    return-object v0
.end method

.method private final c0(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->m:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v3, v2

    .line 23
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v3, v1

    .line 39
    :goto_0
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object v2, v1

    .line 47
    :goto_1
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    move-object v1, p1

    .line 56
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 57
    .line 58
    :cond_3
    return-object v1
.end method

.method private final d0()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->b0()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->c0(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;

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
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->m1()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_1
    return v0
.end method

.method private final f0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;->c:Landroidx/databinding/ViewStubProxy;

    .line 8
    .line 9
    const-string v1, "editViewstub"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v0, v3, v1, v2}, Ljk/e0;->b(Landroidx/databinding/ViewStubProxy;IILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private final g0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final h0(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/tab/MyListTab;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "initTabView -> mCurrentTabIndex("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->i:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x29

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 29
    .line 30
    sget v1, Lcom/startshorts/androidplayer/R$layout;->item_my_list_tab:I

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->i:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->I(I)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->H(Z)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$c;

    .line 45
    .line 46
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->J(Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$initTabView$itemDecoration$1;

    .line 53
    .line 54
    invoke-direct {v2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$initTabView$itemDecoration$1;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;

    .line 62
    .line 63
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 64
    .line 65
    new-instance v4, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    const-string v6, "requireContext(...)"

    .line 72
    .line 73
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v4, v5, v1, v1}, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, p1, v0, v2, v4}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->a(Ljava/util/List;Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private final i0(Landroidx/viewpager2/adapter/FragmentStateAdapter;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;->g:Landroidx/viewpager2/widget/ViewPager2;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lkd/d;->a(Landroidx/viewpager2/widget/ViewPager2;Z)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-static {v0, v2}, Lkd/d;->b(Landroidx/viewpager2/widget/ViewPager2;I)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->l:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$mOnPageChangeCallback$1;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->i:I

    .line 32
    .line 33
    if-ltz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-ge v0, p1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;->g:Landroidx/viewpager2/widget/ViewPager2;

    .line 48
    .line 49
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->i:I

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method private static final j0(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)Lcom/startshorts/androidplayer/viewmodel/mylist/MyListViewModel;
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/mylist/MyListViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/mylist/MyListViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/MyListViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/mylist/c;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$d;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private static final k0(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;Lcom/startshorts/androidplayer/viewmodel/mylist/c;)Lkotlin/Unit;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/mylist/c$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/mylist/c$a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/c$a;->a()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->h0(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 18
    .line 19
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method private final l0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$f;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$f;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final m0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$h;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$i;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$i;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final n0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->n:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v2, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->n:Z

    .line 8
    .line 9
    iput-boolean v2, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->o:Z

    .line 10
    .line 11
    iput-boolean v2, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->p:Z

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->f0()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->n:Z

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->m0()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->q0(Z)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->s0()V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 35
    .line 36
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->n:Z

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    sget v3, Lcom/startshorts/androidplayer/R$string;->common_cancel:I

    .line 41
    .line 42
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string v3, ""

    .line 48
    .line 49
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;->b:Landroid/widget/ImageView;

    .line 59
    .line 60
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->n:Z

    .line 61
    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    const/16 v2, 0x8

    .line 65
    .line 66
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;->g:Landroidx/viewpager2/widget/ViewPager2;

    .line 76
    .line 77
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->n:Z

    .line 78
    .line 79
    xor-int/2addr v1, v2

    .line 80
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->b0()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->n:Z

    .line 88
    .line 89
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->o0(Ljava/lang/Class;Z)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method private final o0(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->c0(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->y1(Z)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->G1(Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method private final q0(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;->c:Landroidx/databinding/ViewStubProxy;

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljk/e0;->g(Landroidx/databinding/ViewStubProxy;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget v1, Lcom/startshorts/androidplayer/R$id;->check_box_iv:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/ImageView;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_checkbox_selected:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_checkbox_unselected:I

    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method private final r0(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->c0(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->z1(Z)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->H1(Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method private final s0()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->d0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;->c:Landroidx/databinding/ViewStubProxy;

    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Ljk/e0;->g(Landroidx/databinding/ViewStubProxy;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    sget v2, Lcom/startshorts/androidplayer/R$id;->delete_tv:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/widget/TextView;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-lez v0, :cond_0

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    sget v3, Lcom/startshorts/androidplayer/R$string;->common_delete:I

    .line 43
    .line 44
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const/16 v3, 0x28

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->d0()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const/16 v3, 0x29

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    sget v2, Lcom/startshorts/androidplayer/R$string;->common_delete:I

    .line 74
    .line 75
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    if-lez v0, :cond_1

    .line 92
    .line 93
    sget v0, Lcom/startshorts/androidplayer/R$color;->primary_normal:I

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    sget v0, Lcom/startshorts/androidplayer/R$color;->t_b_31:I

    .line 97
    .line 98
    :goto_1
    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    :cond_2
    return-void
.end method


# virtual methods
.method public final U()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final V()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->n0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final Y()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->n0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final e0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;->b:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->q:I

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->j:Lcom/startshorts/androidplayer/ui/fragment/base/PermissionBottomSheetDialogFragment;

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
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string p2, "mCurrentTabIndex -> "

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget p2, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->i:I

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final p0(ZZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->o:Z

    .line 2
    .line 3
    if-eq v0, p2, :cond_1

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->o:Z

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->p:Z

    .line 15
    .line 16
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->q0(Z)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->n:Z

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->s0()V

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "CollectionListFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public t()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->t()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->S()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->g0()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->Z()Landroidx/viewpager2/adapter/FragmentStateAdapter;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->i0(Landroidx/viewpager2/adapter/FragmentStateAdapter;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->v()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->B()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;->g:Landroidx/viewpager2/widget/ViewPager2;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->l:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$mOnPageChangeCallback$1;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->X()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
