.class public final Lhg/a;
.super Ljava/lang/Object;
.source "PurchaseLocalDS.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhg/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPurchaseLocalDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PurchaseLocalDS.kt\ncom/startshorts/androidplayer/repo/billing/purchase/PurchaseLocalDS\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1#2:96\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lhg/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lhg/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lhg/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lhg/a;->a:Lhg/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "PurchaseLocalDS"

    .line 4
    .line 5
    const-string v2, "clearExpansionSku"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lud/b;->a:Lud/b;

    .line 11
    .line 12
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Lud/b;->a3(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/AvailableExpansionSku;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "immersion_normalcoinskuresult"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object v0, Ldd/k;->a:Ldd/k;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, p1, v1}, Ldd/k;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final c()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lud/b;->a:Lud/b;

    .line 3
    .line 4
    sget-object v2, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 5
    .line 6
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Lud/b;->Q(Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/purchase/AvailableExpansionSku;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/AvailableExpansionSku;->available()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/AvailableExpansionSku;->refreshRetentionSeconds()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/AvailableExpansionSku;->getSku()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p0}, Lhg/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :goto_0
    return-object v0

    .line 37
    :goto_1
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v4, "getExpansionSku failed -> "

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v3, "PurchaseLocalDS"

    .line 61
    .line 62
    invoke-virtual {v2, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method public final d()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lud/b;->a:Lud/b;

    .line 3
    .line 4
    sget-object v2, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 5
    .line 6
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Lud/b;->Q(Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/purchase/AvailableExpansionSku;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/AvailableExpansionSku;->refreshRetentionSeconds()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/AvailableExpansionSku;->getSku()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :cond_1
    return-object v0

    .line 29
    :goto_1
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v4, "getExpansionSku failed -> "

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v3, "PurchaseLocalDS"

    .line 53
    .line 54
    invoke-virtual {v2, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lud/b;->g1(Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 15
    .line 16
    sget-object p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->Companion:Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;->getUNKNOWN_EXCEPTION()Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    return-object p1
.end method

.method public final f(Z)V
    .locals 2

    .line 1
    sget-object v0, Lud/a;->a:Lud/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/a;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eq v1, p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lud/a;->i0(Z)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v0, Lcom/startshorts/androidplayer/bean/event/RefreshPayScoreEvent;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/event/RefreshPayScoreEvent;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lau/c;->l(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lud/b;->t4(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
