.class public final Lcom/ss/ttvideoengine/model/VideoModelPb$VideoInfo;
.super Ljava/lang/Object;
.source "VideoModelPb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/model/VideoModelPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoInfo"
.end annotation


# instance fields
.field public barrageMaskUrl:Ljava/lang/String;

.field public bigThumbs:[Lcom/ss/ttvideoengine/model/VideoModelPb$BigThumb;

.field public dnsInfo:Lcom/ss/ttvideoengine/model/VideoModelPb$DNSInfo;

.field public dynamicVideo:Lcom/ss/ttvideoengine/model/VideoModelPb$DynamicVideo;

.field public enableSsl:Z

.field public fallbackApi:Lcom/ss/ttvideoengine/model/VideoModelPb$FallBackAPI;

.field public mediaType:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public seekTs:Lcom/ss/ttvideoengine/model/VideoModelPb$SeekOffSet;

.field public status:J

.field public urlExpire:J

.field public version:J

.field public videoDuration:D

.field public videoId:Ljava/lang/String;

.field public videoList:[Lcom/ss/ttvideoengine/model/VideoModelPb$Video;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
