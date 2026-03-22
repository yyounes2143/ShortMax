.class public Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;
.super Ljava/lang/Object;
.source "BareVideoModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/model/BareVideoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAdaptive:Z

.field private mBid:Ljava/lang/String;

.field private mCategory:I

.field private mDuration:J

.field private mDynamicType:Ljava/lang/String;

.field private mFirstSubVid:Ljava/lang/String;

.field private mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLoudness:F

.field private mPeak:F

.field private mPlaceHolder:I

.field private mSubListIndex:I

.field private mVid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mVid:Ljava/lang/String;

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    iput-wide v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mDuration:J

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mAdaptive:Z

    .line 13
    .line 14
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mDynamicType:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput v2, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mLoudness:F

    .line 18
    .line 19
    iput v2, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mPeak:F

    .line 20
    .line 21
    iput v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mCategory:I

    .line 22
    .line 23
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mFirstSubVid:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v2, -0x1

    .line 26
    iput v2, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mSubListIndex:I

    .line 27
    .line 28
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mInfos:Ljava/util/List;

    .line 29
    .line 30
    const-string v0, ""

    .line 31
    .line 32
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mBid:Ljava/lang/String;

    .line 33
    .line 34
    iput v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mPlaceHolder:I

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public adaptive(Z)Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mAdaptive:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public addVideoInfo(Lcom/ss/ttvideoengine/model/VideoInfo;)Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mInfos:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mInfos:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mInfos:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public bid(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mBid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public build()Lcom/ss/ttvideoengine/model/BareVideoModel;
    .locals 3

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/model/BareVideoModel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoModel;-><init>(Lcom/ss/ttvideoengine/model/BareVideoModel$1;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mVid:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoModel;->access$102(Lcom/ss/ttvideoengine/model/BareVideoModel;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mBid:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoModel;->access$202(Lcom/ss/ttvideoengine/model/BareVideoModel;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    iget-wide v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mDuration:J

    .line 18
    .line 19
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/model/BareVideoModel;->access$302(Lcom/ss/ttvideoengine/model/BareVideoModel;J)J

    .line 20
    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mAdaptive:Z

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoModel;->access$402(Lcom/ss/ttvideoengine/model/BareVideoModel;Z)Z

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mDynamicType:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoModel;->access$502(Lcom/ss/ttvideoengine/model/BareVideoModel;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mLoudness:F

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoModel;->access$602(Lcom/ss/ttvideoengine/model/BareVideoModel;F)F

    .line 35
    .line 36
    .line 37
    iget v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mPeak:F

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoModel;->access$702(Lcom/ss/ttvideoengine/model/BareVideoModel;F)F

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mCategory:I

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoModel;->access$802(Lcom/ss/ttvideoengine/model/BareVideoModel;I)I

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mInfos:Ljava/util/List;

    .line 48
    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    new-instance v1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mInfos:Ljava/util/List;

    .line 57
    .line 58
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mInfos:Ljava/util/List;

    .line 59
    .line 60
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoModel;->access$902(Lcom/ss/ttvideoengine/model/BareVideoModel;Ljava/util/List;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    iget v1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mPlaceHolder:I

    .line 64
    .line 65
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoModel;->access$1002(Lcom/ss/ttvideoengine/model/BareVideoModel;I)I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/BareVideoModel;->toBashString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoModel;->access$1102(Lcom/ss/ttvideoengine/model/BareVideoModel;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    return-object v0
.end method

.method public category(I)Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mCategory:I

    .line 2
    .line 3
    return-object p0
.end method

.method public duration(J)Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mDuration:J

    .line 2
    .line 3
    return-object p0
.end method

.method public dynamicType(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mDynamicType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public firstSubVideoId(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mFirstSubVid:Ljava/lang/String;

    return-object p0
.end method

.method public firstSubVideoId(Ljava/lang/String;I)Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mFirstSubVid:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mSubListIndex:I

    return-object p0
.end method

.method public loudness(F)Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mLoudness:F

    .line 2
    .line 3
    return-object p0
.end method

.method public peak(F)Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mPeak:F

    .line 2
    .line 3
    return-object p0
.end method

.method public placeHolder(I)Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mPlaceHolder:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setVideoInfos(Ljava/util/List;)Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ss/ttvideoengine/model/VideoInfo;",
            ">;)",
            "Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mInfos:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mInfos:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mInfos:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mInfos:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public vid(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mVid:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mBid:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->mBid:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    return-object p0
.end method
