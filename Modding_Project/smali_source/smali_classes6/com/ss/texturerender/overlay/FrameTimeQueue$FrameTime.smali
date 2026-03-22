.class public Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;
.super Ljava/lang/Object;
.source "FrameTimeQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/texturerender/overlay/FrameTimeQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameTime"
.end annotation


# instance fields
.field public pts:J

.field public updateClockTime:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;->pts:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/ss/texturerender/overlay/FrameTimeQueue$FrameTime;->updateClockTime:J

    .line 7
    .line 8
    return-void
.end method
