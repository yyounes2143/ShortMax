.class public Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;
.super Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBinding;
.source "ItemDiscoverTabBindingImpl.java"


# static fields
.field private static final f:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final g:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final c:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private e:J


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
    sget-object v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;->f:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;->g:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    .line 2
    aget-object v1, p3, v0

    check-cast v1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/startshorts/androidplayer/ui/view/base/BaseTextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;->e:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 6
    aget-object p1, p3, p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;->d:Landroid/view/View;

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;->invalidateAll()V

    return-void
.end method

.method private b(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;I)Z
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
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;->e:J

    .line 6
    .line 7
    const-wide/16 v2, 0x1

    .line 8
    .line 9
    or-long/2addr v0, v2

    .line 10
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;->e:J

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
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;->e:J

    .line 22
    .line 23
    const-wide/16 v2, 0x2

    .line 24
    .line 25
    or-long/2addr v0, v2

    .line 26
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;->e:J

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
.method public d(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)V
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBinding;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;->e:J

    .line 9
    .line 10
    const-wide/16 v2, 0x1

    .line 11
    .line 12
    or-long/2addr v0, v2

    .line 13
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;->e:J

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
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;->e:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;->e:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBinding;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

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
    if-eqz v8, :cond_9

    .line 23
    .line 24
    and-long v13, v2, v9

    .line 25
    .line 26
    cmp-long v13, v13, v4

    .line 27
    .line 28
    if-eqz v13, :cond_0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getTabDisplayName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v11

    .line 36
    :cond_0
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 39
    .line 40
    .line 41
    move-result v13

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v13, 0x0

    .line 44
    :goto_0
    if-eqz v8, :cond_3

    .line 45
    .line 46
    if-eqz v13, :cond_2

    .line 47
    .line 48
    const-wide/16 v14, 0x550

    .line 49
    .line 50
    :goto_1
    or-long/2addr v2, v14

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const-wide/16 v14, 0x2a8

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    :goto_2
    iget-object v8, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 56
    .line 57
    if-eqz v13, :cond_4

    .line 58
    .line 59
    const v14, 0x106000b

    .line 60
    .line 61
    .line 62
    :goto_3
    invoke-static {v8, v14}, Landroidx/databinding/ViewDataBinding;->getColorFromResource(Landroid/view/View;I)I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    goto :goto_4

    .line 67
    :cond_4
    sget v14, Lcom/startshorts/androidplayer/R$color;->home_tab_unselect:I

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :goto_4
    if-eqz v13, :cond_5

    .line 71
    .line 72
    const/4 v14, 0x0

    .line 73
    goto :goto_5

    .line 74
    :cond_5
    const/16 v14, 0x8

    .line 75
    .line 76
    :goto_5
    if-eqz v13, :cond_6

    .line 77
    .line 78
    iget-object v15, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 79
    .line 80
    invoke-virtual {v15}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v15

    .line 84
    sget v12, Lcom/startshorts/androidplayer/R$string;->typeface_semi_bold:I

    .line 85
    .line 86
    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    goto :goto_6

    .line 91
    :cond_6
    iget-object v12, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 92
    .line 93
    invoke-virtual {v12}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    sget v15, Lcom/startshorts/androidplayer/R$string;->typeface_medium:I

    .line 98
    .line 99
    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    :goto_6
    if-eqz v13, :cond_7

    .line 104
    .line 105
    iget-object v15, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 106
    .line 107
    invoke-virtual {v15}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object v15

    .line 111
    sget v9, Lcom/startshorts/androidplayer/R$dimen;->discover_tab_title_selected:I

    .line 112
    .line 113
    invoke-virtual {v15, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    goto :goto_7

    .line 118
    :cond_7
    iget-object v9, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 119
    .line 120
    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    sget v10, Lcom/startshorts/androidplayer/R$dimen;->discover_tab_title_normal:I

    .line 125
    .line 126
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    :goto_7
    if-eqz v0, :cond_8

    .line 131
    .line 132
    invoke-virtual {v0, v13}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getPaddingTop(Z)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    move v10, v8

    .line 137
    move v8, v0

    .line 138
    move-object v0, v11

    .line 139
    move-object v11, v12

    .line 140
    move v12, v14

    .line 141
    goto :goto_8

    .line 142
    :cond_8
    move v10, v8

    .line 143
    move-object v0, v11

    .line 144
    move-object v11, v12

    .line 145
    move v12, v14

    .line 146
    const/4 v8, 0x0

    .line 147
    goto :goto_8

    .line 148
    :cond_9
    const/4 v9, 0x0

    .line 149
    move-object v0, v11

    .line 150
    const/4 v8, 0x0

    .line 151
    const/4 v10, 0x0

    .line 152
    const/4 v12, 0x0

    .line 153
    :goto_8
    and-long/2addr v6, v2

    .line 154
    cmp-long v6, v6, v4

    .line 155
    .line 156
    if-eqz v6, :cond_a

    .line 157
    .line 158
    iget-object v6, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;->d:Landroid/view/View;

    .line 159
    .line 160
    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    iget-object v6, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 164
    .line 165
    int-to-float v7, v8

    .line 166
    invoke-static {v6, v7}, Landroidx/databinding/adapters/ViewBindingAdapter;->setPaddingTop(Landroid/view/View;F)V

    .line 167
    .line 168
    .line 169
    iget-object v6, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 170
    .line 171
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    .line 173
    .line 174
    iget-object v6, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 175
    .line 176
    invoke-static {v6, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextSize(Landroid/widget/TextView;F)V

    .line 177
    .line 178
    .line 179
    iget-object v6, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 180
    .line 181
    invoke-static {v6, v11}, Lkd/b;->a(Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_a
    const-wide/16 v6, 0x5

    .line 185
    .line 186
    and-long/2addr v2, v6

    .line 187
    cmp-long v2, v2, v4

    .line 188
    .line 189
    if-eqz v2, :cond_b

    .line 190
    .line 191
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 192
    .line 193
    invoke-static {v2, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    :cond_b
    return-void

    .line 197
    :catchall_0
    move-exception v0

    .line 198
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;->e:J

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
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;->e:J

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 6
    .line 7
    invoke-direct {p0, p2, p3}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;->b(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;I)Z

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverTabBindingImpl;->d(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)V

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
