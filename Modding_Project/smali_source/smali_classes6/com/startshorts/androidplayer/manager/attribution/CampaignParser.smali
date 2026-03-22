.class public final Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;
.super Ljava/lang/Object;
.source "CampaignParser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCampaignParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CampaignParser.kt\ncom/startshorts/androidplayer/manager/attribution/CampaignParser\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,489:1\n1010#2,2:490\n1863#2,2:492\n*S KotlinDebug\n*F\n+ 1 CampaignParser.kt\ncom/startshorts/androidplayer/manager/attribution/CampaignParser\n*L\n75#1:490,2\n250#1:492,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static c:Z

.field private static final d:Lqt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static e:J

.field private static f:J

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 7
    .line 8
    new-instance v0, Lge/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lge/a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->b:Lms/i;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v2, v0, v1}, Lqt/d;->b(ZILjava/lang/Object;)Lqt/a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->d:Lqt/a;

    .line 27
    .line 28
    const-wide/16 v0, -0x1

    .line 29
    .line 30
    sput-wide v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->e:J

    .line 31
    .line 32
    sput-wide v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->f:J

    .line 33
    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final declared-synchronized A()V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->q()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    :try_start_1
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->c:Z

    .line 12
    .line 13
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "CampaignParser:parse("

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    sget-object v2, Lud/b;->a:Lud/b;

    .line 26
    .line 27
    invoke-virtual {v2}, Lud/b;->W()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v2, 0x29

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    new-instance v5, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallParse$1;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-direct {v5, v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallParse$1;-><init>(Lrs/c;)V

    .line 47
    .line 48
    .line 49
    new-instance v6, Lge/c;

    .line 50
    .line 51
    invoke-direct {v6}, Lge/c;-><init>()V

    .line 52
    .line 53
    .line 54
    const/4 v7, 0x5

    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v2, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    monitor-exit p0

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    throw v0
.end method

.method private static final B(Ljava/lang/String;)Lkotlin/Unit;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->c:Z

    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "parse exception -> "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "CampaignParser"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 29
    .line 30
    new-instance v5, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v0, "errorMessage"

    .line 36
    .line 37
    invoke-virtual {v5, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    const/4 v8, 0x4

    .line 43
    const/4 v9, 0x0

    .line 44
    const-string v4, "campaign_parser_error"

    .line 45
    .line 46
    const-wide/16 v6, 0x0

    .line 47
    .line 48
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0
.end method

.method private final C()V
    .locals 8

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->Z()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lfk/g;->a:Lfk/g;

    .line 10
    .line 11
    invoke-virtual {v0}, Lfk/g;->d()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 16
    .line 17
    const-string v1, "CampaignParser"

    .line 18
    .line 19
    const-string v2, "queryCampaignPopularShorts"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-boolean v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->g:Z

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->g:Z

    .line 30
    .line 31
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 32
    .line 33
    new-instance v3, Landroid/os/Bundle;

    .line 34
    .line 35
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v0, "status"

    .line 39
    .line 40
    .line 41
    const-string v2, "0"

    .line 42
    .line 43
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 47
    .line 48
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->t()J

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    const-string v0, "duration"

    .line 53
    .line 54
    invoke-virtual {v3, v0, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 58
    .line 59
    const/4 v6, 0x4

    .line 60
    const/4 v7, 0x0

    .line 61
    const-string/jumbo v2, "start_to_parse"

    .line 62
    .line 63
    .line 64
    const-wide/16 v4, 0x0

    .line 65
    .line 66
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->V()V

    .line 72
    .line 73
    .line 74
    new-instance v1, Lge/e;

    .line 75
    .line 76
    invoke-direct {v1}, Lge/e;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->C(Lkotlin/jvm/functions/Function1;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private static final D(Lkotlin/Result;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    :cond_0
    check-cast p0, Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->z(Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;)Lkotlinx/coroutines/r;

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method private final E()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->s()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-le v1, v2, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$a;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$a;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->D(Ljava/util/List;Ljava/util/Comparator;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private final F()V
    .locals 11

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->Z()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lfk/g;->a:Lfk/g;

    .line 10
    .line 11
    invoke-virtual {v0}, Lfk/g;->d()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/CampaignRefreshSuccessEvent;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/eventbus/CampaignRefreshSuccessEvent;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 28
    .line 29
    const-string/jumbo v1, "tryShowPopularShorts CampaignRefreshSuccessEvent"

    .line 30
    .line 31
    .line 32
    const-string v2, "CampaignNewTag"

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->s()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/Iterable;

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/4 v3, 0x1

    .line 53
    move v4, v3

    .line 54
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;

    .line 65
    .line 66
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;->f()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-nez v6, :cond_1

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    :cond_1
    invoke-interface {v5}, Lhe/g;->name()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v5, ":"

    .line 81
    .line 82
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v5, ","

    .line 89
    .line 90
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->p()V

    .line 95
    .line 96
    .line 97
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 98
    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v6, "parser handle result -> "

    .line 105
    .line 106
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->A1(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    if-eqz v4, :cond_5

    .line 124
    .line 125
    sget-object v0, Lud/b;->a:Lud/b;

    .line 126
    .line 127
    invoke-virtual {v0}, Lud/b;->b0()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    if-eqz v0, :cond_3

    .line 132
    .line 133
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_5

    .line 138
    .line 139
    :cond_3
    const-string v0, "queryCampaignPopularShorts"

    .line 140
    .line 141
    invoke-virtual {v1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    sget-boolean v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->g:Z

    .line 145
    .line 146
    if-nez v0, :cond_4

    .line 147
    .line 148
    sput-boolean v3, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->g:Z

    .line 149
    .line 150
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 151
    .line 152
    new-instance v6, Landroid/os/Bundle;

    .line 153
    .line 154
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string/jumbo v0, "status"

    .line 158
    .line 159
    .line 160
    const-string v1, "0"

    .line 161
    .line 162
    invoke-virtual {v6, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 166
    .line 167
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->t()J

    .line 168
    .line 169
    .line 170
    move-result-wide v0

    .line 171
    const-string v2, "duration"

    .line 172
    .line 173
    invoke-virtual {v6, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 174
    .line 175
    .line 176
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 177
    .line 178
    const/4 v9, 0x4

    .line 179
    const/4 v10, 0x0

    .line 180
    const-string/jumbo v5, "start_to_parse"

    .line 181
    .line 182
    .line 183
    const-wide/16 v7, 0x0

    .line 184
    .line 185
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :cond_4
    sget-object v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 189
    .line 190
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->V()V

    .line 191
    .line 192
    .line 193
    new-instance v1, Lge/d;

    .line 194
    .line 195
    invoke-direct {v1}, Lge/d;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->C(Lkotlin/jvm/functions/Function1;)V

    .line 199
    .line 200
    .line 201
    :cond_5
    return-void
.end method

.method private static final G(Lkotlin/Result;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    :cond_0
    check-cast p0, Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->v(Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;)Lkotlinx/coroutines/r;

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->B(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->y(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->G(Lkotlin/Result;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->w()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e(Lkotlin/Result;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->D(Lkotlin/Result;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->r()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic g(Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->s()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h()Lqt/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->d:Lqt/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic i()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic j(Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->u(Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k(Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->C()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic m(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->e:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic n(Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->E()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic o(Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->F()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final p()V
    .locals 23

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->i2()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    sget-object v2, Lud/a;->a:Lud/a;

    .line 16
    .line 17
    invoke-virtual {v2}, Lud/a;->d()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    sub-long/2addr v0, v2

    .line 22
    const-wide/16 v2, 0x4e20

    .line 23
    .line 24
    cmp-long v0, v0, v2

    .line 25
    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 29
    .line 30
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->META_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->c(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    sget-object v3, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->GA_DEEPLINK:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->c(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const-string v5, "campaign"

    .line 43
    .line 44
    const-string v6, ""

    .line 45
    .line 46
    const-string v7, " not queried"

    .line 47
    .line 48
    const-string v8, "CampaignNewTag"

    .line 49
    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 53
    .line 54
    new-instance v9, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    invoke-virtual {v2, v8, v9}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->f(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1, v6}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->e(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sget-object v10, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 83
    .line 84
    new-instance v13, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$checkNotQueriedCampaignInfo$1;

    .line 85
    .line 86
    const/4 v2, 0x0

    .line 87
    invoke-direct {v13, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$checkNotQueriedCampaignInfo$1;-><init>(Lrs/c;)V

    .line 88
    .line 89
    .line 90
    const/4 v14, 0x2

    .line 91
    const/4 v15, 0x0

    .line 92
    const-string v11, "checkAFReplaceableByMetaIR"

    .line 93
    .line 94
    const/4 v12, 0x0

    .line 95
    invoke-static/range {v10 .. v15}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 96
    .line 97
    .line 98
    sget-object v16, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 99
    .line 100
    new-instance v2, Landroid/os/Bundle;

    .line 101
    .line 102
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v2, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 113
    .line 114
    const/16 v21, 0x4

    .line 115
    .line 116
    const/16 v22, 0x0

    .line 117
    .line 118
    const-string v17, "campaign_info_not_queried"

    .line 119
    .line 120
    const-wide/16 v19, 0x0

    .line 121
    .line 122
    move-object/from16 v18, v2

    .line 123
    .line 124
    invoke-static/range {v16 .. v22}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_0
    if-nez v4, :cond_1

    .line 128
    .line 129
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 130
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v1, v8, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->f(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v3, v6}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->e(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    sget-object v9, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 160
    .line 161
    new-instance v11, Landroid/os/Bundle;

    .line 162
    .line 163
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v11, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 174
    .line 175
    const/4 v14, 0x4

    .line 176
    const/4 v15, 0x0

    .line 177
    const-string v10, "campaign_info_not_queried"

    .line 178
    .line 179
    const-wide/16 v12, 0x0

    .line 180
    .line 181
    invoke-static/range {v9 .. v15}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_1
    return-void
.end method

.method private final q()Z
    .locals 7

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "CampaignNewTag"

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 9
    .line 10
    const-string v3, "parse failed -> mProcessing is true"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    sget-object v0, Lud/b;->a:Lud/b;

    .line 17
    .line 18
    invoke-virtual {v0}, Lud/b;->X()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 25
    .line 26
    const-string v3, "parse failed -> campaignInfoParsed is true"

    .line 27
    .line 28
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lfk/g;->a:Lfk/g;

    .line 32
    .line 33
    invoke-virtual {v0}, Lfk/g;->d()V

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    invoke-virtual {v0}, Lud/b;->W()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    sget-object v4, Lqe/a;->a:Lqe/a;

    .line 42
    .line 43
    invoke-virtual {v4}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getMaxCampaignInfoParseCount()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-lt v3, v5, :cond_2

    .line 52
    .line 53
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 54
    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v6, "parse failed -> campaignInfoParseCount"

    .line 61
    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lud/b;->W()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, " > "

    .line 73
    .line 74
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getMaxCampaignInfoParseCount()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v3, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sget-object v0, Lfk/g;->a:Lfk/g;

    .line 96
    .line 97
    invoke-virtual {v0}, Lfk/g;->d()V

    .line 98
    .line 99
    .line 100
    return v1

    .line 101
    :cond_2
    const/4 v0, 0x1

    .line 102
    return v0
.end method

.method private final r()J
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sget-wide v2, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->f:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    const-wide/16 v2, 0x1f4

    .line 11
    .line 12
    sub-long/2addr v0, v2

    .line 13
    const/16 v2, 0x3e8

    .line 14
    .line 15
    int-to-long v2, v2

    .line 16
    div-long/2addr v0, v2

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long v2, v0, v2

    .line 20
    .line 21
    if-gtz v2, :cond_0

    .line 22
    .line 23
    const-wide/16 v0, 0x1

    .line 24
    .line 25
    :cond_0
    return-wide v0
.end method

.method private final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method private final t()J
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sget-wide v2, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->e:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    const/16 v2, 0x3e8

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    div-long/2addr v0, v2

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    if-gtz v2, :cond_0

    .line 19
    .line 20
    const-wide/16 v0, 0x1

    .line 21
    .line 22
    :cond_0
    return-wide v0
.end method

.method private final u(Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;Lrs/c;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handleParsedCampaignInfo$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handleParsedCampaignInfo$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handleParsedCampaignInfo$1;->l:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handleParsedCampaignInfo$1;->l:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handleParsedCampaignInfo$1;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handleParsedCampaignInfo$1;-><init>(Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;Lrs/c;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handleParsedCampaignInfo$1;->j:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget v4, v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handleParsedCampaignInfo$1;->l:I

    .line 38
    .line 39
    const-string v5, "err_msg"

    .line 40
    .line 41
    const/4 v6, 0x2

    .line 42
    const/4 v7, 0x0

    .line 43
    const-string v8, "CampaignNewTag"

    .line 44
    .line 45
    const/4 v9, 0x1

    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    if-eq v4, v9, :cond_2

    .line 49
    .line 50
    if-ne v4, v6, :cond_1

    .line 51
    .line 52
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_3

    .line 56
    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_2
    iget-object v4, v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handleParsedCampaignInfo$1;->i:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v4, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 68
    .line 69
    iget-object v10, v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handleParsedCampaignInfo$1;->h:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v10, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;

    .line 72
    .line 73
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    move-object v0, v10

    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :cond_3
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    sget-object v0, Lud/b;->a:Lud/b;

    .line 83
    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;->getShortPlayId()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v0, v4}, Lud/b;->l3(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sget-boolean v4, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->g:Z

    .line 96
    .line 97
    if-nez v4, :cond_4

    .line 98
    .line 99
    sput-boolean v9, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->g:Z

    .line 100
    .line 101
    sget-object v4, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 104
    .line 105
    .line 106
    move-result-wide v10

    .line 107
    sput-wide v10, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->f:J

    .line 108
    .line 109
    sget-object v12, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 110
    .line 111
    new-instance v14, Landroid/os/Bundle;

    .line 112
    .line 113
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;->getShortPlayId()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    const-string v10, "reel_id"

    .line 125
    .line 126
    invoke-virtual {v14, v10, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string/jumbo v4, "status"

    .line 130
    .line 131
    .line 132
    const-string v10, "1"

    .line 133
    .line 134
    invoke-virtual {v14, v4, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    sget-object v4, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 138
    .line 139
    invoke-direct {v4}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->t()J

    .line 140
    .line 141
    .line 142
    move-result-wide v10

    .line 143
    const-string v4, "duration"

    .line 144
    .line 145
    invoke-virtual {v14, v4, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 146
    .line 147
    .line 148
    const-string v4, "campaign"

    .line 149
    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;->getCampaign()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    invoke-virtual {v14, v4, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 158
    .line 159
    const/16 v17, 0x4

    .line 160
    .line 161
    const/16 v18, 0x0

    .line 162
    .line 163
    const-string/jumbo v13, "start_to_parse"

    .line 164
    .line 165
    .line 166
    const-wide/16 v15, 0x0

    .line 167
    .line 168
    invoke-static/range {v12 .. v18}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :cond_4
    invoke-virtual {v0}, Lud/b;->g2()Z

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    if-nez v4, :cond_5

    .line 176
    .line 177
    invoke-virtual {v0, v9}, Lud/b;->n3(Z)V

    .line 178
    .line 179
    .line 180
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->k()Lkotlinx/coroutines/r;

    .line 183
    .line 184
    .line 185
    :cond_5
    sget-object v0, Lfk/a;->a:Lfk/a;

    .line 186
    .line 187
    invoke-virtual {v0}, Lfk/a;->d()Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    if-eqz v4, :cond_7

    .line 192
    .line 193
    sget-object v0, Laa/a;->a:Laa/a;

    .line 194
    .line 195
    invoke-virtual {v0}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    if-eqz v0, :cond_6

    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Lcom/hades/aar/activity/IDActivity;

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_6
    move-object v0, v7

    .line 209
    :goto_1
    instance-of v0, v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 210
    .line 211
    if-eqz v0, :cond_8

    .line 212
    .line 213
    :cond_7
    move-object/from16 v0, p1

    .line 214
    .line 215
    goto/16 :goto_4

    .line 216
    .line 217
    :cond_8
    sget-object v0, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->a:Lcom/startshorts/androidplayer/manager/update/UpdateManager;

    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->k()Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_9

    .line 224
    .line 225
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 226
    .line 227
    const-string/jumbo v1, "show ImmersionActivity failed -> ForceShowingUpdateDialog is showing"

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v8, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    sget-object v0, Lfk/g;->a:Lfk/g;

    .line 234
    .line 235
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;->getShortPlayId()I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    const/4 v3, 0x3

    .line 244
    invoke-virtual {v0, v3, v1}, Lfk/g;->b(ILjava/lang/String;)V

    .line 245
    .line 246
    .line 247
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 248
    .line 249
    return-object v0

    .line 250
    :cond_9
    sget-object v0, Lud/a;->a:Lud/a;

    .line 251
    .line 252
    invoke-virtual {v0}, Lud/a;->t()Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-nez v0, :cond_a

    .line 257
    .line 258
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 259
    .line 260
    const-string/jumbo v1, "show ImmersionActivity failed -> onForeground is false"

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v8, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    sget-object v9, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 267
    .line 268
    new-instance v11, Landroid/os/Bundle;

    .line 269
    .line 270
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 271
    .line 272
    .line 273
    const-string v0, "onForeground is false"

    .line 274
    .line 275
    invoke-virtual {v11, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 279
    .line 280
    const/4 v14, 0x4

    .line 281
    const/4 v15, 0x0

    .line 282
    const-string v10, "campaign_shorts_show_failed"

    .line 283
    .line 284
    const-wide/16 v12, 0x0

    .line 285
    .line 286
    invoke-static/range {v9 .. v15}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    sget-object v0, Lfk/g;->a:Lfk/g;

    .line 290
    .line 291
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;->getShortPlayId()I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    const/4 v3, 0x4

    .line 300
    invoke-virtual {v0, v3, v1}, Lfk/g;->b(ILjava/lang/String;)V

    .line 301
    .line 302
    .line 303
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 304
    .line 305
    return-object v0

    .line 306
    :cond_a
    move-object/from16 v0, p1

    .line 307
    .line 308
    iput-object v0, v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handleParsedCampaignInfo$1;->h:Ljava/lang/Object;

    .line 309
    .line 310
    iput-object v4, v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handleParsedCampaignInfo$1;->i:Ljava/lang/Object;

    .line 311
    .line 312
    iput v9, v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handleParsedCampaignInfo$1;->l:I

    .line 313
    .line 314
    const-wide/16 v10, 0x1f4

    .line 315
    .line 316
    invoke-static {v10, v11, v1}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v10

    .line 320
    if-ne v10, v3, :cond_b

    .line 321
    .line 322
    return-object v3

    .line 323
    :cond_b
    :goto_2
    sget-object v10, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 324
    .line 325
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->O()Z

    .line 326
    .line 327
    .line 328
    move-result v10

    .line 329
    if-eqz v10, :cond_c

    .line 330
    .line 331
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 332
    .line 333
    const-string/jumbo v3, "show ImmersionActivity failed -> FullScreenAd is showing"

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1, v8, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    sget-object v9, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 340
    .line 341
    new-instance v11, Landroid/os/Bundle;

    .line 342
    .line 343
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 344
    .line 345
    .line 346
    const-string v1, "ad is showing"

    .line 347
    .line 348
    invoke-virtual {v11, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 352
    .line 353
    const/4 v14, 0x4

    .line 354
    const/4 v15, 0x0

    .line 355
    const-string v10, "campaign_shorts_show_failed"

    .line 356
    .line 357
    const-wide/16 v12, 0x0

    .line 358
    .line 359
    invoke-static/range {v9 .. v15}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    sget-object v1, Lfk/g;->a:Lfk/g;

    .line 363
    .line 364
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;->getShortPlayId()I

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    const/4 v3, 0x5

    .line 373
    invoke-virtual {v1, v3, v0}, Lfk/g;->b(ILjava/lang/String;)V

    .line 374
    .line 375
    .line 376
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 377
    .line 378
    return-object v0

    .line 379
    :cond_c
    sget-object v5, Lud/b;->a:Lud/b;

    .line 380
    .line 381
    invoke-virtual {v5}, Lud/b;->X()Z

    .line 382
    .line 383
    .line 384
    move-result v10

    .line 385
    if-eqz v10, :cond_d

    .line 386
    .line 387
    sget-object v1, Lfk/g;->a:Lfk/g;

    .line 388
    .line 389
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;->getShortPlayId()I

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    const/4 v3, 0x6

    .line 398
    invoke-virtual {v1, v3, v0}, Lfk/g;->b(ILjava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1}, Lfk/g;->d()V

    .line 402
    .line 403
    .line 404
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 405
    .line 406
    return-object v0

    .line 407
    :cond_d
    invoke-virtual {v5, v9}, Lud/b;->h3(Z)V

    .line 408
    .line 409
    .line 410
    sget-object v5, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 411
    .line 412
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->V()V

    .line 413
    .line 414
    .line 415
    sget-object v5, Lud/a;->a:Lud/a;

    .line 416
    .line 417
    invoke-virtual {v5, v9}, Lud/a;->d0(Z)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v5}, Lud/a;->Q()Z

    .line 421
    .line 422
    .line 423
    move-result v9

    .line 424
    if-eqz v9, :cond_e

    .line 425
    .line 426
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 427
    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .line 432
    .line 433
    const-string v4, "handleParsedCampaignInfo isJumpImmersionThisActive "

    .line 434
    .line 435
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v5}, Lud/a;->Q()Z

    .line 439
    .line 440
    .line 441
    move-result v4

    .line 442
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    invoke-virtual {v1, v8, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    sget-object v1, Lfk/g;->a:Lfk/g;

    .line 453
    .line 454
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;->getShortPlayId()I

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    const/4 v3, 0x7

    .line 463
    invoke-virtual {v1, v3, v0}, Lfk/g;->b(ILjava/lang/String;)V

    .line 464
    .line 465
    .line 466
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 467
    .line 468
    return-object v0

    .line 469
    :cond_e
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 470
    .line 471
    .line 472
    move-result-object v5

    .line 473
    new-instance v8, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handleParsedCampaignInfo$5;

    .line 474
    .line 475
    invoke-direct {v8, v4, v0, v7}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handleParsedCampaignInfo$5;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;Lrs/c;)V

    .line 476
    .line 477
    .line 478
    iput-object v7, v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handleParsedCampaignInfo$1;->h:Ljava/lang/Object;

    .line 479
    .line 480
    iput-object v7, v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handleParsedCampaignInfo$1;->i:Ljava/lang/Object;

    .line 481
    .line 482
    iput v6, v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handleParsedCampaignInfo$1;->l:I

    .line 483
    .line 484
    invoke-static {v5, v8, v1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    if-ne v0, v3, :cond_f

    .line 489
    .line 490
    return-object v3

    .line 491
    :cond_f
    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 492
    .line 493
    return-object v0

    .line 494
    :goto_4
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 495
    .line 496
    const-string/jumbo v3, "show ImmersionActivity failed -> TopActivity is not ImmersionActivity or Not MainActivity"

    .line 497
    .line 498
    .line 499
    invoke-virtual {v1, v8, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    sget-object v1, Lfk/g;->a:Lfk/g;

    .line 503
    .line 504
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;->getShortPlayId()I

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-virtual {v1, v6, v0}, Lfk/g;->b(ILjava/lang/String;)V

    .line 513
    .line 514
    .line 515
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 516
    .line 517
    return-object v0
.end method

.method private final v(Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p1, v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$handlePopularShorts$1;-><init>(Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "handlePopularShorts"

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

.method private static final w()Ljava/util/List;
    .locals 11

    .line 1
    new-instance v0, Lhe/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lhe/i;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lhe/c;

    .line 12
    .line 13
    invoke-direct {v2}, Lhe/c;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lhe/h;

    .line 17
    .line 18
    invoke-direct {v3}, Lhe/h;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v4, Lhe/d;

    .line 22
    .line 23
    invoke-direct {v4}, Lhe/d;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v5, Lhe/f;

    .line 27
    .line 28
    invoke-direct {v5}, Lhe/f;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v6, Lhe/e;

    .line 32
    .line 33
    invoke-direct {v6}, Lhe/e;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v7, Lhe/a;

    .line 37
    .line 38
    invoke-direct {v7}, Lhe/a;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v8, Lhe/b;

    .line 42
    .line 43
    invoke-direct {v8}, Lhe/b;-><init>()V

    .line 44
    .line 45
    .line 46
    const/16 v9, 0x9

    .line 47
    .line 48
    new-array v9, v9, [Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;

    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    aput-object v0, v9, v10

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    aput-object v1, v9, v0

    .line 55
    .line 56
    const/4 v0, 0x2

    .line 57
    aput-object v2, v9, v0

    .line 58
    .line 59
    const/4 v0, 0x3

    .line 60
    aput-object v3, v9, v0

    .line 61
    .line 62
    const/4 v0, 0x4

    .line 63
    aput-object v4, v9, v0

    .line 64
    .line 65
    const/4 v0, 0x5

    .line 66
    aput-object v5, v9, v0

    .line 67
    .line 68
    const/4 v0, 0x6

    .line 69
    aput-object v6, v9, v0

    .line 70
    .line 71
    const/4 v0, 0x7

    .line 72
    aput-object v7, v9, v0

    .line 73
    .line 74
    const/16 v0, 0x8

    .line 75
    .line 76
    aput-object v8, v9, v0

    .line 77
    .line 78
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0
.end method

.method private static final y(Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->c:Z

    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "parse exception -> "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v1, "CampaignNewTag"

    .line 24
    .line 25
    invoke-virtual {v0, v1, p0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method private final z(Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p1, v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallHandlePopularShorts$1;-><init>(Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "handlePopularShorts"

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


# virtual methods
.method public final declared-synchronized x()V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 3
    .line 4
    const-string v1, "CampaignNewTag"

    .line 5
    .line 6
    const-string v2, "CampaignParser parse() start"

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lfk/h;->a:Lfk/h;

    .line 12
    .line 13
    invoke-virtual {v0}, Lfk/h;->b()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->A()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->q()Z

    .line 26
    .line 27
    .line 28
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    :try_start_1
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->c:Z

    .line 35
    .line 36
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v2, "CampaignParser:parse("

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    sget-object v2, Lud/b;->a:Lud/b;

    .line 49
    .line 50
    invoke-virtual {v2}, Lud/b;->W()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const/16 v2, 0x29

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    new-instance v5, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$parse$1;

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-direct {v5, v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser$parse$1;-><init>(Lrs/c;)V

    .line 70
    .line 71
    .line 72
    new-instance v6, Lge/b;

    .line 73
    .line 74
    invoke-direct {v6}, Lge/b;-><init>()V

    .line 75
    .line 76
    .line 77
    const/4 v7, 0x5

    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v2, 0x0

    .line 80
    const/4 v4, 0x0

    .line 81
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    :goto_0
    monitor-exit p0

    .line 85
    return-void

    .line 86
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    throw v0
.end method
