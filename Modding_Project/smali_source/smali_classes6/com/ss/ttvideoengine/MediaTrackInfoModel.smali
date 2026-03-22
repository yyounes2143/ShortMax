.class public Lcom/ss/ttvideoengine/MediaTrackInfoModel;
.super Ljava/lang/Object;
.source "MediaTrackInfoModel.java"

# interfaces
.implements Lcom/ss/ttvideoengine/MediaTrackInfoModelProvider;


# instance fields
.field private final mGroupId:Ljava/lang/String;

.field private final mIndex:I

.field private final mLanguage:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "index"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/ss/ttvideoengine/MediaTrackInfoModel;->mIndex:I

    .line 11
    .line 12
    const-string/jumbo v0, "type"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/ss/ttvideoengine/MediaTrackInfoModel;->mType:I

    .line 20
    .line 21
    const-string v0, "language"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/ss/ttvideoengine/MediaTrackInfoModel;->mLanguage:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "name"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/ss/ttvideoengine/MediaTrackInfoModel;->mName:Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "group_id"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/ss/ttvideoengine/MediaTrackInfoModel;->mGroupId:Ljava/lang/String;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaTrackInfoModel;->mGroupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/MediaTrackInfoModel;->mIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaTrackInfoModel;->mLanguage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/MediaTrackInfoModel;->mName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/MediaTrackInfoModel;->mType:I

    .line 2
    .line 3
    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "index"

    .line 7
    .line 8
    iget v2, p0, Lcom/ss/ttvideoengine/MediaTrackInfoModel;->mIndex:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "type"

    .line 14
    .line 15
    .line 16
    iget v2, p0, Lcom/ss/ttvideoengine/MediaTrackInfoModel;->mType:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string v1, "language"

    .line 22
    .line 23
    iget-object v2, p0, Lcom/ss/ttvideoengine/MediaTrackInfoModel;->mLanguage:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    const-string v1, "name"

    .line 29
    .line 30
    iget-object v2, p0, Lcom/ss/ttvideoengine/MediaTrackInfoModel;->mName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    const-string v1, "group_id"

    .line 36
    .line 37
    iget-object v2, p0, Lcom/ss/ttvideoengine/MediaTrackInfoModel;->mGroupId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-object v0
.end method
