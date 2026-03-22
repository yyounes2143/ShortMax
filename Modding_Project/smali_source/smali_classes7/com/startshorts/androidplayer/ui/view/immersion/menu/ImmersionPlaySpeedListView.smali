.class public final Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseFrameLayout;
.source "ImmersionPlaySpeedListView.kt"

# interfaces
.implements Lnj/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionPlaySpeedListView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionPlaySpeedListView.kt\ncom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,103:1\n1863#2,2:104\n360#2,7:106\n360#2,7:113\n*S KotlinDebug\n*F\n+ 1 ImmersionPlaySpeedListView.kt\ncom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView\n*L\n63#1:104,2\n67#1:106,7\n76#1:113,7\n*E\n"
    }
.end annotation


# instance fields
.field private b:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter<",
            "Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;",
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

.field private d:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView$a;
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
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

.method public e(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView;->c:Landroidx/recyclerview/widget/RecyclerView;

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
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_immersion_play_speed_list:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView;->d:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public i(Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Ljava/util/List;)V
    .locals 9
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
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
            "Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;",
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView;->b:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    new-instance v0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 14
    .line 15
    sget v1, Lcom/startshorts/androidplayer/R$layout;->item_play_speed:I

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView$b;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView$b;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->J(Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView;->b:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->bg_play_speed_list_view:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;

    .line 58
    .line 59
    sget-object v3, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;->HORIZONTAL:Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    sget v4, Lcom/startshorts/androidplayer/R$drawable;->shape_play_speed_divider_line:I

    .line 66
    .line 67
    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    const/4 v7, 0x4

    .line 75
    const/4 v8, 0x0

    .line 76
    const/4 v5, 0x0

    .line 77
    const/4 v6, 0x0

    .line 78
    move-object v2, v1

    .line 79
    invoke-direct/range {v2 .. v8}, Lcom/startshorts/androidplayer/ui/view/base/RVDecoration;-><init>(Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$Orientation;Landroid/graphics/drawable/Drawable;Lcom/startshorts/androidplayer/ui/view/base/RVDecoration$b;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView;->b:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    move-object v0, p2

    .line 91
    check-cast v0, Ljava/lang/Iterable;

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    const/4 v2, 0x0

    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    cmpg-float v3, v3, v4

    .line 119
    .line 120
    if-nez v3, :cond_3

    .line 121
    .line 122
    const/4 v2, 0x1

    .line 123
    :cond_3
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_4
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView;->b:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 128
    .line 129
    if-eqz p1, :cond_7

    .line 130
    .line 131
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    move v1, v2

    .line 136
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-eqz v3, :cond_6

    .line 141
    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    check-cast v3, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 147
    .line 148
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_5

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_6
    const/4 v1, -0x1

    .line 159
    :goto_2
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->I(I)V

    .line 160
    .line 161
    .line 162
    const/4 v0, 0x2

    .line 163
    const/4 v1, 0x0

    .line 164
    invoke-static {p1, p2, v2, v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->D(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Ljava/util/List;ZILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_7
    return-void
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
    return-void
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView$a;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView;->d:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionPlaySpeedListView$a;

    .line 2
    .line 3
    return-void
.end method
