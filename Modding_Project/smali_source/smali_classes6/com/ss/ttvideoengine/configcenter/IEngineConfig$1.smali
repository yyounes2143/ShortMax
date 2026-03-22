.class final Lcom/ss/ttvideoengine/configcenter/IEngineConfig$1;
.super Ljava/lang/Object;
.source "IEngineConfig.java"

# interfaces
.implements Lcom/ss/ttvideoengine/configcenter/IEngineConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/configcenter/IEngineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
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
.method public getFloatOption(I)F
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public getIntOption(I)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public getItemMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ss/ttvideoengine/configcenter/ConfigItem;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getLongOption(I)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public getOption(I)Lcom/ss/ttvideoengine/configcenter/ConfigItem;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public getStringOption(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public isKeySet(I)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public remove(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public reset()V
    .locals 0

    .line 1
    return-void
.end method

.method public setFloatOption(IF)Lcom/ss/ttvideoengine/configcenter/ConfigItem;
    .locals 0

    .line 1
    sget-object p1, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->EMPTY:Lcom/ss/ttvideoengine/configcenter/ConfigItem;

    .line 2
    .line 3
    return-object p1
.end method

.method public setIntOption(II)Lcom/ss/ttvideoengine/configcenter/ConfigItem;
    .locals 0

    .line 1
    sget-object p1, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->EMPTY:Lcom/ss/ttvideoengine/configcenter/ConfigItem;

    .line 2
    .line 3
    return-object p1
.end method

.method public setLongOption(IJ)Lcom/ss/ttvideoengine/configcenter/ConfigItem;
    .locals 0

    .line 1
    sget-object p1, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->EMPTY:Lcom/ss/ttvideoengine/configcenter/ConfigItem;

    .line 2
    .line 3
    return-object p1
.end method

.method public setStringOption(ILjava/lang/String;)Lcom/ss/ttvideoengine/configcenter/ConfigItem;
    .locals 0

    .line 1
    sget-object p1, Lcom/ss/ttvideoengine/configcenter/ConfigItem;->EMPTY:Lcom/ss/ttvideoengine/configcenter/ConfigItem;

    .line 2
    .line 3
    return-object p1
.end method
