.class public final Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "ShortsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$b;,
        Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$c;,
        Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$d;,
        Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$e;,
        Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$f;,
        Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$g;,
        Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShortsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortsAdapter.kt\ncom/startshorts/androidplayer/adapter/shorts/ShortsAdapter\n+ 2 BaseShortsAdapterView.kt\ncom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,611:1\n225#2,8:612\n225#2,8:620\n225#2,8:628\n225#2,8:636\n225#2,8:644\n225#2,8:652\n1863#3:660\n1864#3:668\n1863#3:669\n1864#3:677\n254#4:661\n254#4:662\n254#4:663\n254#4:664\n254#4:665\n254#4:666\n254#4:667\n275#4:670\n275#4:671\n275#4:672\n275#4:673\n275#4:674\n275#4:675\n275#4:676\n*S KotlinDebug\n*F\n+ 1 ShortsAdapter.kt\ncom/startshorts/androidplayer/adapter/shorts/ShortsAdapter\n*L\n356#1:612,8\n364#1:620,8\n371#1:628,8\n409#1:636,8\n416#1:644,8\n423#1:652,8\n430#1:660\n430#1:668\n469#1:669\n469#1:677\n432#1:661\n436#1:662\n440#1:663\n444#1:664\n448#1:665\n452#1:666\n456#1:667\n471#1:670\n475#1:671\n479#1:672\n483#1:673\n487#1:674\n491#1:675\n495#1:676\n*E\n"
    }
.end annotation


