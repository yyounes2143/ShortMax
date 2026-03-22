.class public final Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "ImmersionPlayResolutionListView.kt"

# interfaces
.implements Lnj/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionPlayResolutionListView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionPlayResolutionListView.kt\ncom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,107:1\n1863#2,2:108\n360#2,7:110\n360#2,7:117\n*S KotlinDebug\n*F\n+ 1 ImmersionPlayResolutionListView.kt\ncom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView\n*L\n64#1:108,2\n68#1:110,7\n77#1:117,7\n*E\n"
    }
.end annotation


# instance fields
.field private b:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter<",
            "Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView$a;
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

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public g(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;Z)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "shortsInfo"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_immersion_play_resolution_list:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView;->d:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "episode"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView;->a(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView$a;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView;->d:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView$a;

    .line 2
    .line 3
    return-void
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/startshorts/androidplayer/R$id;->recycler_view:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 p2, 0x2

    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public v(Ljava/lang/Integer;Ljava/util/List;)V
    .locals 9
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView;->b:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    new-instance v0, Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionAdapter;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionAdapter;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView$b;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView$b;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->J(Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView;->b:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->bg_play_resolution_list_view:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;

    .line 56
    .line 57
    sget-object v3, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;->HORIZONTAL:Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    sget v4, Lcom/startshorts/androidplayer/R$drawable;->shape_play_speed_divider_line:I

    .line 64
    .line 65
    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    const/4 v7, 0x4

    .line 73
    const/4 v8, 0x0

    .line 74
    const/4 v5, 0x0

    .line 75
    const/4 v6, 0x0

    .line 76
    move-object v2, v1

    .line 77
    invoke-direct/range {v2 .. v8}, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;-><init>(Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;Landroid/graphics/drawable/Drawable;Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView;->b:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    move-object v0, p2

    .line 89
    check-cast v0, Ljava/lang/Iterable;

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    const/4 v2, 0x0

    .line 100
    if-eqz v1, :cond_4

    .line 101
    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-ne v3, v4, :cond_3

    .line 117
    .line 118
    const/4 v2, 0x1

    .line 119
    :cond_3
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView;->b:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 124
    .line 125
    if-eqz p1, :cond_7

    .line 126
    .line 127
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    move v1, v2

    .line 132
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_6

    .line 137
    .line 138
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 143
    .line 144
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_5

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_6
    const/4 v1, -0x1

    .line 155
    :goto_2
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->I(I)V

    .line 156
    .line 157
    .line 158
    const/4 v0, 0x2

    .line 159
    const/4 v1, 0x0

    .line 160
    invoke-static {p1, p2, v2, v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->D(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Ljava/util/List;ZILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :cond_7
    return-void
.end method

.method public w(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V
    .locals 5
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "selectedResolution"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView;->b:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, -0x1

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-ne v2, v4, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move v1, v3

    .line 50
    :goto_1
    if-eq v1, v3, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlayResolutionListView;->b:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->L(I)V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_2
    return-void
.end method
