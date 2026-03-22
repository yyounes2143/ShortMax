.class public Lcom/ss/ttvideoengine/SubModel;
.super Ljava/lang/Object;
.source "SubModel.java"

# interfaces
.implements Lcom/ss/ttvideoengine/SubModelProvider;


# instance fields
.field private final mExpireTime:J

.field private final mFormat:Ljava/lang/String;

.field private final mIndex:I

.field private final mLanguage:Ljava/lang/String;

.field private final mLanguageId:I

.field private final mSubId:I

.field private final mUrlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "url"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/SubModel;->mUrlString:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "language_id"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/ss/ttvideoengine/SubModel;->mLanguageId:I

    .line 20
    .line 21
    const-string v0, "format"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/ss/ttvideoengine/SubModel;->mFormat:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "language"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/ss/ttvideoengine/SubModel;->mLanguage:Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "id"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lcom/ss/ttvideoengine/SubModel;->mIndex:I

    .line 44
    .line 45
    const-string v0, "expire"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    iput-wide v0, p0, Lcom/ss/ttvideoengine/SubModel;->mExpireTime:J

    .line 52
    .line 53
    const-string/jumbo v0, "sub_id"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iput p1, p0, Lcom/ss/ttvideoengine/SubModel;->mSubId:I

    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public getExpireTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/SubModel;->mExpireTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/SubModel;->mFormat:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/SubModel;->mIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/SubModel;->mLanguage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLanguageId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/SubModel;->mLanguageId:I

    .line 2
    .line 3
    return v0
.end method

.method public getSubId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/SubModel;->mSubId:I

    .line 2
    .line 3
    return v0
.end method

.method public getUrlString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/SubModel;->mUrlString:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string/jumbo v1, "url"

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/ss/ttvideoengine/SubModel;->mUrlString:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string v1, "language_id"

    .line 15
    .line 16
    iget v2, p0, Lcom/ss/ttvideoengine/SubModel;->mLanguageId:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string v1, "format"

    .line 22
    .line 23
    iget-object v2, p0, Lcom/ss/ttvideoengine/SubModel;->mFormat:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    const-string v1, "language"

    .line 29
    .line 30
    iget-object v2, p0, Lcom/ss/ttvideoengine/SubModel;->mLanguage:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    const-string v1, "id"

    .line 36
    .line 37
    iget v2, p0, Lcom/ss/ttvideoengine/SubModel;->mIndex:I

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    const-string v1, "expire"

    .line 43
    .line 44
    iget-wide v2, p0, Lcom/ss/ttvideoengine/SubModel;->mExpireTime:J

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    const-string/jumbo v1, "sub_id"

    .line 50
    .line 51
    .line 52
    iget v2, p0, Lcom/ss/ttvideoengine/SubModel;->mSubId:I

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/SubModel;->toJson()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const-string/jumbo v2, "url"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    const-string v2, "language_id"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    const-string v2, "format"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    const-string/jumbo v2, "sub_id"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :cond_1
    return-object v1
.end method
