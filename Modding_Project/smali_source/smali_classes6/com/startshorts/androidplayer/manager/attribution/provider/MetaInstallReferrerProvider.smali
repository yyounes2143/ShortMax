.class public final Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;
.super Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;
.source "MetaInstallReferrerProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final i:Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private g:I

.field private volatile h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->i:Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic p(Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->h:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic q(Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->g:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic r(Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;Ljava/lang/String;)Lkotlinx/coroutines/r;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->v(Ljava/lang/String;)Lkotlinx/coroutines/r;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic s(Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;Ljava/lang/String;)Lkotlinx/coroutines/r;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->w(Ljava/lang/String;)Lkotlinx/coroutines/r;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic t(Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic u(Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final v(Ljava/lang/String;)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->a()Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ":handleQueryFailed"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v3, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQueryFailed$1;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v3, p1, p0, v2}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQueryFailed$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;Lrs/c;)V

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method private final w(Ljava/lang/String;)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->a()Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ":handleQuerySuccess"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v3, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQuerySuccess$1;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v3, p1, p0, v2}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQuerySuccess$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;Lrs/c;)V

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method private final x()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->y()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->g:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->h:Z

    .line 9
    .line 10
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 11
    .line 12
    const-string v1, "CampaignNewTag"

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
    new-instance v6, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {v6, p0, v0}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$startPolling$1;-><init>(Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;Lrs/c;)V

    .line 26
    .line 27
    .line 28
    const/4 v7, 0x2

    .line 29
    const/4 v8, 0x0

    .line 30
    const-string v4, "MetaInstallReferrerProvider:polling"

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

.method private final y()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->h:Z

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Lcom/startshorts/androidplayer/manager/attribution/CampaignType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->META_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 2
    .line 3
    return-object v0
.end method

.method protected l(Landroid/content/Context;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/content/Context;
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
            "Landroid/content/Context;",
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
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string p2, "CampaignNewTag"

    .line 4
    .line 5
    const-string v0, "queryInternal MetaInstallReferrerProvider"

    .line 6
    .line 7
    invoke-virtual {p1, p2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->f()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->m()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->x()V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p1
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "MetaInstallReferrerProvider"

    .line 2
    .line 3
    return-object v0
.end method
