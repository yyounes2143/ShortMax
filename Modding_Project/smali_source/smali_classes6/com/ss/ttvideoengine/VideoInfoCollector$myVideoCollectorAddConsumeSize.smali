.class public Lcom/ss/ttvideoengine/VideoInfoCollector$myVideoCollectorAddConsumeSize;
.super Ljava/lang/Object;
.source "VideoInfoCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/VideoInfoCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "myVideoCollectorAddConsumeSize"
.end annotation


# instance fields
.field mConsumeSize:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/ss/ttvideoengine/VideoInfoCollector$myVideoCollectorAddConsumeSize;->mConsumeSize:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/VideoInfoCollector;->getInstance()Lcom/ss/ttvideoengine/VideoInfoCollector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v1, p0, Lcom/ss/ttvideoengine/VideoInfoCollector$myVideoCollectorAddConsumeSize;->mConsumeSize:J

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttvideoengine/VideoInfoCollector;->addPlayConsumedSize(J)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
