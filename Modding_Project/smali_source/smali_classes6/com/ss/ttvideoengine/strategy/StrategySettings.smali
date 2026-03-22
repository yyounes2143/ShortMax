.class public Lcom/ss/ttvideoengine/strategy/StrategySettings;
.super Ljava/lang/Object;
.source "StrategySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/strategy/StrategySettings$Holder;
    }
.end annotation


# static fields
.field public static final COMMON:Ljava/lang/String; = "recomm_default"

.field public static final PRELOAD:Ljava/lang/String; = "strategy_preload"

.field public static final PRE_RENDER:Ljava/lang/String; = "strategy_prerender"

.field public static final SHORT_VIDEO:Ljava/lang/String; = "scene_short_video"

.field public static final SMALL_VIDEO:Ljava/lang/String; = "scene_small_video"

.field public static final STATIC:Ljava/lang/String; = "strategy_static"

.field public static final STRATEGY:Ljava/lang/String; = "strategy_center_v1"


# instance fields
.field private mCommon:Lorg/json/JSONObject;

.field private mShortStatic:Lorg/json/JSONObject;

.field private mShortVideoPreload:Lorg/json/JSONObject;

.field private mSmallStatic:Lorg/json/JSONObject;

.field private mSmallVideoPreRender:Lorg/json/JSONObject;

.field private mSmallVideoPreload:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategy/StrategySettings;->update()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/strategy/StrategySettings$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/StrategySettings;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ss/ttvideoengine/strategy/StrategySettings;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategySettings$Holder;->access$100()Lcom/ss/ttvideoengine/strategy/StrategySettings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategySettings;->mCommon:Lorg/json/JSONObject;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategySettings;->mSmallVideoPreload:Lorg/json/JSONObject;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategySettings;->mSmallVideoPreRender:Lorg/json/JSONObject;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategySettings;->mSmallStatic:Lorg/json/JSONObject;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategySettings;->mShortVideoPreload:Lorg/json/JSONObject;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategySettings;->mShortStatic:Lorg/json/JSONObject;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getCommon()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategySettings;->mCommon:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPreRender(I)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategySettings;->mSmallVideoPreRender:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p1
.end method

.method public getPreload(I)Lorg/json/JSONObject;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategySettings;->mSmallVideoPreload:Lorg/json/JSONObject;

    .line 5
    .line 6
    return-object p1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategySettings;->mShortVideoPreload:Lorg/json/JSONObject;

    .line 8
    .line 9
    return-object p1
.end method

.method public getStatic(I)Lorg/json/JSONObject;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategySettings;->mSmallStatic:Lorg/json/JSONObject;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategy/StrategySettings;->mShortStatic:Lorg/json/JSONObject;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_1
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method public update()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/StrategySettings;->reset()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "strategy_center_v1"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->getVodJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string v1, "recomm_default"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lcom/ss/ttvideoengine/strategy/StrategySettings;->mCommon:Lorg/json/JSONObject;

    .line 25
    .line 26
    const-string v1, "scene_small_video"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string/jumbo v2, "strategy_static"

    .line 33
    .line 34
    .line 35
    const-string/jumbo v3, "strategy_preload"

    .line 36
    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iput-object v4, p0, Lcom/ss/ttvideoengine/strategy/StrategySettings;->mSmallVideoPreload:Lorg/json/JSONObject;

    .line 45
    .line 46
    const-string/jumbo v4, "strategy_prerender"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iput-object v4, p0, Lcom/ss/ttvideoengine/strategy/StrategySettings;->mSmallVideoPreRender:Lorg/json/JSONObject;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Lcom/ss/ttvideoengine/strategy/StrategySettings;->mSmallStatic:Lorg/json/JSONObject;

    .line 60
    .line 61
    :cond_1
    const-string v1, "scene_short_video"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, p0, Lcom/ss/ttvideoengine/strategy/StrategySettings;->mShortVideoPreload:Lorg/json/JSONObject;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/StrategySettings;->mShortStatic:Lorg/json/JSONObject;

    .line 80
    .line 81
    :cond_2
    return-void
.end method
