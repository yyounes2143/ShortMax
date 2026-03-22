.class public final Lcom/ss/ttvideoengine/model/VideoModelPb$VideoMeta;
.super Ljava/lang/Object;
.source "VideoModelPb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/model/VideoModelPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoMeta"
.end annotation


# instance fields
.field public bitrate:J

.field public codecType:Ljava/lang/String;

.field public definition:Ljava/lang/String;

.field public fileHash:Ljava/lang/String;

.field public fileId:Ljava/lang/String;

.field public fps:J

.field public quality:Ljava/lang/String;

.field public qualityDesc:Ljava/lang/String;

.field public size:J

.field public vheight:J

.field public vtype:Ljava/lang/String;

.field public vwidth:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/VideoModelPb$VideoMeta;->clear()Lcom/ss/ttvideoengine/model/VideoModelPb$VideoMeta;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public clear()Lcom/ss/ttvideoengine/model/VideoModelPb$VideoMeta;
    .locals 0

    .line 1
    return-object p0
.end method
