.class public final Lcom/startshorts/androidplayer/manager/immersion/feature/v;
.super Ljava/lang/Object;
.source "SwitchResolutionTimeoutFeature.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/immersion/feature/v$a;,
        Lcom/startshorts/androidplayer/manager/immersion/feature/v$b;,
        Lcom/startshorts/androidplayer/manager/immersion/feature/v$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Lcom/startshorts/androidplayer/manager/immersion/feature/v$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Lcom/startshorts/androidplayer/manager/immersion/feature/v$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/feature/v$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/feature/v$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/v;->c:Lcom/startshorts/androidplayer/manager/immersion/feature/v$a;

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

.method public static synthetic b(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/immersion/feature/v;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/immersion/feature/v;->i(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/immersion/feature/v;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/immersion/feature/v;->h()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/v;->a:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->CATON_TOASTER:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->b(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->SWITCH_TIMEOUT:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->b(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private static final h()Lkotlin/Unit;
    .locals 5

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "SwitchResolutionTimeoutFeature"

    .line 4
    .line 5
    const-string v2, "caton toast"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 11
    .line 12
    sget v1, Lcom/startshorts/androidplayer/R$string;->immersion_activity_resolution_loading_tip:I

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-static {v0, v1, v4, v2, v3}, Lfk/u;->j(Lfk/u;IIILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object v0
.end method

.method private static final i(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/immersion/feature/v;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Lkotlin/Unit;
    .locals 10

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "SwitchResolutionTimeoutFeature"

    .line 4
    .line 5
    const-string/jumbo v2, "switch resolution timeout"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 12
    .line 13
    invoke-virtual {v3, p0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const-string/jumbo p0, "status"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v0, "timeout"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    const-string p0, "auto"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 p2, 0x70

    .line 48
    .line 49
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    :goto_0
    const-string p2, "clarity_level"

    .line 57
    .line 58
    invoke-virtual {v5, p2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string p0, "duration"

    .line 62
    .line 63
    const-wide/16 v0, 0x1e

    .line 64
    .line 65
    invoke-virtual {v5, p0, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 66
    .line 67
    .line 68
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    const/4 v8, 0x4

    .line 71
    const/4 v9, 0x0

    .line 72
    const-string v4, "clarity_switch"

    .line 73
    .line 74
    const-wide/16 v6, 0x0

    .line 75
    .line 76
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p1, Lcom/startshorts/androidplayer/manager/immersion/feature/v;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/v$b;

    .line 80
    .line 81
    if-eqz p0, :cond_1

    .line 82
    .line 83
    invoke-interface {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/v$b;->a()V

    .line 84
    .line 85
    .line 86
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    return-object p0
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V
    .locals 19
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "message"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->b()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v3, Lcom/startshorts/androidplayer/manager/immersion/feature/v$c;->$EnumSwitchMapping$0:[I

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    aget v1, v3, v1

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    if-eq v1, v3, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-eq v1, v2, :cond_0

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    if-eq v1, v2, :cond_0

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    if-eq v1, v2, :cond_0

    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/v;->d()V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/v;->f(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/v;->a:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 46
    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v4, 0x0

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    const-string/jumbo v5, "switch_resolution_from"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move-object v1, v4

    .line 63
    :goto_0
    instance-of v5, v1, Ljava/lang/Integer;

    .line 64
    .line 65
    if-eqz v5, :cond_3

    .line 66
    .line 67
    move-object v4, v1

    .line 68
    check-cast v4, Ljava/lang/Integer;

    .line 69
    .line 70
    :cond_3
    if-eqz v4, :cond_4

    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    goto :goto_1

    .line 77
    :cond_4
    const/4 v1, -0x1

    .line 78
    :goto_1
    if-ne v1, v3, :cond_5

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    const/4 v3, 0x0

    .line 82
    :goto_2
    if-nez v3, :cond_6

    .line 83
    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/v;->d()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/v;->e(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-nez v1, :cond_7

    .line 93
    .line 94
    return-void

    .line 95
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/v;->g(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    if-nez v2, :cond_8

    .line 100
    .line 101
    return-void

    .line 102
    :cond_8
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_a

    .line 107
    .line 108
    sget-object v3, Lpf/k;->a:Lpf/k;

    .line 109
    .line 110
    invoke-virtual {v3, v1}, Lpf/k;->i(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    if-nez v3, :cond_9

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_9
    move-object v2, v3

    .line 118
    :cond_a
    :goto_3
    iget-object v3, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/v;->a:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 119
    .line 120
    if-eqz v3, :cond_b

    .line 121
    .line 122
    sget-object v4, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->CATON_TOASTER:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 123
    .line 124
    new-instance v8, Lhf/e0;

    .line 125
    .line 126
    invoke-direct {v8}, Lhf/e0;-><init>()V

    .line 127
    .line 128
    .line 129
    const/4 v9, 0x4

    .line 130
    const/4 v10, 0x0

    .line 131
    const-wide/16 v5, 0x1388

    .line 132
    .line 133
    const/4 v7, 0x0

    .line 134
    invoke-static/range {v3 .. v10}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->e(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_b
    iget-object v11, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/v;->a:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 138
    .line 139
    if-eqz v11, :cond_c

    .line 140
    .line 141
    sget-object v12, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->SWITCH_TIMEOUT:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 142
    .line 143
    new-instance v3, Lhf/f0;

    .line 144
    .line 145
    invoke-direct {v3, v1, v0, v2}, Lhf/f0;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/immersion/feature/v;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V

    .line 146
    .line 147
    .line 148
    const/16 v17, 0x4

    .line 149
    .line 150
    const/16 v18, 0x0

    .line 151
    .line 152
    const-wide/16 v13, 0x7530

    .line 153
    .line 154
    const/4 v15, 0x0

    .line 155
    move-object/from16 v16, v3

    .line 156
    .line 157
    invoke-static/range {v11 .. v18}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->e(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_c
    :goto_4
    return-void
.end method

.method public e(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$a;->b(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public f(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$a;->c(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public g(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$a;->d(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final j(Lcom/startshorts/androidplayer/manager/immersion/feature/v$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/v$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/v;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/v$b;

    .line 2
    .line 3
    return-void
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public type()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;->SWITCH_RESOLUTION_TIMEOUT:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
