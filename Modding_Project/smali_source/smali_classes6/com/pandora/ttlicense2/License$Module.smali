.class public Lcom/pandora/ttlicense2/License$Module;
.super Ljava/lang/Object;
.source "License.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandora/ttlicense2/License;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Module"
.end annotation


# instance fields
.field private edition:Ljava/lang/String;

.field private expireBuffer:J

.field private expireTime:J

.field private features:[Lcom/pandora/ttlicense2/License$Module;

.field private name:Ljava/lang/String;

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    const-string v0, "Name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pandora/ttlicense2/License$Module;->name:Ljava/lang/String;

    .line 4
    const-string v0, "StartTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pandora/ttlicense2/License$Module;->startTime:J

    .line 5
    const-string v0, "ExpireTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pandora/ttlicense2/License$Module;->expireTime:J

    .line 6
    const-string v0, "ExpireBuffer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pandora/ttlicense2/License$Module;->expireBuffer:J

    .line 7
    const-string v0, "Edition"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pandora/ttlicense2/License$Module;->edition:Ljava/lang/String;

    .line 8
    const-string v0, "Features"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/pandora/ttlicense2/License$Module;

    iput-object v0, p0, Lcom/pandora/ttlicense2/License$Module;->features:[Lcom/pandora/ttlicense2/License$Module;

    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 13
    iget-object v2, p0, Lcom/pandora/ttlicense2/License$Module;->features:[Lcom/pandora/ttlicense2/License$Module;

    new-instance v3, Lcom/pandora/ttlicense2/License$Module;

    invoke-direct {v3, v1}, Lcom/pandora/ttlicense2/License$Module;-><init>(Lorg/json/JSONObject;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getEdition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/License$Module;->edition:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExpireBuffer()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/pandora/ttlicense2/License$Module;->expireBuffer:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getExpireTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/pandora/ttlicense2/License$Module;->expireTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFeatures()[Lcom/pandora/ttlicense2/License$Module;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/License$Module;->features:[Lcom/pandora/ttlicense2/License$Module;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/License$Module;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/pandora/ttlicense2/License$Module;->startTime:J

    .line 2
    .line 3
    return-wide v0
.end method
