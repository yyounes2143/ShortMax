.class public final Lcom/startshorts/androidplayer/manager/immersion/feature/m;
.super Ljava/lang/Object;
.source "NextShortsTipFeature.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/immersion/feature/m$a;,
        Lcom/startshorts/androidplayer/manager/immersion/feature/m$b;,
        Lcom/startshorts/androidplayer/manager/immersion/feature/m$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final e:Lcom/startshorts/androidplayer/manager/immersion/feature/m$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lcom/startshorts/androidplayer/manager/immersion/feature/m$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/feature/m$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/feature/m$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->e:Lcom/startshorts/androidplayer/manager/immersion/feature/m$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->b:Z

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/manager/immersion/feature/m;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->h(Lcom/startshorts/androidplayer/manager/immersion/feature/m;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/startshorts/androidplayer/manager/immersion/feature/m;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->j(Lcom/startshorts/androidplayer/manager/immersion/feature/m;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/startshorts/androidplayer/manager/immersion/feature/m;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->i(Lcom/startshorts/androidplayer/manager/immersion/feature/m;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final g(II)Z
    .locals 2

    .line 1
    sub-int/2addr p1, p2

    .line 2
    int-to-long p1, p1

    .line 3
    const-wide/16 v0, 0x1388

    .line 4
    .line 5
    cmp-long p1, p1, v0

    .line 6
    .line 7
    if-gtz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method private static final h(Lcom/startshorts/androidplayer/manager/immersion/feature/m;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->d:Lcom/startshorts/androidplayer/manager/immersion/feature/m$b;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/m$b;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private static final i(Lcom/startshorts/androidplayer/manager/immersion/feature/m;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->d:Lcom/startshorts/androidplayer/manager/immersion/feature/m$b;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/m$b;->c(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private static final j(Lcom/startshorts/androidplayer/manager/immersion/feature/m;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->d:Lcom/startshorts/androidplayer/manager/immersion/feature/m$b;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/m$b;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V
    .locals 10
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->b()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/m$c;->$EnumSwitchMapping$0:[I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq v0, v2, :cond_c

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-eq v0, v3, :cond_0

    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_0
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->b:Z

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v3, 0x0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    const-string/jumbo v4, "total_time"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-object v0, v3

    .line 48
    :goto_0
    instance-of v4, v0, Ljava/lang/Integer;

    .line 49
    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    check-cast v0, Ljava/lang/Integer;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    move-object v0, v3

    .line 56
    :goto_1
    if-eqz v0, :cond_b

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const-string v5, "playback_time"

    .line 67
    .line 68
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    instance-of v5, v4, Ljava/lang/Integer;

    .line 73
    .line 74
    if-eqz v5, :cond_4

    .line 75
    .line 76
    move-object v3, v4

    .line 77
    check-cast v3, Ljava/lang/Integer;

    .line 78
    .line 79
    :cond_4
    if-eqz v3, :cond_b

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    iget-boolean v4, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->a:Z

    .line 86
    .line 87
    if-eqz v4, :cond_7

    .line 88
    .line 89
    invoke-direct {p0, v0, v3}, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->g(II)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-nez v4, :cond_6

    .line 94
    .line 95
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->a:Z

    .line 96
    .line 97
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->c:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 98
    .line 99
    if-eqz v4, :cond_5

    .line 100
    .line 101
    sget-object v5, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->NEXT_SHORTS_TIP:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->b(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    sget-object v4, Lfk/h0;->a:Lfk/h0;

    .line 107
    .line 108
    new-instance v5, Lhf/t;

    .line 109
    .line 110
    invoke-direct {v5, p0}, Lhf/t;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/m;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v5}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_6
    return-void

    .line 118
    :cond_7
    :goto_2
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->e(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-nez p1, :cond_8

    .line 123
    .line 124
    return-void

    .line 125
    :cond_8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-nez v4, :cond_9

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLastEpisode()Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-nez v4, :cond_9

    .line 136
    .line 137
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->b:Z

    .line 138
    .line 139
    return-void

    .line 140
    :cond_9
    invoke-direct {p0, v0, v3}, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->g(II)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_a

    .line 145
    .line 146
    return-void

    .line 147
    :cond_a
    iput-boolean v2, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->a:Z

    .line 148
    .line 149
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 150
    .line 151
    new-instance v1, Lhf/u;

    .line 152
    .line 153
    invoke-direct {v1, p0, p1}, Lhf/u;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/m;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 157
    .line 158
    .line 159
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->c:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 160
    .line 161
    if-eqz v2, :cond_e

    .line 162
    .line 163
    sget-object v3, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->NEXT_SHORTS_TIP:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 164
    .line 165
    new-instance v7, Lhf/v;

    .line 166
    .line 167
    invoke-direct {v7, p0}, Lhf/v;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/m;)V

    .line 168
    .line 169
    .line 170
    const/4 v8, 0x4

    .line 171
    const/4 v9, 0x0

    .line 172
    const-wide/16 v4, 0x3e8

    .line 173
    .line 174
    const/4 v6, 0x0

    .line 175
    invoke-static/range {v2 .. v9}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->e(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_b
    return-void

    .line 180
    :cond_c
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->a:Z

    .line 181
    .line 182
    iput-boolean v2, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->b:Z

    .line 183
    .line 184
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->f(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    if-nez p1, :cond_d

    .line 189
    .line 190
    return-void

    .line 191
    :cond_d
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->c:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 192
    .line 193
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;->NEXT_SHORTS_TIP:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;

    .line 194
    .line 195
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;->b(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager$JobType;)V

    .line 196
    .line 197
    .line 198
    :cond_e
    :goto_3
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

.method public final k(Lcom/startshorts/androidplayer/manager/immersion/feature/m$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/m$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/m;->d:Lcom/startshorts/androidplayer/manager/immersion/feature/m$b;

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
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;->NEXT_SHORTS_TIP:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
