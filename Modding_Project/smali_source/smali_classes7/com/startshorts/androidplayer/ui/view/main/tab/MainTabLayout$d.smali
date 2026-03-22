.class public final Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$d;
.super Lyd/d;
.source "MainTabLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->c(Lcom/startshorts/androidplayer/bean/tab/MainTab;)Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$d$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/bean/tab/MainTab;

.field final synthetic f:Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/tab/MainTab;Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$d;->e:Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$d;->f:Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    const/4 p2, 0x0

    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    invoke-direct {p0, v0, v1, p1, p2}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "v"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$d;->e:Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->isSelected()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$d;->e:Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->DISCOVER:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 25
    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lcom/startshorts/androidplayer/bean/eventbus/RefreshDiscoverFragmentEvent;

    .line 33
    .line 34
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshDiscoverFragmentEvent;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :cond_1
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$d;->e:Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sget-object v2, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$d$a;->$EnumSwitchMapping$0:[I

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    aget v1, v2, v1

    .line 54
    .line 55
    const-string v2, "tab"

    .line 56
    .line 57
    packed-switch v1, :pswitch_data_0

    .line 58
    .line 59
    .line 60
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 61
    .line 62
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 63
    .line 64
    .line 65
    throw v1

    .line 66
    :pswitch_0
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$d;->e:Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getExtra()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    instance-of v3, v1, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    if-eqz v3, :cond_2

    .line 76
    .line 77
    check-cast v1, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 78
    .line 79
    move-object v8, v1

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    move-object v8, v4

    .line 82
    :goto_0
    if-eqz v8, :cond_3

    .line 83
    .line 84
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$d;->f:Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;

    .line 85
    .line 86
    sget-object v9, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 87
    .line 88
    invoke-virtual {v9, v2, v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->S(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 89
    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    const/4 v3, 0x2

    .line 93
    invoke-static {v9, v8, v2, v3, v4}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    const/4 v14, 0x4

    .line 98
    const/4 v15, 0x0

    .line 99
    const-string v10, "activity_tab_click"

    .line 100
    .line 101
    const-wide/16 v12, 0x0

    .line 102
    .line 103
    invoke-static/range {v9 .. v15}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    sget-object v5, Lce/j;->a:Lce/j;

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    const-string v1, "getContext(...)"

    .line 113
    .line 114
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const/16 v10, 0x8

    .line 118
    .line 119
    const/4 v11, 0x0

    .line 120
    const-string v7, "tab"

    .line 121
    .line 122
    const/4 v9, 0x0

    .line 123
    invoke-static/range {v5 .. v11}, Lce/j;->o(Lce/j;Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_1

    .line 127
    .line 128
    :pswitch_1
    sget-object v12, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 129
    .line 130
    const/16 v17, 0x6

    .line 131
    .line 132
    const/16 v18, 0x0

    .line 133
    .line 134
    const-string v13, "me_tab_click"

    .line 135
    .line 136
    const/4 v14, 0x0

    .line 137
    const-wide/16 v15, 0x0

    .line 138
    .line 139
    invoke-static/range {v12 .. v18}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :pswitch_2
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 144
    .line 145
    const/4 v6, 0x6

    .line 146
    const/4 v7, 0x0

    .line 147
    const-string v2, "mylist_tab_click"

    .line 148
    .line 149
    const/4 v3, 0x0

    .line 150
    const-wide/16 v4, 0x0

    .line 151
    .line 152
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$d;->f:Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;

    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;->w()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_3

    .line 162
    .line 163
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    new-instance v2, Lcom/startshorts/androidplayer/bean/eventbus/RefreshCollectListEvent;

    .line 168
    .line 169
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshCollectListEvent;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :pswitch_3
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 177
    .line 178
    new-instance v5, Landroid/os/Bundle;

    .line 179
    .line 180
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v10, "scene"

    .line 184
    .line 185
    invoke-virtual {v5, v10, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 189
    .line 190
    const/4 v8, 0x4

    .line 191
    const/4 v9, 0x0

    .line 192
    const-string v4, "reward_click"

    .line 193
    .line 194
    const-wide/16 v6, 0x0

    .line 195
    .line 196
    move-object v3, v1

    .line 197
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    new-instance v5, Landroid/os/Bundle;

    .line 201
    .line 202
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5, v10, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const-string v4, "reward_show"

    .line 209
    .line 210
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$d;->f:Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;

    .line 214
    .line 215
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;->w()Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-eqz v1, :cond_3

    .line 220
    .line 221
    sget-object v1, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 222
    .line 223
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->z()V

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :pswitch_4
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 228
    .line 229
    const/4 v7, 0x6

    .line 230
    const/4 v8, 0x0

    .line 231
    const-string v3, "short_tab_click"

    .line 232
    .line 233
    const/4 v4, 0x0

    .line 234
    const-wide/16 v5, 0x0

    .line 235
    .line 236
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    goto :goto_1

    .line 240
    :pswitch_5
    sget-object v9, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 241
    .line 242
    const/4 v14, 0x6

    .line 243
    const/4 v15, 0x0

    .line 244
    const-string v10, "discover_tab_click"

    .line 245
    .line 246
    const/4 v11, 0x0

    .line 247
    const-wide/16 v12, 0x0

    .line 248
    .line 249
    invoke-static/range {v9 .. v15}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    :cond_3
    :goto_1
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    new-instance v9, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;

    .line 257
    .line 258
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$d;->e:Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 259
    .line 260
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    const/16 v7, 0x8

    .line 265
    .line 266
    const/4 v8, 0x0

    .line 267
    const/4 v4, 0x1

    .line 268
    const-string v5, "tab"

    .line 269
    .line 270
    const/4 v6, 0x0

    .line 271
    move-object v2, v9

    .line 272
    invoke-direct/range {v2 .. v8}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1, v9}, Lau/c;->l(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
