.class public Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;
.super Lcom/startshorts/androidplayer/manager/auth/a;
.source "FirebaseAuthManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$b;,
        Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFirebaseAuthManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseAuthManager.kt\ncom/startshorts/androidplayer/manager/auth/FirebaseAuthManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,378:1\n1#2:379\n*E\n"
    }
.end annotation


# static fields
.field public static final l:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->l:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/auth/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;-><init>(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/auth/a;->q(Lka/j;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final A(Lcom/hades/aar/auth/base/AuthType;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/hades/aar/auth/base/AuthType;->FACEBOOK:Lcom/hades/aar/auth/base/AuthType;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/hades/aar/auth/base/AuthType;->GOOGLE:Lcom/hades/aar/auth/base/AuthType;

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/hades/aar/auth/base/AuthType;->HUAWEI:Lcom/hades/aar/auth/base/AuthType;

    .line 10
    .line 11
    if-ne p1, v0, :cond_4

    .line 12
    .line 13
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 14
    .line 15
    new-instance v3, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "scene"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->k:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$c;->$EnumSwitchMapping$0:[I

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    aget v0, v0, v2

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eq v0, v2, :cond_2

    .line 37
    .line 38
    const/4 v2, 0x2

    .line 39
    if-eq v0, v2, :cond_1

    .line 40
    .line 41
    const-string v0, "facebook"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string v0, "huawei"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const-string v0, "google"

    .line 48
    .line 49
    :goto_0
    const-string/jumbo v2, "type"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v0, "is_success"

    .line 56
    .line 57
    if-nez p2, :cond_3

    .line 58
    .line 59
    const-string v2, "2"

    .line 60
    .line 61
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const-string v2, "0"

    .line 66
    .line 67
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v0, "reason"

    .line 71
    .line 72
    invoke-virtual {v1, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->k1(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    const-string v0, "err_msg"

    .line 80
    .line 81
    invoke-virtual {v3, v0, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object p4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    const/4 v6, 0x4

    .line 87
    const/4 v7, 0x0

    .line 88
    const-string v2, "account_login_result"

    .line 89
    .line 90
    const-wide/16 v4, 0x0

    .line 91
    .line 92
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/auth/a;->h()Lke/a;

    .line 96
    .line 97
    .line 98
    move-result-object p4

    .line 99
    if-eqz p4, :cond_5

    .line 100
    .line 101
    invoke-interface {p4, p1, p2, p3}, Lke/a;->b(Lcom/hades/aar/auth/base/AuthType;ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_5
    return-void
.end method

.method private final B(Lcom/hades/aar/auth/base/AuthType;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/hades/aar/auth/base/AuthType;->FACEBOOK:Lcom/hades/aar/auth/base/AuthType;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/hades/aar/auth/base/AuthType;->GOOGLE:Lcom/hades/aar/auth/base/AuthType;

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/hades/aar/auth/base/AuthType;->HUAWEI:Lcom/hades/aar/auth/base/AuthType;

    .line 10
    .line 11
    if-ne p1, v0, :cond_3

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$c;->$EnumSwitchMapping$0:[I

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    aget v0, v0, v1

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    const-string v0, "facebook"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string v0, "huawei"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const-string v0, "google"

    .line 34
    .line 35
    :goto_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 36
    .line 37
    new-instance v3, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "scene"

    .line 43
    .line 44
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->k:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string/jumbo v2, "type"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v0, "is_success"

    .line 56
    .line 57
    const-string v2, "1"

    .line 58
    .line 59
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 63
    .line 64
    const/4 v6, 0x4

    .line 65
    const/4 v7, 0x0

    .line 66
    const-string v2, "account_login_result"

    .line 67
    .line 68
    const-wide/16 v4, 0x0

    .line 69
    .line 70
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->V0()Lkotlinx/coroutines/r;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/auth/a;->h()Lke/a;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    invoke-interface {v0, p1}, Lke/a;->a(Lcom/hades/aar/auth/base/AuthType;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    return-void
.end method

.method private final C(Lcom/hades/aar/auth/base/AuthType;ILjava/lang/String;Ljava/lang/String;)V
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
    const-string v1, "scene"

    .line 9
    .line 10
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->k:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$c;->$EnumSwitchMapping$0:[I

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    aget v1, v1, v3

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    const-string/jumbo v4, "type"

    .line 25
    .line 26
    .line 27
    if-eq v1, v3, :cond_2

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    if-eq v1, v3, :cond_1

    .line 31
    .line 32
    const/4 v3, 0x3

    .line 33
    if-eq v1, v3, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v1, "facebook"

    .line 37
    .line 38
    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string v1, "huawei"

    .line 43
    .line 44
    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const-string v1, "google"

    .line 49
    .line 50
    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    const-string v1, "is_success"

    .line 54
    .line 55
    if-nez p2, :cond_3

    .line 56
    .line 57
    const-string v3, "2"

    .line 58
    .line 59
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    const-string v3, "0"

    .line 64
    .line 65
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v1, "reason"

    .line 69
    .line 70
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->k1(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    const-string v1, "err_msg"

    .line 78
    .line 79
    invoke-virtual {v2, v1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sget-object p4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 83
    .line 84
    const/4 v5, 0x4

    .line 85
    const/4 v6, 0x0

    .line 86
    const-string v1, "account_login_result"

    .line 87
    .line 88
    const-wide/16 v3, 0x0

    .line 89
    .line 90
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/auth/a;->j()Lke/b;

    .line 94
    .line 95
    .line 96
    move-result-object p4

    .line 97
    if-eqz p4, :cond_4

    .line 98
    .line 99
    invoke-interface {p4, p1, p2, p3}, Lke/b;->b(Lcom/hades/aar/auth/base/AuthType;ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    return-void
.end method

.method private final D(Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/account/Account;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/account/Account;->getUserCode()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->V()V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->x(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->u()V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->C()V

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v1, 0x2

    .line 35
    invoke-virtual {p3, v1}, Lcom/startshorts/androidplayer/bean/account/Account;->setType(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, p2}, Lcom/startshorts/androidplayer/bean/account/Account;->setToken(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->f1(Lcom/startshorts/androidplayer/bean/account/Account;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/account/Account;->getAudienceIdList()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->g1(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    sget-object p2, Laa/a;->a:Laa/a;

    .line 52
    .line 53
    invoke-virtual {p2}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    if-eqz p2, :cond_1

    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    check-cast p2, Lcom/hades/aar/activity/IDActivity;

    .line 64
    .line 65
    if-eqz p2, :cond_1

    .line 66
    .line 67
    sget-object p3, Lng/g;->a:Lng/g;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {p3, p2, v2}, Lng/g;->e(Landroid/app/Activity;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    new-instance p3, Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;

    .line 81
    .line 82
    invoke-direct {p3}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p3}, Lau/c;->l(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->V0()Lkotlinx/coroutines/r;

    .line 89
    .line 90
    .line 91
    sget-object p2, Lcom/hades/aar/auth/base/AuthType;->FACEBOOK:Lcom/hades/aar/auth/base/AuthType;

    .line 92
    .line 93
    const/4 p3, 0x3

    .line 94
    const/4 v0, 0x1

    .line 95
    if-ne p1, p2, :cond_2

    .line 96
    .line 97
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    new-instance v2, Lcom/startshorts/androidplayer/bean/eventbus/LoginSuccessEvent;

    .line 102
    .line 103
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/bean/eventbus/LoginSuccessEvent;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    sget-object p2, Lcom/hades/aar/auth/base/AuthType;->GOOGLE:Lcom/hades/aar/auth/base/AuthType;

    .line 111
    .line 112
    if-ne p1, p2, :cond_3

    .line 113
    .line 114
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    new-instance v2, Lcom/startshorts/androidplayer/bean/eventbus/LoginSuccessEvent;

    .line 119
    .line 120
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/bean/eventbus/LoginSuccessEvent;-><init>(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_3
    sget-object p2, Lcom/hades/aar/auth/base/AuthType;->HUAWEI:Lcom/hades/aar/auth/base/AuthType;

    .line 128
    .line 129
    if-ne p1, p2, :cond_4

    .line 130
    .line 131
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    new-instance v2, Lcom/startshorts/androidplayer/bean/eventbus/LoginSuccessEvent;

    .line 136
    .line 137
    invoke-direct {v2, p3}, Lcom/startshorts/androidplayer/bean/eventbus/LoginSuccessEvent;-><init>(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_4
    :goto_0
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 144
    .line 145
    new-instance v5, Landroid/os/Bundle;

    .line 146
    .line 147
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string p2, "scene"

    .line 151
    .line 152
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->k:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v5, p2, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    sget-object p2, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$c;->$EnumSwitchMapping$0:[I

    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    aget p2, p2, v2

    .line 164
    .line 165
    const-string/jumbo v2, "type"

    .line 166
    .line 167
    .line 168
    if-eq p2, v0, :cond_7

    .line 169
    .line 170
    if-eq p2, v1, :cond_6

    .line 171
    .line 172
    if-eq p2, p3, :cond_5

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_5
    const-string p2, "facebook"

    .line 176
    .line 177
    invoke-virtual {v5, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_6
    const-string p2, "huawei"

    .line 182
    .line 183
    invoke-virtual {v5, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_7
    const-string p2, "google"

    .line 188
    .line 189
    invoke-virtual {v5, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :goto_1
    const-string p2, "is_success"

    .line 193
    .line 194
    const-string p3, "1"

    .line 195
    .line 196
    invoke-virtual {v5, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 200
    .line 201
    const/4 v8, 0x4

    .line 202
    const/4 v9, 0x0

    .line 203
    const-string v4, "account_login_result"

    .line 204
    .line 205
    const-wide/16 v6, 0x0

    .line 206
    .line 207
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/auth/a;->j()Lke/b;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    if-eqz p2, :cond_8

    .line 215
    .line 216
    invoke-interface {p2, p1}, Lke/b;->a(Lcom/hades/aar/auth/base/AuthType;)V

    .line 217
    .line 218
    .line 219
    :cond_8
    sget-object p1, Lng/e;->a:Lng/e;

    .line 220
    .line 221
    invoke-virtual {p1}, Lng/e;->e()V

    .line 222
    .line 223
    .line 224
    sget-object p1, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 225
    .line 226
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->h()V

    .line 227
    .line 228
    .line 229
    return-void
.end method

.method private final E(Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

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
    const-string v2, "authType ->"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ", thirdPartyToken ->"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ", firebaseToken ->"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "FirebaseAuthManager"

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    if-nez v5, :cond_0

    .line 52
    .line 53
    const-string p2, "login failed -> AccountManager.getAccount() is null"

    .line 54
    .line 55
    invoke-virtual {v0, v2, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget-object p2, Lfk/u;->a:Lfk/u;

    .line 59
    .line 60
    sget p3, Lcom/startshorts/androidplayer/R$string;->common_unknown_exception:I

    .line 61
    .line 62
    invoke-virtual {p2, p3}, Lfk/u;->d(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    const-string p3, "account is null"

    .line 67
    .line 68
    const/4 v0, 0x3

    .line 69
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->C(Lcom/hades/aar/auth/base/AuthType;ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 74
    .line 75
    new-instance v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;

    .line 76
    .line 77
    const/4 v9, 0x0

    .line 78
    move-object v3, v0

    .line 79
    move-object v4, p1

    .line 80
    move-object v6, p2

    .line 81
    move-object v7, p3

    .line 82
    move-object v8, p0

    .line 83
    invoke-direct/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$login$1;-><init>(Lcom/hades/aar/auth/base/AuthType;Lcom/startshorts/androidplayer/bean/account/Account;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lrs/c;)V

    .line 84
    .line 85
    .line 86
    const/4 v5, 0x2

    .line 87
    const/4 v6, 0x0

    .line 88
    const-string v2, "login"

    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    move-object v4, v0

    .line 92
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public static final synthetic t(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->z(Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic u(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->A(Lcom/hades/aar/auth/base/AuthType;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic v(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->B(Lcom/hades/aar/auth/base/AuthType;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic w(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->C(Lcom/hades/aar/auth/base/AuthType;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic x(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/account/Account;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->D(Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/account/Account;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic y(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->E(Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final z(Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v7, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    move-object v1, v7

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p0

    .line 10
    move-object v5, p1

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$bind$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    const/4 v5, 0x0

    .line 16
    const-string v1, "bind"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    move-object v3, v7

    .line 20
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final F(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "FirebaseAuthManager"

    .line 2
    .line 3
    return-object v0
.end method
