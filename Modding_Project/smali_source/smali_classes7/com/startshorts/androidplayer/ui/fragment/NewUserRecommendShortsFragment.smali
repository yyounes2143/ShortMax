.class public final Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/PageStateDialogFragment;
.source "NewUserRecommendShortsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/PageStateDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentNewUserRecommendBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNewUserRecommendShortsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewUserRecommendShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,1003:1\n1863#2,2:1004\n1863#2,2:1006\n1863#2,2:1008\n1863#2,2:1028\n1863#2,2:1030\n1863#2,2:1032\n1863#2,2:1034\n15#3,9:1010\n15#3,9:1019\n*S KotlinDebug\n*F\n+ 1 NewUserRecommendShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment\n*L\n452#1:1004,2\n575#1:1006,2\n774#1:1008,2\n143#1:1028,2\n157#1:1030,2\n177#1:1032,2\n188#1:1034,2\n884#1:1010,9\n903#1:1019,9\n*E\n"
    }
.end annotation


# static fields
.field public static final E:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private A:Landroid/os/CountDownTimer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private B:Z

.field private final C:I

.field private final D:I

.field private final k:I

.field private l:Z

.field private final m:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final n:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final o:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final p:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startshorts/androidplayer/bean/purchase/RecommendCoinSku;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private t:Z

.field private u:Z

.field private v:I

.field private w:Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private x:Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private y:I

.field private z:Lhi/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->E:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_new_user_recommend:I

    .line 5
    .line 6
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->k:I

    .line 7
    .line 8
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/h;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/h;-><init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->m:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/i;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/i;-><init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->n:Lms/i;

    .line 29
    .line 30
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/j;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/j;-><init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->o:Lms/i;

    .line 40
    .line 41
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/k;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/k;-><init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->p:Lms/i;

    .line 51
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->q:Ljava/util/ArrayList;

    .line 58
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->r:Ljava/util/ArrayList;

    .line 65
    .line 66
    const/4 v0, 0x3

    .line 67
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->v:I

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->B:Z

    .line 71
    .line 72
    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->C:I

    .line 74
    .line 75
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->D:I

    .line 76
    .line 77
    return-void
.end method

