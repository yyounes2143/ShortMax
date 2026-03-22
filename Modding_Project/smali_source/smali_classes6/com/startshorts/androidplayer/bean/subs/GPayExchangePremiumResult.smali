.class public Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;
.super Ljava/lang/Object;
.source "GPayExchangePremiumResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private bonus:I

.field private coins:I

.field private giveBonus:I

.field private isSubscription:Z

.field private receiveType:I

.field private rechargeUserInfo:Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private subscriptionConfirm:Z

.field private subscriptionEndTime:J

.field private subscriptionType:I

.field private userCodeHaveRight:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->subscriptionEndTime:J

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->subscriptionType:I

    .line 10
    .line 11
    iput v0, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->receiveType:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getBonus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->bonus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCoins()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->coins:I

    .line 2
    .line 3
    return v0
.end method

.method public final getGiveBonus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->giveBonus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getReceiveType()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->receiveType:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    :cond_0
    return v0
.end method

.method public final getRechargeUserInfo()Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->rechargeUserInfo:Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubscriptionConfirm()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->subscriptionConfirm:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getSubscriptionEndTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->subscriptionEndTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSubscriptionType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->subscriptionType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUserCodeHaveRight()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->userCodeHaveRight:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isSubscription()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->isSubscription:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setBonus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->bonus:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCoins(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->coins:I

    .line 2
    .line 3
    return-void
.end method

.method public final setGiveBonus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->giveBonus:I

    .line 2
    .line 3
    return-void
.end method

.method public final setReceiveType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->receiveType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRechargeUserInfo(Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->rechargeUserInfo:Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubscription(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->isSubscription:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSubscriptionConfirm(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->subscriptionConfirm:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSubscriptionEndTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->subscriptionEndTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setSubscriptionType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->subscriptionType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setUserCodeHaveRight(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->userCodeHaveRight:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "GPayExchangePremiumResult(isSubscription="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->isSubscription:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", subscriptionEndTime="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->subscriptionEndTime:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", subscriptionType="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->subscriptionType:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", coins="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->coins:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", bonus="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->bonus:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", subscriptionConfirm="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->subscriptionConfirm:Z

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", receiveType="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->getReceiveType()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", giveBonus="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget v1, p0, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;->giveBonus:I

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const/16 v1, 0x29

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0
.end method
