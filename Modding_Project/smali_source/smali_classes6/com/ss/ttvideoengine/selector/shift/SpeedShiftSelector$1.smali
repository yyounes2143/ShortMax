.class Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector$1;
.super Ljava/lang/Object;
.source "SpeedShiftSelector.java"

# interfaces
.implements Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->select(Lcom/ss/ttvideoengine/model/IVideoModel;Ljava/util/Map;)Lcom/ss/ttvideoengine/selector/SelectedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector$1;->this$0:Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
