.class public final Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;
.super Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;
.source "ImmersionMiniWindow.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionMiniWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionMiniWindow.kt\ncom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1028:1\n1#2:1029\n1755#3,3:1030\n1863#3,2:1033\n1863#3:1035\n1872#3,3:1036\n1864#3:1039\n*S KotlinDebug\n*F\n+ 1 ImmersionMiniWindow.kt\ncom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow\n*L\n556#1:1030,3\n743#1:1033,2\n936#1:1035\n937#1:1036,3\n936#1:1039\n*E\n"
    }
.end annotation


# static fields
.field public static final J:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static K:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static L:F


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:I

.field private G:I

.field private H:Z

.field private I:Z

.field private n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private t:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private u:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private v:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private w:Ljf/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private x:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private y:Z

.field private z:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->J:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$a;

    .line 8
    .line 9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    .line 11
    sput v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->L:F

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;->getPLAY_RESOLUTION_AUTO()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->z:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 11
    .line 12
    return-void
.end method

.method private final A0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->w:Ljf/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 6
    .line 7
    const-string v1, "ImmersionMiniWindow"

    .line 8
    .line 9
    const-string v2, "initPositionManager"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljf/b;

    .line 15
    .line 16
    new-instance v1, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$d;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$d;-><init>(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljf/b;-><init>(Ljf/b$b;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->w:Ljf/b;

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private final B0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->u:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    const-string v1, "initUnlockVM"

    .line 9
    .line 10
    const-string v2, "ImmersionMiniWindow"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->Companion:Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory$Companion;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "getApplication(...)"

    .line 22
    .line 23
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v3}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory$Companion;->getInstance(Landroid/app/Application;)Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-class v3, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->u:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 39
    .line 40
    new-instance v1, Lnh/a;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lnh/a;-><init>(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->v:Landroidx/lifecycle/Observer;

    .line 46
    .line 47
    const-string v3, "add mUnlockState observer"

    .line 48
    .line 49
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->u:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method

.method private static final C0(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/f$d;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->J(Z)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->I(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->n()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private final D0()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Lud/b;->a:Lud/b;

    .line 10
    .line 11
    invoke-virtual {v1}, Lud/b;->R1()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->B0()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->M0()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    :cond_1
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
.end method

.method private final E0(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->y:Z

    .line 3
    .line 4
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->w:Ljf/b;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljf/b;->b()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private final F0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->r:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/player/b$d;->a:Lcom/startshorts/androidplayer/viewmodel/player/b$d;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    const-string v1, "ImmersionMiniWindow"

    .line 15
    .line 16
    const-string v2, "pausePlay"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private final G0(ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v8, p2

    .line 3
    .line 4
    sget-object v1, Lpf/k;->a:Lpf/k;

    .line 5
    .line 6
    const/4 v9, 0x0

    .line 7
    const/4 v10, 0x2

    .line 8
    const/4 v11, 0x0

    .line 9
    invoke-static {v1, v8, v9, v10, v11}, Lpf/k;->m(Lpf/k;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZILjava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 25
    .line 26
    :goto_0
    move-object v12, v1

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget-object v2, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->z:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iget-object v1, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->z:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    check-cast v1, Ljava/lang/Iterable;

    .line 40
    .line 41
    instance-of v2, v1, Ljava/util/Collection;

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    move-object v2, v1

    .line 46
    check-cast v2, Ljava/util/Collection;

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    iget-object v3, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->z:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-ne v2, v3, :cond_3

    .line 82
    .line 83
    iget-object v1, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->z:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    :goto_1
    sget-object v1, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;->getPLAY_RESOLUTION_AUTO()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    goto :goto_0

    .line 93
    :goto_2
    sget-object v1, Lpf/l;->a:Lpf/l;

    .line 94
    .line 95
    const/16 v6, 0xc

    .line 96
    .line 97
    const/4 v7, 0x0

    .line 98
    const/4 v4, 0x0

    .line 99
    const/4 v5, 0x0

    .line 100
    move-object/from16 v2, p2

    .line 101
    .line 102
    move-object v3, v12

    .line 103
    invoke-static/range {v1 .. v7}, Lpf/l;->e(Lpf/l;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;ZILjava/lang/Object;)Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-nez v1, :cond_5

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->n()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v9}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->J(Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v9}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->I(Z)V

    .line 116
    .line 117
    .line 118
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 119
    .line 120
    sget v2, Lcom/startshorts/androidplayer/R$string;->common_play_failed:I

    .line 121
    .line 122
    invoke-static {v1, v2, v9, v10, v11}, Lfk/u;->j(Lfk/u;IIILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_3

    .line 126
    .line 127
    :cond_5
    sget-object v2, Lpf/k;->a:Lpf/k;

    .line 128
    .line 129
    invoke-virtual {v2, v8}, Lpf/k;->i(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 134
    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v6, "playEpisode(episodeNum("

    .line 141
    .line 142
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v6, ") episodeId("

    .line 153
    .line 154
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v6, ") needDecrypt("

    .line 165
    .line 166
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v6, ")) -> maxPlayResolution("

    .line 177
    .line 178
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const/16 v6, 0x29

    .line 185
    .line 186
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    const-string v6, "ImmersionMiniWindow"

    .line 194
    .line 195
    invoke-virtual {v4, v6, v5}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->enableSubtitle()Z

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    new-instance v7, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .line 206
    .line 207
    if-eqz v4, :cond_6

    .line 208
    .line 209
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->m0()Lcom/startshorts/androidplayer/manager/player/feature/f;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    if-eqz v4, :cond_7

    .line 221
    .line 222
    new-instance v4, Lcom/startshorts/androidplayer/manager/player/feature/d;

    .line 223
    .line 224
    invoke-direct {v4}, Lcom/startshorts/androidplayer/manager/player/feature/d;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    :cond_7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    iget-object v4, v4, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->k:Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;

    .line 235
    .line 236
    invoke-virtual {v4, v8}, Lcom/startshorts/androidplayer/manager/player/core/SubtitleView;->u(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Z

    .line 237
    .line 238
    .line 239
    iget-object v11, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->r:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 240
    .line 241
    if-eqz v11, :cond_8

    .line 242
    .line 243
    sget-object v4, Lfk/u;->a:Lfk/u;

    .line 244
    .line 245
    invoke-virtual {v4}, Lfk/u;->b()Landroid/content/Context;

    .line 246
    .line 247
    .line 248
    move-result-object v13

    .line 249
    new-instance v14, Llf/s;

    .line 250
    .line 251
    invoke-direct {v14}, Llf/s;-><init>()V

    .line 252
    .line 253
    .line 254
    const-string v4, "MiniWindow"

    .line 255
    .line 256
    invoke-virtual {v14, v4}, Llf/s;->y(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    iget-object v4, v4, Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;->n:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;

    .line 264
    .line 265
    invoke-virtual {v14, v4}, Llf/s;->u(Landroid/view/View;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v14, v10}, Llf/s;->n(I)V

    .line 269
    .line 270
    .line 271
    const/16 v4, 0xc8

    .line 272
    .line 273
    invoke-virtual {v14, v4}, Llf/s;->t(I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v14, v1}, Llf/s;->w(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V

    .line 277
    .line 278
    .line 279
    move/from16 v1, p1

    .line 280
    .line 281
    invoke-virtual {v14, v1}, Llf/s;->v(I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v14, v9}, Llf/s;->p(Z)V

    .line 285
    .line 286
    .line 287
    sget v1, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->L:F

    .line 288
    .line 289
    invoke-virtual {v14, v1}, Llf/s;->s(F)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v14, v3}, Llf/s;->q(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V

    .line 293
    .line 294
    .line 295
    const/4 v5, 0x4

    .line 296
    const/4 v6, 0x0

    .line 297
    const/4 v4, 0x0

    .line 298
    move-object v1, v2

    .line 299
    move-object/from16 v2, p2

    .line 300
    .line 301
    move-object v3, v12

    .line 302
    invoke-static/range {v1 .. v6}, Lpf/k;->q(Lpf/k;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v14, v1}, Llf/s;->z(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getSubtitlingConfig()Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v14, v1}, Llf/s;->x(Lcom/startshorts/androidplayer/bean/shorts/SubtitleConfig;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v14, v7}, Llf/s;->o(Ljava/util/List;)V

    .line 317
    .line 318
    .line 319
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 320
    .line 321
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/player/b$e;

    .line 322
    .line 323
    invoke-direct {v1, v13, v14}, Lcom/startshorts/androidplayer/viewmodel/player/b$e;-><init>(Landroid/content/Context;Llf/s;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v11, v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 327
    .line 328
    .line 329
    :cond_8
    :goto_3
    return-void
.end method

.method private final H0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->r:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/player/b$f;->a:Lcom/startshorts/androidplayer/viewmodel/player/b$f;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    const-string v1, "ImmersionMiniWindow"

    .line 15
    .line 16
    const-string v2, "releasePlay"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private final I0()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->K:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    const-string v1, "ImmersionMiniWindow"

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->r:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    sget-object v2, Lcom/startshorts/androidplayer/viewmodel/player/b$g;->a:Lcom/startshorts/androidplayer/viewmodel/player/b$g;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 34
    .line 35
    const-string v2, "resumePlay"

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    :goto_1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 42
    .line 43
    const-string v2, "resumePlay failed -> video url is null"

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_2
    return-void
.end method

.method private final J0(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->q0()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->y:Z

    .line 15
    .line 16
    iget-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->p:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/immersion/c$c;

    .line 21
    .line 22
    invoke-direct {v2, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$c;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->e0(Lcom/startshorts/androidplayer/viewmodel/immersion/c;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 30
    .line 31
    const-string v0, "ImmersionMiniWindow"

    .line 32
    .line 33
    const-string v1, "tryLoadNextEpisodes failed -> lastItem is locked"

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->E0(Z)V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_1
    return-void
.end method

.method private final K0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "tryUnlockEpisode -> episodeId("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ") episodeNum("

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/16 v2, 0x29

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "ImmersionMiniWindow"

    .line 42
    .line 43
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->L()V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->B0()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->u:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;

    .line 57
    .line 58
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isMembersOnly()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_0

    .line 69
    .line 70
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_0

    .line 77
    .line 78
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/ShowUnlockEpisodeMethodsEvent;

    .line 83
    .line 84
    const-string v2, "other"

    .line 85
    .line 86
    invoke-direct {v1, p1, v2}, Lcom/startshorts/androidplayer/bean/eventbus/ShowUnlockEpisodeMethodsEvent;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/immersion/e$m;

    .line 94
    .line 95
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->P()Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    const/16 v8, 0x9

    .line 102
    .line 103
    const/4 v9, 0x0

    .line 104
    const/4 v4, 0x0

    .line 105
    const/4 v6, 0x0

    .line 106
    const/4 v7, 0x0

    .line 107
    move-object v3, p1

    .line 108
    invoke-direct/range {v3 .. v9}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$m;-><init>(Landroid/content/Context;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 112
    .line 113
    .line 114
    :cond_1
    :goto_0
    return-void
.end method

.method private final L0()Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$updatePreloadStrategyResources$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$updatePreloadStrategyResources$1;-><init>(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "updatePreloadStrategyResources"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public static synthetic Q(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->w0(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic R(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->z0(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic S(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->y0(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic T(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->C0(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic U(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->j0(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic V(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->k0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic W(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->l0(Ljava/util/List;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic X()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->K:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic Y()F
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->L:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic Z(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;)Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->x:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic a0(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;)Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->r:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b0(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->s0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c0(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->G0(ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->K:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic e0(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->E:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic f0(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->J0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g0(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->K0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final h0(Ljava/util/List;)Lkotlinx/coroutines/r;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;)",
            "Lkotlinx/coroutines/r;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$addPreloadStrategyResources$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, p1, v1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$addPreloadStrategyResources$1;-><init>(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Ljava/util/List;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "addPreloadStrategyResources"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method private static final j0(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Z)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->i1()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iput-boolean v2, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->I:Z

    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->L0()Lkotlinx/coroutines/r;

    .line 16
    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->U()V

    .line 21
    .line 22
    .line 23
    :cond_1
    sget-object p1, Lud/b;->a:Lud/b;

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Lud/b;->e5(Z)V

    .line 26
    .line 27
    .line 28
    const/4 v0, -0x1

    .line 29
    invoke-virtual {p1, v0}, Lud/b;->e4(I)V

    .line 30
    .line 31
    .line 32
    iput-boolean v2, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->I:Z

    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method

.method private final k0(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "clearLastEpisodeInfo -> position("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 p1, 0x29

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "ImmersionMiniWindow"

    .line 26
    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->D:Z

    .line 32
    .line 33
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->A:Z

    .line 34
    .line 35
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->B:Z

    .line 36
    .line 37
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->C:Z

    .line 38
    .line 39
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->E:Z

    .line 40
    .line 41
    iput p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->F:I

    .line 42
    .line 43
    iput p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->G:I

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->H0()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private final l0(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/strategy/source/StrategySource;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v1, ""

    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object v3, Lpf/l;->a:Lpf/l;

    .line 40
    .line 41
    iget-object v5, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->z:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 42
    .line 43
    const/4 v8, 0x4

    .line 44
    const/4 v9, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    move-object v4, v2

    .line 48
    invoke-static/range {v3 .. v9}, Lpf/l;->e(Lpf/l;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;ZILjava/lang/Object;)Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-eqz v3, :cond_0

    .line 53
    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/16 v1, 0x28

    .line 63
    .line 64
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const/16 v1, 0x2c

    .line 75
    .line 76
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const/16 v1, 0x29

    .line 87
    .line 88
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-lez p1, :cond_3

    .line 104
    .line 105
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 106
    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v3, "createPreloadStrategyResources -> "

    .line 113
    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const-string v2, "ImmersionMiniWindow"

    .line 125
    .line 126
    invoke-virtual {p1, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    return-object v0
.end method

.method private final m0()Lcom/startshorts/androidplayer/manager/player/feature/f;
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/feature/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/player/feature/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->K:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/player/feature/f;->g(I)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$b;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$b;-><init>(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/player/feature/f;->f(Lcom/startshorts/androidplayer/manager/player/feature/f$b;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method private final n0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->p:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->w()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "pip_window"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 20
    .line 21
    .line 22
    filled-new-array {p1}, [Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeList(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 34
    .line 35
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoType()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setVideoType(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getBindShortPlayId()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setBindShortsId(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCoverId()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 106
    .line 107
    .line 108
    const/4 p1, 0x0

    .line 109
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setLogEnterImmersion(Z)V

    .line 110
    .line 111
    .line 112
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$a;

    .line 113
    .line 114
    invoke-direct {p1, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$a;-><init>(Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->e0(Lcom/startshorts/androidplayer/viewmodel/immersion/c;)V

    .line 118
    .line 119
    .line 120
    :cond_1
    return-void
.end method

.method private final o0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    sget-object v0, Lpf/k;->a:Lpf/k;

    .line 7
    .line 8
    invoke-virtual {v0}, Lpf/k;->s()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->contains1080pUrl()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string p1, "1080p"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->contains720pUrl()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    const-string p1, "720p"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const-string p1, "480p"

    .line 33
    .line 34
    :goto_0
    return-object p1
.end method

.method private final p0(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v1, "_720"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x2

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const-string v0, "720p"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string v1, "_1080p"

    .line 27
    .line 28
    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const-string v0, "1080p"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string v1, "_480p"

    .line 38
    .line 39
    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    const-string v0, "480p"

    .line 46
    .line 47
    :cond_3
    :goto_0
    return-object v0
.end method

.method private final q0()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->x:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->d()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->D0(Ljava/util/List;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0
.end method

.method private final r0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    sget-object v1, Lpf/k;->a:Lpf/k;

    .line 7
    .line 8
    invoke-virtual {v1}, Lpf/k;->s()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->contains1080pUrl()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const/16 v1, 0x438

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->contains720pUrl()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    const/16 v1, 0x2d0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/16 v1, 0x1e0

    .line 33
    .line 34
    :goto_0
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p1, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    move-object v0, p1

    .line 42
    :goto_1
    return-object v0
.end method

.method private final s0()V
    .locals 11

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->K:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->p:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->w()V

    .line 11
    .line 12
    .line 13
    new-instance v10, Lcom/startshorts/androidplayer/viewmodel/immersion/c$k;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoType()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    const/16 v8, 0x11

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    move-object v2, v10

    .line 33
    invoke-direct/range {v2 .. v9}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$k;-><init>(Landroid/content/Context;IIILcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$ResetReason;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v10}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->e0(Lcom/startshorts/androidplayer/viewmodel/immersion/c;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method private final t0(ZIILcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;)V
    .locals 8

    .line 1
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getCurrentEpisodesReponse()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getPreviousEpisodesReponse()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;->getNextEpisodesReponse()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    const/16 v2, 0x29

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez p1, :cond_9

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    move-object v4, v1

    .line 24
    check-cast v4, Ljava/util/Collection;

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_2
    if-eqz p4, :cond_3

    .line 44
    .line 45
    move-object v4, p4

    .line 46
    check-cast v4, Ljava/util/Collection;

    .line 47
    .line 48
    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    .line 50
    .line 51
    :cond_3
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    goto :goto_1

    .line 58
    :cond_4
    move v0, v3

    .line 59
    :goto_1
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 60
    .line 61
    const-string v5, "ImmersionMiniWindow"

    .line 62
    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v7, "handleQueryEpisodesSuccess -> preload(false) expectPrevSize("

    .line 69
    .line 70
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p2, ") expectNextSize("

    .line 77
    .line 78
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p2, ") realPrevSize("

    .line 85
    .line 86
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    goto :goto_2

    .line 96
    :cond_5
    move p2, v3

    .line 97
    :goto_2
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p2, ") realNextSize("

    .line 101
    .line 102
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    if-eqz p4, :cond_6

    .line 106
    .line 107
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    :cond_6
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p2, ") curPosition("

    .line 115
    .line 116
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-virtual {v4, v5, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object p2, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->x:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;

    .line 133
    .line 134
    if-eqz p2, :cond_7

    .line 135
    .line 136
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->s(Ljava/util/List;)V

    .line 137
    .line 138
    .line 139
    :cond_7
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->w:Ljf/b;

    .line 140
    .line 141
    if-eqz p1, :cond_8

    .line 142
    .line 143
    invoke-virtual {p1}, Ljf/b;->e()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v0}, Ljf/b;->k(I)V

    .line 147
    .line 148
    .line 149
    :cond_8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->L0()Lkotlinx/coroutines/r;

    .line 150
    .line 151
    .line 152
    goto/16 :goto_9

    .line 153
    .line 154
    :cond_9
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 155
    .line 156
    const-string v4, "ImmersionMiniWindow"

    .line 157
    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v6, "handleQueryEpisodesSuccess -> preload(true) expectPrevSize("

    .line 164
    .line 165
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v6, ") expectNextSize("

    .line 172
    .line 173
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v6, ") realPrevSize("

    .line 180
    .line 181
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    if-eqz v1, :cond_a

    .line 185
    .line 186
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    goto :goto_3

    .line 191
    :cond_a
    move v1, v3

    .line 192
    :goto_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v1, ") realNextSize("

    .line 196
    .line 197
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    if-eqz p4, :cond_b

    .line 201
    .line 202
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    goto :goto_4

    .line 207
    :cond_b
    move v1, v3

    .line 208
    :goto_4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {p1, v4, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    if-nez p2, :cond_16

    .line 222
    .line 223
    if-eqz p3, :cond_16

    .line 224
    .line 225
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->x:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;

    .line 226
    .line 227
    const/4 p2, 0x0

    .line 228
    if-eqz p1, :cond_c

    .line 229
    .line 230
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->d()Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    goto :goto_5

    .line 235
    :cond_c
    move-object p1, p2

    .line 236
    :goto_5
    if-eqz v0, :cond_12

    .line 237
    .line 238
    move-object p3, p1

    .line 239
    check-cast p3, Ljava/util/Collection;

    .line 240
    .line 241
    if-eqz p3, :cond_12

    .line 242
    .line 243
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 244
    .line 245
    .line 246
    move-result p3

    .line 247
    if-eqz p3, :cond_d

    .line 248
    .line 249
    goto :goto_8

    .line 250
    :cond_d
    monitor-enter p1

    .line 251
    :try_start_0
    move-object p3, p1

    .line 252
    check-cast p3, Ljava/lang/Iterable;

    .line 253
    .line 254
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 255
    .line 256
    .line 257
    move-result-object p3

    .line 258
    :cond_e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_f

    .line 263
    .line 264
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    move-object v2, v1

    .line 269
    check-cast v2, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 270
    .line 271
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    if-ne v2, v4, :cond_e

    .line 280
    .line 281
    move-object p2, v1

    .line 282
    goto :goto_6

    .line 283
    :catchall_0
    move-exception p2

    .line 284
    goto :goto_7

    .line 285
    :cond_f
    :goto_6
    if-nez p2, :cond_11

    .line 286
    .line 287
    if-nez p4, :cond_10

    .line 288
    .line 289
    new-instance p4, Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .line 293
    .line 294
    :cond_10
    invoke-interface {p4, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    :cond_11
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    .line 299
    monitor-exit p1

    .line 300
    goto :goto_8

    .line 301
    :goto_7
    monitor-exit p1

    .line 302
    throw p2

    .line 303
    :cond_12
    :goto_8
    move-object p1, p4

    .line 304
    check-cast p1, Ljava/util/Collection;

    .line 305
    .line 306
    if-eqz p1, :cond_16

    .line 307
    .line 308
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-eqz p1, :cond_13

    .line 313
    .line 314
    goto :goto_9

    .line 315
    :cond_13
    if-eqz p4, :cond_15

    .line 316
    .line 317
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->x:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;

    .line 318
    .line 319
    if-eqz p1, :cond_14

    .line 320
    .line 321
    invoke-virtual {p1, p4}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->a(Ljava/util/List;)V

    .line 322
    .line 323
    .line 324
    :cond_14
    invoke-direct {p0, p4}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->h0(Ljava/util/List;)Lkotlinx/coroutines/r;

    .line 325
    .line 326
    .line 327
    :cond_15
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->y:Z

    .line 328
    .line 329
    if-eqz p1, :cond_16

    .line 330
    .line 331
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->y:Z

    .line 332
    .line 333
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->w:Ljf/b;

    .line 334
    .line 335
    if-eqz p1, :cond_16

    .line 336
    .line 337
    invoke-virtual {p1}, Ljf/b;->f()Z

    .line 338
    .line 339
    .line 340
    :cond_16
    :goto_9
    return-void
.end method

.method private final u0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->w:Ljf/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->x:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 11
    .line 12
    const-string v2, "ImmersionMiniWindow"

    .line 13
    .line 14
    const-string v3, "initEpisodeManager"

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;

    .line 20
    .line 21
    new-instance v2, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c;-><init>(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v0, v2}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;-><init>(Ljf/b;Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->x:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;

    .line 30
    .line 31
    sget-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;

    .line 32
    .line 33
    sget v1, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->L:F

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->create(F)Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->x:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->q(Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method private final v0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->p:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    const-string v1, "initImmersionVM"

    .line 9
    .line 10
    const-string v2, "ImmersionMiniWindow"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->Companion:Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory$Companion;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "getApplication(...)"

    .line 22
    .line 23
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v3}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory$Companion;->getInstance(Landroid/app/Application;)Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-class v3, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->p:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 39
    .line 40
    new-instance v1, Lnh/b;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lnh/b;-><init>(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->q:Landroidx/lifecycle/Observer;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->p:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    invoke-virtual {v3, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 58
    .line 59
    .line 60
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    const-string v1, "add mImmersionState observer"

    .line 63
    .line 64
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void
.end method

.method private static final w0(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Ljava/lang/Object;)V
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/d$d;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/d$d;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/d$d;->c()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/d$d;->b()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/d$d;->a()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/d$d;->e()Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->t0(ZIILcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/d$e;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/d$e;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/d$e;->a()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->E0(Z)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method private final x0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->r:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    const-string v1, "initPlayerVM"

    .line 9
    .line 10
    const-string v2, "ImmersionMiniWindow"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->Companion:Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory$Companion;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "getApplication(...)"

    .line 22
    .line 23
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v3}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory$Companion;->getInstance(Landroid/app/Application;)Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-class v3, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->r:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 39
    .line 40
    new-instance v1, Lnh/c;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lnh/c;-><init>(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->s:Landroidx/lifecycle/Observer;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->r:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    invoke-virtual {v3, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 58
    .line 59
    .line 60
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    const-string v1, "add mPlayerState observer"

    .line 63
    .line 64
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    new-instance v1, Lnh/d;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lnh/d;-><init>(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->t:Landroidx/lifecycle/Observer;

    .line 73
    .line 74
    iget-object v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->r:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 75
    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-eqz v3, :cond_2

    .line 83
    .line 84
    invoke-virtual {v3, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 85
    .line 86
    .line 87
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 88
    .line 89
    const-string v1, "add mPlaybackTimeState observer"

    .line 90
    .line 91
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->r:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/player/b$i;

    .line 99
    .line 100
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/player/b$i;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    return-void
.end method

.method private static final y0(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "it"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    instance-of v2, v1, Lcom/startshorts/androidplayer/viewmodel/player/c$g;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iput-boolean v3, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->B:Z

    .line 16
    .line 17
    iget-boolean v1, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->D:Z

    .line 18
    .line 19
    if-eqz v1, :cond_11

    .line 20
    .line 21
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->F0()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    instance-of v2, v1, Lcom/startshorts/androidplayer/viewmodel/player/c$j;

    .line 26
    .line 27
    const/16 v4, 0x29

    .line 28
    .line 29
    const-string v5, "ImmersionMiniWindow"

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/player/c$j;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/player/c$j;->b()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iput v2, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->F:I

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/player/c$j;->a()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iput v1, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->G:I

    .line 46
    .line 47
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v3, "OnTimeInfo -> mTotalTime("

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v3, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->F:I

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v3, ") mStartTime("

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v3, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->G:I

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v1, v5, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget v1, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->G:I

    .line 85
    .line 86
    iget v2, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->F:I

    .line 87
    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->o(II)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_3

    .line 92
    .line 93
    :cond_1
    instance-of v2, v1, Lcom/startshorts/androidplayer/viewmodel/player/c$h;

    .line 94
    .line 95
    const-string v6, "pip_window"

    .line 96
    .line 97
    const-string v7, "scene"

    .line 98
    .line 99
    const-string v8, "clarity_level"

    .line 100
    .line 101
    const/4 v9, 0x0

    .line 102
    if-eqz v2, :cond_4

    .line 103
    .line 104
    iput-boolean v3, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->A:Z

    .line 105
    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->m()V

    .line 107
    .line 108
    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->n()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->J(Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v9}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->I(Z)V

    .line 116
    .line 117
    .line 118
    sget-object v2, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->K:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 119
    .line 120
    if-nez v2, :cond_2

    .line 121
    .line 122
    return-void

    .line 123
    :cond_2
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_3

    .line 128
    .line 129
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->o0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    goto :goto_0

    .line 134
    :cond_3
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->r0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-direct {v0, v3}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->p0(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    :goto_0
    sget-object v9, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 143
    .line 144
    invoke-virtual {v9, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/player/c$h;

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/player/c$h;->a()J

    .line 151
    .line 152
    .line 153
    move-result-wide v1

    .line 154
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    const-string v2, "time"

    .line 159
    .line 160
    invoke-virtual {v11, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v11, v8, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v11, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 170
    .line 171
    const/4 v14, 0x4

    .line 172
    const/4 v15, 0x0

    .line 173
    const-string v10, "initial_loading_time"

    .line 174
    .line 175
    const-wide/16 v12, 0x0

    .line 176
    .line 177
    invoke-static/range {v9 .. v15}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_3

    .line 181
    .line 182
    :cond_4
    instance-of v2, v1, Lcom/startshorts/androidplayer/viewmodel/player/c$f;

    .line 183
    .line 184
    if-eqz v2, :cond_6

    .line 185
    .line 186
    iget-boolean v1, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->D:Z

    .line 187
    .line 188
    if-eqz v1, :cond_5

    .line 189
    .line 190
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->F0()V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_5
    iput-boolean v9, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->D:Z

    .line 195
    .line 196
    iput-boolean v9, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->C:Z

    .line 197
    .line 198
    iput-boolean v9, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->E:Z

    .line 199
    .line 200
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->J(Z)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v9}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->I(Z)V

    .line 204
    .line 205
    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->m()V

    .line 207
    .line 208
    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->n()V

    .line 210
    .line 211
    .line 212
    iget-boolean v1, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->H:Z

    .line 213
    .line 214
    if-eqz v1, :cond_11

    .line 215
    .line 216
    iput-boolean v9, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->H:Z

    .line 217
    .line 218
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->L0()Lkotlinx/coroutines/r;

    .line 219
    .line 220
    .line 221
    goto/16 :goto_3

    .line 222
    .line 223
    :cond_6
    instance-of v2, v1, Lcom/startshorts/androidplayer/viewmodel/player/c$e;

    .line 224
    .line 225
    if-eqz v2, :cond_7

    .line 226
    .line 227
    iput-boolean v3, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->C:Z

    .line 228
    .line 229
    invoke-virtual {v0, v9}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->J(Z)V

    .line 230
    .line 231
    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->n()V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_3

    .line 236
    .line 237
    :cond_7
    instance-of v2, v1, Lcom/startshorts/androidplayer/viewmodel/player/c$b;

    .line 238
    .line 239
    if-eqz v2, :cond_a

    .line 240
    .line 241
    sget-object v2, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->K:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 242
    .line 243
    if-nez v2, :cond_8

    .line 244
    .line 245
    return-void

    .line 246
    :cond_8
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_9

    .line 251
    .line 252
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->o0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    goto :goto_1

    .line 257
    :cond_9
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->r0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-direct {v0, v3}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->p0(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    :goto_1
    sget-object v9, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 266
    .line 267
    invoke-virtual {v9, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/player/c$b;

    .line 272
    .line 273
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/player/c$b;->c()I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    const-string v3, "code"

    .line 278
    .line 279
    invoke-virtual {v11, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 280
    .line 281
    .line 282
    const-string v2, "after_first_frame"

    .line 283
    .line 284
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/player/c$b;->b()I

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    invoke-virtual {v11, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 289
    .line 290
    .line 291
    const-string v2, "action"

    .line 292
    .line 293
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/player/c$b;->a()I

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    invoke-virtual {v11, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v11, v8, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v11, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 307
    .line 308
    const/4 v14, 0x4

    .line 309
    const/4 v15, 0x0

    .line 310
    const-string v10, "reel_play_buffering"

    .line 311
    .line 312
    const-wide/16 v12, 0x0

    .line 313
    .line 314
    invoke-static/range {v9 .. v15}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    goto/16 :goto_3

    .line 318
    .line 319
    :cond_a
    instance-of v2, v1, Lcom/startshorts/androidplayer/viewmodel/player/c$c;

    .line 320
    .line 321
    if-eqz v2, :cond_c

    .line 322
    .line 323
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/player/c$c;

    .line 324
    .line 325
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/player/c$c;->a()I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-lez v2, :cond_b

    .line 330
    .line 331
    iget-object v2, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->x:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;

    .line 332
    .line 333
    if-eqz v2, :cond_b

    .line 334
    .line 335
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/player/c$c;->a()I

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/player/c$c;->a()I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    invoke-virtual {v2, v4, v1}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->l(II)V

    .line 344
    .line 345
    .line 346
    :cond_b
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->I(Z)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v9}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->w(Z)V

    .line 350
    .line 351
    .line 352
    goto/16 :goto_3

    .line 353
    .line 354
    :cond_c
    instance-of v2, v1, Lcom/startshorts/androidplayer/viewmodel/player/c$d;

    .line 355
    .line 356
    if-eqz v2, :cond_11

    .line 357
    .line 358
    iput-boolean v9, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->C:Z

    .line 359
    .line 360
    iput-boolean v9, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->D:Z

    .line 361
    .line 362
    iput-boolean v9, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->B:Z

    .line 363
    .line 364
    iput-boolean v9, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->A:Z

    .line 365
    .line 366
    iput-boolean v3, v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->E:Z

    .line 367
    .line 368
    invoke-virtual {v0, v9}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->J(Z)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v9}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->I(Z)V

    .line 372
    .line 373
    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->n()V

    .line 375
    .line 376
    .line 377
    sget-object v2, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->K:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 378
    .line 379
    if-nez v2, :cond_d

    .line 380
    .line 381
    return-void

    .line 382
    :cond_d
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/player/c$d;

    .line 383
    .line 384
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/player/c$d;->b()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    const-string v3, "-9999"

    .line 389
    .line 390
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v3

    .line 394
    if-nez v3, :cond_e

    .line 395
    .line 396
    const-string v3, "-1"

    .line 397
    .line 398
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v3

    .line 402
    if-eqz v3, :cond_f

    .line 403
    .line 404
    :cond_e
    sget-object v3, Lud/b;->a:Lud/b;

    .line 405
    .line 406
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 407
    .line 408
    .line 409
    move-result v10

    .line 410
    invoke-virtual {v3, v10, v9}, Lud/b;->E3(II)V

    .line 411
    .line 412
    .line 413
    sget-object v3, Lud/a;->a:Lud/a;

    .line 414
    .line 415
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 416
    .line 417
    .line 418
    move-result v10

    .line 419
    invoke-virtual {v3, v10, v9}, Lud/a;->k0(II)V

    .line 420
    .line 421
    .line 422
    :cond_f
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->r0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 427
    .line 428
    .line 429
    move-result v9

    .line 430
    if-eqz v9, :cond_10

    .line 431
    .line 432
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->o0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    goto :goto_2

    .line 437
    :cond_10
    invoke-direct {v0, v3}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->p0(Ljava/lang/String;)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    :goto_2
    sget-object v9, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 442
    .line 443
    new-instance v10, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .line 447
    .line 448
    const-string v11, "onError -> playErrorUrl("

    .line 449
    .line 450
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    const-string v11, ") clarity("

    .line 457
    .line 458
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    invoke-virtual {v9, v5, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    sget-object v10, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 475
    .line 476
    invoke-virtual {v10, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 477
    .line 478
    .line 479
    move-result-object v12

    .line 480
    invoke-virtual {v12, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    const-string v2, "err_msg"

    .line 484
    .line 485
    invoke-virtual {v12, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    const-string v1, "video_url"

    .line 489
    .line 490
    invoke-virtual {v12, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v12, v8, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 497
    .line 498
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->A()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    const-string v1, "userNetworkType"

    .line 503
    .line 504
    invoke-virtual {v12, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 508
    .line 509
    const/4 v15, 0x4

    .line 510
    const/16 v16, 0x0

    .line 511
    .line 512
    const-string v11, "reel_play_fail"

    .line 513
    .line 514
    const-wide/16 v13, 0x0

    .line 515
    .line 516
    invoke-static/range {v10 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    :cond_11
    :goto_3
    return-void
.end method

.method private static final z0(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/a$a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/player/a$a;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/a$a;->a()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->O(I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->x:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/a$a;->a()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/a$a;->b()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0, v0, p1}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->l(II)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "seekTo -> "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, "ms"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "ImmersionMiniWindow"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->r:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/player/b$h;

    .line 35
    .line 36
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/player/b$h;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public G(Landroid/content/Intent;)Z
    .locals 11
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "episode"

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    const-class v2, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 14
    .line 15
    invoke-static {v1, v2}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :cond_1
    sput-object v1, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->K:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 26
    .line 27
    const-string v2, "from"

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, ""

    .line 34
    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    move-object v3, v4

    .line 38
    :cond_2
    iput-object v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->n:Ljava/lang/String;

    .line 39
    .line 40
    const-string v3, "from_scene"

    .line 41
    .line 42
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-nez v3, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    move-object v4, v3

    .line 50
    :goto_0
    iput-object v4, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->o:Ljava/lang/String;

    .line 51
    .line 52
    const-string v3, "user_pause_play"

    .line 53
    .line 54
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->D:Z

    .line 59
    .line 60
    const-string v3, "play_speed"

    .line 61
    .line 62
    const/high16 v4, 0x3f800000    # 1.0f

    .line 63
    .line 64
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    sput v3, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->L:F

    .line 69
    .line 70
    sget-object v3, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;

    .line 71
    .line 72
    const-string v4, "play_resolution"

    .line 73
    .line 74
    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-virtual {v3, p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;->create(I)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->z:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 83
    .line 84
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 85
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v3, "reload -> shortsId("

    .line 92
    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v3, ") episodeNum("

    .line 104
    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v3, ") mFrom("

    .line 116
    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->n:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v3, ") mUserPausePlay("

    .line 126
    .line 127
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->D:Z

    .line 131
    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v3, ") mCurPlaySpeed("

    .line 136
    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    sget v3, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->L:F

    .line 141
    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v3, ") mCurPlayResolution("

    .line 146
    .line 147
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-object v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->z:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 151
    .line 152
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const/16 v3, 0x29

    .line 156
    .line 157
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v3, "ImmersionMiniWindow"

    .line 165
    .line 166
    invoke-virtual {p1, v3, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 170
    .line 171
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->n:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v6, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 181
    .line 182
    const/4 v9, 0x4

    .line 183
    const/4 v10, 0x0

    .line 184
    const-string v5, "pip_play"

    .line 185
    .line 186
    const-wide/16 v7, 0x0

    .line 187
    .line 188
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->n0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 192
    .line 193
    .line 194
    const/4 p1, 0x1

    .line 195
    return p1

    .line 196
    :cond_4
    :goto_1
    return v0
.end method

.method public final i0(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    const-string v1, "ImmersionMiniWindow"

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "checkSubsProExpired -> mSubsProExpiredChecking("

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->I:Z

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ") from("

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 p1, 0x29

    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->I:Z

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    return v0

    .line 51
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Q0()V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->D0()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    return v0

    .line 63
    :cond_1
    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->I:Z

    .line 65
    .line 66
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->x:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->d()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move-object v0, v1

    .line 77
    :goto_0
    if-eqz v0, :cond_8

    .line 78
    .line 79
    monitor-enter v0

    .line 80
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_7

    .line 89
    .line 90
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const-string v4, "next(...)"

    .line 95
    .line 96
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    check-cast v3, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isVipFree()Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_6

    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setNotVipFree()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoUrl()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    if-eqz v4, :cond_3

    .line 115
    .line 116
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-nez v4, :cond_4

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isRealLocked()Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_5

    .line 128
    .line 129
    invoke-virtual {v3, v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setVideoUrl(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setParsedVideo(Lcom/startshorts/androidplayer/bean/shorts/EpisodeVideo;)V

    .line 133
    .line 134
    .line 135
    sget-object v4, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 136
    .line 137
    invoke-virtual {v4, v3}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->w(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 138
    .line 139
    .line 140
    sget-object v4, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->a:Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;

    .line 141
    .line 142
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->s(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :catchall_0
    move-exception p1

    .line 151
    goto :goto_3

    .line 152
    :cond_5
    :goto_2
    sget-object v4, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->K:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 153
    .line 154
    if-eqz v4, :cond_3

    .line 155
    .line 156
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-ne v3, v4, :cond_3

    .line 165
    .line 166
    iget-object v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->w:Ljf/b;

    .line 167
    .line 168
    if-eqz v3, :cond_3

    .line 169
    .line 170
    invoke-virtual {v3}, Ljf/b;->c()I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    invoke-direct {p0, v3}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->k0(I)V

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_6
    sget-object v4, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->K:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 179
    .line 180
    if-eqz v4, :cond_3

    .line 181
    .line 182
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-ne v3, v4, :cond_3

    .line 191
    .line 192
    iget-object v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->w:Ljf/b;

    .line 193
    .line 194
    if-eqz v3, :cond_3

    .line 195
    .line 196
    invoke-virtual {v3}, Ljf/b;->c()I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    invoke-direct {p0, v3}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->k0(I)V

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_7
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .line 206
    monitor-exit v0

    .line 207
    goto :goto_4

    .line 208
    :goto_3
    monitor-exit v0

    .line 209
    throw p1

    .line 210
    :cond_8
    :goto_4
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 211
    .line 212
    new-instance v1, Lnh/e;

    .line 213
    .line 214
    invoke-direct {v1, p0}, Lnh/e;-><init>(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, p1, v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->b1(ZLkotlin/jvm/functions/Function1;)V

    .line 218
    .line 219
    .line 220
    return p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->A0()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->u0()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->x0()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->v0()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->B0()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 5
    .line 6
    const-string v1, "onDestroy"

    .line 7
    .line 8
    const-string v2, "ImmersionMiniWindow"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lkf/b;->a:Lkf/b;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v3}, Lkf/b;->h(Z)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    sput-object v1, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->K:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->q:Landroidx/lifecycle/Observer;

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    iget-object v4, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->p:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 27
    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    invoke-virtual {v4, v3}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 37
    .line 38
    .line 39
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    const-string v3, "remove mImmersionState observer"

    .line 42
    .line 43
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->s:Landroidx/lifecycle/Observer;

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    iget-object v4, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->r:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 51
    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    invoke-virtual {v4, v3}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 61
    .line 62
    .line 63
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    const-string v3, "remove mPlayerState observer"

    .line 66
    .line 67
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->t:Landroidx/lifecycle/Observer;

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    iget-object v4, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->r:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 75
    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-eqz v4, :cond_2

    .line 83
    .line 84
    invoke-virtual {v4, v3}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 85
    .line 86
    .line 87
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 88
    .line 89
    const-string v3, "remove mPlaybackTimeState observer"

    .line 90
    .line 91
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    iget-object v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->v:Landroidx/lifecycle/Observer;

    .line 95
    .line 96
    if-eqz v3, :cond_3

    .line 97
    .line 98
    iget-object v4, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->u:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 99
    .line 100
    if-eqz v4, :cond_3

    .line 101
    .line 102
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->a0()Landroidx/lifecycle/MutableLiveData;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    if-eqz v4, :cond_3

    .line 107
    .line 108
    invoke-virtual {v4, v3}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 109
    .line 110
    .line 111
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 112
    .line 113
    const-string v3, "remove mUnlockState observer"

    .line 114
    .line 115
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->p:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 119
    .line 120
    if-eqz v0, :cond_4

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->w()V

    .line 123
    .line 124
    .line 125
    :cond_4
    iput-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->p:Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 126
    .line 127
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->r:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 128
    .line 129
    if-eqz v0, :cond_5

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->w()V

    .line 132
    .line 133
    .line 134
    :cond_5
    iput-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->r:Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 135
    .line 136
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->u:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 137
    .line 138
    if-eqz v0, :cond_6

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->w()V

    .line 141
    .line 142
    .line 143
    :cond_6
    iput-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->u:Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 144
    .line 145
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->x:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;

    .line 146
    .line 147
    if-eqz v0, :cond_7

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->n()V

    .line 150
    .line 151
    .line 152
    :cond_7
    iput-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->x:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;

    .line 153
    .line 154
    return-void
.end method

.method public final receiveEpisodeListUnlockedEvent(Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;)V
    .locals 11
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "event"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 8
    .line 9
    const-string v2, "ImmersionMiniWindow"

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v4, "receive EpisodeListUnlockedEvent -> unlockType("

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getUnlockType()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v4, ") userRecharged("

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getUserRecharged()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/16 v4, 0x29

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->x:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->d()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move-object v1, v2

    .line 63
    :goto_0
    move-object v3, v1

    .line 64
    check-cast v3, Ljava/util/Collection;

    .line 65
    .line 66
    if-eqz v3, :cond_a

    .line 67
    .line 68
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_1
    monitor-enter v1

    .line 77
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getList()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const/4 v4, 0x0

    .line 87
    if-eqz p1, :cond_6

    .line 88
    .line 89
    check-cast p1, Ljava/lang/Iterable;

    .line 90
    .line 91
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_6

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    check-cast v5, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 106
    .line 107
    move-object v6, v1

    .line 108
    check-cast v6, Ljava/lang/Iterable;

    .line 109
    .line 110
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    move v7, v4

    .line 115
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-eqz v8, :cond_2

    .line 120
    .line 121
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    add-int/lit8 v9, v7, 0x1

    .line 126
    .line 127
    if-gez v7, :cond_3

    .line 128
    .line 129
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :catchall_0
    move-exception p1

    .line 134
    goto :goto_3

    .line 135
    :cond_3
    :goto_2
    check-cast v8, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 136
    .line 137
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    if-ne v8, v10, :cond_5

    .line 146
    .line 147
    invoke-virtual {v5, v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setUnlockJustNow(Z)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v1, v7, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    sget-object v7, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->K:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 154
    .line 155
    if-eqz v7, :cond_4

    .line 156
    .line 157
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    if-ne v7, v8, :cond_4

    .line 166
    .line 167
    sput-object v5, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->K:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 168
    .line 169
    :cond_4
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    :cond_5
    move v7, v9

    .line 173
    goto :goto_1

    .line 174
    :cond_6
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-nez p1, :cond_7

    .line 179
    .line 180
    invoke-direct {p0, v3}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->h0(Ljava/util/List;)Lkotlinx/coroutines/r;

    .line 181
    .line 182
    .line 183
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .line 185
    monitor-exit v1

    .line 186
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->w:Ljf/b;

    .line 187
    .line 188
    if-eqz p1, :cond_8

    .line 189
    .line 190
    invoke-static {p1, v4, v0, v2}, Ljf/b;->j(Ljf/b;ZILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_8
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->x:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;

    .line 194
    .line 195
    if-eqz p1, :cond_9

    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->k()V

    .line 198
    .line 199
    .line 200
    :cond_9
    return-void

    .line 201
    :goto_3
    monitor-exit v1

    .line 202
    throw p1

    .line 203
    :cond_a
    :goto_4
    return-void
.end method

.method public final receiveShortsPlayingEvent(Lcom/startshorts/androidplayer/bean/eventbus/ShortsPlayingEvent;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/ShortsPlayingEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    const-string v0, "ImmersionMiniWindow"

    .line 9
    .line 10
    const-string v1, "receive ShortsPlayingEvent"

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->H:Z

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->F0()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->M(Z)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final receiveShowUnlockEpisodeMethodsEvent(Lcom/startshorts/androidplayer/bean/eventbus/ShowUnlockEpisodeMethodsEvent;)V
    .locals 8
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/ShowUnlockEpisodeMethodsEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "receive ShowUnlockEpisodeMethodsEvent -> episodeId("

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/ShowUnlockEpisodeMethodsEvent;->getEpisode()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ") episodeNum("

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/ShowUnlockEpisodeMethodsEvent;->getEpisode()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, ") action("

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/ShowUnlockEpisodeMethodsEvent;->getAction()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const/16 v2, 0x29

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "ImmersionMiniWindow"

    .line 67
    .line 68
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->n()V

    .line 72
    .line 73
    .line 74
    sget-object v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->K:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 75
    .line 76
    if-nez v0, :cond_0

    .line 77
    .line 78
    return-void

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/ShowUnlockEpisodeMethodsEvent;->getEpisode()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eq p1, v1, :cond_1

    .line 92
    .line 93
    return-void

    .line 94
    :cond_1
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_2

    .line 99
    .line 100
    return-void

    .line 101
    :cond_2
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const-string p1, "status"

    .line 108
    .line 109
    const-string v0, "fail"

    .line 110
    .line 111
    invoke-virtual {v3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string p1, "scene"

    .line 115
    .line 116
    const-string v0, "pip_window"

    .line 117
    .line 118
    invoke-virtual {v3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string p1, "type"

    .line 122
    .line 123
    const-string v0, "insufficient_coins"

    .line 124
    .line 125
    invoke-virtual {v3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 129
    .line 130
    const/4 v6, 0x4

    .line 131
    const/4 v7, 0x0

    .line 132
    const-string v2, "reel_request"

    .line 133
    .line 134
    const-wide/16 v4, 0x0

    .line 135
    .line 136
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    const/4 p1, 0x0

    .line 140
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->J(Z)V

    .line 141
    .line 142
    .line 143
    const/4 p1, 0x1

    .line 144
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->M(Z)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final receiveUserRechargedEvent(Lcom/startshorts/androidplayer/bean/eventbus/UserRechargedEvent;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/UserRechargedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    const-string v0, "ImmersionMiniWindow"

    .line 9
    .line 10
    const-string v1, "receive UserRechargedEvent"

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object p1, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->K:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->K0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public w(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onNext -> fromUser("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 p1, 0x29

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "ImmersionMiniWindow"

    .line 26
    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->K:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    const-string v2, "onNext failed -> currentItem is locked"

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->M(Z)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->K0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->w:Ljf/b;

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {p1}, Ljf/b;->f()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_3

    .line 64
    .line 65
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->w:Ljf/b;

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    invoke-virtual {p1, v0}, Ljf/b;->i(Z)V

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_0
    return-void
.end method

.method public x(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onPause -> fromUser("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x29

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "ImmersionMiniWindow"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->D:Z

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->F0()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public y()V
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->K:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V0:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;

    .line 7
    .line 8
    new-instance v2, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 9
    .line 10
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "pip_window"

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->n:Ljava/lang/String;

    .line 19
    .line 20
    const-string v4, "short_auto"

    .line 21
    .line 22
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v3, 0x2

    .line 37
    :goto_0
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getFirstDramId()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeId(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeId(I)V

    .line 59
    .line 60
    .line 61
    :goto_1
    filled-new-array {v0}, [Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeList(Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    new-instance v3, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 73
    .line 74
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    invoke-virtual {v3, v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 82
    .line 83
    .line 84
    iget-object v5, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->n:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_3

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_3

    .line 97
    .line 98
    const/4 v4, 0x1

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoType()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    :goto_2
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setVideoType(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_4

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getBindShortPlayId()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setBindShortsId(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_4
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :goto_3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCoverId()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v3, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 154
    .line 155
    .line 156
    sget v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->L:F

    .line 157
    .line 158
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setPlaySpeed(F)V

    .line 159
    .line 160
    .line 161
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 162
    .line 163
    invoke-virtual {v1, p0, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public z(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onResume -> fromUser("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ") mUserPausePlay("

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->D:Z

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ") mPlayError("

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->E:Z

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v2, 0x29

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "ImmersionMiniWindow"

    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->E:Z

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->E:Z

    .line 56
    .line 57
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->D:Z

    .line 58
    .line 59
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->x:Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager;->o()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    if-nez p1, :cond_1

    .line 68
    .line 69
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->D:Z

    .line 70
    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    const-string p1, "onResume failed -> mUserPausePlay is true"

    .line 74
    .line 75
    invoke-virtual {v0, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->D:Z

    .line 80
    .line 81
    invoke-direct {p0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->I0()V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_0
    return-void
.end method
