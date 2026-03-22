.class public Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;
.super Ljava/lang/Object;
.source "VideoModelSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/source/VideoModelSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private resolution:Lcom/ss/ttvideoengine/Resolution;

.field private tag:Ljava/lang/Object;

.field private vid:Ljava/lang/String;

.field private videoModel:Lcom/ss/ttvideoengine/model/IVideoModel;


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

.method static synthetic access$000(Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;->vid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;)Lcom/ss/ttvideoengine/model/IVideoModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;->videoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;)Lcom/ss/ttvideoengine/Resolution;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;->tag:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public build()Lcom/ss/ttvideoengine/source/VideoModelSource;
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/source/VideoModelSource;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/ss/ttvideoengine/source/VideoModelSource;-><init>(Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;Lcom/ss/ttvideoengine/source/VideoModelSource$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setResolution(Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;->tag:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public setVid(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;->vid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setVideoModel(Lcom/ss/ttvideoengine/model/IVideoModel;)Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;->videoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 2
    .line 3
    return-object p0
.end method
