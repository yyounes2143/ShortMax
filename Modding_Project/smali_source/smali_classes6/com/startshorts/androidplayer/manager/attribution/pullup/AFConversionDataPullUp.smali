.class public final Lcom/startshorts/androidplayer/manager/attribution/pullup/AFConversionDataPullUp;
.super Lcom/startshorts/androidplayer/manager/attribution/pullup/BaseCampaignPullUp;
.source "AFConversionDataPullUp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/attribution/pullup/AFConversionDataPullUp$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/attribution/pullup/AFConversionDataPullUp$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/pullup/AFConversionDataPullUp$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/pullup/AFConversionDataPullUp$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/pullup/AFConversionDataPullUp;->a:Lcom/startshorts/androidplayer/manager/attribution/pullup/AFConversionDataPullUp$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/pullup/BaseCampaignPullUp;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d(Lcom/startshorts/androidplayer/manager/attribution/pullup/AFConversionDataPullUp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/attribution/pullup/AFConversionDataPullUp;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object p3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "AF PullUp handleQuerySuccess -> "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "CampaignNewTag"

    .line 21
    .line 22
    invoke-virtual {p3, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 26
    .line 27
    new-instance v5, Lcom/startshorts/androidplayer/manager/attribution/pullup/AFConversionDataPullUp$handleQuerySuccess$1;

    .line 28
    .line 29
    const/4 p3, 0x0

    .line 30
    invoke-direct {v5, p2, p1, p3}, Lcom/startshorts/androidplayer/manager/attribution/pullup/AFConversionDataPullUp$handleQuerySuccess$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 31
    .line 32
    .line 33
    const/4 v6, 0x2

    .line 34
    const/4 v7, 0x0

    .line 35
    const-string v3, "reportAFConversionDataPullUp"

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object p3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "AfUdl PullUp handleUdlQuerySuccess -> "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "CampaignNewTag"

    .line 21
    .line 22
    invoke-virtual {p3, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 26
    .line 27
    new-instance v5, Lcom/startshorts/androidplayer/manager/attribution/pullup/AFConversionDataPullUp$handleUdlQuerySuccess$1;

    .line 28
    .line 29
    const/4 p3, 0x0

    .line 30
    invoke-direct {v5, p2, p1, p3}, Lcom/startshorts/androidplayer/manager/attribution/pullup/AFConversionDataPullUp$handleUdlQuerySuccess$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 31
    .line 32
    .line 33
    const/4 v6, 0x2

    .line 34
    const/4 v7, 0x0

    .line 35
    const-string v3, "reportUdlAfConversionDataPullUp"

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method protected c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;

    .line 2
    .line 3
    sget-object p4, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AF_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 4
    .line 5
    invoke-virtual {p1, p4}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->g(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    instance-of p4, p1, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;

    .line 10
    .line 11
    if-eqz p4, :cond_0

    .line 12
    .line 13
    check-cast p1, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    if-eqz p1, :cond_5

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;->B()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;->C()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-wide/16 v1, 0x1388

    .line 28
    .line 29
    if-eqz p4, :cond_2

    .line 30
    .line 31
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;->E()J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    sub-long/2addr v3, v5

    .line 49
    cmp-long v3, v3, v1

    .line 50
    .line 51
    if-gtz v3, :cond_2

    .line 52
    .line 53
    invoke-direct {p0, p4, p2, p3}, Lcom/startshorts/androidplayer/manager/attribution/pullup/AFConversionDataPullUp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 60
    .line 61
    .line 62
    move-result p4

    .line 63
    if-nez p4, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    sget-object p4, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 67
    .line 68
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;->F()J

    .line 73
    .line 74
    .line 75
    move-result-wide v5

    .line 76
    sub-long/2addr v3, v5

    .line 77
    cmp-long p4, v3, v1

    .line 78
    .line 79
    if-gtz p4, :cond_4

    .line 80
    .line 81
    invoke-direct {p0, v0, p2, p3}, Lcom/startshorts/androidplayer/manager/attribution/pullup/AFConversionDataPullUp;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_4
    :goto_2
    new-instance p4, Lcom/startshorts/androidplayer/manager/attribution/pullup/AFConversionDataPullUp$b;

    .line 86
    .line 87
    invoke-direct {p4, p0, p2, p3}, Lcom/startshorts/androidplayer/manager/attribution/pullup/AFConversionDataPullUp$b;-><init>(Lcom/startshorts/androidplayer/manager/attribution/pullup/AFConversionDataPullUp;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p4}, Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider;->O(Lcom/startshorts/androidplayer/manager/attribution/provider/AFConversionDataProvider$b;)V

    .line 91
    .line 92
    .line 93
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 94
    .line 95
    return-object p1
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "AFConversionDataPullUp"

    .line 2
    .line 3
    return-object v0
.end method
