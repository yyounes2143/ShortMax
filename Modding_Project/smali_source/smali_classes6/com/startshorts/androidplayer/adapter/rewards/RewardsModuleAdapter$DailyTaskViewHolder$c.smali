.class public final Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$c;
.super Ljava/lang/Object;
.source "RewardsModuleAdapter.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder;->r(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V
    .locals 9

    .line 1
    const-string v0, "adBonus"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    new-instance v3, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->p0()Lkotlin/jvm/functions/Function0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    const-string v2, "from"

    .line 26
    .line 27
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskCategory()Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string/jumbo v8, "type"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v8, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskId()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string/jumbo v2, "task_id"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskType()Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string/jumbo v2, "task_type"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskType()Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-nez v1, :cond_0

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const/4 v2, 0x1

    .line 84
    if-ne v1, v2, :cond_1

    .line 85
    .line 86
    const-string/jumbo v1, "\u5e7f\u544a\u7c7b"

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    :goto_0
    const-string v1, ""

    .line 91
    .line 92
    :goto_1
    const-string/jumbo v2, "task_type_name"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string/jumbo v1, "task_name"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskSortId()Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const-string/jumbo v2, "task_sort_id"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskType()Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const-string/jumbo v2, "task_type_id"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskContent()Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    const-string/jumbo v2, "task_term_name"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 151
    .line 152
    const/4 v6, 0x4

    .line 153
    const/4 v7, 0x0

    .line 154
    const-string/jumbo v2, "task_click"

    .line 155
    .line 156
    .line 157
    const-wide/16 v4, 0x0

    .line 158
    .line 159
    move-object v1, v0

    .line 160
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskContent()Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    if-nez v1, :cond_2

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    const/4 v2, 0x4

    .line 175
    if-eq v1, v2, :cond_4

    .line 176
    .line 177
    :goto_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskContent()Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    if-nez v1, :cond_3

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    const/4 v2, 0x5

    .line 189
    if-eq v1, v2, :cond_4

    .line 190
    .line 191
    :goto_3
    new-instance v3, Landroid/os/Bundle;

    .line 192
    .line 193
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v1, "ad_active"

    .line 197
    .line 198
    const-string v2, "daily_reward"

    .line 199
    .line 200
    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const-string v1, "1"

    .line 204
    .line 205
    invoke-virtual {v3, v8, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const/4 v6, 0x4

    .line 209
    const/4 v7, 0x0

    .line 210
    const-string/jumbo v2, "watch_ad_click"

    .line 211
    .line 212
    .line 213
    const-wide/16 v4, 0x0

    .line 214
    .line 215
    move-object v1, v0

    .line 216
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-interface {v0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->d(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V

    .line 226
    .line 227
    .line 228
    return-void
.end method

.method public b(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V
    .locals 8

    .line 1
    const-string v0, "adBonus"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    new-instance v3, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->p0()Lkotlin/jvm/functions/Function0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    const-string v2, "from"

    .line 26
    .line 27
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskCategory()Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string/jumbo v2, "type"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskId()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string/jumbo v2, "task_id"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskType()Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string/jumbo v2, "task_type"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskType()Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-nez v0, :cond_0

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const/4 v2, 0x1

    .line 84
    if-ne v0, v2, :cond_1

    .line 85
    .line 86
    const-string/jumbo v0, "\u5e7f\u544a\u7c7b"

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    :goto_0
    const-string v0, ""

    .line 91
    .line 92
    :goto_1
    const-string/jumbo v2, "task_type_name"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string/jumbo v0, "task_name"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskSortId()Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string/jumbo v2, "task_sort_id"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskType()Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string/jumbo v2, "task_type_id"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskContent()Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const-string/jumbo v2, "task_term_name"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 151
    .line 152
    const/4 v6, 0x4

    .line 153
    const/4 v7, 0x0

    .line 154
    const-string/jumbo v2, "task_click"

    .line 155
    .line 156
    .line 157
    const-wide/16 v4, 0x0

    .line 158
    .line 159
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$DailyTaskViewHolder$c;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-interface {v0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->d(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V

    .line 169
    .line 170
    .line 171
    return-void
.end method
