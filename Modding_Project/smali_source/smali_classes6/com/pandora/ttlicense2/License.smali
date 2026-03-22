.class public Lcom/pandora/ttlicense2/License;
.super Ljava/lang/Object;
.source "License.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandora/ttlicense2/License$Module;
    }
.end annotation


# instance fields
.field private bundleId:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private fileVersion:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field modules:[Lcom/pandora/ttlicense2/License$Module;

.field private packageName:Ljava/lang/String;

.field private type:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    return-void

    .line 6
    :cond_2
    const-string p1, "Id"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pandora/ttlicense2/License;->id:Ljava/lang/String;

    .line 7
    const-string p1, "Version"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/pandora/ttlicense2/License;->version:I

    .line 8
    const-string p1, "Channel"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pandora/ttlicense2/License;->channel:Ljava/lang/String;

    .line 9
    const-string p1, "Type"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/pandora/ttlicense2/License;->type:I

    .line 10
    const-string p1, "PackageName"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pandora/ttlicense2/License;->packageName:Ljava/lang/String;

    .line 11
    const-string p1, "FileVersion"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pandora/ttlicense2/License;->fileVersion:Ljava/lang/String;

    .line 12
    const-string p1, "Modules"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 14
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lcom/pandora/ttlicense2/License$Module;

    iput-object v1, p0, Lcom/pandora/ttlicense2/License;->modules:[Lcom/pandora/ttlicense2/License$Module;

    .line 15
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 16
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 17
    iget-object v2, p0, Lcom/pandora/ttlicense2/License;->modules:[Lcom/pandora/ttlicense2/License$Module;

    new-instance v3, Lcom/pandora/ttlicense2/License$Module;

    invoke-direct {v3, v1}, Lcom/pandora/ttlicense2/License$Module;-><init>(Lorg/json/JSONObject;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public getBundleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/License;->bundleId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/License;->channel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFileVersion()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/License;->fileVersion:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/IOUtils;->parseLong(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/License;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getModules()[Lcom/pandora/ttlicense2/License$Module;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/License;->modules:[Lcom/pandora/ttlicense2/License$Module;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/License;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/pandora/ttlicense2/License;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/pandora/ttlicense2/License;->version:I

    .line 2
    .line 3
    return v0
.end method
