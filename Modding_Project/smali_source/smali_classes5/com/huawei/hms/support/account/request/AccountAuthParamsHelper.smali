.class public Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;
.super Lcom/huawei/hms/support/feature/request/AbstractAuthParamsHelper;
.source "AccountAuthParamsHelper.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/support/feature/request/AbstractAuthParamsHelper;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->a:Ljava/lang/String;

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->b:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->c:Z

    .line 5
    iput-boolean v0, p0, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hms/support/account/request/AccountAuthParams;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/huawei/hms/support/feature/request/AbstractAuthParamsHelper;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->a:Ljava/lang/String;

    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->b:I

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->c:Z

    .line 10
    iput-boolean v0, p0, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->d:Z

    .line 11
    iget-object v0, p0, Lcom/huawei/hms/support/feature/request/AbstractAuthParamsHelper;->signInScopes:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/huawei/hms/support/feature/request/AbstractAuthParams;->getRequestScopeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object v0, p0, Lcom/huawei/hms/support/feature/request/AbstractAuthParamsHelper;->permissionSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/huawei/hms/support/feature/request/AbstractAuthParams;->getPermissionInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public createParams()Lcom/huawei/hms/support/account/request/AccountAuthParams;
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
    const-string v1, "sessionId"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "idTokenSignAlg"

    .line 14
    .line 15
    iget v2, p0, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->b:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "needForceRefresh"

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->c:Z

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "needConsent"

    .line 28
    .line 29
    iget-boolean v2, p0, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->d:Z

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    new-instance v1, Lcom/huawei/hms/support/account/request/AccountAuthParams;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/huawei/hms/support/feature/request/AbstractAuthParamsHelper;->signInScopes:Ljava/util/Set;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/huawei/hms/support/feature/request/AbstractAuthParamsHelper;->permissionSet:Ljava/util/Set;

    .line 39
    .line 40
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {v1, v2, v3, v0}, Lcom/huawei/hms/support/account/request/AccountAuthParams;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v2, "JSONException\uff1a"

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const/4 v1, 0x1

    .line 75
    const-string v2, "AccountAuthParamsHelper"

    .line 76
    .line 77
    invoke-static {v2, v0, v1}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Lcom/huawei/hms/support/account/request/AccountAuthParams;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/huawei/hms/support/feature/request/AbstractAuthParamsHelper;->signInScopes:Ljava/util/Set;

    .line 83
    .line 84
    iget-object v2, p0, Lcom/huawei/hms/support/feature/request/AbstractAuthParamsHelper;->permissionSet:Ljava/util/Set;

    .line 85
    .line 86
    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/support/account/request/AccountAuthParams;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 87
    .line 88
    .line 89
    return-object v0
.end method

.method public setAccessToken()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "https://www.huawei.com/auth/account/base.profile/accesstoken"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->setPermissionUri(Ljava/lang/String;)Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/huawei/hms/support/feature/request/AbstractAuthParamsHelper;->permissionSet:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public setAssistToken()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.huawei.hms.account.getAssistToken"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->setPermissionUri(Ljava/lang/String;)Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/huawei/hms/support/feature/request/AbstractAuthParamsHelper;->permissionSet:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/huawei/hms/support/api/entity/auth/Scope;

    .line 17
    .line 18
    const-string v1, "https://www.huawei.com/auth/account/assisttoken"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/huawei/hms/support/api/entity/auth/Scope;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/huawei/hms/support/feature/request/AbstractAuthParamsHelper;->signInScopes:Ljava/util/Set;

    .line 24
    .line 25
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-object p0
.end method

.method public setAuthorizationCode()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "https://www.huawei.com/auth/account/base.profile/serviceauthcode"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->setPermissionUri(Ljava/lang/String;)Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/huawei/hms/support/feature/request/AbstractAuthParamsHelper;->permissionSet:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public setCarrierId()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "https://www.huawei.com/auth/account/carrierid"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->setPermissionUri(Ljava/lang/String;)Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/huawei/hms/support/feature/request/AbstractAuthParamsHelper;->permissionSet:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public setDialogAuth()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-object p0
.end method

.method public setEmail()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/support/feature/request/AbstractAuthParams;->EMAIL:Lcom/huawei/hms/support/api/entity/auth/Scope;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->setScope(Lcom/huawei/hms/support/api/entity/auth/Scope;)Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public setForceLogout()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setForceLogout"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->setPermissionUri(Ljava/lang/String;)Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/huawei/hms/support/feature/request/AbstractAuthParamsHelper;->permissionSet:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public setForceRefresh()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->c:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public setId()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/support/feature/request/AbstractAuthParams;->OPENID:Lcom/huawei/hms/support/api/entity/auth/Scope;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->setScope(Lcom/huawei/hms/support/api/entity/auth/Scope;)Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public setIdToken()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "idtoken"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->setPermissionUri(Ljava/lang/String;)Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/huawei/hms/support/feature/request/AbstractAuthParamsHelper;->permissionSet:Ljava/util/Set;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public setIdTokenSignAlg(I)Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->b:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setMobileNumber()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->setAccessToken()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->setId()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/huawei/hms/support/api/entity/auth/Scope;

    .line 8
    .line 9
    const-string v1, "https://www.huawei.com/auth/account/mobile.number"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/huawei/hms/support/api/entity/auth/Scope;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->setScope(Lcom/huawei/hms/support/api/entity/auth/Scope;)Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public setNeedConsent()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->d:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public setProfile()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/support/feature/request/AbstractAuthParams;->PROFILE:Lcom/huawei/hms/support/api/entity/auth/Scope;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->setScope(Lcom/huawei/hms/support/api/entity/auth/Scope;)Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected setScope(Lcom/huawei/hms/support/api/entity/auth/Scope;)Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/feature/request/AbstractAuthParamsHelper;->signInScopes:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setScopeList(Ljava/util/List;)Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;)",
            "Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;"
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
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/huawei/hms/support/api/entity/auth/Scope;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/huawei/hms/support/api/entity/auth/Scope;->getScopeUri()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Lcom/huawei/hms/support/feature/request/AbstractAuthParamsHelper;->signInScopes:Ljava/util/Set;

    .line 36
    .line 37
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUid()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/feature/request/AbstractAuthParamsHelper;->permissionSet:Ljava/util/Set;

    .line 2
    .line 3
    sget-object v1, Lcom/huawei/hms/support/feature/request/AbstractAuthParams;->UID_DYNAMIC_PERMISSION:Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-object p0
.end method
