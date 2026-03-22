.class public abstract Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;
.super Ljava/lang/Object;
.source "AbstractAuthAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected accessToken:Ljava/lang/String;

.field protected ageRange:Ljava/lang/String;

.field protected carrierId:I

.field protected countryCode:Ljava/lang/String;

.field protected displayName:Ljava/lang/String;

.field protected email:Ljava/lang/String;

.field protected expirationTimeSecs:J

.field protected extensionScopes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;"
        }
    .end annotation
.end field

.field protected familyName:Ljava/lang/String;

.field protected gender:I

.field protected givenName:Ljava/lang/String;

.field protected grantedScopes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;"
        }
    .end annotation
.end field

.field protected homeZone:I

.field protected idToken:Ljava/lang/String;

.field protected openId:Ljava/lang/String;

.field protected photoUriString:Ljava/lang/String;

.field protected serverAuthCode:Ljava/lang/String;

.field protected serviceCountryCode:Ljava/lang/String;

.field protected status:I

.field protected uid:Ljava/lang/String;

.field protected unionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->extensionScopes:Ljava/util/Set;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->gender:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->status:I

    .line 8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->grantedScopes:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->extensionScopes:Ljava/util/Set;

    .line 3
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAuthorizedScopes()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAuthorizedScopes()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->accessToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAgeRange()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->ageRange:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAuthorizationCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->serverAuthCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAuthorizedScopes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->grantedScopes:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAvatarUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->photoUriString:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getAvatarUriString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->photoUriString:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCarrierId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->carrierId:I

    .line 2
    .line 3
    return v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->countryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->email:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExpirationTimeSecs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->expirationTimeSecs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getExtensionScopes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->extensionScopes:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->familyName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGender()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->gender:I

    .line 2
    .line 3
    return v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->givenName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHomeZone()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->homeZone:I

    .line 2
    .line 3
    return v0
.end method

.method public getIdToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->idToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->openId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestedScopes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->grantedScopes:Ljava/util/Set;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->extensionScopes:Ljava/util/Set;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public getServiceCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->serviceCountryCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->status:I

    .line 2
    .line 3
    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->uid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUnionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->unionId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getRequestedScopes()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isExpired()Z
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->expirationTimeSecs:J

    .line 2
    .line 3
    const-wide/16 v2, 0x12c

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v4

    .line 14
    const-wide/16 v6, 0x3e8

    .line 15
    .line 16
    div-long/2addr v4, v6

    .line 17
    iget-wide v6, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->expirationTimeSecs:J

    .line 18
    .line 19
    sub-long/2addr v6, v2

    .line 20
    cmp-long v0, v4, v6

    .line 21
    .line 22
    if-ltz v0, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_0
    return v1
.end method

