.class public final Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;
.super Ljava/lang/Object;
.source "CampaignProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCampaignProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CampaignProvider.kt\ncom/startshorts/androidplayer/manager/attribution/CampaignProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,133:1\n1863#2,2:134\n1#3:136\n*S KotlinDebug\n*F\n+ 1 CampaignProvider.kt\ncom/startshorts/androidplayer/manager/attribution/CampaignProvider\n*L\n52#1:134,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;

    .line 7
    .line 8
    new-instance v0, Lge/f;

    .line 9
    .line 10
    invoke-direct {v0}, Lge/f;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->b:Lms/i;

    .line 18
    .line 19
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

.method public static synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->i()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->n(Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->p(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->f()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string/jumbo v0, "utm_source=google_play&utm_medium=pre_install"

    .line 2
    .line 3
    .line 4
    return-object v0
.end method

.method private final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->b:Lms/i;

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

.method private final h(Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Lie/j;->a()Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "query("

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, ") failed -> "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "CampaignNewTag"

    .line 33
    .line 34
    invoke-virtual {v1, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->g(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->f(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 43
    .line 44
    .line 45
    const-string p2, ""

    .line 46
    .line 47
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->e(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->META_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 51
    .line 52
    if-ne v0, p1, :cond_0

    .line 53
    .line 54
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 55
    .line 56
    new-instance v4, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider$handleQueryFailed$1;

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    invoke-direct {v4, p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider$handleQueryFailed$1;-><init>(Lrs/c;)V

    .line 60
    .line 61
    .line 62
    const/4 v5, 0x2

    .line 63
    const/4 v6, 0x0

    .line 64
    const-string v2, "checkAFReplaceableByMetaIR"

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method

.method private static final i()Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/manager/attribution/provider/d;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/d;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;

    .line 17
    .line 18
    invoke-direct {v3}, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v4, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;

    .line 22
    .line 23
    invoke-direct {v4}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v5, Lcom/startshorts/androidplayer/manager/attribution/provider/c;

    .line 27
    .line 28
    invoke-direct {v5}, Lcom/startshorts/androidplayer/manager/attribution/provider/c;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v6, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;

    .line 32
    .line 33
    invoke-direct {v6}, Lcom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v7, Lcom/startshorts/androidplayer/manager/attribution/provider/e;

    .line 37
    .line 38
    invoke-direct {v7}, Lcom/startshorts/androidplayer/manager/attribution/provider/e;-><init>()V

    .line 39
    .line 40
    .line 41
    const/16 v8, 0x8

    .line 42
    .line 43
    new-array v8, v8, [Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;

    .line 44
    .line 45
    const/4 v9, 0x0

    .line 46
    aput-object v0, v8, v9

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    aput-object v1, v8, v0

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    aput-object v2, v8, v0

    .line 53
    .line 54
    const/4 v0, 0x3

    .line 55
    aput-object v3, v8, v0

    .line 56
    .line 57
    const/4 v0, 0x4

    .line 58
    aput-object v4, v8, v0

    .line 59
    .line 60
    const/4 v0, 0x5

    .line 61
    aput-object v5, v8, v0

    .line 62
    .line 63
    const/4 v0, 0x6

    .line 64
    aput-object v6, v8, v0

    .line 65
    .line 66
    const/4 v0, 0x7

    .line 67
    aput-object v7, v8, v0

    .line 68
    .line 69
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0
.end method

.method private final j()V
    .locals 3

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->X()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "CampaignNewTag"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 12
    .line 13
    const-string v2, "query failed -> campaignInfoParsed is true"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 20
    .line 21
    const-string v2, "query reportLPInfo request"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->e()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->M(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private final k(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->PRE_INSTALL:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v1, "CampaignNewTag"

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-object v0, Lud/b;->a:Lud/b;

    .line 20
    .line 21
    invoke-virtual {v0}, Lud/b;->X()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v3, "query reportLPInfo request campaignType:"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->e()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->M(Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    :goto_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 66
    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "queryAsync failed -> campaignInfoParsed is true campaignType:"

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method private static final n(Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->h(Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final p(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Ljava/lang/String;)Lkotlin/Unit;
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
    const-string v2, "query("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p0, ") failed -> "

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string p1, "CampaignNewTag"

    .line 29
    .line 30
    invoke-virtual {v0, p1, p0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method


# virtual methods
.method public final g(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/manager/attribution/CampaignType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "campaignType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lfk/h;->a:Lfk/h;

    .line 7
    .line 8
    invoke-virtual {v0}, Lfk/h;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->f()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Iterable;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    move-object v3, v2

    .line 36
    check-cast v3, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;

    .line 37
    .line 38
    invoke-interface {v3}, Lie/j;->a()Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-ne v3, p1, :cond_0

    .line 43
    .line 44
    move-object v1, v2

    .line 45
    :cond_1
    check-cast v1, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;

    .line 46
    .line 47
    :cond_2
    return-object v1
.end method

.method public final l(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/manager/attribution/CampaignType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/attribution/CampaignType;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lfk/h;->a:Lfk/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/h;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->f()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Iterable;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    move-object v2, v1

    .line 30
    check-cast v2, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;

    .line 31
    .line 32
    invoke-interface {v2}, Lie/j;->a()Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, 0x0

    .line 52
    :goto_0
    check-cast v1, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 57
    .line 58
    invoke-virtual {p1}, Lfk/u;->b()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v1, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->j(Landroid/content/Context;Lrs/c;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    if-ne p1, p2, :cond_2

    .line 71
    .line 72
    return-object p1

    .line 73
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 74
    .line 75
    return-object p1

    .line 76
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 77
    .line 78
    return-object p1
.end method

.method public final m()V
    .locals 11

    .line 1
    sget-object v0, Lfk/h;->a:Lfk/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/h;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->j()V

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    sget-object v0, Lud/b;->a:Lud/b;

    .line 14
    .line 15
    invoke-virtual {v0}, Lud/b;->X()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 22
    .line 23
    const-string v1, "CampaignNewTag"

    .line 24
    .line 25
    const-string v2, "query failed -> campaignInfoParsed is true"

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lfk/g;->a:Lfk/g;

    .line 31
    .line 32
    invoke-virtual {v0}, Lfk/g;->d()V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AF_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->o(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 42
    .line 43
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->f()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/Iterable;

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;

    .line 68
    .line 69
    sget-object v3, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 70
    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v5, "CampaignProvider:query("

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-interface {v2}, Lie/j;->a()Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const/16 v5, 0x29

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    new-instance v7, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider$query$1$1;

    .line 98
    .line 99
    const/4 v4, 0x0

    .line 100
    invoke-direct {v7, v2, v0, v4}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider$query$1$1;-><init>(Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;Landroid/content/Context;Lrs/c;)V

    .line 101
    .line 102
    .line 103
    new-instance v8, Lge/h;

    .line 104
    .line 105
    invoke-direct {v8, v2}, Lge/h;-><init>(Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;)V

    .line 106
    .line 107
    .line 108
    const/4 v9, 0x5

    .line 109
    const/4 v10, 0x0

    .line 110
    const/4 v6, 0x0

    .line 111
    invoke-static/range {v3 .. v10}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    :goto_1
    return-void
.end method

.method public final o(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V
    .locals 9
    .param p1    # Lcom/startshorts/androidplayer/manager/attribution/CampaignType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "campaignType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lfk/h;->a:Lfk/h;

    .line 7
    .line 8
    invoke-virtual {v0}, Lfk/h;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->k(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->PRE_INSTALL:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "CampaignProvider:query("

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 v2, 0x29

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    new-instance v5, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider$queryAsync$1;

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-direct {v5, p1, v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider$queryAsync$1;-><init>(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Lrs/c;)V

    .line 63
    .line 64
    .line 65
    new-instance v6, Lge/g;

    .line 66
    .line 67
    invoke-direct {v6, p1}, Lge/g;-><init>(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 68
    .line 69
    .line 70
    const/4 v7, 0x5

    .line 71
    const/4 v8, 0x0

    .line 72
    const/4 v2, 0x0

    .line 73
    const/4 v4, 0x0

    .line 74
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void
.end method
