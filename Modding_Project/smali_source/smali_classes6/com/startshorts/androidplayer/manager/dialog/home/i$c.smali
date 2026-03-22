.class public final Lcom/startshorts/androidplayer/manager/dialog/home/i$c;
.super Ljava/lang/Object;
.source "RewardTabGuideProcessor.kt"

# interfaces
.implements Ljj/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/dialog/home/i;->d(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

.field final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/startshorts/androidplayer/ui/view/guide/core/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/MainActivity;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/startshorts/androidplayer/ui/view/guide/core/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/dialog/home/i$c;->a:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/dialog/home/i$c;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->REWARDS:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->MY_LIST:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 9
    .line 10
    :goto_0
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/dialog/home/i$c;->a:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->l0()Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->getTabSize()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget-object v3, v0, Lcom/startshorts/androidplayer/manager/dialog/home/i$c;->a:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->l0()Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3, v1}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->f(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x1

    .line 31
    add-int/2addr v3, v4

    .line 32
    sub-int/2addr v2, v3

    .line 33
    const/4 v3, 0x5

    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-static {v2, v5, v3}, Lkotlin/ranges/e;->n(III)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iget-object v3, v0, Lcom/startshorts/androidplayer/manager/dialog/home/i$c;->a:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->l0()Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->getTabViewWidth()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    mul-int/2addr v3, v2

    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/dialog/home/i$c;->a:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 53
    .line 54
    sget v6, Lcom/startshorts/androidplayer/R$string;->main_activity_tab_guide_tip_1:I

    .line 55
    .line 56
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :goto_1
    move-object v7, v2

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/dialog/home/i$c;->a:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 63
    .line 64
    sget v6, Lcom/startshorts/androidplayer/R$string;->main_activity_tab_guide_tip_2:I

    .line 65
    .line 66
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    goto :goto_1

    .line 71
    :goto_2
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/dialog/home/i$c;->a:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 77
    .line 78
    sget v6, Lcom/startshorts/androidplayer/R$string;->main_activity_tab_reward:I

    .line 79
    .line 80
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    goto :goto_3

    .line 85
    :cond_2
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/dialog/home/i$c;->a:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 86
    .line 87
    sget v6, Lcom/startshorts/androidplayer/R$string;->main_activity_tab_my_list:I

    .line 88
    .line 89
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    :goto_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iget-object v6, v0, Lcom/startshorts/androidplayer/manager/dialog/home/i$c;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 97
    .line 98
    iget-object v6, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v6, Lcom/startshorts/androidplayer/ui/view/guide/core/a;

    .line 101
    .line 102
    if-eqz v6, :cond_8

    .line 103
    .line 104
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/ui/view/guide/core/a;->b()Lcom/startshorts/androidplayer/ui/view/guide/core/GuideLayout;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    if-eqz v6, :cond_8

    .line 109
    .line 110
    iget-object v8, v0, Lcom/startshorts/androidplayer/manager/dialog/home/i$c;->a:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 111
    .line 112
    sget v9, Lcom/startshorts/androidplayer/R$id;->confirm_tv:I

    .line 113
    .line 114
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    const/4 v10, 0x0

    .line 119
    if-eqz v9, :cond_5

    .line 120
    .line 121
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    instance-of v12, v11, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 126
    .line 127
    if-eqz v12, :cond_3

    .line 128
    .line 129
    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_3
    move-object v11, v10

    .line 133
    :goto_4
    if-eqz v11, :cond_4

    .line 134
    .line 135
    invoke-virtual {v11, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_4
    move-object v11, v10

    .line 140
    :goto_5
    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    .line 142
    .line 143
    :cond_5
    sget v9, Lcom/startshorts/androidplayer/R$id;->tip_tv:I

    .line 144
    .line 145
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    check-cast v6, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 150
    .line 151
    if-eqz v6, :cond_8

    .line 152
    .line 153
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    instance-of v11, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 158
    .line 159
    if-eqz v11, :cond_6

    .line 160
    .line 161
    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 162
    .line 163
    goto :goto_6

    .line 164
    :cond_6
    move-object v9, v10

    .line 165
    :goto_6
    if-eqz v9, :cond_7

    .line 166
    .line 167
    const/high16 v10, 0x42940000    # 74.0f

    .line 168
    .line 169
    invoke-static {v10}, Ljk/g;->a(F)I

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    sget-object v11, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 174
    .line 175
    invoke-virtual {v11}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->H()I

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    add-int/2addr v10, v11

    .line 180
    invoke-virtual {v9, v5, v5, v3, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 181
    .line 182
    .line 183
    move-object v10, v9

    .line 184
    :cond_7
    invoke-virtual {v6, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    .line 186
    .line 187
    filled-new-array {v2}, [Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    const v3, 0x106000b

    .line 192
    .line 193
    .line 194
    invoke-static {v8, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    sget-object v3, Lyf/a;->a:Lyf/a;

    .line 199
    .line 200
    invoke-virtual {v3}, Lyf/a;->g()Landroid/graphics/Typeface;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    const/16 v14, 0x70

    .line 205
    .line 206
    const/4 v15, 0x0

    .line 207
    const/4 v11, 0x0

    .line 208
    const/4 v12, 0x0

    .line 209
    const/4 v13, 0x0

    .line 210
    move-object v8, v2

    .line 211
    invoke-static/range {v6 .. v15}, Ljk/y;->l(Landroid/widget/TextView;Ljava/lang/String;[Ljava/lang/String;ILandroid/graphics/Typeface;FZLjava/util/List;ILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    :cond_8
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/dialog/home/i$c;->a:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 215
    .line 216
    invoke-virtual {v2, v1, v4}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->F0(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Z)V

    .line 217
    .line 218
    .line 219
    return-void
.end method
