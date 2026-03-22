.class public final Lfh/a;
.super Ljava/lang/Object;
.source "RewardsLocalDS.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfh/a;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 2
    .line 3
    new-instance v1, Ljava/util/Date;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Y:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;->a()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    sget-object v3, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->YEAR_MONTH_DAY:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/utils/TimeUtil;->h(Ljava/util/Date;Ljava/lang/String;Lcom/startshorts/androidplayer/utils/TimeUtil$Template;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public final b()Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lfh/a;->a:Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-direct {p0}, Lfh/a;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lud/b;->y1(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final e()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lfh/a;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Lud/b;->a:Lud/b;

    .line 12
    .line 13
    invoke-virtual {v2, v0, v1}, Lud/b;->d0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final f()V
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lfh/a;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Lud/b;->a:Lud/b;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v2, v0, v1, v3}, Lud/b;->o3(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final g(Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lfh/a;->a:Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;

    .line 2
    .line 3
    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0}, Lfh/a;->d()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v0, v1, v2}, Lud/b;->L4(ZLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
