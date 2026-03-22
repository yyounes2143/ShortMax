.class public final Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;
.super Ljava/lang/Object;
.source "CampaignReporter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCampaignReporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CampaignReporter.kt\ncom/startshorts/androidplayer/manager/attribution/CampaignReporter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,698:1\n1#2:699\n116#3,10:700\n*S KotlinDebug\n*F\n+ 1 CampaignReporter.kt\ncom/startshorts/androidplayer/manager/attribution/CampaignReporter\n*L\n68#1:700,10\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile b:Z

.field private static volatile c:Z

.field private static volatile d:Z

.field private static volatile e:Z

.field private static volatile f:Z

.field private static final g:Lqt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v2, v0, v1}, Lqt/d;->b(ZILjava/lang/Object;)Lqt/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->g:Lqt/a;

    .line 16
    .line 17
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

.method private final A(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string/jumbo v0, "unknown"

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo p1, "tracker_name"

    .line 19
    .line 20
    .line 21
    const-string v2, ""

    .line 22
    .line 23
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    move-object p1, v0

    .line 34
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    move-object v0, p1

    .line 38
    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static final C(Ljava/lang/String;)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->c:Z

    .line 3
    .line 4
    sget-object v0, Lud/b;->a:Lud/b;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lud/b;->S2(Z)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 11
    .line 12
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AF_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 13
    .line 14
    new-instance v2, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "err_msg"

    .line 20
    .line 21
    invoke-virtual {v2, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->x(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->s()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    sget-object p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 38
    .line 39
    .line 40
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method

.method private static final E(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->d:Z

    .line 3
    .line 4
    sget-object v0, Lud/b;->a:Lud/b;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lud/b;->k2(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    invoke-virtual {v0, p0}, Lud/b;->T2(Z)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 14
    .line 15
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AJ_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 16
    .line 17
    new-instance v1, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "err_msg"

    .line 23
    .line 24
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->x(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->s()Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    sget-object p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 41
    .line 42
    .line 43
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p0
.end method

.method private static final G(Ljava/lang/String;)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->e:Z

    .line 3
    .line 4
    sget-object v0, Lud/b;->a:Lud/b;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lud/b;->U2(Z)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 11
    .line 12
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->META_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 13
    .line 14
    new-instance v2, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "err_msg"

    .line 20
    .line 21
    invoke-virtual {v2, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->x(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->s()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    sget-object p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 38
    .line 39
    .line 40
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method

.method private static final I(Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object p0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v0, "CampaignNewTag"

    .line 4
    .line 5
    const-string v1, "reportFirebaseDDLInfo error"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    sput-boolean p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->f:Z

    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static synthetic K(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->J(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final L(Ljava/lang/String;)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->b:Z

    .line 3
    .line 4
    sget-object v0, Lud/b;->a:Lud/b;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lud/b;->W2(Z)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 11
    .line 12
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->GP_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 13
    .line 14
    new-instance v2, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "err_msg"

    .line 20
    .line 21
    invoke-virtual {v2, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->x(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->s()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    sget-object p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 38
    .line 39
    .line 40
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method

.method private static final N(Ljava/lang/String;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "CampaignNewTag"

    .line 4
    .line 5
    const-string v2, "reportPreInstall error ->"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->b:Z

    .line 12
    .line 13
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 14
    .line 15
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->PRE_INSTALL:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 16
    .line 17
    new-instance v2, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "err_msg"

    .line 23
    .line 24
    invoke-virtual {v2, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->x(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->N(Ljava/lang/String;)Lkotlin/Unit;

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
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->I(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->L(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->E(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->C(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->G(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->p(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->w(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->x(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->y(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic k(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic l(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic m(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic n(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic o(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method private final p(Lrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$getRequestId$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$getRequestId$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$getRequestId$1;->k:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$getRequestId$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$getRequestId$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$getRequestId$1;-><init>(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$getRequestId$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$getRequestId$1;->k:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object v0, v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$getRequestId$1;->h:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lqt/a;

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->g:Lqt/a;

    .line 59
    .line 60
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$getRequestId$1;->h:Ljava/lang/Object;

    .line 61
    .line 62
    iput v3, v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$getRequestId$1;->k:I

    .line 63
    .line 64
    invoke-interface {p1, v4, v0}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-ne v0, v1, :cond_3

    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_3
    move-object v0, p1

    .line 72
    :goto_1
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string/jumbo v1, "toString(...)"

    .line 81
    .line 82
    .line 83
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    invoke-interface {v0, v4}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-object p1

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    invoke-interface {v0, v4}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    throw p1
.end method

.method private final q()Z
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
    const-string v2, "isAJApiFailOrAlreadySend attributionAJFail -> "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    sget-object v2, Lud/b;->a:Lud/b;

    .line 14
    .line 15
    invoke-virtual {v2}, Lud/b;->J()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, ",ajConversionDataSent -> "

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lud/b;->s()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v3, 0x7d

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v3, "CampaignNewTag"

    .line 44
    .line 45
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lud/b;->J()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {v2}, Lud/b;->s()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 64
    :goto_1
    return v0
.end method

.method private final r()Z
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
    const-string v2, "isAfApiFailOrAlreadySend attributionAFFail -> "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    sget-object v2, Lud/b;->a:Lud/b;

    .line 14
    .line 15
    invoke-virtual {v2}, Lud/b;->I()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, ",afConversionDataSent -> "

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lud/b;->o()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v3, 0x7d

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v3, "CampaignNewTag"

    .line 44
    .line 45
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lud/b;->I()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {v2}, Lud/b;->o()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 64
    :goto_1
    return v0
.end method

.method private final t()Z
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
    const-string v2, "isFbApiFailOrAlreadySend attributionFBFail -> "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    sget-object v2, Lud/b;->a:Lud/b;

    .line 14
    .line 15
    invoke-virtual {v2}, Lud/b;->K()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, ",metaInstallReferrerSent -> "

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lud/b;->c1()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v3, 0x7d

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v3, "CampaignNewTag"

    .line 44
    .line 45
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lud/b;->K()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {v2}, Lud/b;->c1()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 64
    :goto_1
    return v0
.end method

.method private final v()Z
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
    const-string v2, "isSelfApiFailOrAlreadySend attributionSelfFail -> "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    sget-object v2, Lud/b;->a:Lud/b;

    .line 14
    .line 15
    invoke-virtual {v2}, Lud/b;->M()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, ",lpInfoSent -> "

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lud/b;->V0()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v3, 0x7d

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v3, "CampaignNewTag"

    .line 44
    .line 45
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lud/b;->M()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {v2}, Lud/b;->V0()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 64
    :goto_1
    return v0
.end method

.method private final w(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V
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
    const-string v1, "campaign"

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    const/4 v5, 0x4

    .line 20
    const/4 v6, 0x0

    .line 21
    const-string v1, "campaign_info_report"

    .line 22
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private final x(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    const-string v1, "campaign"

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    const/4 v5, 0x4

    .line 15
    const/4 v6, 0x0

    .line 16
    const-string v1, "campaign_info_report_failed"

    .line 17
    .line 18
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    move-object v2, p2

    .line 21
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final y(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Z)V
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
    const-string v1, "campaign"

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    xor-int/lit8 p1, p2, 0x1

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "isFirstReport"

    .line 24
    .line 25
    invoke-virtual {v2, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    const/4 v5, 0x4

    .line 31
    const/4 v6, 0x0

    .line 32
    const-string v1, "campaign_info_report_success"

    .line 33
    .line 34
    const-wide/16 v3, 0x0

    .line 35
    .line 36
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method static synthetic z(Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;Lcom/startshorts/androidplayer/manager/attribution/CampaignType;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->y(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->o()Z

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
    sget-object p1, Lfk/g;->a:Lfk/g;

    .line 12
    .line 13
    const/16 v0, 0x10

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lfk/g;->c(I)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 19
    .line 20
    const-string v0, "reportAFInfo failed -> afConversionDataSent is true"

    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    sget-object p1, Lfk/g;->a:Lfk/g;

    .line 35
    .line 36
    const/16 v0, 0x11

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lfk/g;->c(I)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 42
    .line 43
    const-string v0, "reportAFInfo failed -> not register account yet"

    .line 44
    .line 45
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    sget-boolean v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->c:Z

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    sget-object p1, Lfk/g;->a:Lfk/g;

    .line 54
    .line 55
    const/16 v0, 0x12

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lfk/g;->c(I)V

    .line 58
    .line 59
    .line 60
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 61
    .line 62
    const-string v0, "reportAFInfo failed -> AFInfoReporting is true"

    .line 63
    .line 64
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    const/4 v0, 0x1

    .line 69
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->c:Z

    .line 70
    .line 71
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 72
    .line 73
    new-instance v5, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;

    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-direct {v5, p1, v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAFInfo$1;-><init>(Ljava/lang/String;Lrs/c;)V

    .line 77
    .line 78
    .line 79
    new-instance v6, Lge/n;

    .line 80
    .line 81
    invoke-direct {v6}, Lge/n;-><init>()V

    .line 82
    .line 83
    .line 84
    const/4 v7, 0x5

    .line 85
    const/4 v8, 0x0

    .line 86
    const/4 v2, 0x0

    .line 87
    const-string v3, "reportAFInfo"

    .line 88
    .line 89
    const/4 v4, 0x0

    .line 90
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final D(Ljava/lang/String;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "CampaignNewTag"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Lfk/g;->a:Lfk/g;

    .line 12
    .line 13
    const/16 v0, 0x1b

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lfk/g;->c(I)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 19
    .line 20
    const-string v0, "reportAJInfo failed -> not register account yet"

    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v2, Lud/b;->a:Lud/b;

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Lud/b;->b(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "reportAJInfo skip -> trackerName already reported: "

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    sget-boolean v3, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->d:Z

    .line 62
    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    sget-object p1, Lfk/g;->a:Lfk/g;

    .line 66
    .line 67
    const/16 v3, 0x1c

    .line 68
    .line 69
    invoke-virtual {p1, v3}, Lfk/g;->c(I)V

    .line 70
    .line 71
    .line 72
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 73
    .line 74
    const-string v3, "reportAJInfo failed -> AJInfoReporting is true"

    .line 75
    .line 76
    invoke-virtual {p1, v1, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v0}, Lud/b;->k2(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    const/4 v1, 0x1

    .line 84
    sput-boolean v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->d:Z

    .line 85
    .line 86
    sget-object v2, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 87
    .line 88
    new-instance v6, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    invoke-direct {v6, p1, v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportAJInfo$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 92
    .line 93
    .line 94
    new-instance v7, Lge/m;

    .line 95
    .line 96
    invoke-direct {v7, v0}, Lge/m;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const/4 v8, 0x5

    .line 100
    const/4 v9, 0x0

    .line 101
    const/4 v3, 0x0

    .line 102
    const-string v4, "reportAJInfo"

    .line 103
    .line 104
    const/4 v5, 0x0

    .line 105
    invoke-static/range {v2 .. v9}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final F(Ljava/lang/String;I)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fbInstallReferrer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lud/b;->a:Lud/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lud/b;->c1()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "CampaignNewTag"

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object p1, Lfk/g;->a:Lfk/g;

    .line 17
    .line 18
    const/16 p2, 0x13

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lfk/g;->c(I)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 24
    .line 25
    const-string p2, "reportFBInfo failed -> metaInstallReferrerSent is true"

    .line 26
    .line 27
    invoke-virtual {p1, v1, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    sget-object p1, Lfk/g;->a:Lfk/g;

    .line 40
    .line 41
    const/16 p2, 0x14

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lfk/g;->c(I)V

    .line 44
    .line 45
    .line 46
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 47
    .line 48
    const-string p2, "reportFBInfo failed -> not register account yet"

    .line 49
    .line 50
    invoke-virtual {p1, v1, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    sget-boolean v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->e:Z

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    sget-object p1, Lfk/g;->a:Lfk/g;

    .line 59
    .line 60
    const/16 p2, 0x15

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lfk/g;->c(I)V

    .line 63
    .line 64
    .line 65
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 66
    .line 67
    const-string p2, "reportFBInfo failed -> FBInfoReporting is true"

    .line 68
    .line 69
    invoke-virtual {p1, v1, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    const/4 v0, 0x1

    .line 74
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->e:Z

    .line 75
    .line 76
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 77
    .line 78
    new-instance v5, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;

    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    invoke-direct {v5, p1, p2, v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFBInfo$1;-><init>(Ljava/lang/String;ILrs/c;)V

    .line 82
    .line 83
    .line 84
    new-instance v6, Lge/i;

    .line 85
    .line 86
    invoke-direct {v6}, Lge/i;-><init>()V

    .line 87
    .line 88
    .line 89
    const/4 v7, 0x5

    .line 90
    const/4 v8, 0x0

    .line 91
    const/4 v2, 0x0

    .line 92
    const-string v3, "reportFBInfo"

    .line 93
    .line 94
    const/4 v4, 0x0

    .line 95
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final H(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "deeplink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lud/b;->a:Lud/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lud/b;->n0()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "CampaignNewTag"

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 17
    .line 18
    const-string v0, "reportFirebaseDDLInfo failed -> ddlInfoSent is true"

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 33
    .line 34
    const-string v0, "reportFirebaseDDLInfo failed -> not register account yet"

    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    sget-boolean v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->f:Z

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 45
    .line 46
    const-string v0, "reportFirebaseDDLInfo failed -> DDLInfoReporting is true"

    .line 47
    .line 48
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    const/4 v0, 0x1

    .line 53
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->f:Z

    .line 54
    .line 55
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 56
    .line 57
    new-instance v5, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFirebaseDDLInfo$1;

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-direct {v5, p1, v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportFirebaseDDLInfo$1;-><init>(Ljava/lang/String;Lrs/c;)V

    .line 61
    .line 62
    .line 63
    new-instance v6, Lge/j;

    .line 64
    .line 65
    invoke-direct {v6}, Lge/j;-><init>()V

    .line 66
    .line 67
    .line 68
    const/4 v7, 0x5

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v2, 0x0

    .line 71
    const-string v3, "reportFirebaseDDLInfo"

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final J(Ljava/lang/String;Z)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "CampaignNewTag"

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    sget-object v1, Lud/b;->a:Lud/b;

    .line 6
    .line 7
    invoke-virtual {v1}, Lud/b;->V0()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lfk/g;->a:Lfk/g;

    .line 14
    .line 15
    const/16 p2, 0xd

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lfk/g;->c(I)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 21
    .line 22
    const-string p2, "reportLPInfo failed -> lpInfoSent is true"

    .line 23
    .line 24
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    sget-object p1, Lfk/g;->a:Lfk/g;

    .line 37
    .line 38
    const/16 p2, 0xe

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lfk/g;->c(I)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 44
    .line 45
    const-string p2, "reportLPInfo failed -> not register account yet"

    .line 46
    .line 47
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    sget-boolean v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->b:Z

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    sget-object p1, Lfk/g;->a:Lfk/g;

    .line 56
    .line 57
    const/16 p2, 0xf

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lfk/g;->c(I)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 63
    .line 64
    const-string p2, "reportLPInfo failed -> LPInfoReporting is true"

    .line 65
    .line 66
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    const/4 v0, 0x1

    .line 71
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->b:Z

    .line 72
    .line 73
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 74
    .line 75
    new-instance v5, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;

    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    invoke-direct {v5, p1, p2, v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportLPInfo$1;-><init>(Ljava/lang/String;ZLrs/c;)V

    .line 79
    .line 80
    .line 81
    new-instance v6, Lge/k;

    .line 82
    .line 83
    invoke-direct {v6}, Lge/k;-><init>()V

    .line 84
    .line 85
    .line 86
    const/4 v7, 0x5

    .line 87
    const/4 v8, 0x0

    .line 88
    const/4 v2, 0x0

    .line 89
    const-string v3, "reportLPInfo"

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final M(Ljava/lang/String;Z)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "CampaignNewTag"

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    sget-object v1, Lud/b;->a:Lud/b;

    .line 6
    .line 7
    invoke-virtual {v1}, Lud/b;->V0()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lfk/g;->a:Lfk/g;

    .line 14
    .line 15
    const/16 p2, 0x16

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lfk/g;->c(I)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 21
    .line 22
    const-string p2, "reportPreInstall failed -> lpInfoSent is true"

    .line 23
    .line 24
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    sget-object p1, Lfk/g;->a:Lfk/g;

    .line 37
    .line 38
    const/16 p2, 0x17

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lfk/g;->c(I)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 44
    .line 45
    const-string p2, "reportPreInstall failed -> not register account yet"

    .line 46
    .line 47
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    sget-boolean v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->b:Z

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    sget-object p1, Lfk/g;->a:Lfk/g;

    .line 56
    .line 57
    const/16 p2, 0x18

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lfk/g;->c(I)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 63
    .line 64
    const-string p2, "reportPreInstall failed -> LPInfoReporting is true"

    .line 65
    .line 66
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    const/4 v0, 0x1

    .line 71
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->b:Z

    .line 72
    .line 73
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 74
    .line 75
    new-instance v5, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;

    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    invoke-direct {v5, p1, p2, v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter$reportPreInstallLPInfo$1;-><init>(Ljava/lang/String;ZLrs/c;)V

    .line 79
    .line 80
    .line 81
    new-instance v6, Lge/l;

    .line 82
    .line 83
    invoke-direct {v6}, Lge/l;-><init>()V

    .line 84
    .line 85
    .line 86
    const/4 v7, 0x5

    .line 87
    const/4 v8, 0x0

    .line 88
    const/4 v2, 0x0

    .line 89
    const-string v3, "reportPreInstall"

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final s()Z
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
    const-string v2, "isAllAttributionHandleNotCampaign isAfApiFailOrAlreadySend -> "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->r()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ",isAfApiFailOrAlreadySend -> "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->t()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, ",isSelfApiFailOrAlreadySend -> "

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->v()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "CampaignNewTag"

    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->r()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->t()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->v()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->q()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0
.end method

.method public final u()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->UPLOAD_CAMPAIGN_INFO_RESULT:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->a(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    return v0
.end method
