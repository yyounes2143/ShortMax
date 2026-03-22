.class public interface abstract Lcom/ss/ttvideoengine/configcenter/IEngineConfig;
.super Ljava/lang/Object;
.source "IEngineConfig.java"


# static fields
.field public static final EMPTY:Lcom/ss/ttvideoengine/configcenter/IEngineConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/configcenter/IEngineConfig$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/ttvideoengine/configcenter/IEngineConfig$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttvideoengine/configcenter/IEngineConfig;->EMPTY:Lcom/ss/ttvideoengine/configcenter/IEngineConfig;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract getFloatOption(I)F
.end method

.method public abstract getIntOption(I)I
.end method

.method public abstract getItemMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ss/ttvideoengine/configcenter/ConfigItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLongOption(I)J
.end method

.method public abstract getOption(I)Lcom/ss/ttvideoengine/configcenter/ConfigItem;
.end method

.method public abstract getStringOption(I)Ljava/lang/String;
.end method

.method public abstract isKeySet(I)Z
.end method

.method public abstract remove(I)V
.end method

.method public abstract reset()V
.end method

.method public abstract setFloatOption(IF)Lcom/ss/ttvideoengine/configcenter/ConfigItem;
.end method

.method public abstract setIntOption(II)Lcom/ss/ttvideoengine/configcenter/ConfigItem;
.end method

.method public abstract setLongOption(IJ)Lcom/ss/ttvideoengine/configcenter/ConfigItem;
.end method

.method public abstract setStringOption(ILjava/lang/String;)Lcom/ss/ttvideoengine/configcenter/ConfigItem;
.end method
