.class public Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;
.super Ljava/lang/Object;
.source "StrategyStatic.java"


# static fields
.field private static final BUFFERING_DATA:Ljava/lang/String; = "buffering_data"

.field private static final BUFFERING_TIMEOUT:Ljava/lang/String; = "buffering_timeout"

.field public static final INT_NULL:I = -0x64

.field private static final MAX_BUFFERING_DATA:Ljava/lang/String; = "max_buffering_data"

.field private static final NETWORK_TIMEOUT:Ljava/lang/String; = "network_timeout"

.field private static final NOTIFY_BUFFERING_DIRECTLY:Ljava/lang/String; = "notify_buffering_directly"

.field private static final P_UPDATE_INR:Ljava/lang/String; = "p_update_inr"

.field private static final P_UPDATE_INR_TH:Ljava/lang/String; = "p_update_inr_th"

.field private static final TAG:Ljava/lang/String; = "Strategy Static"


# instance fields
.field private mBufferingData:I

.field private mBufferingTimeout:I

.field private mMaxBufferingData:I

.field private mNetworkTimeout:I

.field private mNotifyBufferingDirectly:I

.field private mPUpdateInr:I

.field private mPUpdateInrTh:I

.field private final mScene:I

.field private mStaticConfig:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, -0x64

    .line 5
    .line 6
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mNetworkTimeout:I

    .line 7
    .line 8
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mBufferingTimeout:I

    .line 9
    .line 10
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mNotifyBufferingDirectly:I

    .line 11
    .line 12
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mBufferingData:I

    .line 13
    .line 14
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mMaxBufferingData:I

    .line 15
    .line 16
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mPUpdateInr:I

    .line 17
    .line 18
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mPUpdateInrTh:I

    .line 19
    .line 20
    iput p1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mScene:I

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->updateConfig()V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public engineCreate(Lcom/ss/ttvideoengine/TTVideoEngineInterface;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mStaticConfig:Lorg/json/JSONObject;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "engineCreate "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "Strategy Static"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mNetworkTimeout:I

    .line 31
    .line 32
    const/16 v1, -0x64

    .line 33
    .line 34
    if-eq v0, v1, :cond_1

    .line 35
    .line 36
    const/16 v2, 0xc

    .line 37
    .line 38
    invoke-interface {p1, v2, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mBufferingTimeout:I

    .line 42
    .line 43
    if-eq v0, v1, :cond_2

    .line 44
    .line 45
    const/16 v2, 0xb

    .line 46
    .line 47
    invoke-interface {p1, v2, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mNotifyBufferingDirectly:I

    .line 51
    .line 52
    if-eq v0, v1, :cond_3

    .line 53
    .line 54
    const/16 v2, 0x142

    .line 55
    .line 56
    invoke-interface {p1, v2, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mBufferingData:I

    .line 60
    .line 61
    if-eq v0, v1, :cond_4

    .line 62
    .line 63
    const/16 v2, 0x76

    .line 64
    .line 65
    invoke-interface {p1, v2, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 66
    .line 67
    .line 68
    :cond_4
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mMaxBufferingData:I

    .line 69
    .line 70
    if-eq v0, v1, :cond_5

    .line 71
    .line 72
    const/16 v1, 0xca

    .line 73
    .line 74
    invoke-interface {p1, v1, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 75
    .line 76
    .line 77
    :cond_5
    :goto_0
    return-void
.end method

.method public onPrepared(Lcom/ss/ttvideoengine/TTVideoEngineInterface;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mStaticConfig:Lorg/json/JSONObject;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "onPrepared "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "Strategy Static"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mPUpdateInr:I

    .line 31
    .line 32
    const/16 v1, -0x64

    .line 33
    .line 34
    if-eq v0, v1, :cond_1

    .line 35
    .line 36
    iget v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mPUpdateInrTh:I

    .line 37
    .line 38
    if-eq v0, v1, :cond_1

    .line 39
    .line 40
    invoke-interface {p1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->getDuration()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mPUpdateInrTh:I

    .line 45
    .line 46
    mul-int/lit16 v1, v1, 0x3e8

    .line 47
    .line 48
    if-lt v0, v1, :cond_1

    .line 49
    .line 50
    const/16 v0, 0x25a

    .line 51
    .line 52
    iget v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mPUpdateInr:I

    .line 53
    .line 54
    invoke-interface {p1, v0, v1}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method public updateConfig()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategySettings;->getInstance()Lcom/ss/ttvideoengine/strategy/StrategySettings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mScene:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/strategy/StrategySettings;->getStatic(I)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mStaticConfig:Lorg/json/JSONObject;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "updateConfig "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mStaticConfig:Lorg/json/JSONObject;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "Strategy Static"

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mStaticConfig:Lorg/json/JSONObject;

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    const-string v1, "network_timeout"

    .line 44
    .line 45
    const/16 v2, -0x64

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mNetworkTimeout:I

    .line 52
    .line 53
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mStaticConfig:Lorg/json/JSONObject;

    .line 54
    .line 55
    const-string v1, "buffering_timeout"

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mBufferingTimeout:I

    .line 62
    .line 63
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mStaticConfig:Lorg/json/JSONObject;

    .line 64
    .line 65
    const-string v1, "notify_buffering_directly"

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mNotifyBufferingDirectly:I

    .line 72
    .line 73
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mStaticConfig:Lorg/json/JSONObject;

    .line 74
    .line 75
    const-string v1, "buffering_data"

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mBufferingData:I

    .line 82
    .line 83
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mStaticConfig:Lorg/json/JSONObject;

    .line 84
    .line 85
    const-string v1, "max_buffering_data"

    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mMaxBufferingData:I

    .line 92
    .line 93
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mStaticConfig:Lorg/json/JSONObject;

    .line 94
    .line 95
    const-string v1, "p_update_inr"

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mPUpdateInr:I

    .line 102
    .line 103
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mStaticConfig:Lorg/json/JSONObject;

    .line 104
    .line 105
    const-string v1, "p_update_inr_th"

    .line 106
    .line 107
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/common/StrategyStatic;->mPUpdateInrTh:I

    .line 112
    .line 113
    return-void
.end method
