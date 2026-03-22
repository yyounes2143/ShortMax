.class public Lcom/ss/ttvideoengine/selector/SelectedInfo;
.super Ljava/lang/Object;
.source "SelectedInfo.java"


# static fields
.field public static final DOUBLE_CALC_BITRATE:I


# instance fields
.field private calcBitRate:D

.field private final err:Lcom/ss/ttvideoengine/utils/Error;

.field private gearResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final selected:Lcom/ss/ttvideoengine/model/IVideoInfo;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/model/IVideoInfo;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/ss/ttvideoengine/selector/SelectedInfo;->calcBitRate:D

    .line 3
    iput-object p1, p0, Lcom/ss/ttvideoengine/selector/SelectedInfo;->selected:Lcom/ss/ttvideoengine/model/IVideoInfo;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/selector/SelectedInfo;->err:Lcom/ss/ttvideoengine/utils/Error;

    return-void
.end method

.method public constructor <init>(Lcom/ss/ttvideoengine/model/IVideoInfo;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/ss/ttvideoengine/selector/SelectedInfo;->calcBitRate:D

    .line 11
    iput-object p1, p0, Lcom/ss/ttvideoengine/selector/SelectedInfo;->selected:Lcom/ss/ttvideoengine/model/IVideoInfo;

    .line 12
    iput-object p2, p0, Lcom/ss/ttvideoengine/selector/SelectedInfo;->err:Lcom/ss/ttvideoengine/utils/Error;

    return-void
.end method

.method public constructor <init>(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/ss/ttvideoengine/selector/SelectedInfo;->calcBitRate:D

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/SelectedInfo;->selected:Lcom/ss/ttvideoengine/model/IVideoInfo;

    .line 8
    iput-object p1, p0, Lcom/ss/ttvideoengine/selector/SelectedInfo;->err:Lcom/ss/ttvideoengine/utils/Error;

    return-void
.end method


# virtual methods
.method public getDoubleValue(ID)D
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-wide p2, p0, Lcom/ss/ttvideoengine/selector/SelectedInfo;->calcBitRate:D

    .line 4
    .line 5
    :cond_0
    return-wide p2
.end method

.method public getError()Lcom/ss/ttvideoengine/utils/Error;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/SelectedInfo;->err:Lcom/ss/ttvideoengine/utils/Error;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGearResult()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/SelectedInfo;->gearResult:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSelected()Lcom/ss/ttvideoengine/model/IVideoInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/SelectedInfo;->selected:Lcom/ss/ttvideoengine/model/IVideoInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoInfo()Lcom/ss/ttvideoengine/model/IVideoInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/SelectedInfo;->selected:Lcom/ss/ttvideoengine/model/IVideoInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/SelectedInfo;->err:Lcom/ss/ttvideoengine/utils/Error;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public setDoubleValue(ID)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/ss/ttvideoengine/selector/SelectedInfo;->calcBitRate:D

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setGearResult(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/selector/SelectedInfo;->gearResult:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method
