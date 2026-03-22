.class public Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2BindingImpl;
.super Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2Binding;
.source "ActivitySubsDetail2BindingImpl.java"


# static fields
.field private static final P:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final Q:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final N:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private O:J


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
    sput-object v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2BindingImpl;->Q:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    sget v1, Lcom/startshorts/androidplayer/R$id;->flag_iv:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 12
    .line 13
    .line 14
    sget v1, Lcom/startshorts/androidplayer/R$id;->lay_user_info:I

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    .line 19
    .line 20
    sget v1, Lcom/startshorts/androidplayer/R$id;->iv_avatar:I

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    .line 25
    .line 26
    sget v1, Lcom/startshorts/androidplayer/R$id;->tv_user_name:I

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    .line 31
    .line 32
    sget v1, Lcom/startshorts/androidplayer/R$id;->lay_expiration_date:I

    .line 33
    .line 34
    const/4 v2, 0x5

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    .line 37
    .line 38
    sget v1, Lcom/startshorts/androidplayer/R$id;->iv_expiration_date:I

    .line 39
    .line 40
    const/4 v2, 0x6

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    .line 43
    .line 44
    sget v1, Lcom/startshorts/androidplayer/R$id;->tv_user_des:I

    .line 45
    .line 46
    const/4 v2, 0x7

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    .line 49
    .line 50
    sget v1, Lcom/startshorts/androidplayer/R$id;->bg_card_icon_mask:I

    .line 51
    .line 52
    const/16 v2, 0x8

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    .line 56
    .line 57
    sget v1, Lcom/startshorts/androidplayer/R$id;->iv_card_icon_mask:I

    .line 58
    .line 59
    const/16 v2, 0x9

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    .line 63
    .line 64
    sget v1, Lcom/startshorts/androidplayer/R$id;->lay_card_des:I

    .line 65
    .line 66
    const/16 v2, 0xa

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    .line 70
    .line 71
    sget v1, Lcom/startshorts/androidplayer/R$id;->iv_card_icon:I

    .line 72
    .line 73
    const/16 v2, 0xb

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    .line 77
    .line 78
    sget v1, Lcom/startshorts/androidplayer/R$id;->tv_card_name:I

    .line 79
    .line 80
    const/16 v2, 0xc

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    .line 84
    .line 85
    sget v1, Lcom/startshorts/androidplayer/R$id;->tab_subs_type:I

    .line 86
    .line 87
    const/16 v2, 0xd

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    .line 91
    .line 92
    sget v1, Lcom/startshorts/androidplayer/R$id;->subs_type_view:I

    .line 93
    .line 94
    const/16 v2, 0xe

    .line 95
    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    .line 98
    .line 99
    sget v1, Lcom/startshorts/androidplayer/R$id;->iv_light:I

    .line 100
    .line 101
    const/16 v2, 0xf

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    .line 105
    .line 106
    sget v1, Lcom/startshorts/androidplayer/R$id;->page_state_view:I

    .line 107
    .line 108
    const/16 v2, 0x10

    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 111
    .line 112
    .line 113
    sget v1, Lcom/startshorts/androidplayer/R$id;->privilege_title_tv:I

    .line 114
    .line 115
    const/16 v2, 0x11

    .line 116
    .line 117
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    .line 119
    .line 120
    sget v1, Lcom/startshorts/androidplayer/R$id;->lay_vip_content:I

    .line 121
    .line 122
    const/16 v2, 0x12

    .line 123
    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 125
    .line 126
    .line 127
    sget v1, Lcom/startshorts/androidplayer/R$id;->ic_free_view:I

    .line 128
    .line 129
    const/16 v2, 0x13

    .line 130
    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 132
    .line 133
    .line 134
    sget v1, Lcom/startshorts/androidplayer/R$id;->ic_free_hd:I

    .line 135
    .line 136
    const/16 v2, 0x14

    .line 137
    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 139
    .line 140
    .line 141
    sget v1, Lcom/startshorts/androidplayer/R$id;->ic_free_ad:I

    .line 142
    .line 143
    const/16 v2, 0x15

    .line 144
    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    .line 147
    .line 148
    sget v1, Lcom/startshorts/androidplayer/R$id;->ic_free_download:I

    .line 149
    .line 150
    const/16 v2, 0x16

    .line 151
    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 153
    .line 154
    .line 155
    sget v1, Lcom/startshorts/androidplayer/R$id;->ic_vip_mod:I

    .line 156
    .line 157
    const/16 v2, 0x17

    .line 158
    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 160
    .line 161
    .line 162
    sget v1, Lcom/startshorts/androidplayer/R$id;->desc_title_tv:I

    .line 163
    .line 164
    const/16 v2, 0x18

    .line 165
    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 167
    .line 168
    .line 169
    sget v1, Lcom/startshorts/androidplayer/R$id;->desc_content_tv:I

    .line 170
    .line 171
    const/16 v2, 0x19

    .line 172
    .line 173
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 174
    .line 175
    .line 176
    sget v1, Lcom/startshorts/androidplayer/R$id;->tv_unsubscribe:I

    .line 177
    .line 178
    const/16 v2, 0x1a

    .line 179
    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 181
    .line 182
    .line 183
    sget v1, Lcom/startshorts/androidplayer/R$id;->flow:I

    .line 184
    .line 185
    const/16 v2, 0x1b

    .line 186
    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 188
    .line 189
    .line 190
    sget v1, Lcom/startshorts/androidplayer/R$id;->privacy_agreement_tv:I

    .line 191
    .line 192
    const/16 v2, 0x1c

    .line 193
    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 195
    .line 196
    .line 197
    sget v1, Lcom/startshorts/androidplayer/R$id;->divider_line_1:I

    .line 198
    .line 199
    const/16 v2, 0x1d

    .line 200
    .line 201
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 202
    .line 203
    .line 204
    sget v1, Lcom/startshorts/androidplayer/R$id;->user_agreement_tv:I

    .line 205
    .line 206
    const/16 v2, 0x1e

    .line 207
    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 209
    .line 210
    .line 211
    sget v1, Lcom/startshorts/androidplayer/R$id;->divider_line_2:I

    .line 212
    .line 213
    const/16 v2, 0x1f

    .line 214
    .line 215
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 216
    .line 217
    .line 218
    sget v1, Lcom/startshorts/androidplayer/R$id;->restore_tv:I

    .line 219
    .line 220
    const/16 v2, 0x20

    .line 221
    .line 222
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 223
    .line 224
    .line 225
    sget v1, Lcom/startshorts/androidplayer/R$id;->v_space:I

    .line 226
    .line 227
    const/16 v2, 0x21

    .line 228
    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 230
    .line 231
    .line 232
    sget v1, Lcom/startshorts/androidplayer/R$id;->top_mask_v:I

    .line 233
    .line 234
    const/16 v2, 0x22

    .line 235
    .line 236
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 237
    .line 238
    .line 239
    sget v1, Lcom/startshorts/androidplayer/R$id;->bottom_mask_v:I

    .line 240
    .line 241
    const/16 v2, 0x23

    .line 242
    .line 243
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 244
    .line 245
    .line 246
    sget v1, Lcom/startshorts/androidplayer/R$id;->stub_payment_method:I

    .line 247
    .line 248
    const/16 v2, 0x24

    .line 249
    .line 250
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 251
    .line 252
    .line 253
    sget v1, Lcom/startshorts/androidplayer/R$id;->toolbar_view:I

    .line 254
    .line 255
    const/16 v2, 0x25

    .line 256
    .line 257
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 258
    .line 259
    .line 260
    sget v1, Lcom/startshorts/androidplayer/R$id;->navigation_iv:I

    .line 261
    .line 262
    const/16 v2, 0x26

    .line 263
    .line 264
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 265
    .line 266
    .line 267
    sget v1, Lcom/startshorts/androidplayer/R$id;->title_tv_repetition:I

    .line 268
    .line 269
    const/16 v2, 0x27

    .line 270
    .line 271
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 272
    .line 273
    .line 274
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
    sget-object v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2BindingImpl;->P:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2BindingImpl;->Q:Landroid/util/SparseIntArray;

    const/16 v2, 0x28

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x8

    .line 2
    aget-object v3, p3, v3

    move-object v4, v3

    check-cast v4, Landroid/widget/ImageView;

    const/16 v3, 0x23

    aget-object v3, p3, v3

    move-object v5, v3

    check-cast v5, Landroid/widget/ImageView;

    const/16 v3, 0x19

    aget-object v3, p3, v3

    move-object v6, v3

    check-cast v6, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/16 v3, 0x18

    aget-object v3, p3, v3

    move-object v7, v3

    check-cast v7, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/16 v3, 0x1d

    aget-object v3, p3, v3

    move-object v8, v3

    check-cast v8, Landroid/view/View;

    const/16 v3, 0x1f

    aget-object v3, p3, v3

    move-object v9, v3

    check-cast v9, Landroid/view/View;

    const/4 v3, 0x1

    aget-object v3, p3, v3

    move-object v10, v3

    check-cast v10, Landroid/widget/ImageView;

    const/16 v3, 0x1b

    aget-object v3, p3, v3

    move-object v11, v3

    check-cast v11, Landroidx/constraintlayout/helper/widget/Flow;

    const/16 v3, 0x15

    aget-object v3, p3, v3

    move-object v12, v3

    check-cast v12, Landroid/widget/ImageView;

    const/16 v3, 0x16

    aget-object v3, p3, v3

    move-object v13, v3

    check-cast v13, Landroid/widget/ImageView;

    const/16 v3, 0x14

    aget-object v3, p3, v3

    move-object v14, v3

    check-cast v14, Landroid/widget/ImageView;

    const/16 v3, 0x13

    aget-object v3, p3, v3

    move-object v15, v3

    check-cast v15, Landroid/widget/ImageView;

    const/16 v3, 0x17

    aget-object v3, p3, v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/ImageView;

    const/4 v3, 0x3

    aget-object v3, p3, v3

    move-object/from16 v17, v3

    check-cast v17, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    const/16 v3, 0xb

    aget-object v3, p3, v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/ImageView;

    const/16 v3, 0x9

    aget-object v3, p3, v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/ImageView;

    const/4 v3, 0x6

    aget-object v3, p3, v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/ImageView;

    const/16 v3, 0xf

    aget-object v3, p3, v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/ImageView;

    const/16 v3, 0xa

    aget-object v3, p3, v3

    move-object/from16 v22, v3

    check-cast v22, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x5

    aget-object v3, p3, v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    aget-object v3, p3, v3

    move-object/from16 v24, v3

    check-cast v24, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v3, 0x12

    aget-object v3, p3, v3

    move-object/from16 v25, v3

    check-cast v25, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v3, 0x26

    aget-object v3, p3, v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/widget/ImageView;

    const/16 v3, 0x10

    aget-object v3, p3, v3

    move-object/from16 v27, v3

    check-cast v27, Lcom/hades/aar/pagestate/StateViewGroup;

    const/16 v3, 0x1c

    aget-object v3, p3, v3

    move-object/from16 v28, v3

    check-cast v28, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/16 v3, 0x11

    aget-object v3, p3, v3

    move-object/from16 v29, v3

    check-cast v29, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/16 v3, 0x20

    aget-object v3, p3, v3

    move-object/from16 v30, v3

    check-cast v30, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    new-instance v3, Landroidx/databinding/ViewStubProxy;

    move-object/from16 v31, v3

    const/16 v32, 0x24

    aget-object v32, p3, v32

    move-object/from16 v43, v0

    move-object/from16 v0, v32

    check-cast v0, Landroid/view/ViewStub;

    invoke-direct {v3, v0}, Landroidx/databinding/ViewStubProxy;-><init>(Landroid/view/ViewStub;)V

    const/16 v0, 0xe

    aget-object v0, p3, v0

    move-object/from16 v32, v0

    check-cast v32, Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object/from16 v33, v0

    check-cast v33, Lcom/startshorts/androidplayer/ui/view/base/TabView;

    const/16 v0, 0x27

    aget-object v0, p3, v0

    move-object/from16 v34, v0

    check-cast v34, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/16 v0, 0x25

    aget-object v0, p3, v0

    move-object/from16 v35, v0

    check-cast v35, Landroid/view/View;

    const/16 v0, 0x22

    aget-object v0, p3, v0

    move-object/from16 v36, v0

    check-cast v36, Landroid/widget/ImageView;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object/from16 v37, v0

    check-cast v37, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    const/16 v0, 0x1a

    aget-object v0, p3, v0

    move-object/from16 v38, v0

    check-cast v38, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object/from16 v39, v0

    check-cast v39, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object/from16 v40, v0

    check-cast v40, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/16 v0, 0x1e

    aget-object v0, p3, v0

    move-object/from16 v41, v0

    check-cast v41, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/16 v0, 0x21

    aget-object v0, p3, v0

    move-object/from16 v42, v0

    check-cast v42, Landroid/widget/Space;

    const/4 v3, 0x0

    move-object/from16 v0, v43

    invoke-direct/range {v0 .. v42}, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2Binding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;Landroidx/constraintlayout/helper/widget/Flow;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcom/hades/aar/pagestate/StateViewGroup;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Landroidx/databinding/ViewStubProxy;Lcom/startshorts/androidplayer/ui/view/subs/SubsType2View;Lcom/startshorts/androidplayer/ui/view/base/TabView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Landroid/view/View;Landroid/widget/ImageView;Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Landroid/widget/Space;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2BindingImpl;->O:J

    const/4 v0, 0x0

    .line 4
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2BindingImpl;->N:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2Binding;->B:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0, v2}, Landroidx/databinding/ViewStubProxy;->setContainingBinding(Landroidx/databinding/ViewDataBinding;)V

    move-object/from16 v0, p2

    .line 7
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2BindingImpl;->invalidateAll()V

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
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2BindingImpl;->O:J

    .line 5
    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2Binding;->B:Landroidx/databinding/ViewStubProxy;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2Binding;->B:Landroidx/databinding/ViewStubProxy;

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
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2BindingImpl;->O:J

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
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2BindingImpl;->O:J

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
