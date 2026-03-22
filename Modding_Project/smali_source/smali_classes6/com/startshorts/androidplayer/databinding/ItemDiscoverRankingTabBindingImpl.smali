.class public Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBindingImpl;
.super Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBinding;
.source "ItemDiscoverRankingTabBindingImpl.java"


# static fields
.field private static final e:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final f:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final c:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBindingImpl;->e:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBindingImpl;->f:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    .line 2
    aget-object v1, p3, v0

    check-cast v1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/startshorts/androidplayer/ui/view/base/BaseTextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBindingImpl;->d:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBindingImpl;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBindingImpl;->invalidateAll()V

    return-void
.end method

.method private b(Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;I)Z
    .locals 4

    .line 1
    const/4 p1, 0x1

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBindingImpl;->d:J

    .line 6
    .line 7
    const-wide/16 v2, 0x1

    .line 8
    .line 9
    or-long/2addr v0, v2

    .line 10
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBindingImpl;->d:J

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p1

    .line 17
    :cond_0
    const/4 v0, 0x6

    .line 18
    if-ne p2, v0, :cond_1

    .line 19
    .line 20
    monitor-enter p0

    .line 21
    :try_start_1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBindingImpl;->d:J

    .line 22
    .line 23
    const-wide/16 v2, 0x2

    .line 24
    .line 25
    or-long/2addr v0, v2

    .line 26
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBindingImpl;->d:J

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return p1

    .line 30
    :catchall_1
    move-exception p1

    .line 31
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    throw p1

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    return p1
.end method


# virtual methods
.method public d(Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;)V
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBinding;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBindingImpl;->d:J

    .line 9
    .line 10
    const-wide/16 v2, 0x1

    .line 11
    .line 12
    or-long/2addr v0, v2

    .line 13
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBindingImpl;->d:J

    .line 14
    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    const/4 p1, 0x5

    .line 17
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 18
    .line 19
    .line 20
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p1
.end method

.method protected executeBindings()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBindingImpl;->d:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBindingImpl;->d:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBinding;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 12
    .line 13
    const-wide/16 v6, 0x7

    .line 14
    .line 15
    and-long v8, v2, v6

    .line 16
    .line 17
    cmp-long v8, v8, v4

    .line 18
    .line 19
    const-wide/16 v9, 0x5

    .line 20
    .line 21
    const/4 v11, 0x0

    .line 22
    const/4 v12, 0x0

    .line 23
    if-eqz v8, :cond_5

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 28
    .line 29
    .line 30
    move-result v13

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v13, v12

    .line 33
    :goto_0
    if-eqz v8, :cond_2

    .line 34
    .line 35
    if-eqz v13, :cond_1

    .line 36
    .line 37
    const-wide/16 v14, 0x50

    .line 38
    .line 39
    :goto_1
    or-long/2addr v2, v14

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    const-wide/16 v14, 0x28

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0, v13}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getDiscoverTextTypeFace(Z)Landroid/graphics/Typeface;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    move-object v8, v11

    .line 52
    :goto_3
    iget-object v14, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 53
    .line 54
    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v14

    .line 58
    if-eqz v13, :cond_4

    .line 59
    .line 60
    sget v15, Lcom/startshorts/androidplayer/R$drawable;->rank_tab_selected:I

    .line 61
    .line 62
    :goto_4
    invoke-static {v14, v15}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    .line 65
    move-result-object v14

    .line 66
    goto :goto_5

    .line 67
    :cond_4
    sget v15, Lcom/startshorts/androidplayer/R$drawable;->rank_tab_default:I

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :goto_5
    and-long v15, v2, v9

    .line 71
    .line 72
    cmp-long v15, v15, v4

    .line 73
    .line 74
    if-eqz v15, :cond_6

    .line 75
    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    goto :goto_6

    .line 83
    :cond_5
    move-object v8, v11

    .line 84
    move-object v14, v8

    .line 85
    move v13, v12

    .line 86
    :cond_6
    :goto_6
    const-wide/16 v15, 0x10

    .line 87
    .line 88
    and-long/2addr v15, v2

    .line 89
    cmp-long v0, v15, v4

    .line 90
    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    sget v0, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 94
    .line 95
    goto :goto_7

    .line 96
    :cond_7
    move v0, v12

    .line 97
    :goto_7
    const-wide/16 v15, 0x8

    .line 98
    .line 99
    and-long/2addr v15, v2

    .line 100
    cmp-long v15, v15, v4

    .line 101
    .line 102
    if-eqz v15, :cond_8

    .line 103
    .line 104
    sget v15, Lcom/startshorts/androidplayer/R$color;->color_discover_fragment_label:I

    .line 105
    .line 106
    goto :goto_8

    .line 107
    :cond_8
    move v15, v12

    .line 108
    :goto_8
    and-long/2addr v6, v2

    .line 109
    cmp-long v6, v6, v4

    .line 110
    .line 111
    if-eqz v6, :cond_a

    .line 112
    .line 113
    if-eqz v13, :cond_9

    .line 114
    .line 115
    goto :goto_9

    .line 116
    :cond_9
    move v0, v15

    .line 117
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v7, v0}, Landroid/content/Context;->getColor(I)I

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    :cond_a
    if-eqz v6, :cond_b

    .line 130
    .line 131
    iget-object v0, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 132
    .line 133
    invoke-static {v0, v14}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 137
    .line 138
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    .line 140
    .line 141
    iget-object v0, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 142
    .line 143
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 144
    .line 145
    .line 146
    :cond_b
    and-long/2addr v2, v9

    .line 147
    cmp-long v0, v2, v4

    .line 148
    .line 149
    if-eqz v0, :cond_c

    .line 150
    .line 151
    iget-object v0, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 152
    .line 153
    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    :cond_c
    return-void

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBindingImpl;->d:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    monitor-exit p0

    .line 16
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x4

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBindingImpl;->d:J

    .line 5
    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 6
    .line 7
    invoke-direct {p0, p2, p3}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBindingImpl;->b(Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x5

    .line 2
    if-ne v0, p1, :cond_0

    .line 3
    .line 4
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingTabBindingImpl;->d(Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method
