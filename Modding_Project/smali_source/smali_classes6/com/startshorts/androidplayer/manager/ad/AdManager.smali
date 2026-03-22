.class public final Lcom/startshorts/androidplayer/manager/ad/AdManager;
.super Ljava/lang/Object;
.source "AdManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/ad/AdManager$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAdManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdManager.kt\ncom/startshorts/androidplayer/manager/ad/AdManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1973:1\n1863#2,2:1974\n774#2:1976\n865#2,2:1977\n1663#2,8:1979\n1557#2:1987\n1628#2,3:1988\n1#3:1991\n*S KotlinDebug\n*F\n+ 1 AdManager.kt\ncom/startshorts/androidplayer/manager/ad/AdManager\n*L\n261#1:1974,2\n264#1:1976\n264#1:1977,2\n264#1:1979,8\n1294#1:1987\n1294#1:1988,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/ad/AdManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Lcom/hades/aar/admanager/core/AdAggregatedSdk;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static d:Z

.field private static e:Z

.field private static final f:Lda/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 7
    .line 8
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$d;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager$d;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->f:Lda/a;

    .line 14
    .line 15
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

.method private static final A0()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final B0(Lkotlin/jvm/functions/Function0;Lms/i;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->y0(Lms/i;)Lhi/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lhi/c;->a()V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p1, Lca/i;->a:Lca/i;

    .line 11
    .line 12
    invoke-virtual {p1}, Lca/i;->n()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static final C0(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "waitGDPRConsent task exception -> "

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->w0(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lca/i;->a:Lca/i;

    .line 23
    .line 24
    invoke-virtual {p1}, Lca/i;->n()V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 30
    .line 31
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method

.method private static final D0(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    sget-object v0, Lca/i;->a:Lca/i;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lca/i;->q(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method private static final E0(Lms/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lms/i<",
            "+",
            "Lhi/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 2
    .line 3
    new-instance v1, Lde/i;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lde/i;-><init>(Lms/i;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final F0(Lms/i;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->y0(Lms/i;)Lhi/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lhi/c;->b()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static final G0(ZLandroid/app/Activity;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Lde/j;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lde/j;-><init>(Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private static final H0(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$string;->gdpr_refusing_toast:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final L(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hades/aar/admanager/core/AdFormat;",
            ">;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lca/k;->a:Lca/k;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lca/k;->h(Ljava/util/List;)Z

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "isAdShowing failed -> "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v1, "AdManager"

    .line 33
    .line 34
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method private final N()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig;->Companion:Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig$Companion;->getValue()Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig;->getSwitch()Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v0, v2, :cond_1

    .line 23
    .line 24
    move v1, v2

    .line 25
    :cond_1
    :goto_0
    return v1
.end method

.method private final P()Z
    .locals 1

    .line 1
    sget-object v0, Lae/a;->a:Lae/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lae/a;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static synthetic R(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Ljava/lang/String;Lca/h;ZLca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;ILjava/lang/Object;)V
    .locals 10

    .line 1
    and-int/lit8 v0, p8, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v3, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v3, p1

    .line 9
    :goto_0
    and-int/lit8 v0, p8, 0x20

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v8, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object/from16 v8, p6

    .line 16
    .line 17
    :goto_1
    move-object v2, p0

    .line 18
    move-object v4, p2

    .line 19
    move-object v5, p3

    .line 20
    move v6, p4

    .line 21
    move-object v7, p5

    .line 22
    move-object/from16 v9, p7

    .line 23
    .line 24
    invoke-virtual/range {v2 .. v9}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->Q(Ljava/lang/String;Ljava/lang/String;Lca/h;ZLca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static synthetic T(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;ZLca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;ILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x8

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    move-object v4, p4

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v5, p5

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->S(Ljava/lang/String;ZLca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final U(Ljava/lang/String;Lca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    sget-object v1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 8
    .line 9
    const/16 v6, 0x8

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    move-object v2, p2

    .line 14
    move-object v3, p1

    .line 15
    move-object v4, p3

    .line 16
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->z(Lcom/startshorts/androidplayer/manager/ad/AdManager;Lca/d;Ljava/lang/String;Landroid/os/Bundle;Lca/h;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    const/4 v5, 0x4

    .line 22
    const/4 v6, 0x0

    .line 23
    const-string v1, "ad_real_impressions"

    .line 24
    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    move-object v2, p3

    .line 28
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method static synthetic V(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Lca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->U(Ljava/lang/String;Lca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final W(Ljava/lang/String;Ljava/lang/String;Lca/h;Lca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 7

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->x(Ljava/lang/String;Lca/h;Lca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 5
    .line 6
    invoke-virtual {v0, p5}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    sget-object p5, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 11
    .line 12
    invoke-direct {p5, p4, p2, v2, p3}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->y(Lca/d;Ljava/lang/String;Landroid/os/Bundle;Lca/h;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    const-string p2, "from"

    .line 22
    .line 23
    invoke-virtual {v2, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    const/4 v5, 0x4

    .line 29
    const/4 v6, 0x0

    .line 30
    const-string v1, "ad_revenue"

    .line 31
    .line 32
    const-wide/16 v3, 0x0

    .line 33
    .line 34
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method static synthetic X(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Ljava/lang/String;Lca/h;Lca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    :cond_0
    move-object v1, p1

    .line 8
    and-int/lit8 p1, p6, 0x10

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const/4 p5, 0x0

    .line 13
    :cond_1
    move-object v5, p5

    .line 14
    move-object v0, p0

    .line 15
    move-object v2, p2

    .line 16
    move-object v3, p3

    .line 17
    move-object v4, p4

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->W(Ljava/lang/String;Ljava/lang/String;Lca/h;Lca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final Y(Ljava/lang/String;Lca/d;)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/manager/ad/AdManager$logAdValueNullOnDismiss$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p2, p1, v1}, Lcom/startshorts/androidplayer/manager/ad/AdManager$logAdValueNullOnDismiss$1;-><init>(Lca/d;Ljava/lang/String;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "logAdValueNullOnDismiss"

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

.method private final Z(Ljava/lang/String;Lca/d;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v8, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 9
    .line 10
    const/16 v6, 0x8

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    move-object v2, p2

    .line 15
    move-object v3, p1

    .line 16
    move-object v4, v8

    .line 17
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->z(Lcom/startshorts/androidplayer/manager/ad/AdManager;Lca/d;Ljava/lang/String;Landroid/os/Bundle;Lca/h;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    const/4 v5, 0x4

    .line 23
    const/4 v6, 0x0

    .line 24
    const-string v1, "ad_value_received_after_dismiss"

    .line 25
    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    move-object v2, v8

    .line 29
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->H0(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->h0()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final b0()V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig;->Companion:Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig$Companion;->getValue()Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->N()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 12
    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v5, "preloadAd info adPreloadConfig="

    .line 19
    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v5, "\nmLoaderType="

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    sget-object v5, Lcom/startshorts/androidplayer/manager/ad/AdManager;->b:Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const-string v5, "AdManager"

    .line 41
    .line 42
    invoke-virtual {v3, v5, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v4, Lcom/startshorts/androidplayer/manager/ad/AdManager;->b:Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 46
    .line 47
    sget-object v6, Lcom/hades/aar/admanager/core/AdAggregatedSdk;->ADMOB:Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 48
    .line 49
    if-ne v4, v6, :cond_7

    .line 50
    .line 51
    if-eqz v2, :cond_7

    .line 52
    .line 53
    sget-boolean v2, Lcom/startshorts/androidplayer/manager/ad/AdManager;->d:Z

    .line 54
    .line 55
    if-nez v2, :cond_7

    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v4, "preloadAd Admob start isPreloadAdAdmob="

    .line 63
    .line 64
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    sget-boolean v4, Lcom/startshorts/androidplayer/manager/ad/AdManager;->d:Z

    .line 68
    .line 69
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v3, v5, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    if-eqz v1, :cond_0

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig;->getAdType()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    const/4 v2, 0x0

    .line 87
    :goto_0
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig$Companion;->getAdScene(Ljava/util/List;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    check-cast v0, Ljava/lang/Iterable;

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_1

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 113
    .line 114
    sget-object v4, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;

    .line 115
    .line 116
    invoke-virtual {v4, v3}, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->f(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Ljava/util/Collection;

    .line 121
    .line 122
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_3

    .line 140
    .line 141
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    move-object v4, v3

    .line 146
    check-cast v4, Lca/e;

    .line 147
    .line 148
    invoke-virtual {v4}, Lca/e;->j()Lcom/hades/aar/admanager/core/AdPriority;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    sget-object v6, Lcom/hades/aar/admanager/core/AdPriority;->PRIORITY_LOW:Lcom/hades/aar/admanager/core/AdPriority;

    .line 153
    .line 154
    if-eq v4, v6, :cond_2

    .line 155
    .line 156
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_3
    new-instance v2, Ljava/util/HashSet;

    .line 161
    .line 162
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 163
    .line 164
    .line 165
    new-instance v3, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-eqz v4, :cond_5

    .line 179
    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    move-object v6, v4

    .line 185
    check-cast v6, Lca/e;

    .line 186
    .line 187
    invoke-virtual {v6}, Lca/e;->e()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-eqz v6, :cond_4

    .line 196
    .line 197
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_5
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-nez v0, :cond_7

    .line 206
    .line 207
    const/4 v0, 0x1

    .line 208
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->d:Z

    .line 209
    .line 210
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 211
    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string v4, "preloadAd Admob isPreloadAdAdmob="

    .line 218
    .line 219
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    sget-boolean v4, Lcom/startshorts/androidplayer/manager/ad/AdManager;->d:Z

    .line 223
    .line 224
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v4, " preAdUnits="

    .line 228
    .line 229
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v0, v5, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    sget-object v0, Lca/k;->a:Lca/k;

    .line 243
    .line 244
    if-eqz v1, :cond_6

    .line 245
    .line 246
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/AdmobPreloadConfig;->getPreloadNum()Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    if-eqz v1, :cond_6

    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    goto :goto_4

    .line 257
    :cond_6
    const/4 v1, 0x2

    .line 258
    :goto_4
    new-instance v2, Lcom/startshorts/androidplayer/manager/ad/AdManager$e;

    .line 259
    .line 260
    invoke-direct {v2}, Lcom/startshorts/androidplayer/manager/ad/AdManager$e;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v3, v1, v2}, Lca/k;->r(Ljava/util/List;ILda/c;)V

    .line 264
    .line 265
    .line 266
    :cond_7
    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->r0(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lkotlin/jvm/functions/Function0;Lms/i;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->B0(Lkotlin/jvm/functions/Function0;Lms/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->A0()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic f(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->C0(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f0(Lcom/startshorts/androidplayer/manager/ad/AdManager;Landroid/app/Activity;Landroid/view/ViewGroup;JJLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lgt/g0;
    .locals 16

    .line 1
    move/from16 v0, p14

    .line 2
    .line 3
    and-int/lit16 v1, v0, 0x80

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lde/k;

    .line 8
    .line 9
    invoke-direct {v1}, Lde/k;-><init>()V

    .line 10
    .line 11
    .line 12
    move-object v12, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object/from16 v12, p10

    .line 15
    .line 16
    :goto_0
    and-int/lit16 v1, v0, 0x200

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    move-object v14, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object/from16 v14, p12

    .line 24
    .line 25
    :goto_1
    and-int/lit16 v0, v0, 0x400

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    new-instance v0, Lde/l;

    .line 30
    .line 31
    invoke-direct {v0}, Lde/l;-><init>()V

    .line 32
    .line 33
    .line 34
    move-object v15, v0

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move-object/from16 v15, p13

    .line 37
    .line 38
    :goto_2
    move-object/from16 v2, p0

    .line 39
    .line 40
    move-object/from16 v3, p1

    .line 41
    .line 42
    move-object/from16 v4, p2

    .line 43
    .line 44
    move-wide/from16 v5, p3

    .line 45
    .line 46
    move-wide/from16 v7, p5

    .line 47
    .line 48
    move-object/from16 v9, p7

    .line 49
    .line 50
    move-object/from16 v10, p8

    .line 51
    .line 52
    move-object/from16 v11, p9

    .line 53
    .line 54
    move-object/from16 v13, p11

    .line 55
    .line 56
    invoke-virtual/range {v2 .. v15}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->e0(Landroid/app/Activity;Landroid/view/ViewGroup;JJLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lgt/g0;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method

.method public static synthetic g(Lms/i;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->F0(Lms/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final g0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(ZLandroid/app/Activity;)Lhi/c;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->x0(ZLandroid/app/Activity;)Lhi/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final h0()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic i(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->g0(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lkotlin/jvm/internal/Ref$ObjectRef;Lfk/p;Lkotlin/jvm/functions/Function0;Lms/i;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->z0(Lkotlin/jvm/internal/Ref$ObjectRef;Lfk/p;Lkotlin/jvm/functions/Function0;Lms/i;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic k0(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;IILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 17

    .line 1
    move/from16 v0, p15

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget v1, Lcom/startshorts/androidplayer/R$layout;->activity_immersion_full_screen_native:I

    .line 8
    .line 9
    move v6, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move/from16 v6, p4

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v1, v0, 0x10

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->M()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    sget v1, Lcom/startshorts/androidplayer/R$layout;->view_native_ad_admob_2:I

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    sget v1, Lcom/startshorts/androidplayer/R$layout;->view_native_ad_tp_2:I

    .line 27
    .line 28
    :goto_1
    move v7, v1

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move/from16 v7, p5

    .line 31
    .line 32
    :goto_2
    and-int/lit8 v1, v0, 0x20

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    move-object v8, v2

    .line 38
    goto :goto_3

    .line 39
    :cond_3
    move-object/from16 v8, p6

    .line 40
    .line 41
    :goto_3
    and-int/lit8 v1, v0, 0x40

    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    move v9, v1

    .line 47
    goto :goto_4

    .line 48
    :cond_4
    move/from16 v9, p7

    .line 49
    .line 50
    :goto_4
    and-int/lit16 v1, v0, 0x80

    .line 51
    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    move-object v10, v2

    .line 55
    goto :goto_5

    .line 56
    :cond_5
    move-object/from16 v10, p8

    .line 57
    .line 58
    :goto_5
    and-int/lit16 v1, v0, 0x100

    .line 59
    .line 60
    if-eqz v1, :cond_6

    .line 61
    .line 62
    move-object v11, v2

    .line 63
    goto :goto_6

    .line 64
    :cond_6
    move-object/from16 v11, p9

    .line 65
    .line 66
    :goto_6
    and-int/lit16 v1, v0, 0x200

    .line 67
    .line 68
    if-eqz v1, :cond_7

    .line 69
    .line 70
    const-wide/16 v3, 0x0

    .line 71
    .line 72
    move-wide v12, v3

    .line 73
    goto :goto_7

    .line 74
    :cond_7
    move-wide/from16 v12, p10

    .line 75
    .line 76
    :goto_7
    and-int/lit16 v1, v0, 0x400

    .line 77
    .line 78
    if-eqz v1, :cond_8

    .line 79
    .line 80
    const-wide/16 v3, 0x9c4

    .line 81
    .line 82
    move-wide v14, v3

    .line 83
    goto :goto_8

    .line 84
    :cond_8
    move-wide/from16 v14, p12

    .line 85
    .line 86
    :goto_8
    and-int/lit16 v0, v0, 0x800

    .line 87
    .line 88
    if-eqz v0, :cond_9

    .line 89
    .line 90
    move-object/from16 v16, v2

    .line 91
    .line 92
    goto :goto_9

    .line 93
    :cond_9
    move-object/from16 v16, p14

    .line 94
    .line 95
    :goto_9
    move-object/from16 v2, p0

    .line 96
    .line 97
    move-object/from16 v3, p1

    .line 98
    .line 99
    move-object/from16 v4, p2

    .line 100
    .line 101
    move-object/from16 v5, p3

    .line 102
    .line 103
    invoke-virtual/range {v2 .. v16}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->j0(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;IILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJLkotlin/jvm/functions/Function1;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    return v0
.end method

.method public static final synthetic l()Lcom/hades/aar/admanager/core/AdAggregatedSdk;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->b:Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic m(Lcom/startshorts/androidplayer/manager/ad/AdManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->P()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic n(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Lca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->U(Ljava/lang/String;Lca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic o(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Ljava/lang/String;Lca/h;Lca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->W(Ljava/lang/String;Ljava/lang/String;Lca/h;Lca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/ref/WeakReference;Landroid/view/ViewGroup;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lca/f$f;ILjava/lang/Object;)V
    .locals 10

    .line 1
    and-int/lit8 v0, p8, 0x10

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v7, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v7, p5

    .line 9
    :goto_0
    and-int/lit8 v0, p8, 0x20

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v8, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object/from16 v8, p6

    .line 16
    .line 17
    :goto_1
    and-int/lit8 v0, p8, 0x40

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    move-object v9, v1

    .line 22
    goto :goto_2

    .line 23
    :cond_2
    move-object/from16 v9, p7

    .line 24
    .line 25
    :goto_2
    move-object v2, p0

    .line 26
    move-object v3, p1

    .line 27
    move-object v4, p2

    .line 28
    move v5, p3

    .line 29
    move-object v6, p4

    .line 30
    invoke-virtual/range {v2 .. v9}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->n0(Ljava/lang/ref/WeakReference;Landroid/view/ViewGroup;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lca/f$f;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static final synthetic p(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Lca/d;)Lkotlinx/coroutines/r;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->Y(Ljava/lang/String;Lca/d;)Lkotlinx/coroutines/r;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic q(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Lca/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->Z(Ljava/lang/String;Lca/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic q0(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    move-object v2, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v2, p1

    .line 9
    :goto_0
    and-int/lit8 p1, p6, 0x8

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    move-object v5, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v5, p4

    .line 16
    :goto_1
    move-object v1, p0

    .line 17
    move-object v3, p2

    .line 18
    move-object v4, p3

    .line 19
    move-object v6, p5

    .line 20
    invoke-virtual/range {v1 .. v6}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->p0(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static final synthetic r(Lcom/startshorts/androidplayer/manager/ad/AdManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->b0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final r0(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->s0(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final synthetic s(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->v0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final s0(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v9, p3

    .line 4
    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->E0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->abTestValue()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    int-to-long v1, v1

    .line 28
    const-wide/16 v3, 0x3e8

    .line 29
    .line 30
    mul-long/2addr v1, v3

    .line 31
    const-wide/16 v3, 0x7d0

    .line 32
    .line 33
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    const-wide/16 v3, 0x1f4

    .line 38
    .line 39
    add-long/2addr v3, v1

    .line 40
    sget-object v5, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 41
    .line 42
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    sget-wide v7, Lcom/startshorts/androidplayer/manager/ad/AdManager;->g:J

    .line 47
    .line 48
    sub-long v7, v5, v7

    .line 49
    .line 50
    cmp-long v3, v7, v3

    .line 51
    .line 52
    const-string v4, "AdManager"

    .line 53
    .line 54
    if-gez v3, :cond_1

    .line 55
    .line 56
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string/jumbo v2, "showRewardVideo failed -> show too frequently, gap="

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const/16 v2, 0x20

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 86
    .line 87
    new-instance v10, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string/jumbo v11, "showRewardVideo start-> gap="

    .line 93
    .line 94
    .line 95
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {v3, v4, v7}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-wide v5, Lcom/startshorts/androidplayer/manager/ad/AdManager;->g:J

    .line 109
    .line 110
    if-nez v0, :cond_2

    .line 111
    .line 112
    const-string/jumbo v0, "showRewardVideo failed -> activity is null"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v4, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_2
    sget-object v10, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 120
    .line 121
    new-instance v12, Landroid/os/Bundle;

    .line 122
    .line 123
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v3, "ad_placement"

    .line 127
    .line 128
    invoke-virtual {v12, v3, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string/jumbo v3, "type"

    .line 132
    .line 133
    .line 134
    const-string v4, "1"

    .line 135
    .line 136
    invoke-virtual {v12, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 140
    .line 141
    const/4 v15, 0x4

    .line 142
    const/16 v16, 0x0

    .line 143
    .line 144
    const-string v11, "ad_placement_show"

    .line 145
    .line 146
    const-wide/16 v13, 0x0

    .line 147
    .line 148
    invoke-static/range {v10 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 152
    .line 153
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 154
    .line 155
    .line 156
    new-instance v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 157
    .line 158
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 159
    .line 160
    .line 161
    new-instance v12, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 162
    .line 163
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 164
    .line 165
    .line 166
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 167
    .line 168
    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 169
    .line 170
    .line 171
    new-instance v14, Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 172
    .line 173
    invoke-direct {v14}, Lcom/startshorts/androidplayer/manager/ad/AdManager$a;-><init>()V

    .line 174
    .line 175
    .line 176
    sget-object v15, Lca/k;->a:Lca/k;

    .line 177
    .line 178
    new-instance v8, Lca/f;

    .line 179
    .line 180
    invoke-direct {v8}, Lca/f;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v9}, Lca/f;->C(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 187
    .line 188
    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8, v3}, Lca/f;->q(Ljava/lang/ref/WeakReference;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8, v1, v2}, Lca/f;->z(J)V

    .line 195
    .line 196
    .line 197
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 198
    .line 199
    new-instance v2, Lhi/c;

    .line 200
    .line 201
    invoke-direct {v2, v0}, Lhi/c;-><init>(Landroid/content/Context;)V

    .line 202
    .line 203
    .line 204
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v8, v1}, Lca/f;->y(Ljava/lang/ref/WeakReference;)V

    .line 208
    .line 209
    .line 210
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;

    .line 211
    .line 212
    sget-object v1, Lcom/startshorts/androidplayer/bean/ad/AdScene;->REWARD:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->f(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v8, v0}, Lca/f;->v(Ljava/util/List;)V

    .line 219
    .line 220
    .line 221
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$g0;

    .line 222
    .line 223
    move-object/from16 v7, p1

    .line 224
    .line 225
    invoke-direct {v0, v9, v7}, Lcom/startshorts/androidplayer/manager/ad/AdManager$g0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v8, v0}, Lca/f;->w(Lca/f$b;)V

    .line 229
    .line 230
    .line 231
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$h0;

    .line 232
    .line 233
    move-object/from16 v6, p4

    .line 234
    .line 235
    invoke-direct {v0, v14, v13, v9, v6}, Lcom/startshorts/androidplayer/manager/ad/AdManager$h0;-><init>(Lcom/startshorts/androidplayer/manager/ad/AdManager$a;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v8, v0}, Lca/f;->D(Lca/f$e;)V

    .line 239
    .line 240
    .line 241
    new-instance v5, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;

    .line 242
    .line 243
    move-object v0, v5

    .line 244
    move-object v1, v11

    .line 245
    move-object v2, v12

    .line 246
    move-object/from16 v3, p5

    .line 247
    .line 248
    move-object/from16 v4, p3

    .line 249
    .line 250
    move-object v9, v5

    .line 251
    move-object/from16 v5, p4

    .line 252
    .line 253
    move-object v6, v14

    .line 254
    move-object v7, v10

    .line 255
    move-object/from16 v16, v15

    .line 256
    .line 257
    move-object v15, v8

    .line 258
    move-object/from16 v8, p1

    .line 259
    .line 260
    invoke-direct/range {v0 .. v8}, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v15, v9}, Lca/f;->x(Lca/f$c;)V

    .line 264
    .line 265
    .line 266
    new-instance v9, Lcom/startshorts/androidplayer/manager/ad/AdManager$j0;

    .line 267
    .line 268
    move-object v0, v9

    .line 269
    move-object v1, v10

    .line 270
    move-object v2, v13

    .line 271
    move-object v3, v11

    .line 272
    move-object/from16 v4, p1

    .line 273
    .line 274
    move-object/from16 v5, p3

    .line 275
    .line 276
    move-object/from16 v6, p4

    .line 277
    .line 278
    move-object v7, v12

    .line 279
    move-object v8, v14

    .line 280
    invoke-direct/range {v0 .. v8}, Lcom/startshorts/androidplayer/manager/ad/AdManager$j0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v15, v9}, Lca/f;->B(Lca/f$d;)V

    .line 284
    .line 285
    .line 286
    move-object/from16 v0, v16

    .line 287
    .line 288
    invoke-virtual {v0, v15}, Lca/k;->u(Lca/f;)Lgt/g0;

    .line 289
    .line 290
    .line 291
    return-void
.end method

.method public static final synthetic t(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->w0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic u(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->D0(Landroid/app/Activity;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic u0(Lcom/startshorts/androidplayer/manager/ad/AdManager;Landroid/app/Activity;Ljava/lang/String;JZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 10

    .line 1
    and-int/lit8 v0, p8, 0x4

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    move-wide v5, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-wide v5, p3

    .line 10
    :goto_0
    and-int/lit8 v0, p8, 0x8

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    move v7, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v7, p5

    .line 18
    :goto_1
    and-int/lit8 v0, p8, 0x10

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    move v8, v1

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move/from16 v8, p6

    .line 25
    .line 26
    :goto_2
    move-object v2, p0

    .line 27
    move-object v3, p1

    .line 28
    move-object v4, p2

    .line 29
    move-object/from16 v9, p7

    .line 30
    .line 31
    invoke-virtual/range {v2 .. v9}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->t0(Landroid/app/Activity;Ljava/lang/String;JZZLkotlin/jvm/functions/Function0;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static final synthetic v(Lms/i;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->E0(Lms/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final v0(Ljava/lang/String;)V
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
    const-string/jumbo v2, "waitGDPRConsent "

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v1, "AdManager"

    .line 22
    .line 23
    invoke-virtual {v0, v1, p0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static final synthetic w(ZLandroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->G0(ZLandroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final w0(Ljava/lang/String;)V
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
    const-string/jumbo v2, "waitGDPRConsent "

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v1, "AdManager"

    .line 22
    .line 23
    invoke-virtual {v0, v1, p0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private final x(Ljava/lang/String;Lca/h;Lca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->h()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_6

    .line 16
    .line 17
    :cond_0
    if-eqz p2, :cond_5

    .line 18
    .line 19
    invoke-virtual {p3}, Lca/d;->c()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz p4, :cond_2

    .line 24
    .line 25
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    if-nez p3, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    move-object v5, p3

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    :goto_1
    const-string p3, ""

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :goto_2
    const/4 p3, 0x0

    .line 38
    if-eqz p4, :cond_3

    .line 39
    .line 40
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    move v6, v0

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    move v6, p3

    .line 47
    :goto_3
    if-eqz p4, :cond_4

    .line 48
    .line 49
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    :cond_4
    move v7, p3

    .line 54
    :try_start_0
    new-instance p3, Ljava/math/BigDecimal;

    .line 55
    .line 56
    invoke-virtual {p2}, Lca/h;->c()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    invoke-direct {p3, v0, v1}, Ljava/math/BigDecimal;-><init>(J)V

    .line 61
    .line 62
    .line 63
    new-instance p4, Ljava/math/BigDecimal;

    .line 64
    .line 65
    const v0, 0xf4240

    .line 66
    .line 67
    .line 68
    invoke-direct {p4, v0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 69
    .line 70
    .line 71
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 72
    .line 73
    const/16 v1, 0xf

    .line 74
    .line 75
    invoke-virtual {p3, p4, v1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/a;->a(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-virtual {p3}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_4
    move-object v2, p3

    .line 88
    goto :goto_5

    .line 89
    :catch_0
    invoke-virtual {p2}, Lca/h;->c()J

    .line 90
    .line 91
    .line 92
    move-result-wide p3

    .line 93
    long-to-float p3, p3

    .line 94
    const/high16 p4, 0x447a0000    # 1000.0f

    .line 95
    .line 96
    div-float/2addr p3, p4

    .line 97
    div-float/2addr p3, p4

    .line 98
    float-to-double p3, p3

    .line 99
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    goto :goto_4

    .line 104
    :goto_5
    sget-object v1, Lcom/startshorts/androidplayer/repo/ad/AdReportRepo;->a:Lcom/startshorts/androidplayer/repo/ad/AdReportRepo;

    .line 105
    .line 106
    invoke-virtual {p2}, Lca/h;->a()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    move-object v4, p1

    .line 111
    invoke-virtual/range {v1 .. v8}, Lcom/startshorts/androidplayer/repo/ad/AdReportRepo;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lkotlinx/coroutines/r;

    .line 112
    .line 113
    .line 114
    :cond_5
    :goto_6
    return-void
.end method

.method private static final x0(ZLandroid/app/Activity;)Lhi/c;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Lhi/c;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lhi/c;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return-object p0
.end method

.method private final y(Lca/d;Ljava/lang/String;Landroid/os/Bundle;Lca/h;)V
    .locals 10

    .line 1
    const-string v0, "ecpm"

    .line 2
    .line 3
    invoke-virtual {p1}, Lca/d;->f()Lca/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lca/c;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "ad_mediation_name"

    .line 12
    .line 13
    invoke-virtual {p3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Ljk/a;->a(Lcom/hades/aar/admanager/core/AdFormat;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string/jumbo v2, "type"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "ad_platform"

    .line 31
    .line 32
    invoke-static {p1}, Ljk/a;->b(Lca/d;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p3, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lve/h;->a:Lve/h;

    .line 40
    .line 41
    invoke-virtual {v1}, Lve/h;->m()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string/jumbo v2, "style_id"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    if-eqz p2, :cond_0

    .line 52
    .line 53
    const-string v1, "ad_placement"

    .line 54
    .line 55
    invoke-virtual {p3, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    const-string p2, "ad_unit_name"

    .line 59
    .line 60
    invoke-virtual {p1}, Lca/d;->j()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p3, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string p2, "ad_unit_id"

    .line 68
    .line 69
    invoke-virtual {p1}, Lca/d;->c()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p3, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    if-eqz p4, :cond_2

    .line 77
    .line 78
    invoke-virtual {p4}, Lca/h;->b()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    const-string v1, "precisionType"

    .line 87
    .line 88
    invoke-virtual {p3, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string p2, "currencyCode"

    .line 92
    .line 93
    invoke-virtual {p4}, Lca/h;->a()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p3, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 101
    .line 102
    :try_start_0
    sget-object v1, Lqe/a;->a:Lqe/a;

    .line 103
    .line 104
    invoke-virtual {v1}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getNewEcpmFormatEnable()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_1

    .line 113
    .line 114
    new-instance v1, Ljava/math/BigDecimal;

    .line 115
    .line 116
    invoke-virtual {p4}, Lca/h;->c()J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    .line 121
    .line 122
    .line 123
    new-instance v2, Ljava/math/BigDecimal;

    .line 124
    .line 125
    const v3, 0xf4240

    .line 126
    .line 127
    .line 128
    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    .line 129
    .line 130
    .line 131
    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 132
    .line 133
    const/16 v4, 0xf

    .line 134
    .line 135
    invoke-virtual {v1, v2, v4, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/a;->a(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :catch_0
    move-exception v1

    .line 152
    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p4}, Lca/h;->c()J

    .line 154
    .line 155
    .line 156
    move-result-wide v1

    .line 157
    long-to-float v1, v1

    .line 158
    div-float/2addr v1, p2

    .line 159
    div-float/2addr v1, p2

    .line 160
    float-to-double v1, v1

    .line 161
    invoke-virtual {p3, v0, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :goto_0
    invoke-virtual {p4}, Lca/h;->c()J

    .line 166
    .line 167
    .line 168
    move-result-wide v2

    .line 169
    long-to-float v2, v2

    .line 170
    div-float/2addr v2, p2

    .line 171
    div-float/2addr v2, p2

    .line 172
    float-to-double v2, v2

    .line 173
    invoke-virtual {p3, v0, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 174
    .line 175
    .line 176
    sget-object p2, Lga/a;->a:Lga/a;

    .line 177
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v2, "addAdExtraInfo exception -> "

    .line 184
    .line 185
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const-string v2, "AdManager"

    .line 196
    .line 197
    invoke-virtual {p2, v2, v0}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 201
    .line 202
    new-instance v5, Landroid/os/Bundle;

    .line 203
    .line 204
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 205
    .line 206
    .line 207
    const-string p2, "ad_value_micros"

    .line 208
    .line 209
    invoke-virtual {p4}, Lca/h;->c()J

    .line 210
    .line 211
    .line 212
    move-result-wide v6

    .line 213
    invoke-virtual {v5, p2, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 214
    .line 215
    .line 216
    const-string p2, "errorMessage"

    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p4

    .line 222
    invoke-virtual {v5, p2, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 226
    .line 227
    const/4 v8, 0x4

    .line 228
    const/4 v9, 0x0

    .line 229
    const-string v4, "ad_value_micros_to_string_error"

    .line 230
    .line 231
    const-wide/16 v6, 0x0

    .line 232
    .line 233
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lca/d;->f()Lca/c;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    invoke-virtual {p2}, Lca/c;->b()Z

    .line 241
    .line 242
    .line 243
    move-result p2

    .line 244
    if-eqz p2, :cond_3

    .line 245
    .line 246
    invoke-virtual {p1}, Lca/d;->f()Lca/c;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    invoke-virtual {p2}, Lca/c;->c()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    const-string p4, "admob_pam_group_key"

    .line 255
    .line 256
    invoke-virtual {p3, p4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Lca/d;->f()Lca/c;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    invoke-virtual {p2}, Lca/c;->d()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    const-string p4, "admob_pam_group_value"

    .line 268
    .line 269
    invoke-virtual {p3, p4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1}, Lca/d;->f()Lca/c;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p1}, Lca/c;->f()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    const-string p2, "admob_pam_mediation_group_name"

    .line 281
    .line 282
    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    :cond_3
    return-void
.end method

.method private static final y0(Lms/i;)Lhi/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lms/i<",
            "+",
            "Lhi/c;",
            ">;)",
            "Lhi/c;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lhi/c;

    .line 6
    .line 7
    return-object p0
.end method

.method static synthetic z(Lcom/startshorts/androidplayer/manager/ad/AdManager;Lca/d;Ljava/lang/String;Landroid/os/Bundle;Lca/h;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->y(Lca/d;Ljava/lang/String;Landroid/os/Bundle;Lca/h;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final z0(Lkotlin/jvm/internal/Ref$ObjectRef;Lfk/p;Lkotlin/jvm/functions/Function0;Lms/i;)Lkotlin/Unit;
    .locals 2

    .line 1
    new-instance v0, Lde/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lde/g;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "runAfterWaitOnUiThread -> cost="

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lfk/p;->b()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, "ms"

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->w0(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lfk/h0;->a:Lfk/h0;

    .line 38
    .line 39
    new-instance p1, Lde/h;

    .line 40
    .line 41
    invoke-direct {p1, p2, p3}, Lde/h;-><init>(Lkotlin/jvm/functions/Function0;Lms/i;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p0
.end method


# virtual methods
.method public final A()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->F0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "AdManager"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->V0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a:Lcom/startshorts/androidplayer/manager/configure/ad/d;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 44
    .line 45
    const-string v2, "appOpenEnable true -> is iaaUser and open AB and_ad_iaauser_splash_switch_test = true, and isNotPayUser"

    .line 46
    .line 47
    invoke-virtual {v0, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return v1

    .line 51
    :cond_0
    sget-object v0, Lde/r;->a:Lde/r;

    .line 52
    .line 53
    invoke-virtual {v0}, Lde/r;->d()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 60
    .line 61
    const-string v1, "appOpenEnable false -> open AB and_ad_load_close = true"

    .line 62
    .line 63
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return v2

    .line 67
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a:Lcom/startshorts/androidplayer/manager/configure/ad/d;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 76
    .line 77
    const-string v1, "appOpenEnable false -> AdSceneManager.adEnable = false"

    .line 78
    .line 79
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return v2

    .line 83
    :cond_2
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->l()Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sget-object v4, Lcom/startshorts/androidplayer/bean/ad/AdScene;->APP_OPEN:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 90
    .line 91
    invoke-virtual {v0, v4}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;->b(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_3

    .line 96
    .line 97
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 98
    .line 99
    const-string v1, "appOpenEnable false -> AdSwitchConfigure.value().appOpen = false"

    .line 100
    .line 101
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return v2

    .line 105
    :cond_3
    return v1
.end method

.method public final B()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdHelper;->a:Lcom/startshorts/androidplayer/manager/ad/AdHelper;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->b:Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/ad/AdHelper;->k(Lcom/hades/aar/admanager/core/AdAggregatedSdk;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final varargs C([Lcom/hades/aar/admanager/core/AdFormat;)Z
    .locals 2
    .param p1    # [Lcom/hades/aar/admanager/core/AdFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "formats"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lca/k;->a:Lca/k;

    .line 7
    .line 8
    array-length v1, p1

    .line 9
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, [Lcom/hades/aar/admanager/core/AdFormat;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lca/k;->d([Lcom/hades/aar/admanager/core/AdFormat;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/util/Collection;

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    xor-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    return p1
.end method

.method public final varargs D([Lcom/hades/aar/admanager/core/AdFormat;)I
    .locals 2
    .param p1    # [Lcom/hades/aar/admanager/core/AdFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "formats"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lca/k;->a:Lca/k;

    .line 7
    .line 8
    array-length v1, p1

    .line 9
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, [Lcom/hades/aar/admanager/core/AdFormat;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lca/k;->d([Lcom/hades/aar/admanager/core/AdFormat;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public final E()Lda/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->f:Lda/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public final G(Landroidx/fragment/app/Fragment;)Landroid/content/Context;
    .locals 8
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "f"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 13
    .line 14
    const/4 v6, 0x6

    .line 15
    const/4 v7, 0x0

    .line 16
    const-string v2, "ad_big_native_callback_too_later"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    return-object p1
.end method

.method public final H()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->F0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->V0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a:Lcom/startshorts/androidplayer/manager/configure/ad/d;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    return v1

    .line 42
    :cond_0
    sget-object v0, Lud/a;->a:Lud/a;

    .line 43
    .line 44
    invoke-virtual {v0}, Lud/a;->a()Lcom/startshorts/androidplayer/bean/ad/AdNewConfig;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/ad/AdNewConfig;->getAdConfig()Lcom/startshorts/androidplayer/bean/ad/AdConfig;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/ad/AdConfig;->getHotSplash()Lcom/startshorts/androidplayer/bean/ad/HotSplash;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/ad/HotSplash;->isEnableShow()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    return v2

    .line 69
    :cond_1
    sget-object v0, Lfk/s;->a:Lfk/s;

    .line 70
    .line 71
    invoke-virtual {v0}, Lfk/s;->d()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Lfk/s;->i(Z)V

    .line 78
    .line 79
    .line 80
    return v2

    .line 81
    :cond_2
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a:Lcom/startshorts/androidplayer/manager/configure/ad/d;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const-string v3, "AdManager"

    .line 88
    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 92
    .line 93
    const-string v1, "appOpenEnable false -> AdSceneManager.adEnable = false"

    .line 94
    .line 95
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return v2

    .line 99
    :cond_3
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->l()Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    sget-object v4, Lcom/startshorts/androidplayer/bean/ad/AdScene;->APP_OPEN:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 106
    .line 107
    invoke-virtual {v0, v4}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;->b(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_4

    .line 112
    .line 113
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 114
    .line 115
    const-string v1, "appOpenEnable false -> AdSwitchConfigure.value().appOpen = false"

    .line 116
    .line 117
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return v2

    .line 121
    :cond_4
    return v1
.end method

.method public final I(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdHelper;->a:Lcom/startshorts/androidplayer/manager/ad/AdHelper;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/ad/AdHelper;->g()Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lcom/startshorts/androidplayer/manager/ad/AdManager;->b:Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    sput-object v1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->b:Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 34
    .line 35
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v4, "loaderType -> "

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    sget-object v4, Lcom/startshorts/androidplayer/manager/ad/AdManager;->b:Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const-string v4, "AdManager"

    .line 57
    .line 58
    invoke-virtual {v2, v4, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1, v1}, Lcom/startshorts/androidplayer/manager/ad/AdHelper;->d(Landroid/content/Context;Lcom/hades/aar/admanager/core/AdAggregatedSdk;)Lca/a;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v2, Lcom/startshorts/androidplayer/manager/ad/AdManager$c;

    .line 66
    .line 67
    invoke-direct {v2}, Lcom/startshorts/androidplayer/manager/ad/AdManager$c;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Lca/a;->g(Lda/b$a;)V

    .line 71
    .line 72
    .line 73
    sget-object v2, Lca/k;->a:Lca/k;

    .line 74
    .line 75
    invoke-virtual {v2, p1, v1, v0}, Lca/k;->g(Landroid/content/Context;Lcom/hades/aar/admanager/core/AdAggregatedSdk;Lca/a;)V

    .line 76
    .line 77
    .line 78
    sget-object p1, Lga/a;->a:Lga/a;

    .line 79
    .line 80
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$b;

    .line 81
    .line 82
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager$b;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lga/a;->a(Lga/a$a;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final J(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    const-string v1, "AdManager"

    .line 9
    .line 10
    const-string v2, "initGDPR start"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lca/i;->a:Lca/i;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-static {v0, p1, v1, v2, v1}, Lca/i;->w(Lca/i;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final K(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a:Lcom/startshorts/androidplayer/manager/configure/ad/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const-string v2, "AdManager"

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 18
    .line 19
    const-string v0, "AdSceneManager.interstitialSceneEnable() = false."

    .line 20
    .line 21
    invoke-virtual {p1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->h()Lcom/startshorts/androidplayer/manager/configure/ad/c$a;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/manager/configure/ad/c$a;->b()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v3, "interstitialEnable=false. interstitial is on waiting currentGap="

    .line 43
    .line 44
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->h()Lcom/startshorts/androidplayer/manager/configure/ad/c$a;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/manager/configure/ad/c$a;->a()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v3, "ms,targetGap="

    .line 59
    .line 60
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->h()Lcom/startshorts/androidplayer/manager/configure/ad/c$a;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/c$a;->d()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, "ms."

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 84
    .line 85
    invoke-virtual {v0, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return v1

    .line 89
    :cond_1
    const-string v0, "home_reward"

    .line 90
    .line 91
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_2

    .line 96
    .line 97
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/b;->d:Lcom/startshorts/androidplayer/manager/configure/ad/b$a;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/b$a;->e()Lcom/startshorts/androidplayer/manager/configure/ad/b;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-nez p1, :cond_2

    .line 104
    .line 105
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 106
    .line 107
    const-string v0, "interstitialEnable=false. no consumer"

    .line 108
    .line 109
    invoke-virtual {p1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return v1

    .line 113
    :cond_2
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->l()Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    sget-object v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->INTERSTITIAL:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;->b(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_3

    .line 126
    .line 127
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 128
    .line 129
    const-string v0, "AdSwitchConfigure.value().interstitial = false"

    .line 130
    .line 131
    invoke-virtual {p1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return v1

    .line 135
    :cond_3
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 136
    .line 137
    const-string v0, "interstitialEnable=true. consumer is ready"

    .line 138
    .line 139
    invoke-virtual {p1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const/4 p1, 0x1

    .line 143
    return p1
.end method

.method public final M()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->b:Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 2
    .line 3
    sget-object v1, Lcom/hades/aar/admanager/core/AdAggregatedSdk;->ADMOB:Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final O()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/hades/aar/admanager/core/AdFormat;->APP_OPEN:Lcom/hades/aar/admanager/core/AdFormat;

    .line 2
    .line 3
    sget-object v1, Lcom/hades/aar/admanager/core/AdFormat;->INTERSTITIAL:Lcom/hades/aar/admanager/core/AdFormat;

    .line 4
    .line 5
    sget-object v2, Lcom/hades/aar/admanager/core/AdFormat;->REWARDED_VIDEO:Lcom/hades/aar/admanager/core/AdFormat;

    .line 6
    .line 7
    sget-object v3, Lcom/hades/aar/admanager/core/AdFormat;->MEDIA_VIDEO:Lcom/hades/aar/admanager/core/AdFormat;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lcom/hades/aar/admanager/core/AdFormat;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->L(Ljava/util/List;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public final Q(Ljava/lang/String;Ljava/lang/String;Lca/h;ZLca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;)V
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lca/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lca/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/startshorts/androidplayer/manager/ad/AdManager$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p2

    .line 2
    move-object/from16 v1, p3

    .line 3
    .line 4
    move-object/from16 v2, p5

    .line 5
    .line 6
    const-string v3, "scene"

    .line 7
    .line 8
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v3, "adValue"

    .line 12
    .line 13
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v3, "adInfo"

    .line 17
    .line 18
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v3, "calculateDisplayTime"

    .line 22
    .line 23
    move-object/from16 v4, p7

    .line 24
    .line 25
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p3 .. p3}, Lca/h;->c()J

    .line 29
    .line 30
    .line 31
    move-result-wide v5

    .line 32
    long-to-float v3, v5

    .line 33
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 34
    .line 35
    div-float/2addr v3, v5

    .line 36
    div-float/2addr v3, v5

    .line 37
    const v5, 0x3ca3d70a    # 0.02f

    .line 38
    .line 39
    .line 40
    cmpg-float v6, v3, v5

    .line 41
    .line 42
    if-gez v6, :cond_0

    .line 43
    .line 44
    const-string v5, "ecpm_below_20"

    .line 45
    .line 46
    :goto_0
    move-object v7, v5

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    cmpg-float v5, v5, v3

    .line 49
    .line 50
    const v6, 0x3d23d70a    # 0.04f

    .line 51
    .line 52
    .line 53
    if-gtz v5, :cond_1

    .line 54
    .line 55
    cmpg-float v5, v3, v6

    .line 56
    .line 57
    if-gtz v5, :cond_1

    .line 58
    .line 59
    const-string v5, "ecpm_above_20"

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    cmpl-float v5, v3, v6

    .line 63
    .line 64
    if-lez v5, :cond_2

    .line 65
    .line 66
    const-string v5, "ecpm_above_40"

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/4 v5, 0x0

    .line 70
    goto :goto_0

    .line 71
    :goto_1
    if-eqz v7, :cond_3

    .line 72
    .line 73
    sget-object v6, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 74
    .line 75
    const/4 v11, 0x6

    .line 76
    const/4 v12, 0x0

    .line 77
    const/4 v8, 0x0

    .line 78
    const-wide/16 v9, 0x0

    .line 79
    .line 80
    invoke-static/range {v6 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    sget-object v5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 84
    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v7, "logAdImpression -> scene("

    .line 91
    .line 92
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v7, ") currencyCode("

    .line 99
    .line 100
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {p3 .. p3}, Lca/h;->a()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v7, ") precisionType("

    .line 111
    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual/range {p3 .. p3}, Lca/h;->b()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v7, ") ecpm("

    .line 123
    .line 124
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v3, ") reward("

    .line 131
    .line 132
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    move/from16 v3, p4

    .line 136
    .line 137
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const/16 v3, 0x29

    .line 141
    .line 142
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    const-string v6, "AdManager"

    .line 150
    .line 151
    invoke-virtual {v5, v6, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual/range {p7 .. p7}, Lcom/startshorts/androidplayer/manager/ad/AdManager$a;->b()V

    .line 155
    .line 156
    .line 157
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 158
    .line 159
    move-object/from16 v5, p6

    .line 160
    .line 161
    invoke-virtual {v3, v5}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    const-string v6, "impressions_duration"

    .line 166
    .line 167
    invoke-virtual/range {p7 .. p7}, Lcom/startshorts/androidplayer/manager/ad/AdManager$a;->a()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-nez v4, :cond_4

    .line 179
    .line 180
    const-string v4, "from"

    .line 181
    .line 182
    move-object v6, p1

    .line 183
    invoke-virtual {v5, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :cond_4
    sget-object v4, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 187
    .line 188
    invoke-direct {v4, v2, p2, v5, v1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->y(Lca/d;Ljava/lang/String;Landroid/os/Bundle;Lca/h;)V

    .line 189
    .line 190
    .line 191
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 192
    .line 193
    const/4 v0, 0x4

    .line 194
    const/4 v1, 0x0

    .line 195
    const-string v2, "ad_impressions"

    .line 196
    .line 197
    const-wide/16 v6, 0x0

    .line 198
    .line 199
    move-object p1, v3

    .line 200
    move-object p2, v2

    .line 201
    move-object/from16 p3, v5

    .line 202
    .line 203
    move-wide/from16 p4, v6

    .line 204
    .line 205
    move/from16 p6, v0

    .line 206
    .line 207
    move-object/from16 p7, v1

    .line 208
    .line 209
    invoke-static/range {p1 .. p7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    return-void
.end method

.method public final S(Ljava/lang/String;ZLca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;)V
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lca/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/manager/ad/AdManager$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object v2, p1

    .line 2
    move/from16 v0, p2

    .line 3
    .line 4
    const-string v1, "scene"

    .line 5
    .line 6
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v1, "adInfo"

    .line 10
    .line 11
    move-object/from16 v3, p3

    .line 12
    .line 13
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "calculateDisplayTime"

    .line 17
    .line 18
    move-object/from16 v4, p5

    .line 19
    .line 20
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 24
    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v6, "logAdImpressionDuration -> scene("

    .line 31
    .line 32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v6, ") reward("

    .line 39
    .line 40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v6, 0x29

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const-string v6, "AdManager"

    .line 56
    .line 57
    invoke-virtual {v1, v6, v5}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/manager/ad/AdManager$a;->b()V

    .line 61
    .line 62
    .line 63
    sget-object v7, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 64
    .line 65
    move-object/from16 v1, p4

    .line 66
    .line 67
    invoke-virtual {v7, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    const-string v1, "impressions_duration"

    .line 72
    .line 73
    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/manager/ad/AdManager$a;->a()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v9, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    if-eqz v0, :cond_0

    .line 81
    .line 82
    const-string v0, "impressions_success"

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const-string v0, "impressions_close_midway"

    .line 86
    .line 87
    :goto_0
    const-string v1, "action"

    .line 88
    .line 89
    invoke-virtual {v9, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 93
    .line 94
    const/16 v5, 0x8

    .line 95
    .line 96
    const/4 v6, 0x0

    .line 97
    const/4 v4, 0x0

    .line 98
    move-object/from16 v1, p3

    .line 99
    .line 100
    move-object v2, p1

    .line 101
    move-object v3, v9

    .line 102
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->z(Lcom/startshorts/androidplayer/manager/ad/AdManager;Lca/d;Ljava/lang/String;Landroid/os/Bundle;Lca/h;ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 106
    .line 107
    const/4 v12, 0x4

    .line 108
    const/4 v13, 0x0

    .line 109
    const-string v8, "ad_impressions_duration"

    .line 110
    .line 111
    const-wide/16 v10, 0x0

    .line 112
    .line 113
    invoke-static/range {v7 .. v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final a0(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Lkotlinx/coroutines/r;
    .locals 7
    .param p1    # Lcom/startshorts/androidplayer/bean/ad/AdScene;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "adScene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 7
    .line 8
    new-instance v4, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {v4, p1, v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager$preloadAd$1;-><init>(Lcom/startshorts/androidplayer/bean/ad/AdScene;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    const/4 v6, 0x0

    .line 16
    const-string v2, "preloadAd"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public final c0()V
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sget-object v2, Lud/b;->a:Lud/b;

    .line 8
    .line 9
    invoke-virtual {v2}, Lud/b;->O0()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    sub-long v3, v0, v3

    .line 14
    .line 15
    sget-object v5, Lcom/startshorts/androidplayer/manager/configure/ad/a;->a:Lcom/startshorts/androidplayer/manager/configure/ad/a;

    .line 16
    .line 17
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/manager/configure/ad/a;->h()Lcom/startshorts/androidplayer/manager/configure/ad/a$a;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->n()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    int-to-long v6, v5

    .line 26
    cmp-long v6, v3, v6

    .line 27
    .line 28
    const-string v7, ",appOpenGap="

    .line 29
    .line 30
    const-string v8, "AdManager"

    .line 31
    .line 32
    if-lez v6, :cond_0

    .line 33
    .line 34
    invoke-virtual {v2, v0, v1}, Lud/b;->a4(J)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->APP_OPEN:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a0(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Lkotlinx/coroutines/r;

    .line 40
    .line 41
    .line 42
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "preloadAppOpenInGap -> start,currentGap="

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v8, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v2, "preloadAppOpenInGap -> ignore,currentGap="

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v8, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_0
    return-void
.end method

.method public final d0(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public final e0(Landroid/app/Activity;Landroid/view/ViewGroup;JJLjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lgt/g0;
    .locals 17
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "JJ",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lca/d;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lgt/g0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v7, p7

    .line 6
    .line 7
    move-object/from16 v8, p13

    .line 8
    .line 9
    const-string v2, "activity"

    .line 10
    .line 11
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "adContainer"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "scene"

    .line 20
    .line 21
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v2, "onPrepareShow"

    .line 25
    .line 26
    move-object/from16 v6, p8

    .line 27
    .line 28
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v2, "onShowSuccess"

    .line 32
    .line 33
    move-object/from16 v3, p9

    .line 34
    .line 35
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v2, "onShowFailed"

    .line 39
    .line 40
    move-object/from16 v5, p10

    .line 41
    .line 42
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v2, "onDismiss"

    .line 46
    .line 47
    move-object/from16 v9, p11

    .line 48
    .line 49
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v2, "onLoadFailed"

    .line 53
    .line 54
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sget-object v10, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 58
    .line 59
    new-instance v12, Landroid/os/Bundle;

    .line 60
    .line 61
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v2, "ad_placement"

    .line 65
    .line 66
    invoke-virtual {v12, v2, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string/jumbo v2, "type"

    .line 70
    .line 71
    .line 72
    const-string v4, "2"

    .line 73
    .line 74
    invoke-virtual {v12, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    const/4 v15, 0x4

    .line 80
    const/16 v16, 0x0

    .line 81
    .line 82
    const-string v11, "ad_placement_show"

    .line 83
    .line 84
    const-wide/16 v13, 0x0

    .line 85
    .line 86
    invoke-static/range {v10 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 90
    .line 91
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 92
    .line 93
    .line 94
    new-instance v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 95
    .line 96
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 97
    .line 98
    .line 99
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 100
    .line 101
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v13, Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 105
    .line 106
    invoke-direct {v13}, Lcom/startshorts/androidplayer/manager/ad/AdManager$a;-><init>()V

    .line 107
    .line 108
    .line 109
    sget-object v14, Lca/k;->a:Lca/k;

    .line 110
    .line 111
    new-instance v15, Lca/f;

    .line 112
    .line 113
    invoke-direct {v15}, Lca/f;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v15, v7}, Lca/f;->C(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 120
    .line 121
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v15, v2}, Lca/f;->q(Ljava/lang/ref/WeakReference;)V

    .line 125
    .line 126
    .line 127
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 128
    .line 129
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v15, v0}, Lca/f;->s(Ljava/lang/ref/WeakReference;)V

    .line 133
    .line 134
    .line 135
    move-wide/from16 v0, p3

    .line 136
    .line 137
    invoke-virtual {v15, v0, v1}, Lca/f;->A(J)V

    .line 138
    .line 139
    .line 140
    move-wide/from16 v0, p5

    .line 141
    .line 142
    invoke-virtual {v15, v0, v1}, Lca/f;->z(J)V

    .line 143
    .line 144
    .line 145
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;

    .line 146
    .line 147
    sget-object v1, Lcom/startshorts/androidplayer/bean/ad/AdScene;->APP_OPEN:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->f(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v15, v0}, Lca/f;->v(Ljava/util/List;)V

    .line 154
    .line 155
    .line 156
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$f;

    .line 157
    .line 158
    move-object/from16 v1, p12

    .line 159
    .line 160
    invoke-direct {v0, v1, v7}, Lcom/startshorts/androidplayer/manager/ad/AdManager$f;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v15, v0}, Lca/f;->w(Lca/f$b;)V

    .line 164
    .line 165
    .line 166
    new-instance v4, Lcom/startshorts/androidplayer/manager/ad/AdManager$g;

    .line 167
    .line 168
    move-object v0, v4

    .line 169
    move-object v1, v13

    .line 170
    move-object/from16 v2, p9

    .line 171
    .line 172
    move-object v3, v12

    .line 173
    move-object v7, v4

    .line 174
    move-object/from16 v4, p7

    .line 175
    .line 176
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/ad/AdManager$g;-><init>(Lcom/startshorts/androidplayer/manager/ad/AdManager$a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v15, v7}, Lca/f;->D(Lca/f$e;)V

    .line 180
    .line 181
    .line 182
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$h;

    .line 183
    .line 184
    move-object/from16 p1, v0

    .line 185
    .line 186
    move-object/from16 p2, p7

    .line 187
    .line 188
    move-object/from16 p3, v11

    .line 189
    .line 190
    move-object/from16 p4, v13

    .line 191
    .line 192
    move-object/from16 p5, v10

    .line 193
    .line 194
    move-object/from16 p6, p11

    .line 195
    .line 196
    invoke-direct/range {p1 .. p6}, Lcom/startshorts/androidplayer/manager/ad/AdManager$h;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function0;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v15, v0}, Lca/f;->x(Lca/f$c;)V

    .line 200
    .line 201
    .line 202
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i;

    .line 203
    .line 204
    move-object/from16 p1, v0

    .line 205
    .line 206
    move-object/from16 p2, v10

    .line 207
    .line 208
    move-object/from16 p3, v12

    .line 209
    .line 210
    move-object/from16 p4, v11

    .line 211
    .line 212
    move-object/from16 p5, p7

    .line 213
    .line 214
    move-object/from16 p6, v13

    .line 215
    .line 216
    invoke-direct/range {p1 .. p6}, Lcom/startshorts/androidplayer/manager/ad/AdManager$i;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v15, v0}, Lca/f;->B(Lca/f$d;)V

    .line 220
    .line 221
    .line 222
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$j;

    .line 223
    .line 224
    invoke-direct {v0, v8}, Lcom/startshorts/androidplayer/manager/ad/AdManager$j;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v15, v0}, Lca/f;->t(Lca/f$a;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v14, v15}, Lca/k;->u(Lca/f;)Lgt/g0;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    return-object v0
.end method

.method public final i0(Ljava/lang/ref/WeakReference;Landroid/view/ViewGroup;JLjava/lang/String;Lcom/hades/aar/admanager/core/AdSize;Lkotlin/jvm/functions/Function0;)V
    .locals 22
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/hades/aar/admanager/core/AdSize;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/view/ViewGroup;",
            "J",
            "Ljava/lang/String;",
            "Lcom/hades/aar/admanager/core/AdSize;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    const-string v3, "actRef"

    .line 8
    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "adContainer"

    .line 13
    .line 14
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v3, "scene"

    .line 18
    .line 19
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v3, "adSize"

    .line 23
    .line 24
    move-object/from16 v15, p6

    .line 25
    .line 26
    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v3, Lcom/startshorts/androidplayer/manager/ad/AdManager;->c:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    :cond_0
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 40
    .line 41
    new-instance v6, Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "ad_placement"

    .line 47
    .line 48
    invoke-virtual {v6, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string/jumbo v3, "type"

    .line 52
    .line 53
    .line 54
    const-string v5, "4"

    .line 55
    .line 56
    invoke-virtual {v6, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 60
    .line 61
    const/4 v9, 0x4

    .line 62
    const/4 v10, 0x0

    .line 63
    const-string v5, "ad_placement_show"

    .line 64
    .line 65
    const-wide/16 v7, 0x0

    .line 66
    .line 67
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    sput-object v2, Lcom/startshorts/androidplayer/manager/ad/AdManager;->c:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 73
    .line 74
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 75
    .line 76
    .line 77
    sget-object v14, Lca/k;->a:Lca/k;

    .line 78
    .line 79
    new-instance v13, Lca/f;

    .line 80
    .line 81
    invoke-direct {v13}, Lca/f;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v13, v2}, Lca/f;->C(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v13, v0}, Lca/f;->q(Ljava/lang/ref/WeakReference;)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 91
    .line 92
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v13, v0}, Lca/f;->s(Ljava/lang/ref/WeakReference;)V

    .line 96
    .line 97
    .line 98
    move-wide/from16 v0, p3

    .line 99
    .line 100
    invoke-virtual {v13, v0, v1}, Lca/f;->z(J)V

    .line 101
    .line 102
    .line 103
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;

    .line 104
    .line 105
    sget-object v1, Lcom/startshorts/androidplayer/bean/ad/AdScene;->BANNER:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->f(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Ljava/lang/Iterable;

    .line 112
    .line 113
    new-instance v1, Ljava/util/ArrayList;

    .line 114
    .line 115
    const/16 v4, 0xa

    .line 116
    .line 117
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .line 123
    .line 124
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-eqz v4, :cond_2

    .line 133
    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Lca/e;

    .line 139
    .line 140
    const/16 v16, 0x3df

    .line 141
    .line 142
    const/16 v17, 0x0

    .line 143
    .line 144
    const/4 v5, 0x0

    .line 145
    const/4 v6, 0x0

    .line 146
    const/4 v7, 0x0

    .line 147
    const/4 v8, 0x0

    .line 148
    const/4 v9, 0x0

    .line 149
    const/4 v11, 0x0

    .line 150
    const/4 v12, 0x0

    .line 151
    const/16 v18, 0x0

    .line 152
    .line 153
    const/16 v19, 0x0

    .line 154
    .line 155
    move-object/from16 v10, p6

    .line 156
    .line 157
    move-object/from16 v20, v13

    .line 158
    .line 159
    move-object/from16 v13, v18

    .line 160
    .line 161
    move-object/from16 v21, v14

    .line 162
    .line 163
    move/from16 v14, v19

    .line 164
    .line 165
    move/from16 v15, v16

    .line 166
    .line 167
    move-object/from16 v16, v17

    .line 168
    .line 169
    invoke-static/range {v4 .. v16}, Lca/e;->b(Lca/e;Ljava/lang/String;Lcom/hades/aar/admanager/core/AdFormat;Lcom/hades/aar/admanager/core/AdPriority;ILjava/lang/String;Lcom/hades/aar/admanager/core/AdSize;IILcom/hades/aar/admanager/core/AdAggregatedSdk;ZILjava/lang/Object;)Lca/e;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-object/from16 v15, p6

    .line 177
    .line 178
    move-object/from16 v13, v20

    .line 179
    .line 180
    move-object/from16 v14, v21

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_2
    move-object v4, v13

    .line 184
    move-object/from16 v21, v14

    .line 185
    .line 186
    invoke-virtual {v4, v1}, Lca/f;->v(Ljava/util/List;)V

    .line 187
    .line 188
    .line 189
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$k;

    .line 190
    .line 191
    move-object/from16 v1, p7

    .line 192
    .line 193
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/ad/AdManager$k;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v0}, Lca/f;->w(Lca/f$b;)V

    .line 197
    .line 198
    .line 199
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$l;

    .line 200
    .line 201
    invoke-direct {v0, v3, v2}, Lcom/startshorts/androidplayer/manager/ad/AdManager$l;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4, v0}, Lca/f;->D(Lca/f$e;)V

    .line 205
    .line 206
    .line 207
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$m;

    .line 208
    .line 209
    invoke-direct {v0, v3, v2}, Lcom/startshorts/androidplayer/manager/ad/AdManager$m;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4, v0}, Lca/f;->B(Lca/f$d;)V

    .line 213
    .line 214
    .line 215
    move-object/from16 v0, v21

    .line 216
    .line 217
    invoke-virtual {v0, v4}, Lca/k;->u(Lca/f;)Lgt/g0;

    .line 218
    .line 219
    .line 220
    return-void
.end method

.method public final j0(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;IILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJLkotlin/jvm/functions/Function1;)Z
    .locals 19
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "II",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;JJ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v9, p3

    .line 4
    .line 5
    move-object/from16 v1, p14

    .line 6
    .line 7
    const-string v2, "scene"

    .line 8
    .line 9
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const-string v3, "AdManager"

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 18
    .line 19
    const-string/jumbo v4, "showFullScreenNativeAd failed -> activity is null"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    return v2

    .line 33
    :cond_1
    move-object/from16 v10, p0

    .line 34
    .line 35
    invoke-virtual {v10, v9}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->K(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_3

    .line 40
    .line 41
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 42
    .line 43
    const-string/jumbo v4, "showFullScreenNativeAd failed -> FullScreenNativeAd is disabled"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_2
    return v2

    .line 57
    :cond_3
    sget-object v2, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->h()Lcom/startshorts/androidplayer/manager/configure/ad/c$a;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/configure/ad/c$a;->e()V

    .line 64
    .line 65
    .line 66
    sget-object v11, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 67
    .line 68
    new-instance v13, Landroid/os/Bundle;

    .line 69
    .line 70
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v2, "ad_placement"

    .line 74
    .line 75
    invoke-virtual {v13, v2, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string/jumbo v2, "type"

    .line 79
    .line 80
    .line 81
    const-string v3, "3"

    .line 82
    .line 83
    invoke-virtual {v13, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    const/16 v16, 0x4

    .line 89
    .line 90
    const/16 v17, 0x0

    .line 91
    .line 92
    const-string v12, "ad_placement_show"

    .line 93
    .line 94
    const-wide/16 v14, 0x0

    .line 95
    .line 96
    invoke-static/range {v11 .. v17}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    new-instance v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 100
    .line 101
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 105
    .line 106
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v13, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 110
    .line 111
    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 112
    .line 113
    .line 114
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 115
    .line 116
    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 117
    .line 118
    .line 119
    new-instance v15, Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 120
    .line 121
    invoke-direct {v15}, Lcom/startshorts/androidplayer/manager/ad/AdManager$a;-><init>()V

    .line 122
    .line 123
    .line 124
    sget-object v8, Lca/k;->a:Lca/k;

    .line 125
    .line 126
    new-instance v7, Lca/f;

    .line 127
    .line 128
    invoke-direct {v7}, Lca/f;-><init>()V

    .line 129
    .line 130
    .line 131
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 132
    .line 133
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7, v2}, Lca/f;->q(Ljava/lang/ref/WeakReference;)V

    .line 137
    .line 138
    .line 139
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v7, v2}, Lca/f;->r(Ljava/lang/Integer;)V

    .line 144
    .line 145
    .line 146
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v7, v2}, Lca/f;->u(Ljava/lang/Integer;)V

    .line 151
    .line 152
    .line 153
    if-eqz p7, :cond_6

    .line 154
    .line 155
    new-instance v2, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;

    .line 156
    .line 157
    invoke-direct {v2}, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;-><init>()V

    .line 158
    .line 159
    .line 160
    instance-of v3, v0, Landroidx/fragment/app/FragmentActivity;

    .line 161
    .line 162
    const/4 v4, 0x0

    .line 163
    if-eqz v3, :cond_4

    .line 164
    .line 165
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_4
    move-object v0, v4

    .line 169
    :goto_0
    if-eqz v0, :cond_5

    .line 170
    .line 171
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    :cond_5
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;->F(Landroidx/fragment/app/FragmentManager;)V

    .line 176
    .line 177
    .line 178
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$n;

    .line 179
    .line 180
    move-object/from16 v3, p8

    .line 181
    .line 182
    move-object/from16 v4, p9

    .line 183
    .line 184
    invoke-direct {v0, v3, v4}, Lcom/startshorts/androidplayer/manager/ad/AdManager$n;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;->G(Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog$b;)V

    .line 188
    .line 189
    .line 190
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 191
    .line 192
    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v7, v0}, Lca/f;->y(Ljava/lang/ref/WeakReference;)V

    .line 196
    .line 197
    .line 198
    move-wide/from16 v2, p10

    .line 199
    .line 200
    invoke-virtual {v7, v2, v3}, Lca/f;->A(J)V

    .line 201
    .line 202
    .line 203
    move-wide/from16 v2, p12

    .line 204
    .line 205
    invoke-virtual {v7, v2, v3}, Lca/f;->z(J)V

    .line 206
    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_6
    const-wide/16 v2, -0x1

    .line 210
    .line 211
    invoke-virtual {v7, v2, v3}, Lca/f;->z(J)V

    .line 212
    .line 213
    .line 214
    :goto_1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;

    .line 215
    .line 216
    sget-object v2, Lcom/startshorts/androidplayer/bean/ad/AdScene;->NATIVE:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 217
    .line 218
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->f(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v7, v0}, Lca/f;->v(Ljava/util/List;)V

    .line 223
    .line 224
    .line 225
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$o;

    .line 226
    .line 227
    move-object/from16 v6, p1

    .line 228
    .line 229
    invoke-direct {v0, v9, v6}, Lcom/startshorts/androidplayer/manager/ad/AdManager$o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v7, v0}, Lca/f;->w(Lca/f$b;)V

    .line 233
    .line 234
    .line 235
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$p;

    .line 236
    .line 237
    invoke-direct {v0, v9}, Lcom/startshorts/androidplayer/manager/ad/AdManager$p;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v7, v0}, Lca/f;->t(Lca/f$a;)V

    .line 241
    .line 242
    .line 243
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$q;

    .line 244
    .line 245
    move-object/from16 p7, v0

    .line 246
    .line 247
    move-object/from16 p8, v15

    .line 248
    .line 249
    move-object/from16 p9, v14

    .line 250
    .line 251
    move-object/from16 p10, p3

    .line 252
    .line 253
    move-object/from16 p11, p6

    .line 254
    .line 255
    move-object/from16 p12, p14

    .line 256
    .line 257
    invoke-direct/range {p7 .. p12}, Lcom/startshorts/androidplayer/manager/ad/AdManager$q;-><init>(Lcom/startshorts/androidplayer/manager/ad/AdManager$a;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v7, v0}, Lca/f;->D(Lca/f$e;)V

    .line 261
    .line 262
    .line 263
    new-instance v5, Lcom/startshorts/androidplayer/manager/ad/AdManager$r;

    .line 264
    .line 265
    move-object v0, v5

    .line 266
    move-object/from16 v1, p14

    .line 267
    .line 268
    move-object v2, v13

    .line 269
    move-object v3, v11

    .line 270
    move-object/from16 v4, p3

    .line 271
    .line 272
    move-object v9, v5

    .line 273
    move-object/from16 v5, p6

    .line 274
    .line 275
    move-object v6, v15

    .line 276
    move-object v10, v7

    .line 277
    move-object v7, v12

    .line 278
    move-object/from16 v18, v8

    .line 279
    .line 280
    move-object/from16 v8, p1

    .line 281
    .line 282
    invoke-direct/range {v0 .. v8}, Lcom/startshorts/androidplayer/manager/ad/AdManager$r;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v10, v9}, Lca/f;->x(Lca/f$c;)V

    .line 286
    .line 287
    .line 288
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$s;

    .line 289
    .line 290
    move-object/from16 p4, v0

    .line 291
    .line 292
    move-object/from16 p5, v12

    .line 293
    .line 294
    move-object/from16 p6, v14

    .line 295
    .line 296
    move-object/from16 p7, v13

    .line 297
    .line 298
    move-object/from16 p8, p1

    .line 299
    .line 300
    move-object/from16 p9, p3

    .line 301
    .line 302
    move-object/from16 p10, v11

    .line 303
    .line 304
    move-object/from16 p11, v15

    .line 305
    .line 306
    invoke-direct/range {p4 .. p11}, Lcom/startshorts/androidplayer/manager/ad/AdManager$s;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v10, v0}, Lca/f;->B(Lca/f$d;)V

    .line 310
    .line 311
    .line 312
    move-object/from16 v0, v18

    .line 313
    .line 314
    invoke-virtual {v0, v10}, Lca/k;->u(Lca/f;)Lgt/g0;

    .line 315
    .line 316
    .line 317
    const/4 v0, 0x1

    .line 318
    return v0
.end method

.method public final l0(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJZLkotlin/jvm/functions/Function1;)Z
    .locals 19
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;JJZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v9, p3

    .line 4
    .line 5
    move-object/from16 v1, p13

    .line 6
    .line 7
    const-string v2, "scene"

    .line 8
    .line 9
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const-string v3, "AdManager"

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 18
    .line 19
    const-string/jumbo v4, "showInterstitial failed -> activity is null"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    return v2

    .line 33
    :cond_1
    move-object/from16 v10, p0

    .line 34
    .line 35
    invoke-virtual {v10, v9}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->K(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_3

    .line 40
    .line 41
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 42
    .line 43
    const-string/jumbo v4, "showInterstitial failed -> interstitial is disabled"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_2
    return v2

    .line 57
    :cond_3
    sget-object v2, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->h()Lcom/startshorts/androidplayer/manager/configure/ad/c$a;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/configure/ad/c$a;->e()V

    .line 64
    .line 65
    .line 66
    sget-object v11, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 67
    .line 68
    new-instance v13, Landroid/os/Bundle;

    .line 69
    .line 70
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v2, "ad_placement"

    .line 74
    .line 75
    invoke-virtual {v13, v2, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string/jumbo v2, "type"

    .line 79
    .line 80
    .line 81
    const-string v3, "0"

    .line 82
    .line 83
    invoke-virtual {v13, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    const/16 v16, 0x4

    .line 89
    .line 90
    const/16 v17, 0x0

    .line 91
    .line 92
    const-string v12, "ad_placement_show"

    .line 93
    .line 94
    const-wide/16 v14, 0x0

    .line 95
    .line 96
    invoke-static/range {v11 .. v17}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    new-instance v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 100
    .line 101
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 105
    .line 106
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v13, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 110
    .line 111
    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 112
    .line 113
    .line 114
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 115
    .line 116
    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 117
    .line 118
    .line 119
    new-instance v15, Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 120
    .line 121
    invoke-direct {v15}, Lcom/startshorts/androidplayer/manager/ad/AdManager$a;-><init>()V

    .line 122
    .line 123
    .line 124
    sget-object v8, Lca/k;->a:Lca/k;

    .line 125
    .line 126
    new-instance v7, Lca/f;

    .line 127
    .line 128
    invoke-direct {v7}, Lca/f;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, v9}, Lca/f;->C(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 135
    .line 136
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7, v2}, Lca/f;->q(Ljava/lang/ref/WeakReference;)V

    .line 140
    .line 141
    .line 142
    if-eqz p5, :cond_7

    .line 143
    .line 144
    if-eqz p12, :cond_4

    .line 145
    .line 146
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 147
    .line 148
    new-instance v3, Lhi/c;

    .line 149
    .line 150
    invoke-direct {v3, v0}, Lhi/c;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_4
    new-instance v2, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;

    .line 158
    .line 159
    invoke-direct {v2}, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;-><init>()V

    .line 160
    .line 161
    .line 162
    instance-of v3, v0, Landroidx/fragment/app/FragmentActivity;

    .line 163
    .line 164
    const/4 v4, 0x0

    .line 165
    if-eqz v3, :cond_5

    .line 166
    .line 167
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_5
    move-object v0, v4

    .line 171
    :goto_0
    if-eqz v0, :cond_6

    .line 172
    .line 173
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    :cond_6
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;->F(Landroidx/fragment/app/FragmentManager;)V

    .line 178
    .line 179
    .line 180
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$t;

    .line 181
    .line 182
    move-object/from16 v3, p6

    .line 183
    .line 184
    move-object/from16 v4, p7

    .line 185
    .line 186
    invoke-direct {v0, v3, v4}, Lcom/startshorts/androidplayer/manager/ad/AdManager$t;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;->G(Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog$b;)V

    .line 190
    .line 191
    .line 192
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 193
    .line 194
    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    move-object v2, v0

    .line 198
    :goto_1
    invoke-virtual {v7, v2}, Lca/f;->y(Ljava/lang/ref/WeakReference;)V

    .line 199
    .line 200
    .line 201
    move-wide/from16 v2, p8

    .line 202
    .line 203
    invoke-virtual {v7, v2, v3}, Lca/f;->A(J)V

    .line 204
    .line 205
    .line 206
    move-wide/from16 v2, p10

    .line 207
    .line 208
    invoke-virtual {v7, v2, v3}, Lca/f;->z(J)V

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_7
    const-wide/16 v2, -0x1

    .line 213
    .line 214
    invoke-virtual {v7, v2, v3}, Lca/f;->z(J)V

    .line 215
    .line 216
    .line 217
    :goto_2
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;

    .line 218
    .line 219
    sget-object v2, Lcom/startshorts/androidplayer/bean/ad/AdScene;->INTERSTITIAL:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 220
    .line 221
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->f(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Ljava/util/List;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v7, v0}, Lca/f;->v(Ljava/util/List;)V

    .line 226
    .line 227
    .line 228
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$u;

    .line 229
    .line 230
    move-object/from16 v6, p1

    .line 231
    .line 232
    invoke-direct {v0, v9, v6}, Lcom/startshorts/androidplayer/manager/ad/AdManager$u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v7, v0}, Lca/f;->w(Lca/f$b;)V

    .line 236
    .line 237
    .line 238
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$v;

    .line 239
    .line 240
    invoke-direct {v0, v9}, Lcom/startshorts/androidplayer/manager/ad/AdManager$v;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v7, v0}, Lca/f;->t(Lca/f$a;)V

    .line 244
    .line 245
    .line 246
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$w;

    .line 247
    .line 248
    move-object/from16 p5, v0

    .line 249
    .line 250
    move-object/from16 p6, v15

    .line 251
    .line 252
    move-object/from16 p7, v14

    .line 253
    .line 254
    move-object/from16 p8, p3

    .line 255
    .line 256
    move-object/from16 p9, p4

    .line 257
    .line 258
    move-object/from16 p10, p13

    .line 259
    .line 260
    invoke-direct/range {p5 .. p10}, Lcom/startshorts/androidplayer/manager/ad/AdManager$w;-><init>(Lcom/startshorts/androidplayer/manager/ad/AdManager$a;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v7, v0}, Lca/f;->D(Lca/f$e;)V

    .line 264
    .line 265
    .line 266
    new-instance v5, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;

    .line 267
    .line 268
    move-object v0, v5

    .line 269
    move-object/from16 v1, p13

    .line 270
    .line 271
    move-object v2, v13

    .line 272
    move-object v3, v11

    .line 273
    move-object/from16 v4, p3

    .line 274
    .line 275
    move-object v9, v5

    .line 276
    move-object/from16 v5, p4

    .line 277
    .line 278
    move-object v6, v15

    .line 279
    move-object v10, v7

    .line 280
    move-object v7, v12

    .line 281
    move-object/from16 v18, v8

    .line 282
    .line 283
    move-object/from16 v8, p1

    .line 284
    .line 285
    invoke-direct/range {v0 .. v8}, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v10, v9}, Lca/f;->x(Lca/f$c;)V

    .line 289
    .line 290
    .line 291
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$y;

    .line 292
    .line 293
    move-object/from16 p4, v0

    .line 294
    .line 295
    move-object/from16 p5, v12

    .line 296
    .line 297
    move-object/from16 p6, v14

    .line 298
    .line 299
    move-object/from16 p7, v13

    .line 300
    .line 301
    move-object/from16 p8, p1

    .line 302
    .line 303
    move-object/from16 p9, p3

    .line 304
    .line 305
    move-object/from16 p10, v11

    .line 306
    .line 307
    move-object/from16 p11, v15

    .line 308
    .line 309
    invoke-direct/range {p4 .. p11}, Lcom/startshorts/androidplayer/manager/ad/AdManager$y;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v10, v0}, Lca/f;->B(Lca/f$d;)V

    .line 313
    .line 314
    .line 315
    move-object/from16 v0, v18

    .line 316
    .line 317
    invoke-virtual {v0, v10}, Lca/k;->u(Lca/f;)Lgt/g0;

    .line 318
    .line 319
    .line 320
    const/4 v0, 0x1

    .line 321
    return v0
.end method

.method public final m0(Ljava/lang/ref/WeakReference;JLjava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V
    .locals 16
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;J",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v8, p4

    .line 4
    .line 5
    const-string v1, "actRef"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "scene"

    .line 11
    .line 12
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "onAdEnd"

    .line 16
    .line 17
    move-object/from16 v9, p6

    .line 18
    .line 19
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 23
    .line 24
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 28
    .line 29
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v12, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 33
    .line 34
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 38
    .line 39
    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 40
    .line 41
    .line 42
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 43
    .line 44
    new-instance v3, Landroid/os/Bundle;

    .line 45
    .line 46
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "ad_placement"

    .line 50
    .line 51
    invoke-virtual {v3, v2, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string/jumbo v2, "type"

    .line 55
    .line 56
    .line 57
    const-string v4, "5"

    .line 58
    .line 59
    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 63
    .line 64
    const/4 v6, 0x4

    .line 65
    const/4 v7, 0x0

    .line 66
    const-string v2, "ad_placement_show"

    .line 67
    .line 68
    const-wide/16 v4, 0x0

    .line 69
    .line 70
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    new-instance v14, Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 74
    .line 75
    invoke-direct {v14}, Lcom/startshorts/androidplayer/manager/ad/AdManager$a;-><init>()V

    .line 76
    .line 77
    .line 78
    sget-object v15, Lca/k;->a:Lca/k;

    .line 79
    .line 80
    new-instance v7, Lca/f;

    .line 81
    .line 82
    invoke-direct {v7}, Lca/f;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v8}, Lca/f;->C(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7, v0}, Lca/f;->q(Ljava/lang/ref/WeakReference;)V

    .line 89
    .line 90
    .line 91
    new-instance v1, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;

    .line 92
    .line 93
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    instance-of v2, v0, Landroidx/fragment/app/FragmentActivity;

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    if-eqz v2, :cond_0

    .line 104
    .line 105
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    move-object v0, v3

    .line 109
    :goto_0
    if-eqz v0, :cond_1

    .line 110
    .line 111
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    :cond_1
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/ui/dialog/loading/InterstitialAdLoadingDialog;->F(Landroidx/fragment/app/FragmentManager;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 119
    .line 120
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7, v0}, Lca/f;->y(Ljava/lang/ref/WeakReference;)V

    .line 124
    .line 125
    .line 126
    const-wide/16 v0, 0x0

    .line 127
    .line 128
    invoke-virtual {v7, v0, v1}, Lca/f;->A(J)V

    .line 129
    .line 130
    .line 131
    move-wide/from16 v0, p2

    .line 132
    .line 133
    invoke-virtual {v7, v0, v1}, Lca/f;->z(J)V

    .line 134
    .line 135
    .line 136
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;

    .line 137
    .line 138
    sget-object v1, Lcom/startshorts/androidplayer/bean/ad/AdScene;->MEDIA_VIDEO:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->f(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v7, v0}, Lca/f;->v(Ljava/util/List;)V

    .line 145
    .line 146
    .line 147
    new-instance v0, Lcom/startshorts/androidplayer/manager/ad/AdManager$z;

    .line 148
    .line 149
    invoke-direct {v0, v8}, Lcom/startshorts/androidplayer/manager/ad/AdManager$z;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7, v0}, Lca/f;->w(Lca/f$b;)V

    .line 153
    .line 154
    .line 155
    new-instance v6, Lcom/startshorts/androidplayer/manager/ad/AdManager$a0;

    .line 156
    .line 157
    move-object v0, v6

    .line 158
    move-object v1, v11

    .line 159
    move-object v2, v12

    .line 160
    move-object/from16 v3, p4

    .line 161
    .line 162
    move-object/from16 v4, p5

    .line 163
    .line 164
    move-object v5, v14

    .line 165
    move-object v8, v6

    .line 166
    move-object v6, v10

    .line 167
    move-object v9, v7

    .line 168
    move-object/from16 v7, p6

    .line 169
    .line 170
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/manager/ad/AdManager$a0;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v9, v8}, Lca/f;->x(Lca/f$c;)V

    .line 174
    .line 175
    .line 176
    new-instance v6, Lcom/startshorts/androidplayer/manager/ad/AdManager$b0;

    .line 177
    .line 178
    move-object v0, v6

    .line 179
    move-object v1, v14

    .line 180
    move-object v2, v13

    .line 181
    move-object/from16 v5, p6

    .line 182
    .line 183
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/ad/AdManager$b0;-><init>(Lcom/startshorts/androidplayer/manager/ad/AdManager$a;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v9, v6}, Lca/f;->D(Lca/f$e;)V

    .line 187
    .line 188
    .line 189
    new-instance v8, Lcom/startshorts/androidplayer/manager/ad/AdManager$c0;

    .line 190
    .line 191
    move-object v0, v8

    .line 192
    move-object v1, v10

    .line 193
    move-object v3, v11

    .line 194
    move-object/from16 v4, p4

    .line 195
    .line 196
    move-object/from16 v5, p5

    .line 197
    .line 198
    move-object v6, v12

    .line 199
    move-object v7, v14

    .line 200
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/manager/ad/AdManager$c0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v9, v8}, Lca/f;->B(Lca/f$d;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v15, v9}, Lca/k;->u(Lca/f;)Lgt/g0;

    .line 207
    .line 208
    .line 209
    return-void
.end method

.method public final n0(Ljava/lang/ref/WeakReference;Landroid/view/ViewGroup;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lca/f$f;)V
    .locals 4
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lca/f$f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/view/ViewGroup;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lca/f$f;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "actRef"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adContainer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "scene"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 17
    .line 18
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v3, "showNativeAd -> scene("

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const/16 v3, 0x29

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "AdManager"

    .line 47
    .line 48
    invoke-virtual {v1, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object v1, Lca/k;->a:Lca/k;

    .line 52
    .line 53
    new-instance v2, Lca/f;

    .line 54
    .line 55
    invoke-direct {v2}, Lca/f;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p4}, Lca/f;->C(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p1}, Lca/f;->q(Ljava/lang/ref/WeakReference;)V

    .line 62
    .line 63
    .line 64
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p1}, Lca/f;->s(Ljava/lang/ref/WeakReference;)V

    .line 70
    .line 71
    .line 72
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;

    .line 73
    .line 74
    sget-object p2, Lcom/startshorts/androidplayer/bean/ad/AdScene;->NATIVE:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser;->f(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v2, p1}, Lca/f;->v(Ljava/util/List;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v2, p1}, Lca/f;->u(Ljava/lang/Integer;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Lcom/startshorts/androidplayer/manager/ad/AdManager$d0;

    .line 91
    .line 92
    invoke-direct {p1, p5, p4}, Lcom/startshorts/androidplayer/manager/ad/AdManager$d0;-><init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, p1}, Lca/f;->w(Lca/f$b;)V

    .line 96
    .line 97
    .line 98
    new-instance p1, Lcom/startshorts/androidplayer/manager/ad/AdManager$e0;

    .line 99
    .line 100
    invoke-direct {p1, p6, v0, p4}, Lcom/startshorts/androidplayer/manager/ad/AdManager$e0;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, p1}, Lca/f;->D(Lca/f$e;)V

    .line 104
    .line 105
    .line 106
    new-instance p1, Lcom/startshorts/androidplayer/manager/ad/AdManager$f0;

    .line 107
    .line 108
    invoke-direct {p1, v0, p4}, Lcom/startshorts/androidplayer/manager/ad/AdManager$f0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, p1}, Lca/f;->B(Lca/f$d;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, p7}, Lca/f;->E(Lca/f$f;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v2}, Lca/k;->u(Lca/f;)Lgt/g0;

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public final p0(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onReward"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "AdManager"

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 16
    .line 17
    const-string/jumbo p2, "showRewardVideo failed -> activity is null"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->P()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 31
    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string p3, "Block Reward Video Ad for "

    .line 38
    .line 39
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    sget-object p3, Lae/a;->a:Lae/a;

    .line 43
    .line 44
    invoke-virtual {p3}, Lae/a;->d()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p3, " Channel"

    .line 52
    .line 53
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    new-instance v8, Lde/f;

    .line 65
    .line 66
    move-object v1, v8

    .line 67
    move-object v2, p1

    .line 68
    move-object v3, p2

    .line 69
    move-object v4, p3

    .line 70
    move-object v5, p4

    .line 71
    move-object v6, p5

    .line 72
    invoke-direct/range {v1 .. v6}, Lde/f;-><init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V

    .line 73
    .line 74
    .line 75
    const-string v3, "reward"

    .line 76
    .line 77
    const-wide/16 v4, 0xbb8

    .line 78
    .line 79
    const/4 v6, 0x1

    .line 80
    const/4 v7, 0x1

    .line 81
    move-object v1, p0

    .line 82
    move-object v2, p2

    .line 83
    invoke-virtual/range {v1 .. v8}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->t0(Landroid/app/Activity;Ljava/lang/String;JZZLkotlin/jvm/functions/Function0;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final t0(Landroid/app/Activity;Ljava/lang/String;JZZLkotlin/jvm/functions/Function0;)V
    .locals 14
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "JZZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v1, p1

    .line 2
    move-object/from16 v0, p7

    .line 3
    .line 4
    const-string v2, "activity"

    .line 5
    .line 6
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v2, "scene"

    .line 10
    .line 11
    move-object/from16 v5, p2

    .line 12
    .line 13
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "afterWait"

    .line 17
    .line 18
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lde/c;

    .line 22
    .line 23
    move/from16 v3, p5

    .line 24
    .line 25
    invoke-direct {v2, v3, p1}, Lde/c;-><init>(ZLandroid/app/Activity;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    new-instance v2, Lfk/p;

    .line 33
    .line 34
    invoke-direct {v2}, Lfk/p;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lfk/p;->d()Lfk/p;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 42
    .line 43
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v3, Lde/d;

    .line 47
    .line 48
    invoke-direct {v3, v10, v2, v0, v7}, Lde/d;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lfk/p;Lkotlin/jvm/functions/Function0;Lms/i;)V

    .line 49
    .line 50
    .line 51
    iput-object v3, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 52
    .line 53
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 54
    .line 55
    new-instance v2, Ljava/util/Date;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/utils/TimeUtil;->f(Ljava/util/Date;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->D0(Landroid/app/Activity;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_0

    .line 73
    .line 74
    const-string v0, "consented -> runAfterWaitOnUiThread"

    .line 75
    .line 76
    invoke-static {v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->w0(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 82
    .line 83
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    sget-object v11, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v2, "waitGDPRConsent"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    move-wide/from16 v2, p3

    .line 101
    .line 102
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v12

    .line 109
    new-instance v13, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;

    .line 110
    .line 111
    const/4 v9, 0x0

    .line 112
    move-object v0, v13

    .line 113
    move-object v1, p1

    .line 114
    move-object v4, v10

    .line 115
    move-object/from16 v5, p2

    .line 116
    .line 117
    move/from16 v8, p6

    .line 118
    .line 119
    invoke-direct/range {v0 .. v9}, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;-><init>(Landroid/app/Activity;JLkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;Lms/i;ZLrs/c;)V

    .line 120
    .line 121
    .line 122
    new-instance v6, Lde/e;

    .line 123
    .line 124
    invoke-direct {v6, v10}, Lde/e;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 125
    .line 126
    .line 127
    const/4 v7, 0x5

    .line 128
    const/4 v8, 0x0

    .line 129
    const/4 v2, 0x0

    .line 130
    const/4 v4, 0x0

    .line 131
    move-object v1, v11

    .line 132
    move-object v3, v12

    .line 133
    move-object v5, v13

    .line 134
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 135
    .line 136
    .line 137
    :goto_0
    return-void
.end method
