.class public Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorNotifyInfo;
.super Ljava/lang/Object;
.source "SpeedPredictorNotifyInfo.java"


# instance fields
.field public code:J

.field public mSpeedRecord:Lcom/bytedance/vcloud/networkpredictor/ISpeedRecordOld;

.field public mStreamIdMediaTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public parameter:J

.field public what:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorNotifyInfo;->what:I

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorNotifyInfo;->code:J

    .line 4
    iput-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorNotifyInfo;->parameter:J

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorNotifyInfo;->mSpeedRecord:Lcom/bytedance/vcloud/networkpredictor/ISpeedRecordOld;

    .line 6
    iput-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorNotifyInfo;->mStreamIdMediaTypeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(ILcom/bytedance/vcloud/networkpredictor/ISpeedRecordOld;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bytedance/vcloud/networkpredictor/ISpeedRecordOld;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorNotifyInfo;->what:I

    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorNotifyInfo;->code:J

    .line 10
    iput-wide v0, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorNotifyInfo;->parameter:J

    .line 11
    iput-object p2, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorNotifyInfo;->mSpeedRecord:Lcom/bytedance/vcloud/networkpredictor/ISpeedRecordOld;

    .line 12
    iput-object p3, p0, Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorNotifyInfo;->mStreamIdMediaTypeMap:Ljava/util/Map;

    return-void
.end method
