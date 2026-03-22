.class Lcom/applovin/impl/h2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/k2;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
.implements Lcom/applovin/sdk/AppLovinAdRewardListener;
.implements Lcom/applovin/sdk/AppLovinAdClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/applovin/sdk/AppLovinAd;

.field private final b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field private final c:Lcom/applovin/sdk/AppLovinAdClickListener;

.field private final d:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field private final e:Lcom/applovin/sdk/AppLovinAdRewardListener;

.field final synthetic f:Lcom/applovin/impl/h2;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/h2;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/applovin/impl/h2$c;->a:Lcom/applovin/sdk/AppLovinAd;

    .line 4
    iput-object p5, p0, Lcom/applovin/impl/h2$c;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 5
    iput-object p6, p0, Lcom/applovin/impl/h2$c;->c:Lcom/applovin/sdk/AppLovinAdClickListener;

    .line 6
    iput-object p4, p0, Lcom/applovin/impl/h2$c;->d:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    .line 7
    iput-object p3, p0, Lcom/applovin/impl/h2$c;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/h2;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/impl/h2$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/applovin/impl/h2$c;-><init>(Lcom/applovin/impl/h2;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/ad/b;Z)Ljava/lang/String;
    .locals 1

    .line 22
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->F()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 24
    const-string p1, "ad_display_failure"

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lcom/applovin/impl/sdk/ad/b;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    iget-object v0, v0, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    const-string v1, "IncentivizedAdController"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    iget-object v0, v0, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v2, "Finishing direct ad..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    invoke-static {v0}, Lcom/applovin/impl/h2;->a(Lcom/applovin/impl/h2;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    invoke-static {v2}, Lcom/applovin/impl/h2;->b(Lcom/applovin/impl/h2;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    iget-object v2, v2, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    iget-object v2, v2, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid reward state - result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and wasFullyEngaged: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    invoke-static {v0}, Lcom/applovin/impl/h2;->b(Lcom/applovin/impl/h2;)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    iget-object v0, v0, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    iget-object v0, v0, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v2, "Cancelling any incoming reward requests for this ad"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->d()V

    .line 7
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    invoke-static {v0}, Lcom/applovin/impl/h2;->b(Lcom/applovin/impl/h2;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    iget-object p2, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    iget-object p2, p2, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    iget-object p2, p2, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object p2

    const-string v0, "User closed the ad after fully watching but reward validation task did not return on time"

    invoke-virtual {p2, v1, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_4
    const-string p2, "network_timeout"

    const/16 v0, -0x1f4

    goto :goto_0

    :cond_5
    if-nez p2, :cond_6

    .line 10
    const-string/jumbo p2, "unknown_early_dismissal_source"

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    iget-object v0, v0, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    iget-object v0, v0, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad closed prematurely from source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/16 v0, -0x258

    .line 12
    :goto_0
    invoke-static {p2}, Lcom/applovin/impl/l4;->a(Ljava/lang/String;)Lcom/applovin/impl/l4;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/applovin/impl/sdk/ad/b;->a(Lcom/applovin/impl/l4;)V

    .line 13
    iget-object v2, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    iget-object v2, v2, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    iget-object v2, v2, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v2

    const-string v3, "Notifying listener of reward validation failure"

    invoke-virtual {v2, v1, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_8
    iget-object v2, p0, Lcom/applovin/impl/h2$c;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    invoke-static {v2, p1, v0}, Lcom/applovin/impl/q2;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;I)V

    .line 15
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    invoke-static {v0}, Lcom/applovin/impl/h2;->c(Lcom/applovin/impl/h2;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v2, "details"

    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 16
    const-string v2, "source"

    invoke-static {v2, p2, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 17
    iget-object p2, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    iget-object p2, p2, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    move-result-object p2

    sget-object v2, Lcom/applovin/impl/c2;->w:Lcom/applovin/impl/c2;

    invoke-virtual {p2, v2, p1, v0}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/c2;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    .line 18
    :cond_9
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->L0()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-nez p2, :cond_b

    .line 19
    iget-object p2, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    iget-object p2, p2, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    iget-object p2, p2, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object p2

    const-string v0, "Scheduling report rewarded ad..."

    invoke-virtual {p2, v1, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_a
    new-instance p2, Lcom/applovin/impl/k6;

    iget-object v0, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    iget-object v0, v0, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    invoke-direct {p2, p1, v0}, Lcom/applovin/impl/k6;-><init>(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/k;)V

    .line 21
    iget-object p1, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    iget-object p1, p1, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    move-result-object p1

    sget-object v0, Lcom/applovin/impl/b6$b;->e:Lcom/applovin/impl/b6$b;

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->c:Lcom/applovin/sdk/AppLovinAdClickListener;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/applovin/impl/q2;->a(Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/applovin/impl/q2;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/applovin/impl/sdk/ad/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/applovin/impl/sdk/ad/c;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/c;->f()Lcom/applovin/sdk/AppLovinAd;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, p1

    .line 14
    :goto_0
    instance-of v1, v0, Lcom/applovin/impl/sdk/ad/b;

    .line 15
    .line 16
    const-string v2, "IncentivizedAdController"

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    move-object v1, v0

    .line 21
    check-cast v1, Lcom/applovin/impl/sdk/ad/b;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-direct {p0, v1, v3}, Lcom/applovin/impl/h2$c;->a(Lcom/applovin/impl/sdk/ad/b;Z)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-direct {p0, v1, v3}, Lcom/applovin/impl/h2$c;->a(Lcom/applovin/impl/sdk/ad/b;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    if-nez v0, :cond_2

    .line 33
    .line 34
    const-string v1, "null/expired ad"

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v3, "invalid ad of type: "

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_1
    iget-object v3, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    .line 55
    .line 56
    iget-object v3, v3, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    iget-object v3, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    .line 68
    .line 69
    iget-object v3, v3, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v5, "Received `adHidden` callback for "

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v3, v2, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    .line 96
    .line 97
    invoke-static {v1, v0}, Lcom/applovin/impl/h2;->a(Lcom/applovin/impl/h2;Lcom/applovin/sdk/AppLovinAd;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const-string v1, "Notifying listener of rewarded ad dismissal"

    .line 122
    .line 123
    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 127
    .line 128
    invoke-static {v0, p1}, Lcom/applovin/impl/q2;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public onAdDisplayFailed(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->a:Lcom/applovin/sdk/AppLovinAd;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/applovin/impl/sdk/ad/c;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/applovin/impl/sdk/ad/c;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/c;->f()Lcom/applovin/sdk/AppLovinAd;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/h2$c;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 14
    .line 15
    instance-of v1, v1, Lcom/applovin/impl/k2;

    .line 16
    .line 17
    instance-of v2, v0, Lcom/applovin/impl/sdk/ad/b;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    move-object v2, v0

    .line 22
    check-cast v2, Lcom/applovin/impl/sdk/ad/b;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-direct {p0, v2, v3}, Lcom/applovin/impl/h2$c;->a(Lcom/applovin/impl/sdk/ad/b;Z)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-direct {p0, v2, v3}, Lcom/applovin/impl/h2$c;->a(Lcom/applovin/impl/sdk/ad/b;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    if-nez v0, :cond_2

    .line 37
    .line 38
    const-string v2, "null/expired ad"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "invalid ad of type: "

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :goto_0
    iget-object v3, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    .line 59
    .line 60
    iget-object v3, v3, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    iget-object v3, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    .line 72
    .line 73
    iget-object v3, v3, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v5, "Received `"

    .line 85
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    const-string v5, "adDisplayFailed"

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const-string v5, "adHidden"

    .line 95
    .line 96
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v5, "` callback for "

    .line 100
    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    const-string v4, "IncentivizedAdController"

    .line 112
    .line 113
    invoke-virtual {v3, v4, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    .line 117
    .line 118
    invoke-static {v2, v0}, Lcom/applovin/impl/h2;->a(Lcom/applovin/impl/h2;Lcom/applovin/sdk/AppLovinAd;)V

    .line 119
    .line 120
    .line 121
    if-eqz v1, :cond_5

    .line 122
    .line 123
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 124
    .line 125
    invoke-static {v0, p1}, Lcom/applovin/impl/q2;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_5
    iget-object p1, p0, Lcom/applovin/impl/h2$c;->b:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 130
    .line 131
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->a:Lcom/applovin/sdk/AppLovinAd;

    .line 132
    .line 133
    invoke-static {p1, v0}, Lcom/applovin/impl/q2;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 134
    .line 135
    .line 136
    :goto_3
    return-void
.end method

.method public userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    .line 2
    .line 3
    const-string v1, "quota_exceeded"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/applovin/impl/h2;->a(Lcom/applovin/impl/h2;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    .line 9
    .line 10
    invoke-static {v0, p1, p2}, Lcom/applovin/impl/q2;->b(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    const-string p2, "error_message"

    .line 14
    .line 15
    invoke-static {p2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/applovin/impl/c2;->v:Lcom/applovin/impl/c2;

    .line 28
    .line 29
    check-cast p1, Lcom/applovin/impl/sdk/ad/b;

    .line 30
    .line 31
    invoke-virtual {v0, v1, p1, p2}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/c2;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    .line 2
    .line 3
    const-string v1, "rejected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/applovin/impl/h2;->a(Lcom/applovin/impl/h2;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    .line 9
    .line 10
    invoke-static {v0, p1, p2}, Lcom/applovin/impl/q2;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    const-string p2, "error_message"

    .line 14
    .line 15
    invoke-static {p2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/applovin/impl/c2;->v:Lcom/applovin/impl/c2;

    .line 28
    .line 29
    check-cast p1, Lcom/applovin/impl/sdk/ad/b;

    .line 30
    .line 31
    invoke-virtual {v0, v1, p1, p2}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/c2;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    .line 2
    .line 3
    const-string v1, "accepted"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/applovin/impl/h2;->a(Lcom/applovin/impl/h2;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    .line 9
    .line 10
    invoke-static {v0, p1, p2}, Lcom/applovin/impl/q2;->c(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    .line 2
    .line 3
    const-string v1, "network_timeout"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/applovin/impl/h2;->a(Lcom/applovin/impl/h2;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    .line 9
    .line 10
    invoke-static {v0, p1, p2}, Lcom/applovin/impl/q2;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAd;I)V

    .line 11
    .line 12
    .line 13
    const-string p2, "error_message"

    .line 14
    .line 15
    invoke-static {p2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/applovin/impl/h2;->b:Lcom/applovin/impl/sdk/k;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Lcom/applovin/impl/c2;->v:Lcom/applovin/impl/c2;

    .line 28
    .line 29
    check-cast p1, Lcom/applovin/impl/sdk/ad/b;

    .line 30
    .line 31
    invoke-virtual {v0, v1, p1, p2}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/c2;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->d:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/applovin/impl/q2;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/applovin/impl/sdk/ad/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/applovin/impl/sdk/ad/c;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/c;->f()Lcom/applovin/sdk/AppLovinAd;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, p1

    .line 14
    :goto_0
    instance-of v1, v0, Lcom/applovin/impl/sdk/ad/b;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    check-cast v0, Lcom/applovin/impl/sdk/ad/b;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->S0()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    move v0, v3

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v2

    .line 31
    :goto_1
    iget-object v1, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    .line 36
    .line 37
    :cond_2
    invoke-static {v1, p2, p3}, Lcom/applovin/impl/h2;->a(Lcom/applovin/impl/h2;D)D

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    .line 41
    .line 42
    if-nez p4, :cond_3

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    :cond_3
    move v2, v3

    .line 47
    :cond_4
    invoke-static {p2, v2}, Lcom/applovin/impl/h2;->a(Lcom/applovin/impl/h2;Z)Z

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/applovin/impl/h2$c;->d:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    .line 51
    .line 52
    iget-object p3, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    .line 53
    .line 54
    invoke-static {p3}, Lcom/applovin/impl/h2;->c(Lcom/applovin/impl/h2;)D

    .line 55
    .line 56
    .line 57
    move-result-wide p3

    .line 58
    iget-object v0, p0, Lcom/applovin/impl/h2$c;->f:Lcom/applovin/impl/h2;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/applovin/impl/h2;->b(Lcom/applovin/impl/h2;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-static {p2, p1, p3, p4, v0}, Lcom/applovin/impl/q2;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;DZ)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
