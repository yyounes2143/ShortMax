.class public Lcom/startshorts/androidplayer/databinding/ActivityImmersionBindingImpl;
.super Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;
.source "ActivityImmersionBindingImpl.java"


# static fields
.field private static final E:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final F:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private D:J


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
    sput-object v0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBindingImpl;->F:Landroid/util/SparseIntArray;

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
    sget v1, Lcom/startshorts/androidplayer/R$id;->refresh_layout_viewstub:I

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    .line 19
    .line 20
    sget v1, Lcom/startshorts/androidplayer/R$id;->navigation_iv:I

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    .line 25
    .line 26
    sget v1, Lcom/startshorts/androidplayer/R$id;->shorts_name_tv:I

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    .line 31
    .line 32
    sget v1, Lcom/startshorts/androidplayer/R$id;->episode_num_tv:I

    .line 33
    .line 34
    const/4 v2, 0x5

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    .line 37
    .line 38
    sget v1, Lcom/startshorts/androidplayer/R$id;->sale_viewstub:I

    .line 39
    .line 40
    const/4 v2, 0x6

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    .line 43
    .line 44
    sget v1, Lcom/startshorts/androidplayer/R$id;->play_speed_tip_viewstub:I

    .line 45
    .line 46
    const/4 v2, 0x7

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    .line 49
    .line 50
    sget v1, Lcom/startshorts/androidplayer/R$id;->discount_layout_viewstub:I

    .line 51
    .line 52
    const/16 v2, 0x8

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    .line 56
    .line 57
    sget v1, Lcom/startshorts/androidplayer/R$id;->carton_downgrade_resolution_layout_viewstub:I

    .line 58
    .line 59
    const/16 v2, 0x9

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    .line 63
    .line 64
    sget v1, Lcom/startshorts/androidplayer/R$id;->notification_layout_viewstub:I

    .line 65
    .line 66
    const/16 v2, 0xa

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    .line 70
    .line 71
    sget v1, Lcom/startshorts/androidplayer/R$id;->seekbar_touch_viewstub:I

    .line 72
    .line 73
    const/16 v2, 0xb

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    .line 77
    .line 78
    sget v1, Lcom/startshorts/androidplayer/R$id;->buffering_viewstub:I

    .line 79
    .line 80
    const/16 v2, 0xc

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    .line 84
    .line 85
    sget v1, Lcom/startshorts/androidplayer/R$id;->seekbar_viewstub:I

    .line 86
    .line 87
    const/16 v2, 0xd

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    .line 91
    .line 92
    sget v1, Lcom/startshorts/androidplayer/R$id;->play_resolution_list_viewstub:I

    .line 93
    .line 94
    const/16 v2, 0xe

    .line 95
    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    .line 98
    .line 99
    sget v1, Lcom/startshorts/androidplayer/R$id;->play_speed_list_viewstub:I

    .line 100
    .line 101
    const/16 v2, 0xf

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    .line 105
    .line 106
    sget v1, Lcom/startshorts/androidplayer/R$id;->download_drama_viewstub:I

    .line 107
    .line 108
    const/16 v2, 0x10

    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 111
    .line 112
    .line 113
    sget v1, Lcom/startshorts/androidplayer/R$id;->play_speed_viewstub:I

    .line 114
    .line 115
    const/16 v2, 0x11

    .line 116
    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    .line 119
    .line 120
    sget v1, Lcom/startshorts/androidplayer/R$id;->play_resolution_viewstub:I

    .line 121
    .line 122
    const/16 v2, 0x12

    .line 123
    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 125
    .line 126
    .line 127
    sget v1, Lcom/startshorts/androidplayer/R$id;->mini_window_viewstub:I

    .line 128
    .line 129
    const/16 v2, 0x13

    .line 130
    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 132
    .line 133
    .line 134
    sget v1, Lcom/startshorts/androidplayer/R$id;->time_viewstub:I

    .line 135
    .line 136
    const/16 v2, 0x14

    .line 137
    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 139
    .line 140
    .line 141
    sget v1, Lcom/startshorts/androidplayer/R$id;->double_task_coin_viewstub:I

    .line 142
    .line 143
    const/16 v2, 0x15

    .line 144
    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    .line 147
    .line 148
    sget v1, Lcom/startshorts/androidplayer/R$id;->accumulated_task_coin_viewstub:I

    .line 149
    .line 150
    const/16 v2, 0x16

    .line 151
    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 153
    .line 154
    .line 155
    sget v1, Lcom/startshorts/androidplayer/R$id;->daily_watch_drama_task_coin_viewstub:I

    .line 156
    .line 157
    const/16 v2, 0x17

    .line 158
    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 160
    .line 161
    .line 162
    sget v1, Lcom/startshorts/androidplayer/R$id;->short_rating_viewstub:I

    .line 163
    .line 164
    const/16 v2, 0x18

    .line 165
    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 167
    .line 168
    .line 169
    sget v1, Lcom/startshorts/androidplayer/R$id;->sale_sub_viewstub:I

    .line 170
    .line 171
    const/16 v2, 0x19

    .line 172
    .line 173
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 174
    .line 175
    .line 176
    sget v1, Lcom/startshorts/androidplayer/R$id;->sub_discount_viewstub:I

    .line 177
    .line 178
    const/16 v2, 0x1a

    .line 179
    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 181
    .line 182
    .line 183
    sget v1, Lcom/startshorts/androidplayer/R$id;->sub_discount_upgrade_viewstub:I

    .line 184
    .line 185
    const/16 v2, 0x1b

    .line 186
    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 188
    .line 189
    .line 190
    sget v1, Lcom/startshorts/androidplayer/R$id;->page_state_view:I

    .line 191
    .line 192
    const/16 v2, 0x1c

    .line 193
    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 195
    .line 196
    .line 197
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
    sget-object v0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBindingImpl;->E:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBindingImpl;->F:Landroid/util/SparseIntArray;

    const/16 v2, 0x1d

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2
    new-instance v3, Landroidx/databinding/ViewStubProxy;

    move-object v4, v3

    const/16 v5, 0x16

    aget-object v5, p3, v5

    check-cast v5, Landroid/view/ViewStub;

    invoke-direct {v3, v5}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    new-instance v3, Landroidx/databinding/ViewStubProxy;

    move-object v5, v3

    const/16 v6, 0xc

    aget-object v6, p3, v6

    check-cast v6, Landroid/view/ViewStub;

    invoke-direct {v3, v6}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    new-instance v3, Landroidx/databinding/ViewStubProxy;

    move-object v6, v3

    const/16 v7, 0x9

    aget-object v7, p3, v7

    check-cast v7, Landroid/view/ViewStub;

    invoke-direct {v3, v7}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    new-instance v3, Landroidx/databinding/ViewStubProxy;

    move-object v7, v3

    const/16 v8, 0x17

    aget-object v8, p3, v8

    check-cast v8, Landroid/view/ViewStub;

    invoke-direct {v3, v8}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    new-instance v3, Landroidx/databinding/ViewStubProxy;

    move-object v8, v3

    const/16 v9, 0x8

    aget-object v9, p3, v9

    check-cast v9, Landroid/view/ViewStub;

    invoke-direct {v3, v9}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    new-instance v3, Landroidx/databinding/ViewStubProxy;

    move-object v9, v3

    const/16 v10, 0x15

    aget-object v10, p3, v10

    check-cast v10, Landroid/view/ViewStub;

    invoke-direct {v3, v10}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    new-instance v3, Landroidx/databinding/ViewStubProxy;

    move-object v10, v3

    const/16 v11, 0x10

    aget-object v11, p3, v11

    check-cast v11, Landroid/view/ViewStub;

    invoke-direct {v3, v11}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    const/4 v3, 0x5

    aget-object v3, p3, v3

    move-object v11, v3

    check-cast v11, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    new-instance v3, Landroidx/databinding/ViewStubProxy;

    move-object v12, v3

    const/16 v13, 0x13

    aget-object v13, p3, v13

    check-cast v13, Landroid/view/ViewStub;

    invoke-direct {v3, v13}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    const/4 v3, 0x3

    aget-object v3, p3, v3

    move-object v13, v3

    check-cast v13, Landroid/widget/ImageView;

    new-instance v3, Landroidx/databinding/ViewStubProxy;

    move-object v14, v3

    const/16 v15, 0xa

    aget-object v15, p3, v15

    check-cast v15, Landroid/view/ViewStub;

    invoke-direct {v3, v15}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    const/16 v3, 0x1c

    aget-object v3, p3, v3

    move-object v15, v3

    check-cast v15, Lcom/hades/aar/pagestate/StateViewGroup;

    new-instance v3, Landroidx/databinding/ViewStubProxy;

    move-object/from16 v16, v3

    const/16 v17, 0xe

    aget-object v17, p3, v17

    move-object/from16 v33, v0

    move-object/from16 v0, v17

    check-cast v0, Landroid/view/ViewStub;

    invoke-direct {v3, v0}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    new-instance v0, Landroidx/databinding/ViewStubProxy;

    move-object/from16 v17, v0

    const/16 v3, 0x12

    aget-object v3, p3, v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-direct {v0, v3}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    new-instance v0, Landroidx/databinding/ViewStubProxy;

    move-object/from16 v18, v0

    const/16 v3, 0xf

    aget-object v3, p3, v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-direct {v0, v3}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    new-instance v0, Landroidx/databinding/ViewStubProxy;

    move-object/from16 v19, v0

    const/4 v3, 0x7

    aget-object v3, p3, v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-direct {v0, v3}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    new-instance v0, Landroidx/databinding/ViewStubProxy;

    move-object/from16 v20, v0

    const/16 v3, 0x11

    aget-object v3, p3, v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-direct {v0, v3}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    new-instance v0, Landroidx/databinding/ViewStubProxy;

    move-object/from16 v21, v0

    const/4 v3, 0x2

    aget-object v3, p3, v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-direct {v0, v3}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object/from16 v22, v0

    check-cast v22, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Landroidx/databinding/ViewStubProxy;

    move-object/from16 v23, v0

    const/16 v3, 0x19

    aget-object v3, p3, v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-direct {v0, v3}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    new-instance v0, Landroidx/databinding/ViewStubProxy;

    move-object/from16 v24, v0

    const/4 v3, 0x6

    aget-object v3, p3, v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-direct {v0, v3}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    new-instance v0, Landroidx/databinding/ViewStubProxy;

    move-object/from16 v25, v0

    const/16 v3, 0xb

    aget-object v3, p3, v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-direct {v0, v3}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    new-instance v0, Landroidx/databinding/ViewStubProxy;

    move-object/from16 v26, v0

    const/16 v3, 0xd

    aget-object v3, p3, v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-direct {v0, v3}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    new-instance v0, Landroidx/databinding/ViewStubProxy;

    move-object/from16 v27, v0

    const/16 v3, 0x18

    aget-object v3, p3, v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-direct {v0, v3}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object/from16 v28, v0

    check-cast v28, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    new-instance v0, Landroidx/databinding/ViewStubProxy;

    move-object/from16 v29, v0

    const/16 v3, 0x1b

    aget-object v3, p3, v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-direct {v0, v3}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    new-instance v0, Landroidx/databinding/ViewStubProxy;

    move-object/from16 v30, v0

    const/16 v3, 0x1a

    aget-object v3, p3, v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-direct {v0, v3}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    new-instance v0, Landroidx/databinding/ViewStubProxy;

    move-object/from16 v31, v0

    const/16 v3, 0x14

    aget-object v3, p3, v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-direct {v0, v3}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object/from16 v32, v0

    check-cast v32, Landroid/view/View;

    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-direct/range {v0 .. v32}, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewStubProxy;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Landroidx/databinding/ViewStubProxy;Landroid/widget/ImageView;Landroidx/databinding/ViewStubProxy;Lcom/hades/aar/pagestate/StateViewGroup;Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewStubProxy;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewStubProxy;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewStubProxy;Landroidx/databinding/ViewStubProxy;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBindingImpl;->D:J

    .line 4
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->a:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 5
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->b:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 6
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->c:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 7
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->d:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 8
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->e:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 9
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->f:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 10
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->g:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 11
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->i:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 12
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->k:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 13
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->m:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 14
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->n:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 15
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->o:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 16
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->p:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 17
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->q:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 18
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->r:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 19
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->s:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 20
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->t:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 21
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->u:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 22
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->v:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 23
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->w:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 24
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->x:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 25
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->z:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 26
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->A:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 27
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->B:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    move-object/from16 v0, p2

    .line 28
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBindingImpl;->invalidateAll()V

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
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBindingImpl;->D:J

    .line 5
    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->a:Landroidx/databinding/ViewStubProxy;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->a:Landroidx/databinding/ViewStubProxy;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->b:Landroidx/databinding/ViewStubProxy;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->b:Landroidx/databinding/ViewStubProxy;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->c:Landroidx/databinding/ViewStubProxy;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->c:Landroidx/databinding/ViewStubProxy;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->d:Landroidx/databinding/ViewStubProxy;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->d:Landroidx/databinding/ViewStubProxy;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->e:Landroidx/databinding/ViewStubProxy;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->e:Landroidx/databinding/ViewStubProxy;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->f:Landroidx/databinding/ViewStubProxy;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->f:Landroidx/databinding/ViewStubProxy;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->g:Landroidx/databinding/ViewStubProxy;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->g:Landroidx/databinding/ViewStubProxy;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 124
    .line 125
    .line 126
    :cond_6
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->i:Landroidx/databinding/ViewStubProxy;

    .line 127
    .line 128
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-eqz v0, :cond_7

    .line 133
    .line 134
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->i:Landroidx/databinding/ViewStubProxy;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 141
    .line 142
    .line 143
    :cond_7
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->k:Landroidx/databinding/ViewStubProxy;

    .line 144
    .line 145
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_8

    .line 150
    .line 151
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->k:Landroidx/databinding/ViewStubProxy;

    .line 152
    .line 153
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 158
    .line 159
    .line 160
    :cond_8
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->m:Landroidx/databinding/ViewStubProxy;

    .line 161
    .line 162
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    if-eqz v0, :cond_9

    .line 167
    .line 168
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->m:Landroidx/databinding/ViewStubProxy;

    .line 169
    .line 170
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 175
    .line 176
    .line 177
    :cond_9
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->n:Landroidx/databinding/ViewStubProxy;

    .line 178
    .line 179
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    if-eqz v0, :cond_a

    .line 184
    .line 185
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->n:Landroidx/databinding/ViewStubProxy;

    .line 186
    .line 187
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 192
    .line 193
    .line 194
    :cond_a
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->o:Landroidx/databinding/ViewStubProxy;

    .line 195
    .line 196
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    if-eqz v0, :cond_b

    .line 201
    .line 202
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->o:Landroidx/databinding/ViewStubProxy;

    .line 203
    .line 204
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 209
    .line 210
    .line 211
    :cond_b
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->p:Landroidx/databinding/ViewStubProxy;

    .line 212
    .line 213
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    if-eqz v0, :cond_c

    .line 218
    .line 219
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->p:Landroidx/databinding/ViewStubProxy;

    .line 220
    .line 221
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 226
    .line 227
    .line 228
    :cond_c
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->q:Landroidx/databinding/ViewStubProxy;

    .line 229
    .line 230
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    if-eqz v0, :cond_d

    .line 235
    .line 236
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->q:Landroidx/databinding/ViewStubProxy;

    .line 237
    .line 238
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 243
    .line 244
    .line 245
    :cond_d
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->r:Landroidx/databinding/ViewStubProxy;

    .line 246
    .line 247
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    if-eqz v0, :cond_e

    .line 252
    .line 253
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->r:Landroidx/databinding/ViewStubProxy;

    .line 254
    .line 255
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 260
    .line 261
    .line 262
    :cond_e
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->t:Landroidx/databinding/ViewStubProxy;

    .line 263
    .line 264
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    if-eqz v0, :cond_f

    .line 269
    .line 270
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->t:Landroidx/databinding/ViewStubProxy;

    .line 271
    .line 272
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 277
    .line 278
    .line 279
    :cond_f
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->u:Landroidx/databinding/ViewStubProxy;

    .line 280
    .line 281
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    if-eqz v0, :cond_10

    .line 286
    .line 287
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->u:Landroidx/databinding/ViewStubProxy;

    .line 288
    .line 289
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 294
    .line 295
    .line 296
    :cond_10
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->v:Landroidx/databinding/ViewStubProxy;

    .line 297
    .line 298
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    if-eqz v0, :cond_11

    .line 303
    .line 304
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->v:Landroidx/databinding/ViewStubProxy;

    .line 305
    .line 306
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 311
    .line 312
    .line 313
    :cond_11
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->w:Landroidx/databinding/ViewStubProxy;

    .line 314
    .line 315
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    if-eqz v0, :cond_12

    .line 320
    .line 321
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->w:Landroidx/databinding/ViewStubProxy;

    .line 322
    .line 323
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 328
    .line 329
    .line 330
    :cond_12
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->x:Landroidx/databinding/ViewStubProxy;

    .line 331
    .line 332
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    if-eqz v0, :cond_13

    .line 337
    .line 338
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->x:Landroidx/databinding/ViewStubProxy;

    .line 339
    .line 340
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 345
    .line 346
    .line 347
    :cond_13
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->z:Landroidx/databinding/ViewStubProxy;

    .line 348
    .line 349
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    if-eqz v0, :cond_14

    .line 354
    .line 355
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->z:Landroidx/databinding/ViewStubProxy;

    .line 356
    .line 357
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 362
    .line 363
    .line 364
    :cond_14
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->A:Landroidx/databinding/ViewStubProxy;

    .line 365
    .line 366
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    if-eqz v0, :cond_15

    .line 371
    .line 372
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->A:Landroidx/databinding/ViewStubProxy;

    .line 373
    .line 374
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 379
    .line 380
    .line 381
    :cond_15
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->B:Landroidx/databinding/ViewStubProxy;

    .line 382
    .line 383
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    if-eqz v0, :cond_16

    .line 388
    .line 389
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->B:Landroidx/databinding/ViewStubProxy;

    .line 390
    .line 391
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 396
    .line 397
    .line 398
    :cond_16
    return-void

    .line 399
    :catchall_0
    move-exception v0

    .line 400
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBindingImpl;->D:J

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
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBindingImpl;->D:J

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