.method private final A0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentNewUserRecommendBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentNewUserRecommendBinding;->a:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$initView$itemDecoration$1;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$initView$itemDecoration$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;I)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v2, v3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 30
    .line 31
    .line 32
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$initView$2;

    .line 33
    .line 34
    invoke-direct {v3}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$initView$2;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/startshorts/androidplayer/databinding/DialogFragmentNewUserRecommendBinding;

    .line 45
    .line 46
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/DialogFragmentNewUserRecommendBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    .line 48
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentNewUserRecommendBinding;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentNewUserRecommendBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentNewUserRecommendBinding;

    .line 68
    .line 69
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentNewUserRecommendBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    .line 71
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentNewUserRecommendBinding;

    .line 87
    .line 88
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentNewUserRecommendBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    .line 90
    const/4 v4, 0x0

    .line 91
    invoke-static {v0, v2, v4}, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v2, "inflate(...)"

    .line 96
    .line 97
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance v2, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;

    .line 101
    .line 102
    new-instance v5, Lcom/startshorts/androidplayer/ui/fragment/f;

    .line 103
    .line 104
    invoke-direct {v5, p0}, Lcom/startshorts/androidplayer/ui/fragment/f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V

    .line 105
    .line 106
    .line 107
    new-instance v6, Lcom/startshorts/androidplayer/ui/fragment/g;

    .line 108
    .line 109
    invoke-direct {v6, p0}, Lcom/startshorts/androidplayer/ui/fragment/g;-><init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V

    .line 110
    .line 111
    .line 112
    invoke-direct {v2, v0, v5, v6}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;-><init>(Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    .line 113
    .line 114
    .line 115
    new-instance v5, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$c;

    .line 116
    .line 117
    invoke-direct {v5, p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v5}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->B(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    check-cast v5, Lcom/startshorts/androidplayer/databinding/DialogFragmentNewUserRecommendBinding;

    .line 128
    .line 129
    iget-object v5, v5, Lcom/startshorts/androidplayer/databinding/DialogFragmentNewUserRecommendBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 130
    .line 131
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 132
    .line 133
    .line 134
    iput-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->w:Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;

    .line 135
    .line 136
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->x:Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;

    .line 137
    .line 138
    iget-object v2, v0, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->i:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 139
    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    sget v6, Lcom/startshorts/androidplayer/R$color;->color_new_user_recommend_fragment_title_start:I

    .line 145
    .line 146
    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    sget v7, Lcom/startshorts/androidplayer/R$color;->color_new_user_recommend_fragment_title_end:I

    .line 155
    .line 156
    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    invoke-virtual {v2, v5, v6}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor(II)V

    .line 161
    .line 162
    .line 163
    iget-object v2, v0, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->o:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 164
    .line 165
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->c:Landroid/widget/ImageView;

    .line 166
    .line 167
    new-array v1, v1, [Landroid/view/View;

    .line 168
    .line 169
    aput-object v2, v1, v4

    .line 170
    .line 171
    aput-object v0, v1, v3

    .line 172
    .line 173
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Ljava/lang/Iterable;

    .line 178
    .line 179
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_0

    .line 188
    .line 189
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    check-cast v1, Landroid/view/View;

    .line 194
    .line 195
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$d;

    .line 196
    .line 197
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_0
    return-void
.end method

.method private static final B0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Landroid/view/TextureView;Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;)Lkotlin/Unit;
    .locals 6

    .line 1
    const-string v0, "renderView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {p2, v1, v2, v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl$default(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;IILjava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->w:Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {v3, v1}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->S(Z)V

    .line 32
    .line 33
    .line 34
    :cond_1
    sget-object v3, Lpf/l;->a:Lpf/l;

    .line 35
    .line 36
    invoke-virtual {v3, v0}, Lpf/l;->b(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/DirectUrlSource;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->n:Lms/i;

    .line 41
    .line 42
    invoke-interface {p0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 47
    .line 48
    sget-object v3, Lfk/u;->a:Lfk/u;

    .line 49
    .line 50
    invoke-virtual {v3}, Lfk/u;->b()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    new-instance v4, Llf/s;

    .line 55
    .line 56
    invoke-direct {v4}, Llf/s;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v5, "Recommend"

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Llf/s;->y(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, p1}, Llf/s;->u(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v0}, Llf/s;->w(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v2}, Llf/s;->r(Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v1}, Llf/s;->v(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    new-instance p1, Lcom/startshorts/androidplayer/manager/player/feature/d;

    .line 83
    .line 84
    invoke-direct {p1}, Lcom/startshorts/androidplayer/manager/player/feature/d;-><init>()V

    .line 85
    .line 86
    .line 87
    new-array p2, v2, [Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature;

    .line 88
    .line 89
    aput-object p1, p2, v1

    .line 90
    .line 91
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v4, p1}, Llf/s;->o(Ljava/util/List;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 99
    .line 100
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/player/b$e;

    .line 101
    .line 102
    invoke-direct {p1, v3, v4}, Lcom/startshorts/androidplayer/viewmodel/player/b$e;-><init>(Landroid/content/Context;Llf/s;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->w:Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;

    .line 110
    .line 111
    if-eqz p0, :cond_4

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->R()V

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 117
    .line 118
    return-object p0
.end method

.method private static final C0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->n:Lms/i;

    .line 2
    .line 3
    invoke-interface {p0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/player/b$f;->a:Lcom/startshorts/androidplayer/viewmodel/player/b$f;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method private static final D0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->r0()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/l;

    .line 18
    .line 19
    invoke-direct {v2, p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/l;-><init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$h;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method private static final E0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;
    .locals 5

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/viewmodel/billing/b$q;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    new-instance p2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->r:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/startshorts/androidplayer/bean/purchase/RecommendCoinSku;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-lez v3, :cond_0

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    new-instance v1, Lzc/g;

    .line 58
    .line 59
    sget-object v2, Lle/h;->a:Lle/h;

    .line 60
    .line 61
    invoke-virtual {v2}, Lle/h;->a()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-direct {v1, v2, v0}, Lzc/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->s:Ljava/util/List;

    .line 77
    .line 78
    if-eqz p0, :cond_4

    .line 79
    .line 80
    check-cast p0, Ljava/lang/Iterable;

    .line 81
    .line 82
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_4

    .line 91
    .line 92
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-lez v2, :cond_3

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    if-nez p0, :cond_5

    .line 121
    .line 122
    new-instance p0, Lzc/g;

    .line 123
    .line 124
    sget-object v1, Lle/h;->a:Lle/h;

    .line 125
    .line 126
    invoke-virtual {v1}, Lle/h;->b()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-direct {p0, v1, v0}, Lzc/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    :cond_5
    new-instance p0, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;

    .line 137
    .line 138
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;-><init>(Ljava/util/List;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_5

    .line 145
    .line 146
    :cond_6
    instance-of p1, p2, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;

    .line 147
    .line 148
    if-eqz p1, :cond_a

    .line 149
    .line 150
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->r:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_8

    .line 161
    .line 162
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Lcom/startshorts/androidplayer/bean/purchase/RecommendCoinSku;

    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getDisRate()F

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    const/4 v2, 0x0

    .line 173
    cmpg-float v1, v1, v2

    .line 174
    .line 175
    const/4 v2, 0x1

    .line 176
    const/16 v3, 0x24

    .line 177
    .line 178
    if-nez v1, :cond_7

    .line 179
    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getOriginalPrice()F

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setPriceText(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_7
    int-to-float v1, v2

    .line 204
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getDisRate()F

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    sub-float/2addr v1, v4

    .line 209
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setDisRate(F)V

    .line 210
    .line 211
    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRecharge()F

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setPriceText(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getOriginalPrice()F

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setOriginPriceText(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    :goto_3
    move-object v1, p2

    .line 257
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;

    .line 258
    .line 259
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;->a()Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-static {v0, v1, v2}, Ljk/u;->j(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;Z)V

    .line 264
    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_8
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->s:Ljava/util/List;

    .line 268
    .line 269
    if-eqz p1, :cond_9

    .line 270
    .line 271
    check-cast p1, Ljava/lang/Iterable;

    .line 272
    .line 273
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-eqz v0, :cond_9

    .line 282
    .line 283
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    check-cast v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 288
    .line 289
    move-object v1, p2

    .line 290
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;

    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;->a()Ljava/util/List;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-static {v0, v1}, Ljk/u;->k(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)V

    .line 297
    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentNewUserRecommendBinding;

    .line 305
    .line 306
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentNewUserRecommendBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 307
    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    const/4 p2, 0x4

    .line 313
    if-ne p1, p2, :cond_12

    .line 314
    .line 315
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->R0()V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_5

    .line 319
    .line 320
    :cond_a
    instance-of p1, p2, Lcom/startshorts/androidplayer/viewmodel/billing/b$u;

    .line 321
    .line 322
    const/4 v0, 0x0

    .line 323
    const/4 v1, 0x2

    .line 324
    const/4 v2, 0x0

    .line 325
    if-eqz p1, :cond_b

    .line 326
    .line 327
    sget p1, Lcom/startshorts/androidplayer/R$string;->common_user_canceled:I

    .line 328
    .line 329
    invoke-static {p0, p1, v2, v1, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->A(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;IIILjava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_5

    .line 333
    .line 334
    :cond_b
    instance-of p1, p2, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;

    .line 335
    .line 336
    if-eqz p1, :cond_c

    .line 337
    .line 338
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;

    .line 339
    .line 340
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->a()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->b()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->c()Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 349
    .line 350
    .line 351
    move-result-object p2

    .line 352
    invoke-direct {p0, p1, v0, p2}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->s0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 353
    .line 354
    .line 355
    goto :goto_5

    .line 356
    :cond_c
    instance-of p1, p2, Lcom/startshorts/androidplayer/viewmodel/billing/b$b;

    .line 357
    .line 358
    if-eqz p1, :cond_d

    .line 359
    .line 360
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->T0()V

    .line 361
    .line 362
    .line 363
    goto :goto_5

    .line 364
    :cond_d
    instance-of p1, p2, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;

    .line 365
    .line 366
    if-eqz p1, :cond_e

    .line 367
    .line 368
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;

    .line 369
    .line 370
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;->a()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;->b()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;->c()Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 379
    .line 380
    .line 381
    move-result-object p2

    .line 382
    invoke-direct {p0, p1, v0, p2}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->t0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 383
    .line 384
    .line 385
    goto :goto_5

    .line 386
    :cond_e
    instance-of p1, p2, Lcom/startshorts/androidplayer/viewmodel/billing/b$d;

    .line 387
    .line 388
    if-eqz p1, :cond_f

    .line 389
    .line 390
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->T0()V

    .line 391
    .line 392
    .line 393
    goto :goto_5

    .line 394
    :cond_f
    instance-of p1, p2, Lcom/startshorts/androidplayer/viewmodel/billing/b$g;

    .line 395
    .line 396
    if-eqz p1, :cond_10

    .line 397
    .line 398
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->u0()V

    .line 399
    .line 400
    .line 401
    goto :goto_5

    .line 402
    :cond_10
    instance-of p1, p2, Lcom/startshorts/androidplayer/viewmodel/billing/b$i;

    .line 403
    .line 404
    if-eqz p1, :cond_11

    .line 405
    .line 406
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->u0()V

    .line 407
    .line 408
    .line 409
    sget p1, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_not_find_lost_order_tip:I

    .line 410
    .line 411
    invoke-static {p0, p1, v2, v1, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->A(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;IIILjava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    goto :goto_5

    .line 415
    :cond_11
    instance-of p1, p2, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;

    .line 416
    .line 417
    if-eqz p1, :cond_12

    .line 418
    .line 419
    new-instance p1, Lgi/f;

    .line 420
    .line 421
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 422
    .line 423
    .line 424
    move-result-object p0

    .line 425
    const-string v0, "requireContext(...)"

    .line 426
    .line 427
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;

    .line 431
    .line 432
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;->a()Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 433
    .line 434
    .line 435
    move-result-object p2

    .line 436
    invoke-direct {p1, p0, p2}, Lgi/f;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {p1}, Lfi/a;->show()V

    .line 440
    .line 441
    .line 442
    :cond_12
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 443
    .line 444
    return-object p0
.end method

.method private static final F0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->r0()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-class v0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final G0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->r0()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/m;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/m;-><init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$h;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->o()Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/c;

    .line 35
    .line 36
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$h;

    .line 40
    .line 41
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/d;

    .line 52
    .line 53
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V

    .line 54
    .line 55
    .line 56
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$h;

    .line 57
    .line 58
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 62
    .line 63
    .line 64
    return-object v0
.end method

.method private static final H0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateDialogFragment;->J()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateDialogFragment;->G()V

    .line 12
    .line 13
    .line 14
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method private static final I0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateDialogFragment;->K()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateDialogFragment;->L(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method private static final J0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lcom/startshorts/androidplayer/viewmodel/recommend/a;)Lkotlin/Unit;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/recommend/a$a;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/recommend/a$a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/recommend/a$a;->a()Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;->getRecommendList()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->q:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->q:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/recommend/a$a;->a()Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;->getRecommendList()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/util/Collection;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/recommend/a$a;->a()Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->L0(Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->r:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->s:Ljava/util/List;

    .line 53
    .line 54
    check-cast p1, Ljava/util/Collection;

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->R0()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->p0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;

    .line 73
    .line 74
    const-string v0, "recommend"

    .line 75
    .line 76
    invoke-direct {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 83
    .line 84
    return-object p0
.end method

.method private static final K0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final L0(Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;->getShowSkuAmount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->v:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;->getShowOriginPrice()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->t:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->r:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;->getSubscribeList()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->s:Ljava/util/List;

    .line 31
    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;->getSkuInfos()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    move-object v0, p1

    .line 40
    check-cast v0, Ljava/lang/Iterable;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x0

    .line 47
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lcom/startshorts/androidplayer/bean/purchase/RecommendCoinSku;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/purchase/RecommendCoinSku;->getPurchasedSku()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    if-lez v1, :cond_4

    .line 69
    .line 70
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->r:Ljava/util/ArrayList;

    .line 71
    .line 72
    check-cast p1, Ljava/util/Collection;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    .line 76
    .line 77
    iget p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->v:I

    .line 78
    .line 79
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->v:I

    .line 84
    .line 85
    :cond_4
    return-void
.end method

.method public static synthetic M(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->D0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final M0()V
    .locals 25
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->x:Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->a:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 11
    .line 12
    .line 13
    iget-boolean v2, v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->u:Z

    .line 14
    .line 15
    const/16 v3, 0x8

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez v2, :cond_2

    .line 19
    .line 20
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->r:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget v5, v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->v:I

    .line 27
    .line 28
    if-gt v2, v5, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->o:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 32
    .line 33
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->c:Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->r:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->o:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->c:Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    :goto_1
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 59
    .line 60
    if-nez v5, :cond_3

    .line 61
    .line 62
    move v6, v3

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    move v6, v4

    .line 65
    :goto_2
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->r:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    return-void

    .line 77
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const v6, 0x106000b

    .line 82
    .line 83
    .line 84
    const/4 v7, 0x0

    .line 85
    invoke-virtual {v2, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    sget v8, Lcom/startshorts/androidplayer/R$color;->colorPrimary:I

    .line 94
    .line 95
    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    sget v9, Lcom/startshorts/androidplayer/R$color;->color_new_user_recommend_fragment_disable_text:I

    .line 104
    .line 105
    invoke-virtual {v8, v9, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    sget v10, Lcom/startshorts/androidplayer/R$color;->color_new_user_recommend_fragment_disable_text2:I

    .line 114
    .line 115
    invoke-virtual {v9, v10, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    sget v11, Lcom/startshorts/androidplayer/R$color;->color_new_user_recommend_fragment_ori_price:I

    .line 124
    .line 125
    invoke-virtual {v10, v11, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    move v11, v4

    .line 138
    :goto_3
    if-ge v11, v5, :cond_14

    .line 139
    .line 140
    iget-object v12, v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->r:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v12

    .line 146
    const-string v13, "get(...)"

    .line 147
    .line 148
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    check-cast v12, Lcom/startshorts/androidplayer/bean/purchase/RecommendCoinSku;

    .line 152
    .line 153
    sget-object v14, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 154
    .line 155
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->o0()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v15

    .line 159
    const/16 v22, 0x7c

    .line 160
    .line 161
    const/16 v23, 0x0

    .line 162
    .line 163
    const/16 v17, 0x0

    .line 164
    .line 165
    const/16 v18, 0x0

    .line 166
    .line 167
    const/16 v19, 0x0

    .line 168
    .line 169
    const/16 v20, 0x0

    .line 170
    .line 171
    const/16 v21, 0x0

    .line 172
    .line 173
    move-object/from16 v16, v12

    .line 174
    .line 175
    invoke-static/range {v14 .. v23}, Lcom/startshorts/androidplayer/manager/event/EventManager;->O0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 179
    .line 180
    .line 181
    move-result v13

    .line 182
    const-string v14, "inflate(...)"

    .line 183
    .line 184
    const/4 v15, 0x4

    .line 185
    const/4 v3, 0x1

    .line 186
    if-nez v13, :cond_c

    .line 187
    .line 188
    iget-object v13, v1, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->a:Landroid/widget/LinearLayout;

    .line 189
    .line 190
    invoke-static {v10, v13, v3}, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v13}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object v14

    .line 201
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->isSubscriptValid()Z

    .line 202
    .line 203
    .line 204
    move-result v21

    .line 205
    if-nez v21, :cond_5

    .line 206
    .line 207
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 208
    .line 209
    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_5
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 214
    .line 215
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSubscript()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v15

    .line 219
    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    .line 221
    .line 222
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 223
    .line 224
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    :goto_4
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 228
    .line 229
    new-instance v15, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getCoins()I

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const/16 v4, 0x20

    .line 242
    .line 243
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getCoinsUnit()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductGiveCoins()Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    if-eqz v3, :cond_6

    .line 265
    .line 266
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    goto :goto_5

    .line 271
    :cond_6
    const/4 v3, 0x0

    .line 272
    :goto_5
    if-nez v3, :cond_7

    .line 273
    .line 274
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 275
    .line 276
    const/4 v4, 0x4

    .line 277
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 278
    .line 279
    .line 280
    move/from16 v24, v5

    .line 281
    .line 282
    goto :goto_7

    .line 283
    :cond_7
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 284
    .line 285
    const/4 v4, 0x0

    .line 286
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 287
    .line 288
    .line 289
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 290
    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .line 295
    .line 296
    new-instance v15, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    move/from16 v24, v5

    .line 302
    .line 303
    const/16 v5, 0x2b

    .line 304
    .line 305
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductGiveCoins()Ljava/lang/Integer;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    if-eqz v5, :cond_8

    .line 313
    .line 314
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    goto :goto_6

    .line 319
    :cond_8
    const/4 v5, 0x0

    .line 320
    :goto_6
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    invoke-static {v5}, Ljk/v;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const/16 v5, 0x20

    .line 335
    .line 336
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGiveCoinsUnit()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    .line 352
    .line 353
    :goto_7
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 354
    .line 355
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPriceText()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getDisRate()F

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    const/4 v4, 0x0

    .line 367
    cmpg-float v3, v3, v4

    .line 368
    .line 369
    if-nez v3, :cond_9

    .line 370
    .line 371
    const/4 v3, 0x1

    .line 372
    goto :goto_8

    .line 373
    :cond_9
    const/4 v3, 0x0

    .line 374
    :goto_8
    if-nez v3, :cond_a

    .line 375
    .line 376
    iget-boolean v3, v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->t:Z

    .line 377
    .line 378
    if-eqz v3, :cond_a

    .line 379
    .line 380
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 381
    .line 382
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 383
    .line 384
    .line 385
    move-result-object v4

    .line 386
    const/16 v5, 0x10

    .line 387
    .line 388
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getOriginPriceText()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    .line 397
    .line 398
    const/4 v4, 0x0

    .line 399
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 400
    .line 401
    .line 402
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    goto :goto_9

    .line 406
    :cond_a
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 407
    .line 408
    const/16 v4, 0x8

    .line 409
    .line 410
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 411
    .line 412
    .line 413
    :goto_9
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/RecommendCoinSku;->getPurchasedSku()Z

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    if-eqz v3, :cond_b

    .line 418
    .line 419
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->a:Landroid/view/View;

    .line 420
    .line 421
    sget v4, Lcom/startshorts/androidplayer/R$drawable;->shape_coin_sku_main_gray:I

    .line 422
    .line 423
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 424
    .line 425
    .line 426
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 427
    .line 428
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 429
    .line 430
    .line 431
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 432
    .line 433
    sget v4, Lcom/startshorts/androidplayer/R$drawable;->bg_coin_sku_recommend_main_label_gray:I

    .line 434
    .line 435
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 436
    .line 437
    .line 438
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 439
    .line 440
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 441
    .line 442
    .line 443
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 444
    .line 445
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 446
    .line 447
    .line 448
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 449
    .line 450
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 451
    .line 452
    .line 453
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 454
    .line 455
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 456
    .line 457
    .line 458
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->e:Landroid/widget/LinearLayout;

    .line 459
    .line 460
    sget v4, Lcom/startshorts/androidplayer/R$drawable;->bg_coin_sku_recommend_main_price_gray:I

    .line 461
    .line 462
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 463
    .line 464
    .line 465
    goto :goto_a

    .line 466
    :cond_b
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->a:Landroid/view/View;

    .line 467
    .line 468
    sget v4, Lcom/startshorts/androidplayer/R$drawable;->shape_coin_sku_main:I

    .line 469
    .line 470
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 471
    .line 472
    .line 473
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 474
    .line 475
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 476
    .line 477
    .line 478
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 479
    .line 480
    sget v4, Lcom/startshorts/androidplayer/R$drawable;->bg_coin_sku_recommend_main_label:I

    .line 481
    .line 482
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 483
    .line 484
    .line 485
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 486
    .line 487
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 488
    .line 489
    .line 490
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 491
    .line 492
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 493
    .line 494
    .line 495
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 496
    .line 497
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 498
    .line 499
    .line 500
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 501
    .line 502
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 503
    .line 504
    .line 505
    iget-object v3, v13, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendMainBinding;->e:Landroid/widget/LinearLayout;

    .line 506
    .line 507
    sget v4, Lcom/startshorts/androidplayer/R$drawable;->bg_coin_sku_recommend_main_price:I

    .line 508
    .line 509
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 510
    .line 511
    .line 512
    :goto_a
    const/4 v5, 0x0

    .line 513
    const/16 v13, 0x8

    .line 514
    .line 515
    goto/16 :goto_11

    .line 516
    .line 517
    :cond_c
    move/from16 v24, v5

    .line 518
    .line 519
    iget-object v3, v1, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->a:Landroid/widget/LinearLayout;

    .line 520
    .line 521
    const/4 v4, 0x1

    .line 522
    invoke-static {v10, v3, v4}, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 530
    .line 531
    .line 532
    move-result-object v14

    .line 533
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->isSubscriptValid()Z

    .line 534
    .line 535
    .line 536
    move-result v5

    .line 537
    if-nez v5, :cond_d

    .line 538
    .line 539
    iget-object v5, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 540
    .line 541
    const/4 v13, 0x4

    .line 542
    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 543
    .line 544
    .line 545
    goto :goto_b

    .line 546
    :cond_d
    iget-object v5, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 547
    .line 548
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSubscript()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v13

    .line 552
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    .line 554
    .line 555
    iget-object v5, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 556
    .line 557
    const/4 v13, 0x0

    .line 558
    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 559
    .line 560
    .line 561
    :goto_b
    iget-object v5, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 562
    .line 563
    new-instance v13, Ljava/lang/StringBuilder;

    .line 564
    .line 565
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getCoins()I

    .line 569
    .line 570
    .line 571
    move-result v15

    .line 572
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    const/16 v15, 0x20

    .line 576
    .line 577
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getCoinsUnit()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v15

    .line 584
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v13

    .line 591
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductGiveCoins()Ljava/lang/Integer;

    .line 595
    .line 596
    .line 597
    move-result-object v5

    .line 598
    if-eqz v5, :cond_e

    .line 599
    .line 600
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 601
    .line 602
    .line 603
    move-result v5

    .line 604
    goto :goto_c

    .line 605
    :cond_e
    const/4 v5, 0x0

    .line 606
    :goto_c
    if-nez v5, :cond_f

    .line 607
    .line 608
    iget-object v5, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 609
    .line 610
    const/16 v13, 0x8

    .line 611
    .line 612
    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 613
    .line 614
    .line 615
    goto :goto_e

    .line 616
    :cond_f
    iget-object v5, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 617
    .line 618
    const/4 v13, 0x0

    .line 619
    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 620
    .line 621
    .line 622
    iget-object v5, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 623
    .line 624
    new-instance v13, Ljava/lang/StringBuilder;

    .line 625
    .line 626
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    .line 628
    .line 629
    new-instance v15, Ljava/lang/StringBuilder;

    .line 630
    .line 631
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    .line 633
    .line 634
    const/16 v4, 0x2b

    .line 635
    .line 636
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductGiveCoins()Ljava/lang/Integer;

    .line 640
    .line 641
    .line 642
    move-result-object v4

    .line 643
    if-eqz v4, :cond_10

    .line 644
    .line 645
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 646
    .line 647
    .line 648
    move-result v4

    .line 649
    goto :goto_d

    .line 650
    :cond_10
    const/4 v4, 0x0

    .line 651
    :goto_d
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v4

    .line 658
    invoke-static {v4}, Ljk/v;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v4

    .line 662
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    const/16 v4, 0x20

    .line 666
    .line 667
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGiveCoinsUnit()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v4

    .line 674
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v4

    .line 681
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    .line 683
    .line 684
    :goto_e
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 685
    .line 686
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPriceText()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v5

    .line 690
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getDisRate()F

    .line 694
    .line 695
    .line 696
    move-result v4

    .line 697
    const/4 v5, 0x0

    .line 698
    cmpg-float v4, v4, v5

    .line 699
    .line 700
    if-nez v4, :cond_11

    .line 701
    .line 702
    const/16 v21, 0x1

    .line 703
    .line 704
    goto :goto_f

    .line 705
    :cond_11
    const/16 v21, 0x0

    .line 706
    .line 707
    :goto_f
    if-nez v21, :cond_12

    .line 708
    .line 709
    iget-boolean v4, v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->t:Z

    .line 710
    .line 711
    if-eqz v4, :cond_12

    .line 712
    .line 713
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 714
    .line 715
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 716
    .line 717
    .line 718
    move-result-object v5

    .line 719
    const/16 v13, 0x10

    .line 720
    .line 721
    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setFlags(I)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getOriginPriceText()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v5

    .line 728
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    .line 730
    .line 731
    const/4 v5, 0x0

    .line 732
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 733
    .line 734
    .line 735
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 736
    .line 737
    .line 738
    const/16 v13, 0x8

    .line 739
    .line 740
    goto :goto_10

    .line 741
    :cond_12
    const/4 v5, 0x0

    .line 742
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 743
    .line 744
    const/16 v13, 0x8

    .line 745
    .line 746
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 747
    .line 748
    .line 749
    :goto_10
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/RecommendCoinSku;->getPurchasedSku()Z

    .line 750
    .line 751
    .line 752
    move-result v4

    .line 753
    if-eqz v4, :cond_13

    .line 754
    .line 755
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->a:Landroid/view/View;

    .line 756
    .line 757
    sget v15, Lcom/startshorts/androidplayer/R$drawable;->bg_coin_sku_normal_gray:I

    .line 758
    .line 759
    invoke-virtual {v4, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 760
    .line 761
    .line 762
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 763
    .line 764
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 765
    .line 766
    .line 767
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 768
    .line 769
    sget v15, Lcom/startshorts/androidplayer/R$drawable;->bg_coin_sku_recommend_normal_label_gray:I

    .line 770
    .line 771
    invoke-virtual {v4, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 772
    .line 773
    .line 774
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 775
    .line 776
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 777
    .line 778
    .line 779
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 780
    .line 781
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 782
    .line 783
    .line 784
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 785
    .line 786
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 787
    .line 788
    .line 789
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 790
    .line 791
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 792
    .line 793
    .line 794
    goto :goto_11

    .line 795
    :cond_13
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->a:Landroid/view/View;

    .line 796
    .line 797
    sget v15, Lcom/startshorts/androidplayer/R$drawable;->bg_coin_sku_normal:I

    .line 798
    .line 799
    invoke-virtual {v4, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 800
    .line 801
    .line 802
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 803
    .line 804
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 805
    .line 806
    .line 807
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 808
    .line 809
    sget v15, Lcom/startshorts/androidplayer/R$drawable;->bg_coin_sku_recommend_normal_label:I

    .line 810
    .line 811
    invoke-virtual {v4, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 812
    .line 813
    .line 814
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 815
    .line 816
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 817
    .line 818
    .line 819
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 820
    .line 821
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 822
    .line 823
    .line 824
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 825
    .line 826
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 827
    .line 828
    .line 829
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ItemCoinSkuRecommendNormalBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 830
    .line 831
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 832
    .line 833
    .line 834
    :goto_11
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$e;

    .line 835
    .line 836
    invoke-direct {v3, v12, v0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$e;-><init>(Lcom/startshorts/androidplayer/bean/purchase/RecommendCoinSku;Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v14, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 840
    .line 841
    .line 842
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    const-string v4, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    .line 847
    .line 848
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    .line 850
    .line 851
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 852
    .line 853
    const/high16 v4, 0x40c00000    # 6.0f

    .line 854
    .line 855
    invoke-static {v4}, Ljk/g;->a(F)I

    .line 856
    .line 857
    .line 858
    move-result v4

    .line 859
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 860
    .line 861
    add-int/lit8 v11, v11, 0x1

    .line 862
    .line 863
    move v4, v5

    .line 864
    move v3, v13

    .line 865
    move/from16 v5, v24

    .line 866
    .line 867
    goto/16 :goto_3

    .line 868
    .line 869
    :cond_14
    return-void
.end method

.method public static synthetic N(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->C0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final N0()V
    .locals 7

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->f1()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    cmp-long v5, v1, v3

    .line 10
    .line 11
    if-nez v5, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, v3, v4}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->Q0(J)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-wide/16 v5, -0x1

    .line 18
    .line 19
    cmp-long v5, v1, v5

    .line 20
    .line 21
    if-nez v5, :cond_1

    .line 22
    .line 23
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    const-wide/32 v5, 0x5265c00

    .line 30
    .line 31
    .line 32
    add-long/2addr v1, v5

    .line 33
    invoke-virtual {v0, v1, v2}, Lud/b;->s4(J)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    sub-long v5, v1, v5

    .line 44
    .line 45
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->A:Landroid/os/CountDownTimer;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 50
    .line 51
    .line 52
    :cond_2
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->A:Landroid/os/CountDownTimer;

    .line 54
    .line 55
    const-wide/16 v0, 0x3e8

    .line 56
    .line 57
    cmp-long v0, v5, v0

    .line 58
    .line 59
    if-lez v0, :cond_3

    .line 60
    .line 61
    invoke-direct {p0, v5, v6}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->Q0(J)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$f;

    .line 65
    .line 66
    invoke-direct {v0, v5, v6, p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$f;-><init>(JLcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->A:Landroid/os/CountDownTimer;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    invoke-direct {p0, v3, v4}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->Q0(J)V

    .line 76
    .line 77
    .line 78
    :goto_1
    return-void
.end method

.method public static synthetic O(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->E0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final O0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->w:Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->getItemCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v1, v3, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->q:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->e(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->getItemCount()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-le v1, v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->T(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->x:Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->getItemCount()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-le v0, v3, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/16 v2, 0x8

    .line 44
    .line 45
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    :cond_3
    return-void
.end method

.method public static synthetic P(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->I0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final P0()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->s:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->x:Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->g:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->s:Ljava/util/List;

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    check-cast v2, Ljava/lang/Iterable;

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 54
    .line 55
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->o0()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const/16 v12, 0x7c

    .line 62
    .line 63
    const/4 v13, 0x0

    .line 64
    const/4 v7, 0x0

    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v10, 0x0

    .line 68
    const/4 v11, 0x0

    .line 69
    move-object v6, v3

    .line 70
    invoke-static/range {v4 .. v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->P0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isPro()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    const/4 v12, 0x0

    .line 78
    const-string v5, "inflate(...)"

    .line 79
    .line 80
    const/4 v6, 0x1

    .line 81
    if-eqz v4, :cond_2

    .line 82
    .line 83
    iget-object v4, v0, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->g:Landroid/widget/LinearLayout;

    .line 84
    .line 85
    invoke-static {v1, v4, v6}, Lcom/startshorts/androidplayer/databinding/ItemSubsSkuRecommendProBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ItemSubsSkuRecommendProBinding;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    const-string v5, "null cannot be cast to non-null type com.startshorts.androidplayer.ui.view.subs.SubsProOldStyleView"

    .line 97
    .line 98
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    move-object v13, v4

    .line 102
    check-cast v13, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;

    .line 103
    .line 104
    const/16 v10, 0x1c

    .line 105
    .line 106
    const/4 v11, 0x0

    .line 107
    const-string v5, "new_user_drama"

    .line 108
    .line 109
    const/4 v7, 0x0

    .line 110
    const/4 v8, 0x0

    .line 111
    const/4 v9, 0x0

    .line 112
    move-object v4, v13

    .line 113
    move-object v6, v3

    .line 114
    invoke-static/range {v4 .. v11}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->setSku$default(Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v13, v12}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProOldStyleView;->z(I)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    iget-object v4, v0, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->g:Landroid/widget/LinearLayout;

    .line 122
    .line 123
    invoke-static {v1, v4, v6}, Lcom/startshorts/androidplayer/databinding/ItemSubsSkuRecommendNormalBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ItemSubsSkuRecommendNormalBinding;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    const-string v5, "null cannot be cast to non-null type com.startshorts.androidplayer.ui.view.subs.SubsNormalOldStyleView"

    .line 135
    .line 136
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    move-object v13, v4

    .line 140
    check-cast v13, Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView;

    .line 141
    .line 142
    const/16 v9, 0xc

    .line 143
    .line 144
    const/4 v10, 0x0

    .line 145
    const-string v5, "new_user_drama"

    .line 146
    .line 147
    const/4 v7, 0x0

    .line 148
    const/4 v8, 0x0

    .line 149
    move-object v4, v13

    .line 150
    move-object v6, v3

    .line 151
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView;->setSku$default(Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v13, v12}, Lcom/startshorts/androidplayer/ui/view/subs/SubsNormalOldStyleView;->v(I)V

    .line 155
    .line 156
    .line 157
    :goto_1
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$g;

    .line 158
    .line 159
    invoke-direct {v4, p0, v3}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$g;-><init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v13, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    const-string v4, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    .line 170
    .line 171
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 175
    .line 176
    const/high16 v4, 0x40c00000    # 6.0f

    .line 177
    .line 178
    invoke-static {v4}, Ljk/g;->a(F)I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_3
    return-void

    .line 187
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->v0()V

    .line 188
    .line 189
    .line 190
    return-void
.end method

.method public static synthetic Q(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->H0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final Q0(J)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->x:Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    cmp-long v1, p1, v1

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object p1, v0, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->f:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    const/16 p2, 0x8

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, v0, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->d:Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, v0, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->e:Landroid/widget/ImageView;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const/16 v1, 0x3e8

    .line 31
    .line 32
    int-to-long v1, v1

    .line 33
    div-long/2addr p1, v1

    .line 34
    const/16 v1, 0xe10

    .line 35
    .line 36
    int-to-long v1, v1

    .line 37
    div-long v3, p1, v1

    .line 38
    .line 39
    rem-long/2addr p1, v1

    .line 40
    const/16 v1, 0x3c

    .line 41
    .line 42
    int-to-long v1, v1

    .line 43
    div-long v5, p1, v1

    .line 44
    .line 45
    rem-long/2addr p1, v1

    .line 46
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 47
    .line 48
    const/16 v2, 0xa

    .line 49
    .line 50
    int-to-long v7, v2

    .line 51
    div-long v9, v3, v7

    .line 52
    .line 53
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 61
    .line 62
    rem-long/2addr v3, v7

    .line 63
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 71
    .line 72
    div-long v2, v5, v7

    .line 73
    .line 74
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 82
    .line 83
    rem-long/2addr v5, v7

    .line 84
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->q:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 92
    .line 93
    div-long v2, p1, v7

    .line 94
    .line 95
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->r:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 103
    .line 104
    rem-long/2addr p1, v7

    .line 105
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public static synthetic R(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->F0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final R0()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentNewUserRecommendBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentNewUserRecommendBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateDialogFragment;->G()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->N0()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->O0()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->P0()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->M0()V

    .line 26
    .line 27
    .line 28
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->o0()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const/16 v8, 0x12

    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v7, 0x0

    .line 41
    invoke-static/range {v2 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->Y0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static synthetic S(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->G0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final S0(Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->q0()Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->y:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;->E(ILcom/startshorts/androidplayer/bean/shorts/RecommendShorts;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V0:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "requireContext(...)"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 22
    .line 23
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->o0()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;->getDramaId()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeId(I)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 45
    .line 46
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;->getCoverUrl()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v3, p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 85
    .line 86
    .line 87
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 90
    .line 91
    .line 92
    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->B:Z

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->dismiss()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public static synthetic T(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Landroidx/lifecycle/ViewModelProvider;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->K0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final T0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$i;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$i;-><init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$j;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$j;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic U(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lcom/startshorts/androidplayer/viewmodel/recommend/a;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->J0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lcom/startshorts/androidplayer/viewmodel/recommend/a;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final U0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->u0()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$l;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$l;-><init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$m;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$m;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0, v1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic V(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lcom/startshorts/androidplayer/viewmodel/player/a;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->z0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lcom/startshorts/androidplayer/viewmodel/player/a;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final V0(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->U0()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->p0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$f;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$f;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic W(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lcom/startshorts/androidplayer/viewmodel/player/c;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->y0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lcom/startshorts/androidplayer/viewmodel/player/c;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic X(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Landroid/view/TextureView;Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->B0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Landroid/view/TextureView;Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic Y(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->y:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic Z(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->o0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic a0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->p0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->q0()Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->q:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->w:Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->u:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic f0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->L0(Lcom/startshorts/androidplayer/bean/shorts/QueryCampaignRecommendShortsResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->M0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic h0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->Q0(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->y:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic j0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic k0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lhi/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->z:Lhi/b;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic l0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Landroid/os/CountDownTimer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->A:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic m0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->S0(Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic n0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->V0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final o0()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->U0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->abTestIntValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    const-string v0, "new_user_drama"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v0, "new_user_drama_subs"

    .line 21
    .line 22
    :goto_0
    return-object v0
.end method

.method private final p0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->p:Lms/i;

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

.method private final q0()Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->o:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final r0()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->m:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/ViewModelProvider;

    .line 8
    .line 9
    return-object v0
.end method

.method private final s0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_recharge_success:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-static {v0, v1, v2, v3, v4}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->A(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;IIILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->r:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    move-object v3, v2

    .line 28
    check-cast v3, Lcom/startshorts/androidplayer/bean/purchase/RecommendCoinSku;

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    move-object/from16 v5, p2

    .line 35
    .line 36
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    move-object v4, v2

    .line 43
    :cond_1
    move-object v7, v4

    .line 44
    check-cast v7, Lcom/startshorts/androidplayer/bean/purchase/RecommendCoinSku;

    .line 45
    .line 46
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 47
    .line 48
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->o0()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    const/16 v15, 0x1f0

    .line 53
    .line 54
    const/16 v16, 0x0

    .line 55
    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v11, 0x0

    .line 58
    const/4 v12, 0x0

    .line 59
    const/4 v13, 0x0

    .line 60
    const/4 v14, 0x0

    .line 61
    move-object/from16 v8, p3

    .line 62
    .line 63
    move-object/from16 v9, p1

    .line 64
    .line 65
    invoke-static/range {v5 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->T0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->I()V

    .line 69
    .line 70
    .line 71
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->q()Lkotlinx/coroutines/r;

    .line 74
    .line 75
    .line 76
    sget-object v1, Lbf/e;->a:Lbf/e;

    .line 77
    .line 78
    invoke-virtual {v1}, Lbf/e;->i()Lbf/e$a;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lbf/e$a;->i()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method private final t0(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_subs_success:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-static {v0, v1, v2, v3, v4}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->A(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;IIILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->s:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    check-cast v1, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move-object v3, v2

    .line 32
    check-cast v3, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    move-object/from16 v5, p2

    .line 39
    .line 40
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    move-object v4, v2

    .line 47
    :cond_1
    check-cast v4, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 48
    .line 49
    :cond_2
    move-object v7, v4

    .line 50
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 51
    .line 52
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->o0()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    const/16 v16, 0x3f0

    .line 57
    .line 58
    const/16 v17, 0x0

    .line 59
    .line 60
    const/4 v10, 0x0

    .line 61
    const/4 v11, 0x0

    .line 62
    const/4 v12, 0x0

    .line 63
    const/4 v13, 0x0

    .line 64
    const/4 v14, 0x0

    .line 65
    const/4 v15, 0x0

    .line 66
    move-object/from16 v8, p3

    .line 67
    .line 68
    move-object/from16 v9, p1

    .line 69
    .line 70
    invoke-static/range {v5 .. v17}, Lcom/startshorts/androidplayer/manager/event/EventManager;->U0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->v0()V

    .line 74
    .line 75
    .line 76
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->q()Lkotlinx/coroutines/r;

    .line 79
    .line 80
    .line 81
    sget-object v1, Lbf/e;->a:Lbf/e;

    .line 82
    .line 83
    invoke-virtual {v1}, Lbf/e;->i()Lbf/e$a;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lbf/e$a;->i()V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method private final u0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->z:Lhi/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->z:Lhi/b;

    .line 10
    .line 11
    return-void
.end method

.method private final v0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->s:Ljava/util/List;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->x:Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewTopBinding;->g:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private final w0()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->y:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->I()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->o0()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/16 v8, 0x3e

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    invoke-static/range {v1 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->W0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateDialogFragment;->J()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->p0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;

    .line 34
    .line 35
    const-string v2, "recommend"

    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method private final x0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->n:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/b;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$h;

    .line 19
    .line 20
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->n:Lms/i;

    .line 27
    .line 28
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/e;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$h;

    .line 44
    .line 45
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private static final y0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lcom/startshorts/androidplayer/viewmodel/player/c;)Lkotlin/Unit;
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->w:Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/c$c;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->P()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_4

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->R()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/c$h;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->M()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/c$d;

    .line 31
    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->J()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_3
    const/4 v1, 0x0

    .line 44
    const/4 v2, 0x1

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-static {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl$default(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;IILjava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    sget-object v4, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 51
    .line 52
    new-instance v7, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$initPlayerVM$1$1;

    .line 53
    .line 54
    invoke-direct {v7, v0, p1, v1, v3}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$initPlayerVM$1$1;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/viewmodel/player/c;Ljava/lang/String;Lrs/c;)V

    .line 55
    .line 56
    .line 57
    const/4 v8, 0x2

    .line 58
    const/4 v9, 0x0

    .line 59
    const-string v5, "logPlayFailed"

    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    invoke-static/range {v4 .. v9}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->R()V

    .line 66
    .line 67
    .line 68
    sget-object p0, Lcom/startshorts/androidplayer/utils/ResourceHandler;->a:Lcom/startshorts/androidplayer/utils/ResourceHandler;

    .line 69
    .line 70
    const/4 p1, 0x2

    .line 71
    invoke-static {p0, v1, v3, p1, v3}, Lcom/startshorts/androidplayer/utils/ResourceHandler;->m(Lcom/startshorts/androidplayer/utils/ResourceHandler;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p0
.end method

.method private static final z0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Lcom/startshorts/androidplayer/viewmodel/player/a;)Lkotlin/Unit;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->w:Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v1, p1, Lcom/startshorts/androidplayer/viewmodel/player/a$a;

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/player/a$a;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/a$a;->a()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    int-to-long v1, p1

    .line 19
    const-wide/16 v3, 0xbb8

    .line 20
    .line 21
    cmp-long p1, v1, v3

    .line 22
    .line 23
    if-ltz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->P()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->S(Z)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->w:Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;

    .line 36
    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->R()V

    .line 40
    .line 41
    .line 42
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 46
    .line 47
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 48
    .line 49
    .line 50
    throw p0
.end method


# virtual methods
.method public I()V
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->o0()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/16 v7, 0x3e

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    invoke-static/range {v0 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->W0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentNewUserRecommendBinding;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentNewUserRecommendBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->q0()Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;->I()Lkotlinx/coroutines/r;

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->A:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->A:Landroid/os/CountDownTimer;

    .line 10
    .line 11
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->D:I

    .line 2
    .line 3
    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->k:I

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

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
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
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->B:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->q0()Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->y:I

    .line 15
    .line 16
    const-string v2, "close"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;->G(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateDialogFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->w:Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->N()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->n:Lms/i;

    .line 17
    .line 18
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 23
    .line 24
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/player/b$d;->a:Lcom/startshorts/androidplayer/viewmodel/player/b$d;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateDialogFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->l:Z

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->l:Z

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->w:Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->N()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->n:Lms/i;

    .line 24
    .line 25
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 30
    .line 31
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/player/b$g;->a:Lcom/startshorts/androidplayer/viewmodel/player/b$g;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/ShortsPausePlayEvent;

    .line 41
    .line 42
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/eventbus/ShortsPausePlayEvent;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 19
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
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super/range {p0 .. p2}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->x0()V

    .line 12
    .line 13
    .line 14
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->A0()V

    .line 15
    .line 16
    .line 17
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->w0()V

    .line 18
    .line 19
    .line 20
    move-object/from16 v0, p0

    .line 21
    .line 22
    iget v1, v0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->y:I

    .line 23
    .line 24
    const-string v2, "new"

    .line 25
    .line 26
    const-string v3, "style"

    .line 27
    .line 28
    const-string v4, "scene"

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 33
    .line 34
    new-instance v7, Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v1, "suspension_window"

    .line 40
    .line 41
    invoke-virtual {v7, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v7, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    const/4 v10, 0x4

    .line 50
    const/4 v11, 0x0

    .line 51
    const-string v6, "new_user_drama_show"

    .line 52
    .line 53
    const-wide/16 v8, 0x0

    .line 54
    .line 55
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    sget-object v12, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 60
    .line 61
    new-instance v14, Landroid/os/Bundle;

    .line 62
    .line 63
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v1, "immersion_back"

    .line 67
    .line 68
    invoke-virtual {v14, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v14, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    const/16 v17, 0x4

    .line 77
    .line 78
    const/16 v18, 0x0

    .line 79
    .line 80
    const-string v13, "new_user_drama_show"

    .line 81
    .line 82
    const-wide/16 v15, 0x0

    .line 83
    .line 84
    invoke-static/range {v12 .. v18}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->C:I

    .line 2
    .line 3
    return v0
.end method

.method public final receiveAcknowledgePurchaseResult(Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "result"

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
    const-string v1, "receive AcknowledgePurchaseResult -> "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->q(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->onlyContainsDiscount()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->I()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
