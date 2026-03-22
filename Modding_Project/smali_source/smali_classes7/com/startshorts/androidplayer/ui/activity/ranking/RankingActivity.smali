.class public final Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;
.super Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;
.source "RankingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$a;,
        Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$PagerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity<",
        "Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRankingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RankingActivity.kt\ncom/startshorts/androidplayer/ui/activity/ranking/RankingActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,212:1\n1863#2,2:213\n*S KotlinDebug\n*F\n+ 1 RankingActivity.kt\ncom/startshorts/androidplayer/ui/activity/ranking/RankingActivity\n*L\n73#1:213,2\n*E\n"
    }
.end annotation


# static fields
.field public static final u:Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final m:I

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->u:Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "RankingActivity"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->l:Ljava/lang/String;

    .line 7
    .line 8
    sget v0, Lcom/startshorts/androidplayer/R$layout;->activity_ranking:I

    .line 9
    .line 10
    iput v0, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->m:I

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->q:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;I)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->Q(I)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;)Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final synthetic J(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->p:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic K(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic L(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic M(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic N(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic O(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method private final Q(I)Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "rankTabs"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "scene"

    .line 27
    .line 28
    const-string v2, "discover_more"

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getId()Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, ""

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-nez v1, :cond_3

    .line 46
    .line 47
    :cond_2
    move-object v1, v2

    .line 48
    :cond_3
    const-string v3, "ranking_list_child_id"

    .line 49
    .line 50
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-nez p1, :cond_4

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    move-object v2, p1

    .line 61
    :goto_0
    const-string p1, "ranking_list_child_name"

    .line 62
    .line 63
    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget p1, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->p:I

    .line 67
    .line 68
    if-eqz p1, :cond_5

    .line 69
    .line 70
    const-string v1, "tab_id"

    .line 71
    .line 72
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string p1, "tab_name"

    .line 80
    .line 81
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->q:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    return-object v0
.end method

.method private final S()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->n:Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v1, "rankTabs"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v2

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setClickable(Z)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->u:Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$a;

    .line 34
    .line 35
    invoke-static {v0, p0}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$a;->a(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$a;Landroid/app/Activity;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;->e:Landroidx/viewpager2/widget/ViewPager2;

    .line 46
    .line 47
    new-instance v4, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$PagerAdapter;

    .line 48
    .line 49
    invoke-direct {v4, p0, p0}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$PagerAdapter;-><init>(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;

    .line 60
    .line 61
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;->e:Landroidx/viewpager2/widget/ViewPager2;

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-virtual {v3, v0, v4}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;

    .line 72
    .line 73
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;->e:Landroidx/viewpager2/widget/ViewPager2;

    .line 74
    .line 75
    new-instance v5, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$initTabLayout$2;

    .line 76
    .line 77
    invoke-direct {v5, p0}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$initTabLayout$2;-><init>(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v5}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 81
    .line 82
    .line 83
    new-instance v3, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 84
    .line 85
    sget v5, Lcom/startshorts/androidplayer/R$layout;->item_discover_module_ranking_tab:I

    .line 86
    .line 87
    invoke-direct {v3, v5}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;-><init>(I)V

    .line 88
    .line 89
    .line 90
    new-instance v5, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$b;

    .line 91
    .line 92
    invoke-direct {v5, p0}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$b;-><init>(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v5}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->J(Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    check-cast v5, Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;

    .line 103
    .line 104
    iget-object v5, v5, Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 105
    .line 106
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->n:Ljava/util/ArrayList;

    .line 107
    .line 108
    if-nez v6, :cond_2

    .line 109
    .line 110
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    move-object v6, v2

    .line 114
    :cond_2
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    check-cast v7, Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;

    .line 121
    .line 122
    iget-object v7, v7, Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 123
    .line 124
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    const-string v8, "getContext(...)"

    .line 129
    .line 130
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {v1, v7, v4, v4}, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5, v6, v3, v2, v1}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->a(Ljava/util/List;Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;

    .line 144
    .line 145
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 146
    .line 147
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->setSelectedIndex(I)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method private final T()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;->a:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$c;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$c;-><init>(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->S()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final P()Landroid/os/Bundle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;->e:Landroidx/viewpager2/widget/ViewPager2;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->Q(I)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public final R()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->m:I

    .line 2
    .line 3
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->u:Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$a;

    .line 5
    .line 6
    invoke-static {p1, p0}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$a;->b(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$a;Landroid/app/Activity;)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->n:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "act_recommend_id"

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->o:I

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "act_event_tab_id"

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->p:I

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "act_event_tab_name"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    const-string p1, ""

    .line 50
    .line 51
    :cond_0
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->q:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v0, "act_module_type"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->r:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string v0, "act_module_id"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->s:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string v0, "act_module_name"

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->t:Ljava/lang/String;

    .line 88
    .line 89
    sget-object p1, Led/a;->a:Led/a;

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    invoke-virtual {p1, p0, v0}, Led/a;->b(Landroid/app/Activity;Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;

    .line 100
    .line 101
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;->d:Landroid/view/View;

    .line 102
    .line 103
    const-string v0, "toolbarView"

    .line 104
    .line 105
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    invoke-static {p1, v0}, Ljk/b0;->g(Landroid/view/View;I)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->T()V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
