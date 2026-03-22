.class public final Lcom/startshorts/androidplayer/repo/config/ConfigRepo;
.super Ljava/lang/Object;
.source "ConfigRepo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/repo/config/ConfigRepo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/ConfigRepo;

    .line 7
    .line 8
    new-instance v0, Lmg/b;

    .line 9
    .line 10
    invoke-direct {v0}, Lmg/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lmg/c;

    .line 20
    .line 21
    invoke-direct {v0}, Lmg/c;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->c:Lms/i;

    .line 29
    .line 30
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

.method private final A()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->r()Lmg/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmg/a;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private static final D(Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/ConfigRepo;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/Throwable;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->u(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final F(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    sput-boolean p0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->d:Z

    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->F(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b()Lcom/startshorts/androidplayer/repo/config/ConfigRemoteDS;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->z()Lcom/startshorts/androidplayer/repo/config/ConfigRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->D(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d()Lmg/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->y()Lmg/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic e(Lcom/startshorts/androidplayer/repo/config/ConfigRepo;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->m(ZZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f(Lcom/startshorts/androidplayer/repo/config/ConfigRepo;)Lmg/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->r()Lmg/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lcom/startshorts/androidplayer/repo/config/ConfigRepo;)Lcom/startshorts/androidplayer/repo/config/ConfigRemoteDS;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->s()Lcom/startshorts/androidplayer/repo/config/ConfigRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Lcom/startshorts/androidplayer/repo/config/ConfigRepo;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->u(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i(Lcom/startshorts/androidplayer/repo/config/ConfigRepo;Lcom/startshorts/androidplayer/bean/configure/SdkConfig;Lcom/startshorts/androidplayer/bean/configure/SdkConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->v(Lcom/startshorts/androidplayer/bean/configure/SdkConfig;Lcom/startshorts/androidplayer/bean/configure/SdkConfig;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(Lcom/startshorts/androidplayer/repo/config/ConfigRepo;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->A()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic k(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method private final m(ZZZ)V
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
    const-string v2, "checkAFEnable -> firstCheck("

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
    const-string v2, ") afEnable("

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ") ajEnable("

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
    const-string v2, "ConfigRepo"

    .line 42
    .line 43
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    if-nez p2, :cond_0

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->n()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->p()V

    .line 55
    .line 56
    .line 57
    :goto_0
    if-nez p3, :cond_1

    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->o()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->q()V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_1
    return-void
.end method

.method private final n()V
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "ConfigRepo"

    .line 4
    .line 5
    const-string v2, "disableAf"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->r()Lmg/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lmg/a;->e(Z)V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 19
    .line 20
    const/4 v7, 0x6

    .line 21
    const/4 v8, 0x0

    .line 22
    const-string v3, "af_disabled"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const-wide/16 v5, 0x0

    .line 26
    .line 27
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 31
    .line 32
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AF_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->f(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lud/b;->a:Lud/b;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Lud/b;->B2(Z)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a:Lcom/startshorts/androidplayer/manager/configure/ad/d;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/d;->b()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private final o()V
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "ConfigRepo"

    .line 4
    .line 5
    const-string v2, "disableAj"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->r()Lmg/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lmg/a;->f(Z)V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 19
    .line 20
    const/4 v7, 0x6

    .line 21
    const/4 v8, 0x0

    .line 22
    const-string v3, "aj_disabled"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const-wide/16 v5, 0x0

    .line 26
    .line 27
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 31
    .line 32
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AJ_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->f(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lud/b;->a:Lud/b;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Lud/b;->F2(Z)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a:Lcom/startshorts/androidplayer/manager/configure/ad/d;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/d;->b()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private final p()V
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "ConfigRepo"

    .line 4
    .line 5
    const-string v2, "enableAf"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->r()Lmg/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lmg/a;->e(Z)V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 19
    .line 20
    const/4 v7, 0x6

    .line 21
    const/4 v8, 0x0

    .line 22
    const-string v3, "af_enabled"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const-wide/16 v5, 0x0

    .line 26
    .line 27
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final q()V
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "ConfigRepo"

    .line 4
    .line 5
    const-string v2, "enableAj"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->r()Lmg/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lmg/a;->f(Z)V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 19
    .line 20
    const/4 v7, 0x6

    .line 21
    const/4 v8, 0x0

    .line 22
    const-string v3, "aj_enabled"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const-wide/16 v5, 0x0

    .line 26
    .line 27
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final r()Lmg/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmg/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final s()Lcom/startshorts/androidplayer/repo/config/ConfigRemoteDS;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/repo/config/ConfigRemoteDS;

    .line 8
    .line 9
    return-object v0
.end method

.method private final u(Ljava/lang/Throwable;)V
    .locals 9

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
    const-string v2, "handleQuerySDKConfigFailed -> "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

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
    const-string v2, "ConfigRepo"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->r()Lmg/a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Lmg/a;->g(Z)V

    .line 35
    .line 36
    .line 37
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 38
    .line 39
    invoke-static {p1}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->D(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const-string p1, "result"

    .line 48
    .line 49
    const-string v0, "fail"

    .line 50
    .line 51
    invoke-virtual {v4, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    const/4 v7, 0x4

    .line 57
    const/4 v8, 0x0

    .line 58
    const-string v3, "query_sdk_config_result"

    .line 59
    .line 60
    const-wide/16 v5, 0x0

    .line 61
    .line 62
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    invoke-direct {p0, p1, p1, p1}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->m(ZZZ)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private final v(Lcom/startshorts/androidplayer/bean/configure/SdkConfig;Lcom/startshorts/androidplayer/bean/configure/SdkConfig;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/SdkConfig;->getStatus()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p1, v0

    .line 10
    :goto_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/configure/SdkConfig;->getStatus()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move p2, v0

    .line 18
    :goto_1
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "handleQuerySDKConfigSuccess -> afEnable("

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, ") ajEnable("

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/16 v3, 0x29

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "ConfigRepo"

    .line 51
    .line 52
    invoke-virtual {v1, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->r()Lmg/a;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {v1, v2}, Lmg/a;->g(Z)V

    .line 61
    .line 62
    .line 63
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 64
    .line 65
    new-instance v5, Landroid/os/Bundle;

    .line 66
    .line 67
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v1, "result"

    .line 71
    .line 72
    const-string v2, "success"

    .line 73
    .line 74
    invoke-virtual {v5, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    const/4 v8, 0x4

    .line 80
    const/4 v9, 0x0

    .line 81
    const-string v4, "query_sdk_config_result"

    .line 82
    .line 83
    const-wide/16 v6, 0x0

    .line 84
    .line 85
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, v0, p1, p2}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->m(ZZZ)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method private static final y()Lmg/a;
    .locals 1

    .line 1
    new-instance v0, Lmg/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lmg/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final z()Lcom/startshorts/androidplayer/repo/config/ConfigRemoteDS;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/config/ConfigRemoteDS;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/config/ConfigRemoteDS;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final B()V
    .locals 7

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
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 11
    .line 12
    new-instance v4, Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryAppClientLogConfig$1;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {v4, v0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryAppClientLogConfig$1;-><init>(Lrs/c;)V

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x2

    .line 19
    const/4 v6, 0x0

    .line 20
    const-string v2, "queryAppClientLogConfig"

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final C()V
    .locals 8

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v4, Lcom/startshorts/androidplayer/repo/config/ConfigRepo$querySdkConfig$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v4, v1}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo$querySdkConfig$1;-><init>(Lrs/c;)V

    .line 7
    .line 8
    .line 9
    new-instance v5, Lmg/e;

    .line 10
    .line 11
    invoke-direct {v5}, Lmg/e;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v6, 0x5

    .line 15
    const/4 v7, 0x0

    .line 16
    const-string v2, "querySdkConfig"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final E()V
    .locals 9

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
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-boolean v0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->d:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const/4 v0, 0x1

    .line 16
    sput-boolean v0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->d:Z

    .line 17
    .line 18
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 19
    .line 20
    new-instance v5, Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryServerConfig$1;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-direct {v5, v0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryServerConfig$1;-><init>(Lrs/c;)V

    .line 24
    .line 25
    .line 26
    new-instance v6, Lmg/d;

    .line 27
    .line 28
    invoke-direct {v6}, Lmg/d;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v7, 0x5

    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    const-string v3, "queryServerConfig"

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final l(Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->A()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 6
    .line 7
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->META_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->c(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sget-object v1, Lud/b;->a:Lud/b;

    .line 14
    .line 15
    invoke-virtual {v1}, Lud/b;->i2()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v4, "checkAFReplaceableByMetaIR -> needQuerySdkConfig("

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v4, ") metaIRQueried("

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, ") isOldUser("

    .line 43
    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 v0, 0x29

    .line 51
    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v3, "ConfigRepo"

    .line 60
    .line 61
    invoke-virtual {v2, v3, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    const-string p1, "checkAFReplaceableByMetaIR -> isOldUser is true"

    .line 67
    .line 68
    invoke-virtual {v2, v3, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p1

    .line 74
    :cond_0
    if-nez p1, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->w()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_1

    .line 81
    .line 82
    sget-object p1, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->c()V

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->x()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    sget-object p1, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->b()V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    const-string p1, "checkAFReplaceableByMetaIR -> wait sdk config queried"

    .line 100
    .line 101
    invoke-virtual {v2, v3, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 105
    .line 106
    return-object p1
.end method

.method public final t()Lcom/startshorts/androidplayer/bean/configure/ServerConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->r()Lmg/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmg/a;->a()Lcom/startshorts/androidplayer/bean/configure/ServerConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final w()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->r()Lmg/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmg/a;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final x()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->r()Lmg/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmg/a;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method
