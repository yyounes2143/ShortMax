.class public Lcom/ss/ttvideoengine/database/VideoModelDBManager$CacheInfo;
.super Ljava/lang/Object;
.source "VideoModelDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/database/VideoModelDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheInfo"
.end annotation


# instance fields
.field public time:J

.field public vid:Ljava/lang/String;

.field public videoModelStr:Ljava/lang/String;


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
    iput-wide v0, p0, Lcom/ss/ttvideoengine/database/VideoModelDBManager$CacheInfo;->time:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/database/VideoModelDBManager$CacheInfo;->videoModelStr:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/database/VideoModelDBManager$CacheInfo;->vid:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method
