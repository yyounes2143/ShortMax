.class public Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBindingImpl;
.super Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;
.source "DialogFragmentSubsExpansionNewBindingImpl.java"


# static fields
.field private static final y:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final z:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final w:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private x:J


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
    sput-object v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBindingImpl;->z:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    sget v1, Lcom/startshorts/androidplayer/R$id;->ivClose:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 12
    .line 13
    .line 14
    sget v1, Lcom/startshorts/androidplayer/R$id;->ivLogo:I

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    .line 19
    .line 20
    sget v1, Lcom/startshorts/androidplayer/R$id;->tvTitle:I

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    .line 25
    .line 26
    sget v1, Lcom/startshorts/androidplayer/R$id;->clContent:I

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    .line 31
    .line 32
    sget v1, Lcom/startshorts/androidplayer/R$id;->tvCycleCount:I

    .line 33
    .line 34
    const/4 v2, 0x5

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    .line 37
    .line 38
    sget v1, Lcom/startshorts/androidplayer/R$id;->tvPrice:I

    .line 39
    .line 40
    const/4 v2, 0x6

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    .line 43
    .line 44
    sget v1, Lcom/startshorts/androidplayer/R$id;->tvPriceUnit:I

    .line 45
    .line 46
    const/4 v2, 0x7

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    .line 49
    .line 50
    sget v1, Lcom/startshorts/androidplayer/R$id;->benefitsContent:I

    .line 51
    .line 52
    const/16 v2, 0x8

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    .line 56
    .line 57
    sget v1, Lcom/startshorts/androidplayer/R$id;->ivUnlimitedViewing:I

    .line 58
    .line 59
    const/16 v2, 0x9

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    .line 63
    .line 64
    sget v1, Lcom/startshorts/androidplayer/R$id;->ivNoAds:I

    .line 65
    .line 66
    const/16 v2, 0xa

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    .line 70
    .line 71
    sget v1, Lcom/startshorts/androidplayer/R$id;->divider:I

    .line 72
    .line 73
    const/16 v2, 0xb

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    .line 77
    .line 78
    sget v1, Lcom/startshorts/androidplayer/R$id;->ivQuality:I

    .line 79
    .line 80
    const/16 v2, 0xc

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    .line 84
    .line 85
    sget v1, Lcom/startshorts/androidplayer/R$id;->ivOfflineDownload:I

    .line 86
    .line 87
    const/16 v2, 0xd

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    .line 91
    .line 92
    sget v1, Lcom/startshorts/androidplayer/R$id;->clRightLabel:I

    .line 93
    .line 94
    const/16 v2, 0xe

    .line 95
    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    .line 98
    .line 99
    sget v1, Lcom/startshorts/androidplayer/R$id;->tvDiscount:I

    .line 100
    .line 101
    const/16 v2, 0xf

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    .line 105
    .line 106
    sget v1, Lcom/startshorts/androidplayer/R$id;->driverRightLabel:I

    .line 107
    .line 108
    const/16 v2, 0x10

    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 111
    .line 112
    .line 113
    sget v1, Lcom/startshorts/androidplayer/R$id;->tvTimeCountdown:I

    .line 114
    .line 115
    const/16 v2, 0x11

    .line 116
    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    .line 119
    .line 120
    sget v1, Lcom/startshorts/androidplayer/R$id;->purchaseBtn:I

    .line 121
    .line 122
    const/16 v2, 0x12

    .line 123
    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 125
    .line 126
    .line 127
    sget v1, Lcom/startshorts/androidplayer/R$id;->tv_final_price:I

    .line 128
    .line 129
    const/16 v2, 0x13

    .line 130
    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 132
    .line 133
    .line 134
    sget v1, Lcom/startshorts/androidplayer/R$id;->ivThirdPayment:I

    .line 135
    .line 136
    const/16 v2, 0x14

    .line 137
    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 139
    .line 140
    .line 141
    sget v1, Lcom/startshorts/androidplayer/R$id;->tvPriceRenew:I

    .line 142
    .line 143
    const/16 v2, 0x15

    .line 144
    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    .line 147
    .line 148
    sget v1, Lcom/startshorts/androidplayer/R$id;->bottom_space:I

    .line 149
    .line 150
    const/16 v2, 0x16

    .line 151
    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 153
    .line 154
    .line 155
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
    sget-object v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBindingImpl;->y:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBindingImpl;->z:Landroid/util/SparseIntArray;

    const/16 v2, 0x17

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x8

    .line 2
    aget-object v3, p3, v3

    move-object v4, v3

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v3, 0x16

    aget-object v3, p3, v3

    move-object v5, v3

    check-cast v5, Landroid/widget/Space;

    const/4 v3, 0x4

    aget-object v3, p3, v3

    move-object v6, v3

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v3, 0xe

    aget-object v3, p3, v3

    move-object v7, v3

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v3, 0xb

    aget-object v3, p3, v3

    move-object v8, v3

    check-cast v8, Landroid/widget/Space;

    const/16 v3, 0x10

    aget-object v3, p3, v3

    move-object v9, v3

    check-cast v9, Landroid/view/View;

    const/4 v3, 0x1

    aget-object v3, p3, v3

    move-object v10, v3

    check-cast v10, Landroid/widget/ImageView;

    const/4 v3, 0x2

    aget-object v3, p3, v3

    move-object v11, v3

    check-cast v11, Lcom/startshorts/androidplayer/ui/view/fresco/FitLanguageImageView;

    const/16 v3, 0xa

    aget-object v3, p3, v3

    move-object v12, v3

    check-cast v12, Landroid/widget/ImageView;

    const/16 v3, 0xd

    aget-object v3, p3, v3

    move-object v13, v3

    check-cast v13, Landroid/widget/ImageView;

    const/16 v3, 0xc

    aget-object v3, p3, v3

    move-object v14, v3

    check-cast v14, Landroid/widget/ImageView;

    const/16 v3, 0x14

    aget-object v3, p3, v3

    move-object v15, v3

    check-cast v15, Landroid/widget/ImageView;

    const/16 v3, 0x9

    aget-object v3, p3, v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/ImageView;

    const/16 v3, 0x12

    aget-object v3, p3, v3

    move-object/from16 v17, v3

    check-cast v17, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x5

    aget-object v3, p3, v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/16 v3, 0xf

    aget-object v3, p3, v3

    move-object/from16 v19, v3

    check-cast v19, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/16 v3, 0x13

    aget-object v3, p3, v3

    move-object/from16 v20, v3

    check-cast v20, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/4 v3, 0x6

    aget-object v3, p3, v3

    move-object/from16 v21, v3

    check-cast v21, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/16 v3, 0x15

    aget-object v3, p3, v3

    move-object/from16 v22, v3

    check-cast v22, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/4 v3, 0x7

    aget-object v3, p3, v3

    move-object/from16 v23, v3

    check-cast v23, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/16 v3, 0x11

    aget-object v3, p3, v3

    move-object/from16 v24, v3

    check-cast v24, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/4 v3, 0x3

    aget-object v3, p3, v3

    move-object/from16 v25, v3

    check-cast v25, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v25}, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Space;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Space;Landroid/view/View;Landroid/widget/ImageView;Lcom/startshorts/androidplayer/ui/view/fresco/FitLanguageImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBindingImpl;->x:J

    const/4 v0, 0x0

    .line 4
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBindingImpl;->w:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 6
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBindingImpl;->invalidateAll()V

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
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBindingImpl;->x:J

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBindingImpl;->x:J

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
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/DialogFragmentSubsExpansionNewBindingImpl;->x:J

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
