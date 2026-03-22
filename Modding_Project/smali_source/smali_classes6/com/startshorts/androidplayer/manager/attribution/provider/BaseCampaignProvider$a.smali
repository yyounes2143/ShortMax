.class public final Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;
.super Ljava/lang/Object;
.source "BaseCampaignProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Ljava/lang/String;
    .locals 1
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
    sget-object v0, Lud/b;->a:Lud/b;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lud/b;->U(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final b()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final c(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Z
    .locals 1
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
    sget-object v0, Lud/b;->a:Lud/b;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lud/b;->Y(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 10
    .line 11
    const-string v1, "CampaignNewTag"

    .line 12
    .line 13
    const-string v2, "BaseCampaignProvider: Reset mIsPullUpConsumed to false"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final e(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/manager/attribution/CampaignType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v2, "setInfo -> campaignType("

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, "), campaignInfo("

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v2, 0x29

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "CampaignNewTag"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object v0, Lud/b;->a:Lud/b;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1, p2}, Lud/b;->e3(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->c(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_1

    .line 58
    .line 59
    sget-object p2, Lfk/a;->a:Lfk/a;

    .line 60
    .line 61
    invoke-virtual {p2}, Lfk/a;->a()Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_1

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->UPLOAD_CAMPAIGN_INFO_RESULT:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-nez p2, :cond_0

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    sget-object p2, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->PRE_INSTALL:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_0

    .line 98
    .line 99
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->s()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_1

    .line 106
    .line 107
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 110
    .line 111
    .line 112
    :cond_1
    return-void
.end method

.method public final f(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)V
    .locals 3
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
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->c(Lcom/startshorts/androidplayer/manager/attribution/CampaignType;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v2, "setQueried -> campaignType("

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v2, 0x29

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "CampaignNewTag"

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lud/b;->a:Lud/b;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, p1, v1}, Lud/b;->i3(Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method
