.class public final Lcom/startshorts/androidplayer/manager/dialog/home/a;
.super Ljava/lang/Object;
.source "AccumulativeaWatchDialogProcessor.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/dialog/home/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/dialog/home/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/dialog/home/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/dialog/home/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/dialog/home/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/dialog/home/a;->a:Lcom/startshorts/androidplayer/manager/dialog/home/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/dialog/home/c$a;->b(Lcom/startshorts/androidplayer/manager/dialog/home/c;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public b(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;
    .locals 25
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/MainActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/MainActivity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/dialog/home/a;->c(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "AccumulativeaWatchDialogProcessor"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 11
    .line 12
    const-string v3, "Dialog not show : canShow is FALSE"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->C0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isTargetValue(I)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 36
    .line 37
    const-string v3, "Dialog not show : accumulativeaWatch test is not TestGroupA"

    .line 38
    .line 39
    invoke-virtual {v0, v1, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :cond_1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 48
    .line 49
    invoke-virtual {v0}, Lud/b;->S()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 56
    .line 57
    const-string v3, "Dialog not show : campaignAccumulativeaWatchShowed is true"

    .line 58
    .line 59
    invoke-virtual {v0, v1, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0

    .line 67
    :cond_2
    sget-boolean v4, Lcom/startshorts/androidplayer/manager/dialog/home/a;->b:Z

    .line 68
    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0

    .line 76
    :cond_3
    sget-object v4, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->k()Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;->getList()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_4

    .line 91
    .line 92
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 93
    .line 94
    const-string v3, "Dialog not show : result is isEmpty"

    .line 95
    .line 96
    invoke-virtual {v0, v1, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v2}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->i(Z)V

    .line 100
    .line 101
    .line 102
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0

    .line 107
    :cond_4
    sget-object v1, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->m:Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$a;

    .line 108
    .line 109
    new-instance v2, Lcom/startshorts/androidplayer/manager/dialog/home/a$b;

    .line 110
    .line 111
    move-object/from16 v4, p1

    .line 112
    .line 113
    move-object/from16 v6, p2

    .line 114
    .line 115
    invoke-direct {v2, v6, v4}, Lcom/startshorts/androidplayer/manager/dialog/home/a$b;-><init>(Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/ui/activity/MainActivity;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v5, v2}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$a;->a(Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$b;)Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    const-string v4, "getSupportFragmentManager(...)"

    .line 127
    .line 128
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->x(Landroidx/fragment/app/FragmentManager;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    sput-boolean v1, Lcom/startshorts/androidplayer/manager/dialog/home/a;->b:Z

    .line 136
    .line 137
    invoke-virtual {v0, v3}, Lud/b;->c3(Z)V

    .line 138
    .line 139
    .line 140
    sget-object v6, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 141
    .line 142
    new-instance v8, Landroid/os/Bundle;

    .line 143
    .line 144
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;->getShortPlay()Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const-string v1, ""

    .line 152
    .line 153
    if-eqz v0, :cond_5

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-nez v0, :cond_6

    .line 160
    .line 161
    :cond_5
    move-object v0, v1

    .line 162
    :cond_6
    const-string v2, "reel_id"

    .line 163
    .line 164
    invoke-virtual {v8, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;->getShortPlay()Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    if-eqz v0, :cond_7

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-nez v0, :cond_8

    .line 178
    .line 179
    :cond_7
    move-object v0, v1

    .line 180
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-nez v2, :cond_9

    .line 185
    .line 186
    const-string/jumbo v2, "upack"

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :cond_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 193
    .line 194
    const/4 v11, 0x4

    .line 195
    const/4 v12, 0x0

    .line 196
    const-string v7, "discover_watch_task_show"

    .line 197
    .line 198
    const-wide/16 v9, 0x0

    .line 199
    .line 200
    invoke-static/range {v6 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    sget-object v13, Lag/a;->a:Lag/a;

    .line 204
    .line 205
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;->getShortPlay()Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    if-eqz v0, :cond_a

    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    :goto_0
    move-object v15, v0

    .line 216
    goto :goto_1

    .line 217
    :cond_a
    const/4 v0, 0x0

    .line 218
    goto :goto_0

    .line 219
    :goto_1
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;->getShortPlay()Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    if-eqz v0, :cond_c

    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    if-nez v0, :cond_b

    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_b
    move-object/from16 v21, v0

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_c
    :goto_2
    move-object/from16 v21, v1

    .line 236
    .line 237
    :goto_3
    const/16 v23, 0x17c

    .line 238
    .line 239
    const/16 v24, 0x0

    .line 240
    .line 241
    const-string v14, "immersion_back"

    .line 242
    .line 243
    const/16 v16, 0x0

    .line 244
    .line 245
    const/16 v17, 0x0

    .line 246
    .line 247
    const/16 v18, 0x0

    .line 248
    .line 249
    const/16 v19, 0x0

    .line 250
    .line 251
    const/16 v20, 0x0

    .line 252
    .line 253
    const/16 v22, 0x0

    .line 254
    .line 255
    invoke-static/range {v13 .. v24}, Lag/a;->d(Lag/a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    return-object v0
.end method

.method public c(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Z
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/MainActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/dialog/home/c$a;->a(Lcom/startshorts/androidplayer/manager/dialog/home/c;Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "AccumulativeaWatchDialogProcessor"

    .line 2
    .line 3
    return-object v0
.end method

.method public priority()Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogPriority;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogPriority;->DIALOG_ACCUMULATIVEA_WATCH:Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogPriority;

    .line 2
    .line 3
    return-object v0
.end method
