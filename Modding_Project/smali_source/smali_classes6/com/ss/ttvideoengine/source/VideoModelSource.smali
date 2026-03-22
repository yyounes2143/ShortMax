.class public Lcom/ss/ttvideoengine/source/VideoModelSource;
.super Ljava/lang/Object;
.source "VideoModelSource.java"

# interfaces
.implements Lcom/ss/ttvideoengine/strategy/source/StrategySource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;
    }
.end annotation


# instance fields
.field private final resolution:Lcom/ss/ttvideoengine/Resolution;

.field private final tag:Ljava/lang/Object;

.field private final vid:Ljava/lang/String;

.field private final videoModel:Lcom/ss/ttvideoengine/model/IVideoModel;


# direct methods
.method private constructor <init>(Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;->access$000(Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/VideoModelSource;->vid:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;->access$100(Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;)Lcom/ss/ttvideoengine/model/IVideoModel;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/VideoModelSource;->videoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 5
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;->access$200(Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;)Lcom/ss/ttvideoengine/Resolution;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/VideoModelSource;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 6
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;->access$300(Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ttvideoengine/source/VideoModelSource;->tag:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;Lcom/ss/ttvideoengine/source/VideoModelSource$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/source/VideoModelSource;-><init>(Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;)V

    return-void
.end method


# virtual methods
.method public codecStrategy()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public resolution()Lcom/ss/ttvideoengine/Resolution;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/VideoModelSource;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    return-object v0
.end method

.method public tag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/VideoModelSource;->tag:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "VideoModelSource{vid=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/VideoModelSource;->vid:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", videoModel="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/VideoModelSource;->videoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", resolution="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/VideoModelSource;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x7d

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method

.method public type()Lcom/ss/ttvideoengine/source/Source$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/source/Source$Type;->VIDEO_MODEL_SOURCE:Lcom/ss/ttvideoengine/source/Source$Type;

    .line 2
    .line 3
    return-object v0
.end method

.method public vid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/VideoModelSource;->vid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public videoModel()Lcom/ss/ttvideoengine/model/IVideoModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/VideoModelSource;->videoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 2
    .line 3
    return-object v0
.end method
