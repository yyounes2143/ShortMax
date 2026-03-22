.class public Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;
.super Ljava/lang/Object;
.source "SpeedShiftSelector.java"

# interfaces
.implements Lcom/ss/ttvideoengine/selector/Selector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector$Params;
    }
.end annotation


# static fields
.field public static final PARAMS_NETWORK_SPEED:I = 0x1


# instance fields
.field protected autoBitrateSet:Lcom/ss/ttvideoengine/selector/shift/IAutoBitrateSet;

.field protected bandwidthSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ttvideoengine/selector/shift/IBandwidthSet;",
            ">;"
        }
    .end annotation
.end field

.field protected final gearConfig:Lcom/ss/ttvideoengine/selector/shift/IGearConfig;

.field protected gearSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ttvideoengine/selector/shift/IGearSet;",
            ">;"
        }
    .end annotation
.end field

.field private mShifts:[Lcom/ss/ttvideoengine/selector/shift/Shift;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/selector/shift/SpeedShiftConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-interface {p1}, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftConfig;->getIGearConfig()Lcom/ss/ttvideoengine/selector/shift/IGearConfig;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->gearConfig:Lcom/ss/ttvideoengine/selector/shift/IGearConfig;

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftConfig;->getIGearSets()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->gearSets:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftConfig;->getIBandwidthSets()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->bandwidthSets:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {p1}, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftConfig;->getIAutoBitrateSet()Lcom/ss/ttvideoengine/selector/shift/IAutoBitrateSet;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->autoBitrateSet:Lcom/ss/ttvideoengine/selector/shift/IAutoBitrateSet;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->gearConfig:Lcom/ss/ttvideoengine/selector/shift/IGearConfig;

    .line 33
    .line 34
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->gearSets:Ljava/util/List;

    .line 35
    .line 36
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->initShifts(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private calculateBitrateInfoByAutoBitrateSet(D)Lcom/ss/ttvideoengine/selector/shift/BitrateInfo;
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->autoBitrateSet:Lcom/ss/ttvideoengine/selector/shift/IAutoBitrateSet;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v0}, Lcom/ss/ttvideoengine/selector/shift/IAutoBitrateSet;->getFirstParam()D

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    mul-double/2addr v0, p1

    .line 17
    mul-double/2addr v0, p1

    .line 18
    mul-double/2addr v0, p1

    .line 19
    iget-object v2, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->autoBitrateSet:Lcom/ss/ttvideoengine/selector/shift/IAutoBitrateSet;

    .line 20
    .line 21
    invoke-interface {v2}, Lcom/ss/ttvideoengine/selector/shift/IAutoBitrateSet;->getSecondParam()D

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    mul-double/2addr v2, p1

    .line 26
    mul-double/2addr v2, p1

    .line 27
    add-double/2addr v0, v2

    .line 28
    iget-object v2, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->autoBitrateSet:Lcom/ss/ttvideoengine/selector/shift/IAutoBitrateSet;

    .line 29
    .line 30
    invoke-interface {v2}, Lcom/ss/ttvideoengine/selector/shift/IAutoBitrateSet;->getThirdParam()D

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    mul-double/2addr v2, p1

    .line 35
    add-double/2addr v0, v2

    .line 36
    iget-object p1, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->autoBitrateSet:Lcom/ss/ttvideoengine/selector/shift/IAutoBitrateSet;

    .line 37
    .line 38
    invoke-interface {p1}, Lcom/ss/ttvideoengine/selector/shift/IAutoBitrateSet;->getFourthParam()D

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    add-double/2addr v0, p1

    .line 43
    iget-object p1, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->autoBitrateSet:Lcom/ss/ttvideoengine/selector/shift/IAutoBitrateSet;

    .line 44
    .line 45
    invoke-interface {p1}, Lcom/ss/ttvideoengine/selector/shift/IAutoBitrateSet;->getMinBitrate()D

    .line 46
    .line 47
    .line 48
    move-result-wide p1

    .line 49
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    new-instance v0, Lcom/ss/ttvideoengine/selector/shift/BitrateInfo;

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-direct {v0, p1, p2, v1}, Lcom/ss/ttvideoengine/selector/shift/BitrateInfo;-><init>(DZ)V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 61
    return-object p1
.end method

.method private calculateBitrateInfoByBandwidthSet(D)Lcom/ss/ttvideoengine/selector/shift/BitrateInfo;
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v0, p1, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_5

    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->bandwidthSets:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->bandwidthSets:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/ss/ttvideoengine/selector/shift/IBandwidthSet;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-interface {v2}, Lcom/ss/ttvideoengine/selector/shift/IBandwidthSet;->getSpeed()D

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    cmpg-double v3, p1, v3

    .line 44
    .line 45
    if-gtz v3, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move-object v2, v1

    .line 49
    :goto_0
    const/4 p1, 0x1

    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    iget-object p2, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->bandwidthSets:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    sub-int/2addr v0, p1

    .line 59
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    move-object v2, p2

    .line 64
    check-cast v2, Lcom/ss/ttvideoengine/selector/shift/IBandwidthSet;

    .line 65
    .line 66
    :cond_3
    if-nez v2, :cond_4

    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_4
    new-instance p2, Lcom/ss/ttvideoengine/selector/shift/BitrateInfo;

    .line 70
    .line 71
    invoke-interface {v2}, Lcom/ss/ttvideoengine/selector/shift/IBandwidthSet;->getBitrate()D

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    invoke-direct {p2, v0, v1, p1}, Lcom/ss/ttvideoengine/selector/shift/BitrateInfo;-><init>(DZ)V

    .line 76
    .line 77
    .line 78
    return-object p2

    .line 79
    :cond_5
    :goto_1
    return-object v1
.end method

.method private calculateBitrateInfoByGearSet(D)Lcom/ss/ttvideoengine/selector/shift/BitrateInfo;
    .locals 12

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v0, p1, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->mShifts:[Lcom/ss/ttvideoengine/selector/shift/Shift;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    array-length v2, v0

    .line 14
    const/4 v3, 0x0

    .line 15
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    move-object v7, v1

    .line 21
    move v6, v3

    .line 22
    :goto_0
    if-ge v6, v2, :cond_2

    .line 23
    .line 24
    aget-object v8, v0, v6

    .line 25
    .line 26
    invoke-virtual {v8}, Lcom/ss/ttvideoengine/selector/shift/Shift;->getMedianThreshold()D

    .line 27
    .line 28
    .line 29
    move-result-wide v9

    .line 30
    sub-double/2addr v9, p1

    .line 31
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v9

    .line 35
    cmpg-double v11, v9, v4

    .line 36
    .line 37
    if-gez v11, :cond_1

    .line 38
    .line 39
    move-object v7, v8

    .line 40
    move-wide v4, v9

    .line 41
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    if-eqz v7, :cond_3

    .line 45
    .line 46
    new-instance p1, Lcom/ss/ttvideoengine/selector/shift/BitrateInfo;

    .line 47
    .line 48
    iget-wide v0, v7, Lcom/ss/ttvideoengine/selector/shift/Shift;->mRate:D

    .line 49
    .line 50
    invoke-direct {p1, v0, v1, v3}, Lcom/ss/ttvideoengine/selector/shift/BitrateInfo;-><init>(DZ)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_3
    :goto_1
    return-object v1
.end method

.method private findBitRate(Lcom/ss/ttvideoengine/selector/shift/BitrateInfo;Ljava/util/List;)Lcom/ss/ttvideoengine/model/IVideoInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/ss/ttvideoengine/model/IVideoInfo;",
            ">(",
            "Lcom/ss/ttvideoengine/selector/shift/BitrateInfo;",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/ttvideoengine/selector/shift/BitrateNotMatchException;
        }
    .end annotation

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->gearConfig:Lcom/ss/ttvideoengine/selector/shift/IGearConfig;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->getDefaultBitrate(Ljava/util/List;)Lcom/ss/ttvideoengine/model/IVideoInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance p1, Lcom/ss/ttvideoengine/selector/shift/BitrateNotMatchException;

    .line 13
    .line 14
    const/4 p2, 0x6

    .line 15
    const-string v0, "gear config is null"

    .line 16
    .line 17
    invoke-direct {p1, p2, v0}, Lcom/ss/ttvideoengine/selector/shift/BitrateNotMatchException;-><init>(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_1
    invoke-virtual {p0, p2}, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->filter(Ljava/util/List;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p2, :cond_3

    .line 26
    .line 27
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    iget-boolean v0, p1, Lcom/ss/ttvideoengine/selector/shift/BitrateInfo;->maxBitrate:Z

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-wide v0, p1, Lcom/ss/ttvideoengine/selector/shift/BitrateInfo;->bitrate:D

    .line 38
    .line 39
    invoke-direct {p0, v0, v1, p2}, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->findMaxBitrate(DLjava/util/List;)Lcom/ss/ttvideoengine/model/IVideoInfo;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-wide v0, p1, Lcom/ss/ttvideoengine/selector/shift/BitrateInfo;->bitrate:D

    .line 45
    .line 46
    invoke-direct {p0, v0, v1, p2}, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->findNearestBitrate(DLjava/util/List;)Lcom/ss/ttvideoengine/model/IVideoInfo;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_0
    return-object p1

    .line 51
    :cond_3
    new-instance p1, Lcom/ss/ttvideoengine/selector/shift/BitrateNotMatchException;

    .line 52
    .line 53
    const/4 p2, 0x5

    .line 54
    const-string v0, "Intersection bitrate list is empty."

    .line 55
    .line 56
    invoke-direct {p1, p2, v0}, Lcom/ss/ttvideoengine/selector/shift/BitrateNotMatchException;-><init>(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method private findMaxBitrate(DLjava/util/List;)Lcom/ss/ttvideoengine/model/IVideoInfo;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/ss/ttvideoengine/model/IVideoInfo;",
            ">(D",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_3

    .line 3
    .line 4
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/ss/ttvideoengine/model/IVideoInfo;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    invoke-interface {v0, v2}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueInt(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    int-to-double v3, v3

    .line 28
    cmpl-double v3, v3, p1

    .line 29
    .line 30
    if-lez v3, :cond_2

    .line 31
    .line 32
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueInt(I)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-interface {v0, v2}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueInt(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-ge v3, v2, :cond_0

    .line 41
    .line 42
    :cond_1
    :goto_1
    move-object v0, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueInt(I)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    int-to-double v3, v3

    .line 49
    cmpl-double v3, p1, v3

    .line 50
    .line 51
    if-ltz v3, :cond_0

    .line 52
    .line 53
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueInt(I)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-interface {v0, v2}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueInt(I)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-lt v3, v2, :cond_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    return-object v0
.end method

.method private findNearestBitrate(DLjava/util/List;)Lcom/ss/ttvideoengine/model/IVideoInfo;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/ss/ttvideoengine/model/IVideoInfo;",
            ">(D",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_2

    .line 3
    .line 4
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/ss/ttvideoengine/model/IVideoInfo;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    :goto_1
    move-object v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v2, 0x3

    .line 25
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueInt(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    int-to-double v3, v3

    .line 30
    sub-double/2addr v3, p1

    .line 31
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    invoke-interface {v0, v2}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueInt(I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    int-to-double v5, v2

    .line 40
    sub-double/2addr v5, p1

    .line 41
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    cmpg-double v2, v3, v5

    .line 46
    .line 47
    if-gez v2, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    return-object v0
.end method

.method private initShifts(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ttvideoengine/selector/shift/IGearSet;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-array v0, v0, [Lcom/ss/ttvideoengine/selector/shift/Shift;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->mShifts:[Lcom/ss/ttvideoengine/selector/shift/Shift;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ge v0, v1, :cond_0

    .line 23
    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/ss/ttvideoengine/selector/shift/IGearSet;

    .line 29
    .line 30
    new-instance v9, Lcom/ss/ttvideoengine/selector/shift/Shift;

    .line 31
    .line 32
    invoke-interface {v1}, Lcom/ss/ttvideoengine/selector/shift/IGearSet;->getBitRate()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    int-to-double v3, v2

    .line 37
    invoke-interface {v1}, Lcom/ss/ttvideoengine/selector/shift/IGearSet;->getNetworkLower()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    int-to-double v5, v2

    .line 42
    const-wide v7, 0x40bf400000000000L    # 8000.0

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    mul-double/2addr v5, v7

    .line 48
    invoke-interface {v1}, Lcom/ss/ttvideoengine/selector/shift/IGearSet;->getNetworkUpper()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    int-to-double v1, v1

    .line 53
    mul-double/2addr v7, v1

    .line 54
    move-object v2, v9

    .line 55
    invoke-direct/range {v2 .. v8}, Lcom/ss/ttvideoengine/selector/shift/Shift;-><init>(DDD)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->mShifts:[Lcom/ss/ttvideoengine/selector/shift/Shift;

    .line 59
    .line 60
    aput-object v9, v1, v0

    .line 61
    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method private select(Ljava/util/List;Ljava/util/Map;)Lcom/ss/ttvideoengine/selector/SelectedInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ttvideoengine/model/IVideoInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/ss/ttvideoengine/selector/SelectedInfo;"
        }
    .end annotation

    .line 1
    const-string v0, "kTTVideoSelector"

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    :try_start_0
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 4
    const-string v1, "Selector"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 5
    :goto_0
    iget-object p2, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->autoBitrateSet:Lcom/ss/ttvideoengine/selector/shift/IAutoBitrateSet;

    if-eqz p2, :cond_1

    .line 6
    invoke-direct {p0, v1, v2}, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->calculateBitrateInfoByAutoBitrateSet(D)Lcom/ss/ttvideoengine/selector/shift/BitrateInfo;

    move-result-object p2

    goto :goto_1

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->bandwidthSets:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 8
    invoke-direct {p0, v1, v2}, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->calculateBitrateInfoByBandwidthSet(D)Lcom/ss/ttvideoengine/selector/shift/BitrateInfo;

    move-result-object p2

    goto :goto_1

    .line 9
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->calculateBitrateInfoByGearSet(D)Lcom/ss/ttvideoengine/selector/shift/BitrateInfo;

    move-result-object p2

    :goto_1
    const/4 v1, 0x0

    .line 10
    :try_start_1
    invoke-direct {p0, p2, p1}, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->findBitRate(Lcom/ss/ttvideoengine/selector/shift/BitrateInfo;Ljava/util/List;)Lcom/ss/ttvideoengine/model/IVideoInfo;

    move-result-object v0
    :try_end_1
    .catch Lcom/ss/ttvideoengine/selector/shift/BitrateNotMatchException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v1

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception v2

    .line 11
    new-instance v3, Lcom/ss/ttvideoengine/utils/Error;

    const/16 v4, -0x1f3e

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v4, v2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :goto_2
    const/4 v0, 0x0

    if-nez v1, :cond_3

    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/ss/ttvideoengine/model/IVideoInfo;

    .line 13
    :cond_3
    new-instance p1, Lcom/ss/ttvideoengine/selector/SelectedInfo;

    invoke-direct {p1, v1, v3}, Lcom/ss/ttvideoengine/selector/SelectedInfo;-><init>(Lcom/ss/ttvideoengine/model/IVideoInfo;Lcom/ss/ttvideoengine/utils/Error;)V

    if-eqz p2, :cond_4

    .line 14
    iget-wide v1, p2, Lcom/ss/ttvideoengine/selector/shift/BitrateInfo;->bitrate:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/ttvideoengine/selector/SelectedInfo;->setDoubleValue(ID)V

    :cond_4
    return-object p1

    .line 15
    :cond_5
    new-instance p1, Lcom/ss/ttvideoengine/utils/Error;

    const/16 p2, -0x1f3f

    const-string v1, "bitrate list is empty..."

    invoke-direct {p1, v0, p2, v1}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 16
    new-instance p2, Lcom/ss/ttvideoengine/selector/SelectedInfo;

    invoke-direct {p2, p1}, Lcom/ss/ttvideoengine/selector/SelectedInfo;-><init>(Lcom/ss/ttvideoengine/utils/Error;)V

    return-object p2
.end method


# virtual methods
.method protected filter(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/ss/ttvideoengine/model/IVideoInfo;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->gearConfig:Lcom/ss/ttvideoengine/selector/shift/IGearConfig;

    .line 7
    .line 8
    if-eqz v1, :cond_9

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->gearConfig:Lcom/ss/ttvideoengine/selector/shift/IGearConfig;

    .line 19
    .line 20
    invoke-interface {v1}, Lcom/ss/ttvideoengine/selector/shift/IGearConfig;->getBitrateInterval()Landroid/util/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->gearConfig:Lcom/ss/ttvideoengine/selector/shift/IGearConfig;

    .line 25
    .line 26
    invoke-interface {v2}, Lcom/ss/ttvideoengine/selector/shift/IGearConfig;->getGearGroup()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v4, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->gearConfig:Lcom/ss/ttvideoengine/selector/shift/IGearConfig;

    .line 34
    .line 35
    invoke-interface {v4}, Lcom/ss/ttvideoengine/selector/shift/IGearConfig;->getDefaultBitrate()D

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    const-wide/16 v6, 0x0

    .line 40
    .line 41
    cmpl-double v4, v4, v6

    .line 42
    .line 43
    if-lez v4, :cond_1

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v4, v3

    .line 48
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    const/4 v7, 0x3

    .line 57
    if-eqz v6, :cond_4

    .line 58
    .line 59
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Lcom/ss/ttvideoengine/model/IVideoInfo;

    .line 64
    .line 65
    if-eqz v4, :cond_3

    .line 66
    .line 67
    invoke-interface {v6, v7}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueInt(I)I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    int-to-double v7, v7

    .line 72
    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v9, Ljava/lang/Double;

    .line 75
    .line 76
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    .line 77
    .line 78
    .line 79
    move-result-wide v9

    .line 80
    cmpl-double v9, v7, v9

    .line 81
    .line 82
    if-ltz v9, :cond_2

    .line 83
    .line 84
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v9, Ljava/lang/Double;

    .line 87
    .line 88
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    .line 89
    .line 90
    .line 91
    move-result-wide v9

    .line 92
    cmpg-double v7, v7, v9

    .line 93
    .line 94
    if-gtz v7, :cond_2

    .line 95
    .line 96
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    if-eqz v2, :cond_2

    .line 101
    .line 102
    const/4 v7, 0x7

    .line 103
    invoke-interface {v6, v7}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    if-eqz v7, :cond_2

    .line 112
    .line 113
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_9

    .line 122
    .line 123
    if-eqz v4, :cond_8

    .line 124
    .line 125
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const/4 v1, 0x0

    .line 130
    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_7

    .line 135
    .line 136
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    check-cast v2, Lcom/ss/ttvideoengine/model/IVideoInfo;

    .line 141
    .line 142
    if-nez v1, :cond_6

    .line 143
    .line 144
    :goto_3
    move-object v1, v2

    .line 145
    goto :goto_2

    .line 146
    :cond_6
    invoke-interface {v2, v7}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueInt(I)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    int-to-double v3, v3

    .line 151
    iget-object v5, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->gearConfig:Lcom/ss/ttvideoengine/selector/shift/IGearConfig;

    .line 152
    .line 153
    invoke-interface {v5}, Lcom/ss/ttvideoengine/selector/shift/IGearConfig;->getDefaultBitrate()D

    .line 154
    .line 155
    .line 156
    move-result-wide v5

    .line 157
    sub-double/2addr v3, v5

    .line 158
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 159
    .line 160
    .line 161
    move-result-wide v3

    .line 162
    invoke-interface {v1, v7}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueInt(I)I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    int-to-double v5, v5

    .line 167
    iget-object v8, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->gearConfig:Lcom/ss/ttvideoengine/selector/shift/IGearConfig;

    .line 168
    .line 169
    invoke-interface {v8}, Lcom/ss/ttvideoengine/selector/shift/IGearConfig;->getDefaultBitrate()D

    .line 170
    .line 171
    .line 172
    move-result-wide v8

    .line 173
    sub-double/2addr v5, v8

    .line 174
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    .line 175
    .line 176
    .line 177
    move-result-wide v5

    .line 178
    cmpg-double v3, v3, v5

    .line 179
    .line 180
    if-gez v3, :cond_5

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_8
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    :cond_9
    :goto_4
    return-object v0
.end method

.method protected getDefaultBitrate(Ljava/util/List;)Lcom/ss/ttvideoengine/model/IVideoInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/ss/ttvideoengine/model/IVideoInfo;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/ttvideoengine/selector/shift/BitrateNotMatchException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->gearConfig:Lcom/ss/ttvideoengine/selector/shift/IGearConfig;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/ttvideoengine/selector/shift/IGearConfig;->getDefaultGearName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->gearConfig:Lcom/ss/ttvideoengine/selector/shift/IGearConfig;

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/ss/ttvideoengine/selector/shift/IGearConfig;->getDefaultBitrate()D

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    cmpg-double v3, v1, v3

    .line 16
    .line 17
    if-gtz v3, :cond_2

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/ss/ttvideoengine/model/IVideoInfo;

    .line 34
    .line 35
    const/4 v3, 0x7

    .line 36
    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_1
    new-instance v1, Lcom/ss/ttvideoengine/selector/shift/BitrateNotMatchException;

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v3, "defaultGearName = "

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, " bitrates = "

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const/4 v0, 0x4

    .line 79
    invoke-direct {v1, v0, p1}, Lcom/ss/ttvideoengine/selector/shift/BitrateNotMatchException;-><init>(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v1

    .line 83
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const/4 v0, 0x0

    .line 88
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_4

    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    check-cast v5, Lcom/ss/ttvideoengine/model/IVideoInfo;

    .line 104
    .line 105
    const/4 v6, 0x3

    .line 106
    invoke-interface {v5, v6}, Lcom/ss/ttvideoengine/model/IVideoInfo;->getValueInt(I)I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    int-to-double v6, v6

    .line 111
    sub-double/2addr v6, v1

    .line 112
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    .line 113
    .line 114
    .line 115
    move-result-wide v6

    .line 116
    cmpl-double v8, v3, v6

    .line 117
    .line 118
    if-lez v8, :cond_3

    .line 119
    .line 120
    move-object v0, v5

    .line 121
    move-wide v3, v6

    .line 122
    goto :goto_0

    .line 123
    :cond_4
    return-object v0
.end method

.method public select(Lcom/ss/ttvideoengine/model/IVideoModel;Ljava/util/Map;)Lcom/ss/ttvideoengine/selector/SelectedInfo;
    .locals 15
    .param p1    # Lcom/ss/ttvideoengine/model/IVideoModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/model/IVideoModel;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/ss/ttvideoengine/selector/SelectedInfo;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    const/16 v2, -0x1f3f

    .line 17
    const-string v3, "kTTVideoSelector"

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lcom/ss/ttvideoengine/utils/Error;

    const-string v4, "null video model"

    invoke-direct {v1, v3, v2, v4}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    new-instance v2, Lcom/ss/ttvideoengine/selector/SelectedInfo;

    invoke-direct {v2, v1}, Lcom/ss/ttvideoengine/selector/SelectedInfo;-><init>(Lcom/ss/ttvideoengine/utils/Error;)V

    return-object v2

    .line 20
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    move-result-object v4

    const/16 v5, 0x324

    invoke-virtual {v4, v5}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->moduleSwitch(I)I

    move-result v4

    const-string v5, "Selector"

    if-eqz v4, :cond_9

    .line 21
    const-string v4, "[GearStrategy] SpeedShiftSelector native select enabled"

    invoke-static {v5, v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 23
    new-instance v5, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;-><init>(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 24
    invoke-virtual {v5, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->setVideoModel(Lcom/ss/ttvideoengine/model/IVideoModel;)V

    .line 25
    new-instance v7, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector$1;

    invoke-direct {v7, p0}, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector$1;-><init>(Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;)V

    invoke-virtual {v5, v7}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->setGearStrategyListener(Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;)V

    .line 26
    invoke-virtual {v5, v4}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->setUserData(Ljava/lang/Object;)V

    .line 27
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v1, v8, v4, v5}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->selectResolution(Lcom/ss/ttvideoengine/model/IVideoModel;ILjava/util/Map;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;)Ljava/util/Map;

    move-result-object v5

    .line 28
    const-string v7, "error_desc"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    .line 29
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 30
    :try_start_0
    const-string v1, "error_code"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :catch_0
    new-instance v1, Lcom/ss/ttvideoengine/utils/Error;

    invoke-direct {v1, v3, v8, v7}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 32
    new-instance v2, Lcom/ss/ttvideoengine/selector/SelectedInfo;

    invoke-direct {v2, v1}, Lcom/ss/ttvideoengine/selector/SelectedInfo;-><init>(Lcom/ss/ttvideoengine/utils/Error;)V

    return-object v2

    :cond_1
    const-wide/16 v9, 0x0

    if-eqz v5, :cond_7

    .line 33
    const-string/jumbo v7, "video"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 34
    :try_start_1
    const-string/jumbo v7, "video_calc_bitrarte"

    .line 35
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 36
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-wide v11, v9

    .line 37
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    move-result-object v1

    if-lez v5, :cond_5

    if-eqz v1, :cond_5

    .line 38
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 39
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/ttvideoengine/model/VideoInfo;

    if-eqz v4, :cond_2

    .line 40
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    move-result v7

    sget v13, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_AUDIO:I

    if-eq v7, v13, :cond_2

    .line 41
    invoke-virtual {v4}, Lcom/ss/ttvideoengine/model/VideoInfo;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x3

    .line 42
    invoke-virtual {v4, v7}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    move-result v7

    int-to-long v13, v7

    int-to-long v6, v5

    cmp-long v6, v13, v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_6

    .line 43
    new-instance v6, Lcom/ss/ttvideoengine/utils/Error;

    const-string v1, "null video info fit bitrate"

    invoke-direct {v6, v3, v2, v1}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    move-object v1, v6

    move-object v6, v4

    goto :goto_4

    .line 44
    :cond_7
    new-instance v6, Lcom/ss/ttvideoengine/utils/Error;

    const/16 v1, -0x1f3d

    const-string v2, "native select result null"

    invoke-direct {v6, v3, v1, v2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v1, v6

    move-wide v11, v9

    const/4 v6, 0x0

    .line 45
    :goto_4
    new-instance v2, Lcom/ss/ttvideoengine/selector/SelectedInfo;

    invoke-direct {v2, v6, v1}, Lcom/ss/ttvideoengine/selector/SelectedInfo;-><init>(Lcom/ss/ttvideoengine/model/IVideoInfo;Lcom/ss/ttvideoengine/utils/Error;)V

    cmpl-double v1, v11, v9

    if-lez v1, :cond_8

    .line 46
    invoke-virtual {v2, v8, v11, v12}, Lcom/ss/ttvideoengine/selector/SelectedInfo;->setDoubleValue(ID)V

    :cond_8
    return-object v2

    .line 47
    :cond_9
    const-string v2, "[GearStrategy] SpeedShiftSelector native select disabled"

    invoke-static {v5, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-interface/range {p1 .. p1}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-direct {p0, v1, v2}, Lcom/ss/ttvideoengine/selector/shift/SpeedShiftSelector;->select(Ljava/util/List;Ljava/util/Map;)Lcom/ss/ttvideoengine/selector/SelectedInfo;

    move-result-object v1

    return-object v1
.end method