# static fields
.field public static final r:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->r:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 4
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "actRef"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->o:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic E(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->X(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->o:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->U(Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->V(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->W(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic J(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->i0(Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final N(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->O(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return-object p1
.end method

.method private final U(Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;)V
    .locals 6

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$id;->menu_layout:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-ge v3, v2, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    instance-of v5, v4, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView;

    .line 25
    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    move-object v1, v4

    .line 29
    check-cast v1, Lzj/a;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    :goto_1
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView;

    .line 36
    .line 37
    const/16 v0, 0x8

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView;->a(I)V

    .line 42
    .line 43
    .line 44
    :cond_3
    sget v1, Lcom/startshorts/androidplayer/R$id;->collect_view:I

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;

    .line 51
    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->a(I)V

    .line 55
    .line 56
    .line 57
    :cond_4
    sget v1, Lcom/startshorts/androidplayer/R$id;->list_view:I

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;

    .line 64
    .line 65
    if-eqz v1, :cond_5

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->a(I)V

    .line 68
    .line 69
    .line 70
    :cond_5
    sget v1, Lcom/startshorts/androidplayer/R$id;->share_view:I

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;

    .line 77
    .line 78
    if-eqz p1, :cond_6

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->a(I)V

    .line 81
    .line 82
    .line 83
    :cond_6
    return-void
.end method

.method private final V(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;)V
    .locals 0

    .line 1
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->setEpisode(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->q:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$d;

    .line 5
    .line 6
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->setMListener(Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout$b;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final W(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$id;->menu_layout:I

    .line 2
    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :cond_0
    move-object v5, v2

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    move v4, v1

    .line 20
    :goto_0
    if-ge v4, v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    instance-of v6, v5, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsSearchView;

    .line 27
    .line 28
    if-eqz v6, :cond_2

    .line 29
    .line 30
    check-cast v5, Lzj/a;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :goto_1
    check-cast v5, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsSearchView;

    .line 37
    .line 38
    if-eqz v5, :cond_3

    .line 39
    .line 40
    new-instance v0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$i;

    .line 41
    .line 42
    invoke-direct {v0, p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$i;-><init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    sget v0, Lcom/startshorts/androidplayer/R$id;->menu_layout:I

    .line 49
    .line 50
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/view/ViewGroup;

    .line 55
    .line 56
    if-nez v0, :cond_5

    .line 57
    .line 58
    :cond_4
    move-object v5, v2

    .line 59
    goto :goto_3

    .line 60
    :cond_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    move v4, v1

    .line 65
    :goto_2
    if-ge v4, v3, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    instance-of v6, v5, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;

    .line 72
    .line 73
    if-eqz v6, :cond_6

    .line 74
    .line 75
    check-cast v5, Lzj/a;

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :goto_3
    check-cast v5, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;

    .line 82
    .line 83
    if-eqz v5, :cond_7

    .line 84
    .line 85
    new-instance v0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$j;

    .line 86
    .line 87
    invoke-direct {v0, p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$j;-><init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->setMListener(Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView$a;)V

    .line 91
    .line 92
    .line 93
    :cond_7
    sget v0, Lcom/startshorts/androidplayer/R$id;->menu_layout:I

    .line 94
    .line 95
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroid/view/ViewGroup;

    .line 100
    .line 101
    if-nez v0, :cond_9

    .line 102
    .line 103
    :cond_8
    move-object v5, v2

    .line 104
    goto :goto_5

    .line 105
    :cond_9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    move v4, v1

    .line 110
    :goto_4
    if-ge v4, v3, :cond_8

    .line 111
    .line 112
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    instance-of v6, v5, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView;

    .line 117
    .line 118
    if-eqz v6, :cond_a

    .line 119
    .line 120
    check-cast v5, Lzj/a;

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :goto_5
    check-cast v5, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView;

    .line 127
    .line 128
    if-eqz v5, :cond_b

    .line 129
    .line 130
    new-instance v0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$k;

    .line 131
    .line 132
    invoke-direct {v0, p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$k;-><init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    :cond_b
    sget v0, Lcom/startshorts/androidplayer/R$id;->collect_view:I

    .line 139
    .line 140
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;

    .line 145
    .line 146
    if-eqz v0, :cond_c

    .line 147
    .line 148
    new-instance v3, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$l;

    .line 149
    .line 150
    invoke-direct {v3, p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$l;-><init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    :cond_c
    sget v0, Lcom/startshorts/androidplayer/R$id;->list_view:I

    .line 157
    .line 158
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;

    .line 163
    .line 164
    if-eqz v0, :cond_d

    .line 165
    .line 166
    new-instance v3, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$m;

    .line 167
    .line 168
    invoke-direct {v3, p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$m;-><init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    .line 173
    .line 174
    :cond_d
    sget v0, Lcom/startshorts/androidplayer/R$id;->share_view:I

    .line 175
    .line 176
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;

    .line 181
    .line 182
    if-eqz v0, :cond_e

    .line 183
    .line 184
    new-instance v3, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$n;

    .line 185
    .line 186
    invoke-direct {v3, p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$n;-><init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    .line 192
    :cond_e
    sget p1, Lcom/startshorts/androidplayer/R$id;->menu_layout:I

    .line 193
    .line 194
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    check-cast p1, Landroid/view/ViewGroup;

    .line 199
    .line 200
    if-nez p1, :cond_f

    .line 201
    .line 202
    goto :goto_7

    .line 203
    :cond_f
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    :goto_6
    if-ge v1, p2, :cond_11

    .line 208
    .line 209
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object p3

    .line 213
    instance-of v0, p3, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsEpisodeNumView;

    .line 214
    .line 215
    if-eqz v0, :cond_10

    .line 216
    .line 217
    move-object v2, p3

    .line 218
    check-cast v2, Lzj/a;

    .line 219
    .line 220
    goto :goto_7

    .line 221
    :cond_10
    add-int/lit8 v1, v1, 0x1

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_11
    :goto_7
    check-cast v2, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsEpisodeNumView;

    .line 225
    .line 226
    if-eqz v2, :cond_12

    .line 227
    .line 228
    new-instance p1, Lpd/a;

    .line 229
    .line 230
    invoke-direct {p1, p0}, Lpd/a;-><init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 234
    .line 235
    .line 236
    :cond_12
    return-void
.end method

.method private static final X(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->q:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v4, 0x4

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v1, 0x3

    .line 11
    const/4 v3, 0x0

    .line 12
    move-object v2, p2

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$d;->n(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$d;ILandroid/view/MotionEvent;ZILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method private final i0(Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;)V
    .locals 7

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$id;->menu_layout:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    move v4, v2

    .line 19
    :goto_0
    if-ge v4, v3, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    instance-of v6, v5, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView;

    .line 26
    .line 27
    if-eqz v6, :cond_1

    .line 28
    .line 29
    move-object v1, v5

    .line 30
    check-cast v1, Lzj/a;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    :goto_1
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView;

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView;->a(I)V

    .line 41
    .line 42
    .line 43
    :cond_3
    sget v0, Lcom/startshorts/androidplayer/R$id;->collect_view:I

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->a(I)V

    .line 54
    .line 55
    .line 56
    :cond_4
    sget v0, Lcom/startshorts/androidplayer/R$id;->list_view:I

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;

    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->a(I)V

    .line 67
    .line 68
    .line 69
    :cond_5
    sget v0, Lcom/startshorts/androidplayer/R$id;->share_view:I

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;

    .line 76
    .line 77
    if-eqz p1, :cond_6

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->a(I)V

    .line 80
    .line 81
    .line 82
    :cond_6
    return-void
.end method


# virtual methods
.method public final K(ILak/a;Landroid/widget/LinearLayout$LayoutParams;Lyd/a;)V
    .locals 1
    .param p2    # Lak/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/LinearLayout$LayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lyd/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "notification"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "layoutParams"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->N(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->t(Lak/a;Landroid/widget/LinearLayout$LayoutParams;Lyd/a;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final L(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->N(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/base/SwipingFrameLayout;->m()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final M(I)Landroid/view/ViewGroup;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->O(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/startshorts/androidplayer/R$id;->ad_container:I

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/view/ViewGroup;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return-object p1
.end method

.method public final O(I)Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->p:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    return-object p1
.end method

.method public final P()Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->q:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Q(I)Landroid/view/TextureView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->N(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->getVideoRenderView()Landroid/view/TextureView;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return-object p1
.end method

.method public final R(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->N(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->w()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final S(I)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->N(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_8

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->getAllMenus()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_8

    .line 12
    .line 13
    check-cast p1, Ljava/lang/Iterable;

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_8

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lzj/a;

    .line 30
    .line 31
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;

    .line 32
    .line 33
    const/4 v2, 0x4

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    move-object v3, v0

    .line 37
    check-cast v3, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->j()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v5, 0x3

    .line 44
    if-ne v4, v5, :cond_1

    .line 45
    .line 46
    check-cast v0, Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    invoke-virtual {v3, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->a(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    instance-of v3, v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsSearchView;

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    move-object v1, v0

    .line 63
    check-cast v1, Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_0

    .line 70
    .line 71
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsSearchView;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsSearchView;->a(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    instance-of v3, v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;

    .line 78
    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    move-object v1, v0

    .line 82
    check-cast v1, Landroid/view/View;

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_0

    .line 89
    .line 90
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->a(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    instance-of v3, v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;

    .line 97
    .line 98
    if-eqz v3, :cond_4

    .line 99
    .line 100
    move-object v1, v0

    .line 101
    check-cast v1, Landroid/view/View;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_0

    .line 108
    .line 109
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;->a(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    if-eqz v1, :cond_5

    .line 116
    .line 117
    move-object v3, v0

    .line 118
    check-cast v3, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;

    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->j()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-ne v4, v2, :cond_5

    .line 125
    .line 126
    check-cast v0, Landroid/view/View;

    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_0

    .line 133
    .line 134
    invoke-virtual {v3, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->a(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_5
    if-eqz v1, :cond_6

    .line 139
    .line 140
    move-object v1, v0

    .line 141
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;

    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->j()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    const/4 v4, 0x5

    .line 148
    if-ne v3, v4, :cond_6

    .line 149
    .line 150
    check-cast v0, Landroid/view/View;

    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_0

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->a(I)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_6
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ComingSoonShortsChip;

    .line 164
    .line 165
    if-eqz v1, :cond_7

    .line 166
    .line 167
    move-object v1, v0

    .line 168
    check-cast v1, Landroid/view/View;

    .line 169
    .line 170
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-nez v1, :cond_0

    .line 175
    .line 176
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ComingSoonShortsChip;

    .line 177
    .line 178
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ComingSoonShortsChip;->a(I)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_7
    invoke-interface {v0, v2}, Lzj/a;->a(I)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_8
    return-void
.end method

.method public final T(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->N(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->x()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final Y(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->N(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->z()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method public Z(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;",
            ">.ViewHolder;)V"
        }
    .end annotation

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 7
    .line 8
    .line 9
    instance-of v0, p1, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$f;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p1, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$f;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$f;->j()Lcom/startshorts/androidplayer/databinding/ItemShortsProgrammaticAdBinding;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemShortsProgrammaticAdBinding;->a:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public a0(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;",
            ">.ViewHolder;)V"
        }
    .end annotation

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 7
    .line 8
    .line 9
    instance-of v0, p1, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$f;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p1, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$f;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$f;->j()Lcom/startshorts/androidplayer/databinding/ItemShortsProgrammaticAdBinding;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemShortsProgrammaticAdBinding;->a:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    const-string v0, "destroyNativeAdView"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->r(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lca/k;->a:Lca/k;

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lca/k;->b(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final b0(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->N(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->A()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final c0(ILcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationType;ZLyd/a;)V
    .locals 1
    .param p2    # Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lyd/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "type"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->N(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->B(Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationType;ZLyd/a;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final d0(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$d;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->q:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$d;

    .line 2
    .line 3
    return-void
.end method

.method public final e0(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->N(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->setMVideoRendered(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final f0(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->N(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->D()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final g0(I)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isRelease()Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    move v0, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v2

    .line 32
    :goto_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->N(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_e

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->getAllMenus()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_e

    .line 43
    .line 44
    check-cast p1, Ljava/lang/Iterable;

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_e

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lzj/a;

    .line 61
    .line 62
    instance-of v4, v3, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;

    .line 63
    .line 64
    const/4 v5, 0x3

    .line 65
    const/4 v6, 0x4

    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    move-object v7, v3

    .line 69
    check-cast v7, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;

    .line 70
    .line 71
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->j()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-ne v8, v5, :cond_2

    .line 76
    .line 77
    check-cast v3, Landroid/view/View;

    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-ne v3, v6, :cond_1

    .line 84
    .line 85
    invoke-virtual {v7, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->a(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    instance-of v7, v3, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;

    .line 90
    .line 91
    if-eqz v7, :cond_3

    .line 92
    .line 93
    move-object v4, v3

    .line 94
    check-cast v4, Landroid/view/View;

    .line 95
    .line 96
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-ne v4, v6, :cond_1

    .line 101
    .line 102
    check-cast v3, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;

    .line 103
    .line 104
    invoke-virtual {v3, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ShortsNotificationLayout;->a(I)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    instance-of v7, v3, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsSearchView;

    .line 109
    .line 110
    if-eqz v7, :cond_4

    .line 111
    .line 112
    move-object v4, v3

    .line 113
    check-cast v4, Landroid/view/View;

    .line 114
    .line 115
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-ne v4, v6, :cond_1

    .line 120
    .line 121
    check-cast v3, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsSearchView;

    .line 122
    .line 123
    invoke-virtual {v3, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsSearchView;->a(I)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    instance-of v7, v3, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;

    .line 128
    .line 129
    if-eqz v7, :cond_5

    .line 130
    .line 131
    move-object v4, v3

    .line 132
    check-cast v4, Landroid/view/View;

    .line 133
    .line 134
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-ne v4, v6, :cond_1

    .line 139
    .line 140
    check-cast v3, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;

    .line 141
    .line 142
    invoke-virtual {v3, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->a(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_5
    if-eqz v4, :cond_6

    .line 147
    .line 148
    move-object v7, v3

    .line 149
    check-cast v7, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;

    .line 150
    .line 151
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->j()I

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    if-ne v8, v6, :cond_6

    .line 156
    .line 157
    check-cast v3, Landroid/view/View;

    .line 158
    .line 159
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-ne v3, v6, :cond_1

    .line 164
    .line 165
    invoke-virtual {v7, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->a(I)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_6
    instance-of v7, v3, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ComingSoonShortsChip;

    .line 170
    .line 171
    if-eqz v7, :cond_7

    .line 172
    .line 173
    move-object v4, v3

    .line 174
    check-cast v4, Landroid/view/View;

    .line 175
    .line 176
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-ne v4, v6, :cond_1

    .line 181
    .line 182
    check-cast v3, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ComingSoonShortsChip;

    .line 183
    .line 184
    invoke-virtual {v3, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/notification/ComingSoonShortsChip;->a(I)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :cond_7
    if-eqz v4, :cond_8

    .line 190
    .line 191
    move-object v4, v3

    .line 192
    check-cast v4, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;

    .line 193
    .line 194
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->j()I

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    const/4 v8, 0x5

    .line 199
    if-ne v7, v8, :cond_8

    .line 200
    .line 201
    check-cast v3, Landroid/view/View;

    .line 202
    .line 203
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-ne v3, v6, :cond_1

    .line 208
    .line 209
    invoke-virtual {v4, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTextView;->a(I)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_1

    .line 213
    .line 214
    :cond_8
    instance-of v4, v3, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView;

    .line 215
    .line 216
    const/16 v6, 0x8

    .line 217
    .line 218
    if-eqz v4, :cond_a

    .line 219
    .line 220
    if-eqz v0, :cond_9

    .line 221
    .line 222
    check-cast v3, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView;

    .line 223
    .line 224
    invoke-virtual {v3, v6}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView;->a(I)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_1

    .line 228
    .line 229
    :cond_9
    check-cast v3, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView;

    .line 230
    .line 231
    invoke-virtual {v3, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsCoverView;->a(I)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_1

    .line 235
    .line 236
    :cond_a
    instance-of v4, v3, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;

    .line 237
    .line 238
    if-eqz v4, :cond_d

    .line 239
    .line 240
    move-object v4, v3

    .line 241
    check-cast v4, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;

    .line 242
    .line 243
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->x()I

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    if-eq v7, v1, :cond_b

    .line 248
    .line 249
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->x()I

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    if-eq v7, v5, :cond_b

    .line 254
    .line 255
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->x()I

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    const/4 v7, 0x2

    .line 260
    if-ne v5, v7, :cond_d

    .line 261
    .line 262
    :cond_b
    if-eqz v0, :cond_c

    .line 263
    .line 264
    invoke-virtual {v4, v6}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->a(I)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :cond_c
    invoke-virtual {v4, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->a(I)V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_1

    .line 273
    .line 274
    :cond_d
    invoke-interface {v3, v2}, Lzj/a;->a(I)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_1

    .line 278
    .line 279
    :cond_e
    return-void
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isProgrammaticAd()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isBrandAd()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->getExtraAdInfo()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->isBrandAdVideo()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    const/4 v0, 0x6

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v0, 0x5

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->enableSubtitle()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_4

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_5

    .line 52
    .line 53
    const/4 v0, 0x3

    .line 54
    goto :goto_0

    .line 55
    :cond_4
    const/4 v0, 0x2

    .line 56
    :cond_5
    :goto_0
    return v0
.end method

.method public final h0(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->N(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->E()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final j0(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "content"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->N(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsSubtitleAdapterView;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsSubtitleAdapterView;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsSubtitleAdapterView;->G(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->p:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->p:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->p:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->Z(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->a0(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ShortsAdapter"

    .line 2
    .line 3
    return-object v0
.end method

.method public x(Landroid/view/ViewGroup;II)Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "II)",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;",
            ">.ViewHolder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p3, "parent"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x2

    .line 7
    if-eq p2, p3, :cond_4

    .line 8
    .line 9
    const/4 p3, 0x3

    .line 10
    if-eq p2, p3, :cond_3

    .line 11
    .line 12
    const/4 p3, 0x4

    .line 13
    if-eq p2, p3, :cond_2

    .line 14
    .line 15
    const/4 p3, 0x5

    .line 16
    if-eq p2, p3, :cond_1

    .line 17
    .line 18
    const/4 p3, 0x6

    .line 19
    if-eq p2, p3, :cond_0

    .line 20
    .line 21
    new-instance p2, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$e;

    .line 22
    .line 23
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_shorts_normal:I

    .line 24
    .line 25
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemShortsNormalBinding;

    .line 30
    .line 31
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$e;-><init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Lcom/startshorts/androidplayer/databinding/ItemShortsNormalBinding;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p2, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$b;

    .line 36
    .line 37
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_shorts_brand_video_ad:I

    .line 38
    .line 39
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemShortsBrandVideoAdBinding;

    .line 44
    .line 45
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$b;-><init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Lcom/startshorts/androidplayer/databinding/ItemShortsBrandVideoAdBinding;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance p2, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a;

    .line 50
    .line 51
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_shorts_brand_pic_ad:I

    .line 52
    .line 53
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;

    .line 58
    .line 59
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a;-><init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    new-instance p2, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$f;

    .line 64
    .line 65
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_shorts_programmatic_ad:I

    .line 66
    .line 67
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemShortsProgrammaticAdBinding;

    .line 72
    .line 73
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$f;-><init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Lcom/startshorts/androidplayer/databinding/ItemShortsProgrammaticAdBinding;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    new-instance p2, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h;

    .line 78
    .line 79
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_shorts_trailer:I

    .line 80
    .line 81
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemShortsTrailerBinding;

    .line 86
    .line 87
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$h;-><init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Lcom/startshorts/androidplayer/databinding/ItemShortsTrailerBinding;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    sget-object p2, Lyf/a;->a:Lyf/a;

    .line 92
    .line 93
    invoke-virtual {p2}, Lyf/a;->o()V

    .line 94
    .line 95
    .line 96
    new-instance p2, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$g;

    .line 97
    .line 98
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_shorts_subtitle:I

    .line 99
    .line 100
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemShortsSubtitleBinding;

    .line 105
    .line 106
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$g;-><init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Lcom/startshorts/androidplayer/databinding/ItemShortsSubtitleBinding;)V

    .line 107
    .line 108
    .line 109
    :goto_0
    return-object p2
.end method
