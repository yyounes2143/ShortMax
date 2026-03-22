.class public final Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "PlayerViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final k:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Llf/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->k:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lyk/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lyk/a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->e:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lyk/b;

    .line 16
    .line 17
    invoke-direct {v0}, Lyk/b;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->f:Lms/i;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic A()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->J()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic B()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic C(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic D(Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)Llf/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->i:Llf/r;

    .line 2
    .line 3
    return-object p0
.end method

.method private final E()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->j:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->g:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v1, Lpf/d;->a:Lpf/d;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lpf/d;->d(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private final F()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->j:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->g:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v1, Lpf/d;->a:Lpf/d;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lpf/d;->g(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private static final I()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final J()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final K()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->i:Llf/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Llf/r;->w()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final L(Landroid/content/Context;Llf/s;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->i:Llf/r;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Llf/r;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, p1, v2, v1, v2}, Llf/r;-><init>(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->i:Llf/r;

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->i:Llf/r;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;

    .line 19
    .line 20
    invoke-direct {v0, p3, p0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel$b;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2, v0}, Llf/r;->x(Llf/s;Llf/a;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method private final N()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->i:Llf/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Llf/r;->K()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->i:Llf/r;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Llf/r;->C()V

    .line 13
    .line 14
    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->i:Llf/r;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->h:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method private final O()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->i:Llf/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Llf/r;->D()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final P(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->i:Llf/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Llf/r;->E(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final Q(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->i:Llf/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Llf/r;->J(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final R(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->i:Llf/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Llf/r;->L(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final S(F)V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "level"

    .line 9
    .line 10
    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    const-string v1, "play_speed"

    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->i:Llf/r;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Llf/r;->M(F)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method private final T(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/strategy/source/StrategySource;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    move-object v2, v0

    .line 19
    check-cast v2, Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 20
    .line 21
    instance-of v3, v2, Lcom/ss/ttvideoengine/source/VideoModelSource;

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    check-cast v2, Lcom/ss/ttvideoengine/source/VideoModelSource;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/source/VideoModelSource;->resolution()Lcom/ss/ttvideoengine/Resolution;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v0, v1

    .line 35
    :cond_2
    :goto_0
    check-cast v0, Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    sget-object p1, Lcom/ss/ttvideoengine/Resolution;->SuperHigh:Lcom/ss/ttvideoengine/Resolution;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    instance-of p1, v0, Lcom/ss/ttvideoengine/source/VideoModelSource;

    .line 43
    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    check-cast v0, Lcom/ss/ttvideoengine/source/VideoModelSource;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/source/VideoModelSource;->resolution()Lcom/ss/ttvideoengine/Resolution;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_1

    .line 53
    :cond_4
    sget-object p1, Lcom/ss/ttvideoengine/Resolution;->SuperHigh:Lcom/ss/ttvideoengine/Resolution;

    .line 54
    .line 55
    :goto_1
    sget-object v0, Lre/a;->a:Lre/a;

    .line 56
    .line 57
    invoke-virtual {v0}, Lre/a;->g()Lcom/startshorts/androidplayer/bean/configure/PlayerConfigController;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/PlayerConfigController;->getPreloadConfigs()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_7

    .line 66
    .line 67
    check-cast v0, Ljava/lang/Iterable;

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_6

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    move-object v3, v2

    .line 84
    check-cast v3, Lcom/startshorts/androidplayer/bean/configure/PlayerPreloadConfig;

    .line 85
    .line 86
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/configure/PlayerPreloadConfig;->getResolution()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/Resolution;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_5

    .line 99
    .line 100
    move-object v1, v2

    .line 101
    :cond_6
    check-cast v1, Lcom/startshorts/androidplayer/bean/configure/PlayerPreloadConfig;

    .line 102
    .line 103
    :cond_7
    if-nez v1, :cond_8

    .line 104
    .line 105
    const-string p1, "updatePreloadConfig -> use default config"

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance p1, Lcom/startshorts/androidplayer/bean/configure/PlayerPreloadConfig;

    .line 111
    .line 112
    const/4 v4, 0x5

    .line 113
    const/4 v5, 0x4

    .line 114
    const-string v1, "unknown"

    .line 115
    .line 116
    const/4 v2, 0x4

    .line 117
    const/16 v3, 0x578

    .line 118
    .line 119
    move-object v0, p1

    .line 120
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/configure/PlayerPreloadConfig;-><init>(Ljava/lang/String;IIII)V

    .line 121
    .line 122
    .line 123
    move-object v1, p1

    .line 124
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v0, "updatePreloadConfig -> "

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    new-instance v0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;

    .line 149
    .line 150
    invoke-direct {v0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/PlayerPreloadConfig;->getPreloadCount()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->setCount(I)Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/PlayerPreloadConfig;->getPreloadSize()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->setSize(I)Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/PlayerPreloadConfig;->getStartBufferLimit()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->setStartBufferLimit(I)Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/PlayerPreloadConfig;->getStopBufferLimit()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->setStopBufferLimit(I)Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->build()Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->setCustomPreloadConfig(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;)V

    .line 190
    .line 191
    .line 192
    return-void
.end method


# virtual methods
.method public final G()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/player/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->f:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final H()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/player/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/player/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->q()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/b$i;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/player/b$i;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/b$i;->a()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->g:Ljava/lang/String;

    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/b$e;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "toString(...)"

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->h:Ljava/lang/String;

    .line 45
    .line 46
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/player/b$e;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/b$e;->a()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/b$e;->b()Llf/s;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, v1, p1, v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->L(Landroid/content/Context;Llf/s;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/b$d;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->K()V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :cond_3
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/b$g;

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->O()V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :cond_4
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/b$h;

    .line 80
    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/player/b$h;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/b$h;->a()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->P(I)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :cond_5
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/b$c;

    .line 95
    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/player/b$c;

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/b$c;->a()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->Q(Z)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/b$k;

    .line 109
    .line 110
    if-eqz v0, :cond_7

    .line 111
    .line 112
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/player/b$k;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/b$k;->a()F

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->S(F)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_7
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/b$l;

    .line 123
    .line 124
    if-eqz v0, :cond_8

    .line 125
    .line 126
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/player/b$l;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/b$l;->a()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->R(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_8
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/b$f;

    .line 137
    .line 138
    if-eqz v0, :cond_9

    .line 139
    .line 140
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->N()V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_9
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/b$j;

    .line 145
    .line 146
    if-eqz v0, :cond_a

    .line 147
    .line 148
    const-string v0, "SetStrategyResources"

    .line 149
    .line 150
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->F()V

    .line 154
    .line 155
    .line 156
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/player/b$j;

    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/b$j;->a()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->T(Ljava/util/List;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/b$j;->a()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setStrategySources(Ljava/util/List;)V

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_a
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/b$a;

    .line 174
    .line 175
    if-eqz v0, :cond_b

    .line 176
    .line 177
    const-string v0, "AddStrategyResources"

    .line 178
    .line 179
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->F()V

    .line 183
    .line 184
    .line 185
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/player/b$a;

    .line 186
    .line 187
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/b$a;->a()Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->addStrategySources(Ljava/util/List;)V

    .line 192
    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_b
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/player/b$b;

    .line 196
    .line 197
    if-eqz p1, :cond_c

    .line 198
    .line 199
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->E()V

    .line 200
    .line 201
    .line 202
    :goto_0
    return-void

    .line 203
    :cond_c
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 204
    .line 205
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 206
    .line 207
    .line 208
    throw p1
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "PlayerViewModel"

    .line 2
    .line 3
    return-object v0
.end method

.method public w()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->w()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->E()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->N()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