.method protected jsonPutOpt(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getExtensionScopes()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Lorg/json/JSONArray;

    .line 8
    .line 9
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getExtensionScopes()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/huawei/hms/support/api/entity/auth/Scope;

    .line 31
    .line 32
    new-instance v3, Lorg/json/JSONObject;

    .line 33
    .line 34
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v4, "mScopeUri"

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/huawei/hms/support/api/entity/auth/Scope;->getScopeUri()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string v1, "extensionScopes"

    .line 51
    .line 52
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    :cond_1
    return-object p1
.end method

.method protected jsonPutScopes(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAuthorizedScopes()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Lorg/json/JSONArray;

    .line 8
    .line 9
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAuthorizedScopes()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/huawei/hms/support/api/entity/auth/Scope;

    .line 31
    .line 32
    new-instance v3, Lorg/json/JSONObject;

    .line 33
    .line 34
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v4, "mScopeUri"

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/huawei/hms/support/api/entity/auth/Scope;->getScopeUri()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string v1, "grantedScopes"

    .line 51
    .line 52
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    :cond_1
    return-object p1
.end method

.method protected parserJson(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "uid"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->uid:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "openId"

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->openId:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "displayName"

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->displayName:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "photoUriString"

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->photoUriString:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "accessToken"

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->accessToken:Ljava/lang/String;

    .line 41
    .line 42
    const-string v0, "status"

    .line 43
    .line 44
    const/4 v2, -0x1

    .line 45
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->status:I

    .line 50
    .line 51
    const-string v0, "gender"

    .line 52
    .line 53
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->gender:I

    .line 58
    .line 59
    const-string v0, "serverAuthCode"

    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->serverAuthCode:Ljava/lang/String;

    .line 66
    .line 67
    const-string v0, "serviceCountryCode"

    .line 68
    .line 69
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->serviceCountryCode:Ljava/lang/String;

    .line 74
    .line 75
    const-string v0, "countryCode"

    .line 76
    .line 77
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->countryCode:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v2, "grantedScopes"

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    .line 95
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    move-object v0, v1

    .line 101
    :goto_0
    const/4 v2, 0x0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    new-instance v3, Ljava/util/HashSet;

    .line 105
    .line 106
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 107
    .line 108
    .line 109
    move v4, v2

    .line 110
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-ge v4, v5, :cond_2

    .line 115
    .line 116
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    const-string v6, "mScopeUri"

    .line 121
    .line 122
    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    if-eqz v5, :cond_1

    .line 127
    .line 128
    new-instance v6, Lcom/huawei/hms/support/api/entity/auth/Scope;

    .line 129
    .line 130
    invoke-direct {v6, v5}, Lcom/huawei/hms/support/api/entity/auth/Scope;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    iput-object v3, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->grantedScopes:Ljava/util/Set;

    .line 140
    .line 141
    :cond_3
    const-string v0, "unionId"

    .line 142
    .line 143
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->unionId:Ljava/lang/String;

    .line 148
    .line 149
    const-string v0, "email"

    .line 150
    .line 151
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->email:Ljava/lang/String;

    .line 156
    .line 157
    const-string v0, "idToken"

    .line 158
    .line 159
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->idToken:Ljava/lang/String;

    .line 164
    .line 165
    const-wide/16 v3, 0x0

    .line 166
    .line 167
    iput-wide v3, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->expirationTimeSecs:J

    .line 168
    .line 169
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const-string v3, "expirationTimeSecs"

    .line 174
    .line 175
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_4

    .line 180
    .line 181
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 186
    .line 187
    .line 188
    move-result-wide v3

    .line 189
    iput-wide v3, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->expirationTimeSecs:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :catch_0
    const-string v0, "[AccountSDK]AbstractAuthAccount"

    .line 193
    .line 194
    const-string v3, "NumberFormatException"

    .line 195
    .line 196
    const/4 v4, 0x1

    .line 197
    invoke-static {v0, v3, v4}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 198
    .line 199
    .line 200
    :cond_4
    :goto_2
    const-string v0, "givenName"

    .line 201
    .line 202
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->givenName:Ljava/lang/String;

    .line 207
    .line 208
    const-string v0, "familyName"

    .line 209
    .line 210
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->familyName:Ljava/lang/String;

    .line 215
    .line 216
    const-string v0, "ageRange"

    .line 217
    .line 218
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->ageRange:Ljava/lang/String;

    .line 223
    .line 224
    const-string v0, "homeZone"

    .line 225
    .line 226
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    iput v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->homeZone:I

    .line 231
    .line 232
    const-string v0, "carrierId"

    .line 233
    .line 234
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    iput p1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->carrierId:I

    .line 239
    .line 240
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->uid:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->openId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->displayName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->photoUriString:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->accessToken:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->status:I

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->gender:I

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->serverAuthCode:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->serviceCountryCode:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->countryCode:Ljava/lang/String;

    .line 60
    .line 61
    const-class v0, Lcom/huawei/hms/support/api/entity/auth/Scope;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Ljava/util/HashSet;

    .line 72
    .line 73
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->grantedScopes:Ljava/util/Set;

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->unionId:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->email:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->idToken:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    iput-wide v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->expirationTimeSecs:J

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->givenName:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->familyName:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->ageRange:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    iput v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->homeZone:I

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    iput p1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->carrierId:I

    .line 131
    .line 132
    return-void
.end method

.method public requestExtraScopes(Ljava/util/List;)Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;)",
            "Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lib/q;->b(Ljava/util/Collection;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->extensionScopes:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object p0
.end method

.method public setAgeRange(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->ageRange:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAvatarUriString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->photoUriString:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCarrierId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->carrierId:I

    .line 2
    .line 3
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->email:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExpirationTimeSecs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->expirationTimeSecs:J

    .line 2
    .line 3
    return-void
.end method

.method public setExtensionScopes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->extensionScopes:Ljava/util/Set;

    .line 2
    .line 3
    return-void
.end method

.method public setFamilyName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->familyName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGivenName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->givenName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHomeZone(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->homeZone:I

    .line 2
    .line 3
    return-void
.end method

.method public setIdToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->idToken:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->toJsonObject()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getUid()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "uid"

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getUid()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getOpenId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const-string v1, "openId"

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getOpenId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAvatarUriString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    const-string v1, "photoUriString"

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAvatarUriString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAccessToken()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    const-string v1, "accessToken"

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAccessToken()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getDisplayName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    const-string v1, "displayName"

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getDisplayName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    :cond_4
    const-string v1, "status"

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getStatus()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    const-string v1, "gender"

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getGender()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getCountryCode()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    const-string v1, "countryCode"

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getCountryCode()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    .line 113
    .line 114
    :cond_5
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getUnionId()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    if-eqz v1, :cond_6

    .line 119
    .line 120
    const-string v1, "unionId"

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getUnionId()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    .line 128
    .line 129
    :cond_6
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getEmail()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    if-eqz v1, :cond_7

    .line 134
    .line 135
    const-string v1, "email"

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getEmail()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    .line 143
    .line 144
    :cond_7
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAuthorizationCode()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    if-eqz v1, :cond_8

    .line 149
    .line 150
    const-string v1, "serverAuthCode"

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAuthorizationCode()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    .line 158
    .line 159
    :cond_8
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getServiceCountryCode()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    if-eqz v1, :cond_9

    .line 164
    .line 165
    const-string v1, "serviceCountryCode"

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getServiceCountryCode()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    .line 173
    .line 174
    :cond_9
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getIdToken()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    if-eqz v1, :cond_a

    .line 179
    .line 180
    const-string v1, "idToken"

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getIdToken()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    .line 188
    .line 189
    :cond_a
    const-string v1, "expirationTimeSecs"

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getExpirationTimeSecs()J

    .line 192
    .line 193
    .line 194
    move-result-wide v2

    .line 195
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getGivenName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    if-eqz v1, :cond_b

    .line 203
    .line 204
    const-string v1, "givenName"

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getGivenName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    .line 212
    .line 213
    :cond_b
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getFamilyName()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    if-eqz v1, :cond_c

    .line 218
    .line 219
    const-string v1, "familyName"

    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getFamilyName()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    .line 227
    .line 228
    :cond_c
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAgeRange()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    if-eqz v1, :cond_d

    .line 233
    .line 234
    const-string v1, "ageRange"

    .line 235
    .line 236
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAgeRange()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    .line 242
    .line 243
    :cond_d
    const-string v1, "homeZone"

    .line 244
    .line 245
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getHomeZone()I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 250
    .line 251
    .line 252
    const-string v1, "carrierId"

    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getCarrierId()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0, v0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->jsonPutScopes(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {p0, v0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->jsonPutOpt(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "{uid: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->uid:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x2c

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "displayName: "

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->displayName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, "photoUriString: "

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->photoUriString:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, "status: "

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->status:I

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, "gender: "

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget v2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->gender:I

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v2, "serviceCountryCode: "

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->serviceCountryCode:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, "countryCode: "

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->countryCode:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const/16 v1, 0x7d

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->uid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->openId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->displayName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->photoUriString:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->accessToken:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->status:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget p2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->gender:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->serverAuthCode:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->serviceCountryCode:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->countryCode:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance p2, Ljava/util/ArrayList;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->grantedScopes:Ljava/util/Set;

    .line 54
    .line 55
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->unionId:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->email:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->idToken:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-wide v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->expirationTimeSecs:J

    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->givenName:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->familyName:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->ageRange:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget p2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->homeZone:I

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    .line 100
    .line 101
    iget p2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->carrierId:I

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    .line 105
    .line 106
    return-void
.end method
