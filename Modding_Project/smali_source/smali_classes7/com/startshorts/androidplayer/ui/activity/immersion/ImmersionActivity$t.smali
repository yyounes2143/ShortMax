.class public final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;
.super Ljava/lang/Object;
.source "ImmersionActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->E6()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$initEpisodeManager$1\n+ 2 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,6800:1\n4827#2:6801\n4827#2:6803\n1#3:6802\n1#3:6804\n*S KotlinDebug\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$initEpisodeManager$1\n*L\n1723#1:6801\n1835#1:6803\n1723#1:6802\n1835#1:6804\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic f(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->g(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final g(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lkotlin/Unit;
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->Q:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;

    .line 2
    .line 3
    const/16 v7, 0x1c

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    const-string v2, "immersion"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v6, "current_membership_upgrade"

    .line 12
    .line 13
    move-object v1, p0

    .line 14
    invoke-static/range {v0 .. v8}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;->b(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public a(ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 7

    .line 1
    const-string v0, "lastEpisode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->c2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->i()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 21
    .line 22
    sget-object v2, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;->PLAY_EPISODE_END:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 23
    .line 24
    new-instance v3, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 30
    .line 31
    const-string v5, "episode"

    .line 32
    .line 33
    invoke-interface {v3, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const-string v0, "real_watch_time"

    .line 41
    .line 42
    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    invoke-static {v4}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->d2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Ljava/lang/Iterable;

    .line 50
    .line 51
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v5, 0x0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    move-object v6, v0

    .line 67
    check-cast v6, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;

    .line 68
    .line 69
    instance-of v6, v6, Lcom/startshorts/androidplayer/manager/immersion/feature/n;

    .line 70
    .line 71
    if-eqz v6, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    move-object v0, v5

    .line 75
    :goto_1
    instance-of p2, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;

    .line 76
    .line 77
    if-nez p2, :cond_3

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    move-object v5, v0

    .line 81
    :goto_2
    check-cast v5, Lcom/startshorts/androidplayer/manager/immersion/feature/n;

    .line 82
    .line 83
    if-eqz v5, :cond_4

    .line 84
    .line 85
    const-string p2, "play_resolution"

    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->l()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    :cond_4
    const-string p2, "immersion_job_manager"

    .line 95
    .line 96
    invoke-static {v4}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->i2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 104
    .line 105
    new-instance p2, Lcom/startshorts/androidplayer/manager/immersion/feature/k;

    .line 106
    .line 107
    invoke-direct {p2, v2, v3}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;Ljava/util/HashMap;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v1, p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->A3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V

    .line 111
    .line 112
    .line 113
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 114
    .line 115
    invoke-static {p2, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->M1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;I)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public b(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V
    .locals 4

    .line 1
    const-string p1, "newEpisode"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->B3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->W2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 18
    .line 19
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;->SWITCH_SHORTS:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 20
    .line 21
    invoke-static {p1, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->z3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->f2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$j;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$j;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->e0(Lcom/startshorts/androidplayer/viewmodel/immersion/c;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->m2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_0

    .line 55
    .line 56
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->m3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 62
    .line 63
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->s3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 67
    .line 68
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->r3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    const/4 v1, 0x1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 79
    .line 80
    invoke-static {p2, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->N1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-nez p2, :cond_2

    .line 89
    .line 90
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 91
    .line 92
    const-wide/16 v2, 0x2710

    .line 93
    .line 94
    invoke-static {p2, v2, v3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->H1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;J)V

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_0
    const-string p2, "IntroductionDialog"

    .line 98
    .line 99
    const-string v2, "EpisodeListDialog"

    .line 100
    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 104
    .line 105
    invoke-static {p1, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->P1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 109
    .line 110
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->P1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    if-nez p3, :cond_5

    .line 115
    .line 116
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 117
    .line 118
    invoke-static {p1, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Z2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_4

    .line 123
    .line 124
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 125
    .line 126
    const-wide/16 v2, 0x0

    .line 127
    .line 128
    invoke-static {p1, v2, v3, v1, v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->J9(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;JILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 132
    .line 133
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Z2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_5

    .line 138
    .line 139
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 140
    .line 141
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->c4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 142
    .line 143
    .line 144
    :cond_5
    :goto_1
    return-void
.end method

.method public c(ZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 6

    .line 1
    const-string p2, "newEpisode"

    .line 2
    .line 3
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p2, Lud/b;->a:Lud/b;

    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 9
    .line 10
    new-instance v1, Ljava/util/Date;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/utils/TimeUtil;->f(Ljava/util/Date;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p2, v0}, Lud/b;->a(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object p2, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->a:Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 35
    .line 36
    new-instance v3, Lyh/o2;

    .line 37
    .line 38
    invoke-direct {v3, v2}, Lyh/o2;-><init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0, v1, v3}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->i(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    sget-object p2, Lud/a;->a:Lud/a;

    .line 45
    .line 46
    invoke-virtual {p2}, Lud/a;->q()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 53
    .line 54
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->e2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-nez p2, :cond_0

    .line 59
    .line 60
    const-string p2, "mImmersionParams"

    .line 61
    .line 62
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 p2, 0x0

    .line 66
    :cond_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getShortsInfo()Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    sget-object v0, Lfk/q;->a:Lfk/q;

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->getUpack()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const/4 v4, 0x1

    .line 77
    const/4 v5, 0x0

    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-static/range {v0 .. v5}, Lfk/q;->f(Lfk/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    new-instance v0, Lcom/startshorts/androidplayer/bean/eventbus/EpisodePlayingEvent;

    .line 87
    .line 88
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-direct {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodePlayingEvent;-><init>(III)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v0}, Lau/c;->l(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 107
    .line 108
    invoke-static {p2, p3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->n3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 109
    .line 110
    .line 111
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 112
    .line 113
    invoke-static {p2, p3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->o3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 114
    .line 115
    .line 116
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 117
    .line 118
    invoke-static {p2, p1, p3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->J1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;ZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 122
    .line 123
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->d3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    const/4 p2, 0x1

    .line 128
    if-nez p1, :cond_2

    .line 129
    .line 130
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 131
    .line 132
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Q3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_3

    .line 141
    .line 142
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 143
    .line 144
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->I1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 148
    .line 149
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->N1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 150
    .line 151
    .line 152
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 153
    .line 154
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->g2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_4

    .line 159
    .line 160
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 161
    .line 162
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->c2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    if-eqz p1, :cond_4

    .line 167
    .line 168
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->c(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 169
    .line 170
    .line 171
    :cond_4
    return-void
.end method

.method public d(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager$PlayFailedReason;ZZ)V
    .locals 3

    .line 1
    const-string v0, "episode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "reason"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t$a;->$EnumSwitchMapping$0:[I

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    aget p2, v0, p2

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v1, 0x2

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eq p2, v2, :cond_4

    .line 23
    .line 24
    if-eq p2, v1, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x3

    .line 27
    if-ne p2, p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->D2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 37
    .line 38
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 43
    .line 44
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->z2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-nez p2, :cond_2

    .line 61
    .line 62
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 63
    .line 64
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->z2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_2
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 80
    .line 81
    invoke-static {p2, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->q3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 82
    .line 83
    .line 84
    if-eqz p3, :cond_3

    .line 85
    .line 86
    if-eqz p4, :cond_3

    .line 87
    .line 88
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 89
    .line 90
    const-string p2, "auto"

    .line 91
    .line 92
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->K3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    if-nez p3, :cond_5

    .line 96
    .line 97
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    if-eqz p3, :cond_5

    .line 112
    .line 113
    const-string p3, "onEpisodePlayFailed(REASON_LOCKED)"

    .line 114
    .line 115
    invoke-virtual {p2, p3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V4(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    if-nez p3, :cond_5

    .line 120
    .line 121
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->p2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    invoke-static {p2, p1, v0, p3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->z4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_4
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 130
    .line 131
    invoke-static {p2, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->H3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 132
    .line 133
    .line 134
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 135
    .line 136
    const-string p3, "REASON_INVALID_URL"

    .line 137
    .line 138
    const/4 p4, 0x0

    .line 139
    invoke-static {p2, p3, v0, v1, p4}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->ga(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 143
    .line 144
    invoke-static {p2, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->q3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 148
    .line 149
    sget p2, Lcom/startshorts/androidplayer/R$string;->common_play_failed:I

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    .line 152
    .line 153
    .line 154
    :cond_5
    :goto_0
    return-void
.end method

.method public e(ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V
    .locals 7

    .line 1
    const-string v0, "episode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->T1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-static {v1, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->R2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "onEpisodeEnablePlay -> episodeNum("

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v3, ") startPosition("

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, ") expectResolutionIfAuto("

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 v3, 0x29

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 63
    .line 64
    sget-object v2, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;->PLAY_EPISODE_START:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 65
    .line 66
    new-instance v3, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 72
    .line 73
    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const-string v0, "expect_resolution_if_auto"

    .line 77
    .line 78
    invoke-interface {v3, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    invoke-static {v4}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->d2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    check-cast p3, Ljava/lang/Iterable;

    .line 86
    .line 87
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    const/4 v5, 0x0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    move-object v6, v0

    .line 103
    check-cast v6, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;

    .line 104
    .line 105
    instance-of v6, v6, Lcom/startshorts/androidplayer/manager/immersion/feature/n;

    .line 106
    .line 107
    if-eqz v6, :cond_0

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    move-object v0, v5

    .line 111
    :goto_0
    instance-of p3, v0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;

    .line 112
    .line 113
    if-nez p3, :cond_2

    .line 114
    .line 115
    move-object v0, v5

    .line 116
    :cond_2
    check-cast v0, Lcom/startshorts/androidplayer/manager/immersion/feature/n;

    .line 117
    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    const-string p3, "play_resolution"

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->l()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {v3, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    :cond_3
    const-string p3, "immersion_job_manager"

    .line 130
    .line 131
    invoke-static {v4}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->i2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-interface {v3, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    sget-object p3, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;

    .line 139
    .line 140
    invoke-static {v4}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->e2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-nez v0, :cond_4

    .line 145
    .line 146
    const-string v0, "mImmersionParams"

    .line 147
    .line 148
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    move-object v5, v0

    .line 153
    :goto_1
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->getPlaySpeed()F

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    invoke-virtual {p3, v0}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->create(F)Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 158
    .line 159
    .line 160
    move-result-object p3

    .line 161
    const-string v0, "default_play_speed"

    .line 162
    .line 163
    invoke-interface {v3, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 167
    .line 168
    new-instance p3, Lcom/startshorts/androidplayer/manager/immersion/feature/k;

    .line 169
    .line 170
    invoke-direct {p3, v2, v3}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;Ljava/util/HashMap;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v1, p3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->A3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V

    .line 174
    .line 175
    .line 176
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 177
    .line 178
    const-string v0, "other"

    .line 179
    .line 180
    invoke-static {p3, v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->K3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 184
    .line 185
    const-string v0, "UnlockEpisodeMethodDialog"

    .line 186
    .line 187
    invoke-static {p3, v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->P1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 191
    .line 192
    invoke-static {p3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->t4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 193
    .line 194
    .line 195
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 196
    .line 197
    invoke-static {p3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->I2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 198
    .line 199
    .line 200
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 201
    .line 202
    invoke-static {p3, p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->p3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 203
    .line 204
    .line 205
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 206
    .line 207
    invoke-static {p3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->P2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 208
    .line 209
    .line 210
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 211
    .line 212
    invoke-static {p3, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->l3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$t;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 216
    .line 217
    const-string p2, "onEpisodeEnablePlay"

    .line 218
    .line 219
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V4(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    return-void
.end method
