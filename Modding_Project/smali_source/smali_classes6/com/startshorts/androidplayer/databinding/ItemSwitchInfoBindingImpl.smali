.class public Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBindingImpl;
.super Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;
.source "ItemSwitchInfoBindingImpl.java"


# static fields
.field private static final n:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final o:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final l:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBindingImpl;->o:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    sget v1, Lcom/startshorts/androidplayer/R$id;->lay_content:I

    .line 9
    .line 10
    const/16 v2, 0x9

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 13
    .line 14
    .line 15
    sget v1, Lcom/startshorts/androidplayer/R$id;->v_line:I

    .line 16
    .line 17
    const/16 v2, 0xa

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    .line 21
    .line 22
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
    sget-object v0, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBindingImpl;->n:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBindingImpl;->o:Landroid/util/SparseIntArray;

    const/16 v2, 0xb

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 15

    move-object v14, p0

    const/16 v0, 0x9

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/view/View;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroid/view/View;

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v13}, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Landroid/view/View;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v14, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBindingImpl;->m:J

    const/4 v0, 0x0

    .line 4
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v14, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBindingImpl;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v14, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v14, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v14, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v14, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v14, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v14, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v14, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v14, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 14
    invoke-virtual {p0, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 15
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public b(Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;)V
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;->k:Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBindingImpl;->m:J

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBindingImpl;->m:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/4 p1, 0x5

    .line 13
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p1
.end method

.method protected executeBindings()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBindingImpl;->m:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBindingImpl;->m:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;->k:Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;

    .line 12
    .line 13
    const-wide/16 v6, 0x3

    .line 14
    .line 15
    and-long v8, v2, v6

    .line 16
    .line 17
    cmp-long v8, v8, v4

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    if-eqz v8, :cond_a

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->getSubscriptionTypeStr()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v11

    .line 33
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v11

    .line 37
    invoke-virtual {v0, v11}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->getUserCodeStr(Landroid/content/Context;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v11

    .line 41
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->hasSubscription()Z

    .line 42
    .line 43
    .line 44
    move-result v12

    .line 45
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->getCoinsStr()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v13

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v14

    .line 53
    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v14

    .line 57
    invoke-virtual {v0, v14}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->getBindName(Landroid/content/Context;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v14

    .line 61
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->hasSelect()Z

    .line 62
    .line 63
    .line 64
    move-result v15

    .line 65
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->hasCoin()Z

    .line 66
    .line 67
    .line 68
    move-result v16

    .line 69
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->getSubscriptionTime()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    move-object v0, v9

    .line 75
    move-object v11, v0

    .line 76
    move-object v13, v11

    .line 77
    move-object v14, v13

    .line 78
    move v12, v10

    .line 79
    move v15, v12

    .line 80
    move/from16 v16, v15

    .line 81
    .line 82
    :goto_0
    if-eqz v8, :cond_2

    .line 83
    .line 84
    if-eqz v12, :cond_1

    .line 85
    .line 86
    const-wide/16 v17, 0x80

    .line 87
    .line 88
    :goto_1
    or-long v2, v2, v17

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_1
    const-wide/16 v17, 0x40

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    :goto_2
    and-long v17, v2, v6

    .line 95
    .line 96
    cmp-long v8, v17, v4

    .line 97
    .line 98
    if-eqz v8, :cond_4

    .line 99
    .line 100
    if-eqz v15, :cond_3

    .line 101
    .line 102
    const-wide/16 v17, 0x8

    .line 103
    .line 104
    :goto_3
    or-long v2, v2, v17

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_3
    const-wide/16 v17, 0x4

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    :goto_4
    and-long v17, v2, v6

    .line 111
    .line 112
    cmp-long v8, v17, v4

    .line 113
    .line 114
    if-eqz v8, :cond_6

    .line 115
    .line 116
    if-eqz v16, :cond_5

    .line 117
    .line 118
    const-wide/16 v17, 0x20

    .line 119
    .line 120
    :goto_5
    or-long v2, v2, v17

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_5
    const-wide/16 v17, 0x10

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_6
    :goto_6
    const/16 v8, 0x8

    .line 127
    .line 128
    if-eqz v12, :cond_7

    .line 129
    .line 130
    move v12, v10

    .line 131
    goto :goto_7

    .line 132
    :cond_7
    move v12, v8

    .line 133
    :goto_7
    if-eqz v15, :cond_8

    .line 134
    .line 135
    move v15, v10

    .line 136
    goto :goto_8

    .line 137
    :cond_8
    move v15, v8

    .line 138
    :goto_8
    if-eqz v16, :cond_9

    .line 139
    .line 140
    goto :goto_9

    .line 141
    :cond_9
    move v10, v8

    .line 142
    :goto_9
    move-object v8, v9

    .line 143
    move-object v9, v14

    .line 144
    goto :goto_a

    .line 145
    :cond_a
    move-object v0, v9

    .line 146
    move-object v8, v0

    .line 147
    move-object v11, v8

    .line 148
    move-object v13, v11

    .line 149
    move v12, v10

    .line 150
    move v15, v12

    .line 151
    :goto_a
    and-long/2addr v2, v6

    .line 152
    cmp-long v2, v2, v4

    .line 153
    .line 154
    if-eqz v2, :cond_b

    .line 155
    .line 156
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 157
    .line 158
    invoke-static {v2, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 162
    .line 163
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 167
    .line 168
    invoke-static {v2, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 172
    .line 173
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 177
    .line 178
    invoke-static {v2, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, v1, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 182
    .line 183
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 184
    .line 185
    .line 186
    iget-object v0, v1, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 187
    .line 188
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .line 190
    .line 191
    iget-object v0, v1, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 192
    .line 193
    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, v1, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 197
    .line 198
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    iget-object v0, v1, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 202
    .line 203
    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, v1, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBinding;->j:Landroid/view/View;

    .line 207
    .line 208
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    :cond_b
    return-void

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBindingImpl;->m:J

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
    const-wide/16 v0, 0x2

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBindingImpl;->m:J

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
    const/4 p1, 0x0

    .line 2
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
    check-cast p2, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/databinding/ItemSwitchInfoBindingImpl;->b(Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;)V

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
