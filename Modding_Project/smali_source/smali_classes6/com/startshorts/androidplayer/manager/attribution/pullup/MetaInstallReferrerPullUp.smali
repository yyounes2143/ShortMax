.class public final Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;
.super Lcom/startshorts/androidplayer/manager/attribution/pullup/BaseCampaignPullUp;
.source "MetaInstallReferrerPullUp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:I

.field private volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;->c:Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$a;

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

.method public static final synthetic d(Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic e(Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic f(Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;->i(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic h(Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final i(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    sget-object p4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "MetaInstall PullUp handleQuerySuccess -> "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "MetaInstallReferrerPullUp"

    .line 21
    .line 22
    invoke-virtual {p4, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 26
    .line 27
    new-instance v5, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$handleQuerySuccess$1;

    .line 28
    .line 29
    const/4 p4, 0x0

    .line 30
    invoke-direct {v5, p2, p1, p3, p4}, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$handleQuerySuccess$1;-><init>(Ljava/lang/String;Ljava/lang/String;ILrs/c;)V

    .line 31
    .line 32
    .line 33
    const/4 v6, 0x2

    .line 34
    const/4 v7, 0x0

    .line 35
    const-string v3, "reportMetaInstallReferrerPullUp"

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

.method private final j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;->k()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;->a:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;->b:Z

    .line 9
    .line 10
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 11
    .line 12
    const-string v1, "MetaInstallReferrerPullUp"

    .line 13
    .line 14
    const-string/jumbo v2, "startPolling"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v3, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 21
    .line 22
    new-instance v6, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {v6, p0, p1, p2, v0}, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp$startPolling$1;-><init>(Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 26
    .line 27
    .line 28
    const/4 v7, 0x2

    .line 29
    const/4 v8, 0x0

    .line 30
    const-string v4, "MetaInstallReferrerPullUp:polling"

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-static/range {v3 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private final k()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;->b:Z

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0
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
    invoke-direct {p0, p2, p3}, Lcom/startshorts/androidplayer/manager/attribution/pullup/MetaInstallReferrerPullUp;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p1
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "MetaInstallReferrerPullUp"

    .line 2
    .line 3
    return-object v0
.end method
