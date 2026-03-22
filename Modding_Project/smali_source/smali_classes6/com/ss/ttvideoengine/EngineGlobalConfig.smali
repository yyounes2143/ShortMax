.class public Lcom/ss/ttvideoengine/EngineGlobalConfig;
.super Ljava/lang/Object;
.source "EngineGlobalConfig.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/EngineGlobalConfig$InstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EngineGlobalConfig"


# instance fields
.field public dataLoaderHelperLockType:I

.field private dnsCustomType:I

.field public enableMdlLockOptimizeV2:I

.field private mALogWriteAddr:J

.field private mEnableBmf:I

.field private mEnableCPPh265CodecOpt:I

.field private mEnablePcdnAuto:I

.field private mEnableSelectStringMapMethod:I

.field private mEnableSelectUseObject:I

.field private mEnableUseRealBitrate:I

.field private mEngineOptimizeFlag:J

.field private mLazyLoadVideodec:I

.field private onlyUseMediaLoader:Z

.field private outputLogLevel:I

.field private outputLogLevelPercise:I

.field private renderType:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->onlyUseMediaLoader:Z

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->renderType:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->outputLogLevel:I

    .line 12
    .line 13
    iput v0, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->outputLogLevelPercise:I

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    iput-wide v2, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mALogWriteAddr:J

    .line 18
    .line 19
    iput v0, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mEnableCPPh265CodecOpt:I

    .line 20
    .line 21
    iput v1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mEnableBmf:I

    .line 22
    .line 23
    iput v1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mEnableUseRealBitrate:I

    .line 24
    .line 25
    iput v1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mLazyLoadVideodec:I

    .line 26
    .line 27
    iput v1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mEnablePcdnAuto:I

    .line 28
    .line 29
    const-wide/16 v2, 0x3

    .line 30
    .line 31
    iput-wide v2, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mEngineOptimizeFlag:J

    .line 32
    .line 33
    iput v1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mEnableSelectStringMapMethod:I

    .line 34
    .line 35
    iput v1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mEnableSelectUseObject:I

    .line 36
    .line 37
    iput v1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->dataLoaderHelperLockType:I

    .line 38
    .line 39
    iput v1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->enableMdlLockOptimizeV2:I

    .line 40
    .line 41
    return-void
.end method

.method public static getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig$InstanceHolder;->access$000()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public getALogWriteAddr()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mALogWriteAddr:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDnsCustomType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->dnsCustomType:I

    .line 2
    .line 3
    return v0
.end method

.method public getEnableBmf()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mEnableBmf:I

    .line 2
    .line 3
    return v0
.end method

.method public getEnableCPPh265CodecOpt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mEnableCPPh265CodecOpt:I

    .line 2
    .line 3
    return v0
.end method

.method public getEnableSelectStringMapMethod()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mEnableSelectStringMapMethod:I

    .line 2
    .line 3
    return v0
.end method

.method public getEnableSelectUseObject()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mEnableSelectUseObject:I

    .line 2
    .line 3
    return v0
.end method

.method public getEnableUseRealBitrate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mEnableUseRealBitrate:I

    .line 2
    .line 3
    return v0
.end method

.method public getEngineOptimizeFlag()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mEngineOptimizeFlag:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLazyLoadVideodec()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mLazyLoadVideodec:I

    .line 2
    .line 3
    return v0
.end method

.method public getOutputLogLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->outputLogLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public getOutputLogLevelPercise()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->outputLogLevelPercise:I

    .line 2
    .line 3
    return v0
.end method

.method public getPcdnAuto()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mEnablePcdnAuto:I

    .line 2
    .line 3
    return v0
.end method

.method public getRenderType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->renderType:I

    .line 2
    .line 3
    return v0
.end method

.method public isOnlyUseMediaLoader()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->onlyUseMediaLoader:Z

    .line 2
    .line 3
    return v0
.end method

.method public onlyUseMediaLoader(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->onlyUseMediaLoader:Z

    .line 2
    .line 3
    return-void
.end method

.method public setALogWriteAddr(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mALogWriteAddr:J

    .line 2
    .line 3
    return-void
.end method

.method public setDnsCustomType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->dnsCustomType:I

    .line 2
    .line 3
    return-void
.end method

.method public setEnableBmf(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mEnableBmf:I

    .line 2
    .line 3
    return-void
.end method

.method public setEnableCPPh265CodecOpt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mEnableCPPh265CodecOpt:I

    .line 2
    .line 3
    return-void
.end method

.method public setEnablePcdnAuto(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mEnablePcdnAuto:I

    .line 2
    .line 3
    return-void
.end method

.method public setEnableSelectStringMapMethod(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mEnableSelectStringMapMethod:I

    .line 2
    .line 3
    return-void
.end method

.method public setEnableSelectUseObject(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mEnableSelectUseObject:I

    .line 2
    .line 3
    return-void
.end method

.method public setEnableUseRealBitrate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mEnableUseRealBitrate:I

    .line 2
    .line 3
    return-void
.end method

.method public setEngineOptimizeFlag(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mEngineOptimizeFlag:J

    .line 2
    .line 3
    return-void
.end method

.method public setLazyLoadVideodec(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->mLazyLoadVideodec:I

    .line 2
    .line 3
    return-void
.end method

.method public setOutputLogLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->outputLogLevel:I

    .line 2
    .line 3
    return-void
.end method

.method public setOutputLogLevelPercise(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->outputLogLevelPercise:I

    .line 2
    .line 3
    return-void
.end method

.method public setRenderType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/EngineGlobalConfig;->renderType:I

    .line 2
    .line 3
    return-void
.end method
