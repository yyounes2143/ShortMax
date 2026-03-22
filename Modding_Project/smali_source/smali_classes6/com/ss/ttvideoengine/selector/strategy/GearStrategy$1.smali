.class final Lcom/ss/ttvideoengine/selector/strategy/GearStrategy$1;
.super Ljava/lang/Object;
.source "GearStrategy.java"

# interfaces
.implements Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->select(Lcom/ss/ttvideoengine/model/IVideoModel;ILcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;)Ljava/util/Map;
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
.method public onAfterSelect(Lcom/ss/ttvideoengine/model/IVideoModel;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/model/IVideoModel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    check-cast p4, Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {p4, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onBeforeSelect(Lcom/ss/ttvideoengine/model/IVideoModel;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/model/IVideoModel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    return-void
.end method
