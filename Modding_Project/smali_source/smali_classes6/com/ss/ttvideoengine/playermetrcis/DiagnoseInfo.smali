.class public Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;
.super Ljava/lang/Object;
.source "DiagnoseInfo.java"


# instance fields
.field public mCiticalTime:J

.field public mCpuUsage:D

.field public mEmergencyTime:J

.field public mMemUsage:I

.field public mPowerUsage:I

.field public mPowerUsageTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;->mCpuUsage:D

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;->mMemUsage:I

    .line 10
    .line 11
    iput v0, p0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;->mPowerUsage:I

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;->mPowerUsageTime:J

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;->mCiticalTime:J

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseInfo;->mEmergencyTime:J

    .line 20
    .line 21
    return-void
.end method
