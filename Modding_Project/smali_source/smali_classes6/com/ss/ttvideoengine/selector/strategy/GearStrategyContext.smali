.class public Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;
.super Ljava/lang/Object;
.source "GearStrategyContext.java"


# instance fields
.field private mGearStrategyListener:Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;

.field private mUserData:Ljava/lang/Object;

.field private mVideoEngineRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngine;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngine;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->mGearStrategyListener:Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->mUserData:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getGearStrategyListener()Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->mGearStrategyListener:Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->mUserData:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoEngineRef()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTVideoEngine;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->mVideoEngineRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoModel()Lcom/ss/ttvideoengine/model/IVideoModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->mGearStrategyListener:Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->mUserData:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 7
    .line 8
    return-void
.end method

.method public setGearStrategyListener(Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->mGearStrategyListener:Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;

    .line 2
    .line 3
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->mUserData:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoModel(Lcom/ss/ttvideoengine/model/IVideoModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 2
    .line 3
    return-void
.end method
