.class public Lcom/startshorts/androidplayer/databinding/ActivityLoginBindingImpl;
.super Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;
.source "ActivityLoginBindingImpl.java"


# static fields
.field private static final u:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final v:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private t:J


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
    sput-object v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBindingImpl;->v:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    sget v1, Lcom/startshorts/androidplayer/R$id;->toolbar_view:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 12
    .line 13
    .line 14
    sget v1, Lcom/startshorts/androidplayer/R$id;->navigation_iv:I

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    .line 19
    .line 20
    sget v1, Lcom/startshorts/androidplayer/R$id;->logo_iv:I

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    .line 25
    .line 26
    sget v1, Lcom/startshorts/androidplayer/R$id;->phone_login_bg_view:I

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    .line 31
    .line 32
    sget v1, Lcom/startshorts/androidplayer/R$id;->phone_login_tv:I

    .line 33
    .line 34
    const/4 v2, 0x5

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    .line 37
    .line 38
    sget v1, Lcom/startshorts/androidplayer/R$id;->layout_line_or_line:I

    .line 39
    .line 40
    const/4 v2, 0x6

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    .line 43
    .line 44
    sget v1, Lcom/startshorts/androidplayer/R$id;->hw_login_bg_view:I

    .line 45
    .line 46
    const/4 v2, 0x7

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    .line 49
    .line 50
    sget v1, Lcom/startshorts/androidplayer/R$id;->login_reward_coin_viewstub:I

    .line 51
    .line 52
    const/16 v2, 0x8

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    .line 56
    .line 57
    sget v1, Lcom/startshorts/androidplayer/R$id;->login_reward_tip_viewstub:I

    .line 58
    .line 59
    const/16 v2, 0x9

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    .line 63
    .line 64
    sget v1, Lcom/startshorts/androidplayer/R$id;->facebook_login_bg_view:I

    .line 65
    .line 66
    const/16 v2, 0xa

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    .line 70
    .line 71
    sget v1, Lcom/startshorts/androidplayer/R$id;->facebook_login_iv:I

    .line 72
    .line 73
    const/16 v2, 0xb

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    .line 77
    .line 78
    sget v1, Lcom/startshorts/androidplayer/R$id;->facebook_login_tv:I

    .line 79
    .line 80
    const/16 v2, 0xc

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    .line 84
    .line 85
    sget v1, Lcom/startshorts/androidplayer/R$id;->google_login_bg_view:I

    .line 86
    .line 87
    const/16 v2, 0xd

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    .line 91
    .line 92
    sget v1, Lcom/startshorts/androidplayer/R$id;->google_login_iv:I

    .line 93
    .line 94
    const/16 v2, 0xe

    .line 95
    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    .line 98
    .line 99
    sget v1, Lcom/startshorts/androidplayer/R$id;->google_login_tv:I

    .line 100
    .line 101
    const/16 v2, 0xf

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    .line 105
    .line 106
    sget v1, Lcom/startshorts/androidplayer/R$id;->login_reward_icon_viewstub:I

    .line 107
    .line 108
    const/16 v2, 0x10

    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 111
    .line 112
    .line 113
    sget v1, Lcom/startshorts/androidplayer/R$id;->desc_tv:I

    .line 114
    .line 115
    const/16 v2, 0x11

    .line 116
    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    .line 119
    .line 120
    sget v1, Lcom/startshorts/androidplayer/R$id;->policy_tv:I

    .line 121
    .line 122
    const/16 v2, 0x12

    .line 123
    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 125
    .line 126
    .line 127
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
    sget-object v0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBindingImpl;->u:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/startshorts/androidplayer/databinding/ActivityLoginBindingImpl;->v:Landroid/util/SparseIntArray;

    const/16 v2, 0x13

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/databinding/ActivityLoginBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x11

    .line 2
    aget-object v3, p3, v3

    move-object v4, v3

    check-cast v4, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/16 v3, 0xa

    aget-object v3, p3, v3

    move-object v5, v3

    check-cast v5, Landroid/view/View;

    const/16 v3, 0xb

    aget-object v3, p3, v3

    move-object v6, v3

    check-cast v6, Landroid/widget/ImageView;

    const/16 v3, 0xc

    aget-object v3, p3, v3

    move-object v7, v3

    check-cast v7, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/16 v3, 0xd

    aget-object v3, p3, v3

    move-object v8, v3

    check-cast v8, Landroid/view/View;

    const/16 v3, 0xe

    aget-object v3, p3, v3

    move-object v9, v3

    check-cast v9, Landroid/widget/ImageView;

    const/16 v3, 0xf

    aget-object v3, p3, v3

    move-object v10, v3

    check-cast v10, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    new-instance v3, Landroidx/databinding/ViewStubProxy;

    move-object v11, v3

    const/4 v12, 0x7

    aget-object v12, p3, v12

    check-cast v12, Landroid/view/ViewStub;

    invoke-direct {v3, v12}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    const/4 v3, 0x0

    aget-object v3, p3, v3

    move-object v12, v3

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x6

    aget-object v3, p3, v3

    move-object v13, v3

    check-cast v13, Landroid/widget/LinearLayout;

    new-instance v3, Landroidx/databinding/ViewStubProxy;

    move-object v14, v3

    const/16 v15, 0x8

    aget-object v15, p3, v15

    check-cast v15, Landroid/view/ViewStub;

    invoke-direct {v3, v15}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    new-instance v3, Landroidx/databinding/ViewStubProxy;

    move-object v15, v3

    const/16 v16, 0x10

    aget-object v16, p3, v16

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    check-cast v0, Landroid/view/ViewStub;

    invoke-direct {v3, v0}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    new-instance v0, Landroidx/databinding/ViewStubProxy;

    move-object/from16 v16, v0

    const/16 v3, 0x9

    aget-object v3, p3, v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-direct {v0, v3}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/ImageView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/View;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/16 v0, 0x12

    aget-object v0, p3, v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/view/View;

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-direct/range {v0 .. v22}, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/startshorts/androidplayer/ui/view/base/BaseTextView;Landroid/view/View;Landroid/widget/ImageView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Landroid/view/View;Landroid/widget/ImageView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Landroidx/databinding/ViewStubProxy;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewStubProxy;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBindingImpl;->t:J

    .line 4
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->h:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 5
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->k:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 7
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->l:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 8
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->m:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    move-object/from16 v0, p2

    .line 9
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/databinding/ActivityLoginBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBindingImpl;->t:J

    .line 5
    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->h:Landroidx/databinding/ViewStubProxy;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->h:Landroidx/databinding/ViewStubProxy;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->k:Landroidx/databinding/ViewStubProxy;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->k:Landroidx/databinding/ViewStubProxy;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->l:Landroidx/databinding/ViewStubProxy;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->l:Landroidx/databinding/ViewStubProxy;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->m:Landroidx/databinding/ViewStubProxy;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBinding;->m:Landroidx/databinding/ViewStubProxy;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    return-void

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBindingImpl;->t:J

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
    const-wide/16 v0, 0x1

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityLoginBindingImpl;->t:J

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
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method
