.class public final Ldk/f;
.super Ljava/lang/Object;
.source "DailyWatchDramaTaskCoinHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldk/f$a;,
        Ldk/f$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDailyWatchDramaTaskCoinHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyWatchDramaTaskCoinHandler.kt\ncom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskCoinHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,143:1\n1#2:144\n*E\n"
    }
.end annotation


# static fields
.field public static final d:Ldk/f$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Ldk/f$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ldk/f$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ldk/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ldk/f;->d:Ldk/f$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;Ldk/f$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ldk/f$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldk/f;->a:Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;

    .line 5
    .line 6
    iput-object p2, p0, Ldk/f;->b:Ldk/f$b;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Ldk/f;->l()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(JLcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;Ldk/f;J)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Ldk/f;->k(JLcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;Ldk/f;J)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;)J
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->getList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p2}, Ldk/f;->g(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;Ljava/util/List;)Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getPayTime()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    int-to-long p1, p1

    .line 18
    const-wide/16 v0, 0x3e8

    .line 19
    .line 20
    mul-long/2addr p1, v0

    .line 21
    return-wide p1
.end method

.method private final f(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldk/f;->a:Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->isAllTaskComplete()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;->setAllTaskComplete(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Ldk/f;->a:Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method private final g(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;Ljava/util/List;)Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;",
            ">;)",
            "Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;"
        }
    .end annotation

    .line 1
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    add-int/lit8 p1, p1, -0x1

    .line 6
    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return-object p1
.end method

.method private final j(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;)V
    .locals 9

    .line 1
    iget-object v0, p0, Ldk/f;->c:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 6
    .line 7
    const-string p2, "DailyWatchDramaTaskCoinHandler"

    .line 8
    .line 9
    const-string v0, "job is started"

    .line 10
    .line 11
    invoke-virtual {p1, p2, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-direct {p0, p2}, Ldk/f;->f(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1, p2}, Ldk/f;->e(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    invoke-virtual {p0}, Ldk/f;->c()V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 26
    .line 27
    new-instance v7, Ldk/d;

    .line 28
    .line 29
    invoke-direct {v7, v0, v1, p1, p0}, Ldk/d;-><init>(JLcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;Ldk/f;)V

    .line 30
    .line 31
    .line 32
    new-instance v8, Ldk/e;

    .line 33
    .line 34
    invoke-direct {v8}, Ldk/e;-><init>()V

    .line 35
    .line 36
    .line 37
    const-wide v3, 0x7fffffffffffffffL

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    const-wide/16 v5, 0x3e8

    .line 43
    .line 44
    invoke-virtual/range {v2 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->e(JJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Ldk/f;->c:Lkotlinx/coroutines/r;

    .line 49
    .line 50
    return-void
.end method

.method private static final k(JLcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;Ldk/f;J)Lkotlin/Unit;
    .locals 19

    .line 1
    move-wide/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    sget-object v3, Lvi/e;->a:Lvi/e;

    .line 6
    .line 7
    invoke-virtual {v3}, Lvi/e;->b()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    sget-object v4, Lud/b;->a:Lud/b;

    .line 12
    .line 13
    invoke-virtual {v4}, Lud/b;->X1()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    long-to-double v4, v4

    .line 18
    long-to-double v6, v0

    .line 19
    sub-double v6, v4, v6

    .line 20
    .line 21
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getPayTime()I

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    const/16 v9, 0x3e8

    .line 26
    .line 27
    mul-int/2addr v8, v9

    .line 28
    int-to-long v10, v8

    .line 29
    sub-long/2addr v10, v0

    .line 30
    long-to-double v10, v10

    .line 31
    sub-double v12, v10, v6

    .line 32
    .line 33
    int-to-double v8, v9

    .line 34
    div-double/2addr v12, v8

    .line 35
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    .line 36
    .line 37
    cmpl-double v8, v12, v8

    .line 38
    .line 39
    const-string v9, "format(...)"

    .line 40
    .line 41
    const-string v15, "getString(...)"

    .line 42
    .line 43
    if-ltz v8, :cond_1

    .line 44
    .line 45
    iget-object v8, v2, Ldk/f;->a:Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;

    .line 46
    .line 47
    if-eqz v8, :cond_0

    .line 48
    .line 49
    sget-object v16, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 50
    .line 51
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v14

    .line 55
    move-wide/from16 v17, v10

    .line 56
    .line 57
    sget v10, Lcom/startshorts/androidplayer/R$string;->daily_watch_drama_task_count_down_with_min:I

    .line 58
    .line 59
    invoke-virtual {v14, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/16 v11, 0x3c

    .line 67
    .line 68
    int-to-double v14, v11

    .line 69
    div-double v0, v12, v14

    .line 70
    .line 71
    double-to-int v0, v0

    .line 72
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    rem-double/2addr v12, v14

    .line 77
    double-to-int v1, v12

    .line 78
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const/4 v1, 0x2

    .line 87
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8, v0, v3}, Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;->X(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    move-wide/from16 v17, v10

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    move-wide/from16 v17, v10

    .line 106
    .line 107
    iget-object v0, v2, Ldk/f;->a:Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;

    .line 108
    .line 109
    if-eqz v0, :cond_2

    .line 110
    .line 111
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    sget v8, Lcom/startshorts/androidplayer/R$string;->rewards_check_in_dialog_check_more_countdown:I

    .line 118
    .line 119
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const/16 v8, 0x3c

    .line 127
    .line 128
    int-to-double v10, v8

    .line 129
    rem-double/2addr v12, v10

    .line 130
    double-to-int v8, v12

    .line 131
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    const/4 v10, 0x1

    .line 140
    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1, v3}, Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;->X(Ljava/lang/String;I)V

    .line 152
    .line 153
    .line 154
    :cond_2
    :goto_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 155
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v8, "playTime= "

    .line 162
    .line 163
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v4, ", totalTime= "

    .line 170
    .line 171
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v4, ",startTime= "

    .line 178
    .line 179
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    move-wide/from16 v4, p0

    .line 183
    .line 184
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const/16 v4, 0x2c

    .line 188
    .line 189
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    const-string v4, "DailyWatchDramaTaskCoinHandler"

    .line 197
    .line 198
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    cmpl-double v0, v6, v17

    .line 202
    .line 203
    if-ltz v0, :cond_6

    .line 204
    .line 205
    invoke-virtual/range {p3 .. p3}, Ldk/f;->c()V

    .line 206
    .line 207
    .line 208
    iget-object v0, v2, Ldk/f;->b:Ldk/f$b;

    .line 209
    .line 210
    if-eqz v0, :cond_3

    .line 211
    .line 212
    move-object/from16 v1, p2

    .line 213
    .line 214
    invoke-interface {v0, v1}, Ldk/f$b;->a(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;)V

    .line 215
    .line 216
    .line 217
    :cond_3
    iget-object v0, v2, Ldk/f;->a:Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;

    .line 218
    .line 219
    if-eqz v0, :cond_4

    .line 220
    .line 221
    const-string v1, ""

    .line 222
    .line 223
    invoke-virtual {v0, v1, v3}, Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;->X(Ljava/lang/String;I)V

    .line 224
    .line 225
    .line 226
    :cond_4
    iget-object v0, v2, Ldk/f;->a:Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;

    .line 227
    .line 228
    if-eqz v0, :cond_5

    .line 229
    .line 230
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;->V()V

    .line 231
    .line 232
    .line 233
    :cond_5
    invoke-direct/range {p3 .. p3}, Ldk/f;->m()V

    .line 234
    .line 235
    .line 236
    :cond_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 237
    .line 238
    return-object v0
.end method

.method private static final l()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private final m()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldk/f;->b:Ldk/f$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ldk/f$b;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Ldk/f;->c:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    const-string v2, "DailyWatchDramaTaskCoinHandler"

    .line 15
    .line 16
    const-string v3, "cancelCountDownJob"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-object v1, p0, Ldk/f;->c:Lkotlinx/coroutines/r;

    .line 22
    .line 23
    return-void
.end method

.method public final d()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldk/f;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final h()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lud/b;->a:Lud/b;

    .line 4
    .line 5
    invoke-virtual {v1}, Lud/b;->l0()Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_5

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ldk/f;->f(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lud/b;->X1()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    long-to-double v3, v3

    .line 19
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->getList()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Iterable;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const/16 v7, 0x3e8

    .line 34
    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    move-object v8, v5

    .line 42
    check-cast v8, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 43
    .line 44
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getPayTime()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    mul-int/2addr v8, v7

    .line 49
    int-to-double v8, v8

    .line 50
    cmpg-double v8, v3, v8

    .line 51
    .line 52
    if-gez v8, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v5, 0x0

    .line 56
    :goto_0
    check-cast v5, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 57
    .line 58
    if-eqz v5, :cond_5

    .line 59
    .line 60
    invoke-direct {v0, v5, v2}, Ldk/f;->e(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    long-to-double v8, v1

    .line 65
    sub-double v8, v3, v8

    .line 66
    .line 67
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getPayTime()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    mul-int/2addr v5, v7

    .line 72
    int-to-long v10, v5

    .line 73
    sub-long/2addr v10, v1

    .line 74
    long-to-double v10, v10

    .line 75
    sub-double v12, v10, v8

    .line 76
    .line 77
    int-to-double v14, v7

    .line 78
    div-double/2addr v12, v14

    .line 79
    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    .line 80
    .line 81
    cmpl-double v5, v12, v14

    .line 82
    .line 83
    const-string v14, "format(...)"

    .line 84
    .line 85
    const-string v6, "getString(...)"

    .line 86
    .line 87
    if-ltz v5, :cond_3

    .line 88
    .line 89
    iget-object v5, v0, Ldk/f;->a:Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;

    .line 90
    .line 91
    if-eqz v5, :cond_2

    .line 92
    .line 93
    sget-object v16, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 94
    .line 95
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    sget v15, Lcom/startshorts/androidplayer/R$string;->daily_watch_drama_task_count_down_with_min:I

    .line 100
    .line 101
    invoke-virtual {v7, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    move-wide/from16 v17, v10

    .line 109
    .line 110
    const/16 v6, 0x3c

    .line 111
    .line 112
    int-to-double v10, v6

    .line 113
    move-wide/from16 v19, v1

    .line 114
    .line 115
    div-double v1, v12, v10

    .line 116
    .line 117
    double-to-int v1, v1

    .line 118
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    rem-double/2addr v12, v10

    .line 123
    double-to-int v2, v12

    .line 124
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const/4 v2, 0x2

    .line 133
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, v1}, Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;->L(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_2
    move-wide/from16 v19, v1

    .line 149
    .line 150
    move-wide/from16 v17, v10

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_3
    move-wide/from16 v19, v1

    .line 154
    .line 155
    move-wide/from16 v17, v10

    .line 156
    .line 157
    iget-object v1, v0, Ldk/f;->a:Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;

    .line 158
    .line 159
    if-eqz v1, :cond_4

    .line 160
    .line 161
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 162
    .line 163
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    sget v5, Lcom/startshorts/androidplayer/R$string;->rewards_check_in_dialog_check_more_countdown:I

    .line 168
    .line 169
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const/16 v5, 0x3c

    .line 177
    .line 178
    int-to-double v5, v5

    .line 179
    rem-double/2addr v12, v5

    .line 180
    double-to-int v5, v12

    .line 181
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    const/4 v6, 0x1

    .line 190
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;->L(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_4
    :goto_1
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 205
    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string v5, "playTime= "

    .line 212
    .line 213
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v3, ", totalTime= "

    .line 220
    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v3, ",startTime= "

    .line 228
    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    move-wide/from16 v3, v19

    .line 233
    .line 234
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const/16 v3, 0x2c

    .line 238
    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    const-string v3, "DailyWatchDramaTaskCoinHandler"

    .line 247
    .line 248
    invoke-virtual {v1, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    cmpl-double v1, v8, v17

    .line 252
    .line 253
    if-ltz v1, :cond_5

    .line 254
    .line 255
    iget-object v1, v0, Ldk/f;->a:Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;

    .line 256
    .line 257
    if-eqz v1, :cond_5

    .line 258
    .line 259
    const/4 v2, 0x0

    .line 260
    const/4 v3, 0x1

    .line 261
    invoke-static {v1, v2, v3, v2}, Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;->M(Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;Ljava/lang/String;ILjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :cond_5
    return-void
.end method

.method public final i()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldk/f;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final n(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "newbieWatchBonus"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "newbieWatchTask"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Ldk/f;->j(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
