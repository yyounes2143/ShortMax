.class Lcom/ss/ttvideoengine/DataLoaderListener2ForStrategyCenter;
.super Ljava/lang/Object;
.source "DataLoaderListener2ForStrategyCenter.java"

# interfaces
.implements Lcom/ss/ttvideoengine/DataLoaderListener2;


# static fields
.field private static final TAG:Ljava/lang/String; = "TTVideoEngine"

.field static sInstance:Lcom/ss/ttvideoengine/DataLoaderListener2ForStrategyCenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/DataLoaderListener2ForStrategyCenter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/ttvideoengine/DataLoaderListener2ForStrategyCenter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttvideoengine/DataLoaderListener2ForStrategyCenter;->sInstance:Lcom/ss/ttvideoengine/DataLoaderListener2ForStrategyCenter;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onNotify(IJJLjava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 2
    .line 3
    const/4 p6, 0x2

    .line 4
    if-ne p1, p6, :cond_0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v5

    .line 12
    move-wide v1, p2

    .line 13
    move-wide v3, p4

    .line 14
    invoke-interface/range {v0 .. v6}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->update(JJJ)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    cmp-long p1, p4, v0

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 24
    .line 25
    long-to-double p2, p2

    .line 26
    long-to-double p4, p4

    .line 27
    div-double/2addr p2, p4

    .line 28
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const-string p3, "[IESSpeedPredictor]: speedRecord:%f"

    .line 37
    .line 38
    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string p2, "TTVideoEngine"

    .line 43
    .line 44
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
