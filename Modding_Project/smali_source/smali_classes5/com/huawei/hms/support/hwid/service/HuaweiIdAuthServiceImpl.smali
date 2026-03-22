.class public Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthServiceImpl;
.super Lcom/huawei/hms/common/HuaweiApi;
.source "HuaweiIdAuthServiceImpl.java"

# interfaces
.implements Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/common/HuaweiApi<",
        "Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;",
        ">;",
        "Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthService;"
    }
.end annotation


# static fields
.field private static final HUAWEI_ID_AUTH_API:Lcom/huawei/hms/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/api/Api<",
            "Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;",
            ">;"
        }
    .end annotation
.end field

.field protected static final TAG:Ljava/lang/String; = "[HUAWEIIDSDK]HuaweiIdAuthService"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mFromRequestToken:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hms/api/Api;

    .line 2
    .line 3
    const-string v1, "HuaweiID.API"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/huawei/hms/api/Api;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthServiceImpl;->HUAWEI_ID_AUTH_API:Lcom/huawei/hms/api/Api;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;I)V
    .locals 6

    .line 1
    sget-object v2, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthServiceImpl;->HUAWEI_ID_AUTH_API:Lcom/huawei/hms/api/Api;

    new-instance v4, Lib/o0;

    invoke-direct {v4}, Lib/o0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/common/HuaweiApi;-><init>(Landroid/app/Activity;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;Ljava/lang/String;I)V
    .locals 6

    .line 6
    sget-object v2, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthServiceImpl;->HUAWEI_ID_AUTH_API:Lcom/huawei/hms/api/Api;

    new-instance v4, Lib/o0;

    invoke-direct {v4}, Lib/o0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/common/HuaweiApi;-><init>(Landroid/app/Activity;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;I)V

    .line 7
    iput-object p3, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthServiceImpl;->mAccountName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthServiceImpl;->mFromRequestToken:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;I)V
    .locals 6

    .line 2
    sget-object v2, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthServiceImpl;->HUAWEI_ID_AUTH_API:Lcom/huawei/hms/api/Api;

    new-instance v4, Lib/o0;

    invoke-direct {v4}, Lib/o0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/common/HuaweiApi;-><init>(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;Ljava/lang/String;I)V
    .locals 6

    .line 3
    sget-object v2, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthServiceImpl;->HUAWEI_ID_AUTH_API:Lcom/huawei/hms/api/Api;

    new-instance v4, Lib/o0;

    invoke-direct {v4}, Lib/o0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/common/HuaweiApi;-><init>(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;I)V

    .line 4
    iput-object p3, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthServiceImpl;->mAccountName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthServiceImpl;->mFromRequestToken:Z

    return-void
.end method

.method private setSignInParams(Ljava/lang/String;)Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;
    .locals 4

    .line 1
    const-string v0, "[HUAWEIIDSDK]HuaweiIdAuthService"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getOption()Lcom/huawei/hms/api/Api$ApiOptions;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    .line 14
    .line 15
    :try_start_1
    invoke-virtual {v1}, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;->clone()Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;

    .line 16
    .line 17
    .line 18
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 19
    invoke-virtual {v0, p1}, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;->setSignInParams(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :catch_0
    const-string p1, "CloneNotSupportedException"

    .line 24
    .line 25
    invoke-static {v0, p1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :catch_1
    const-string p1, "JSONException"

    .line 30
    .line 31
    invoke-static {v0, p1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    return-object v1
.end method


# virtual methods
.method public cancelAuthorization()Lua/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lua/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "hwid.revokeAccess"

    .line 2
    .line 3
    const-string v1, "[HUAWEIIDSDK]HuaweiIdAuthService"

    .line 4
    .line 5
    const-string v2, "cancelAuthorization"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v1, v2, v3}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getOption()Lcom/huawei/hms/api/Api$ApiOptions;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;

    .line 21
    .line 22
    invoke-virtual {v2, v4}, Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;->setHuaweiIdAuthParams(Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {v2}, Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;->toJson()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const v5, 0x3a14304

    .line 34
    .line 35
    .line 36
    invoke-static {v4, v0, v5}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportEntry(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    new-instance v5, Lib/s0;

    .line 41
    .line 42
    invoke-direct {v5, v0, v2, v4}, Lib/s0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v5}, Lcom/huawei/hms/common/HuaweiApi;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lua/f;

    .line 46
    .line 47
    .line 48
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-object v0

    .line 50
    :catch_0
    const-string v0, "JSONException, errorcode is:2015"

    .line 51
    .line 52
    invoke-static {v1, v0, v3}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lua/g;

    .line 56
    .line 57
    invoke-direct {v0}, Lua/g;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v1, Lcom/huawei/hms/support/api/client/Status;

    .line 61
    .line 62
    const/16 v2, 0x7df

    .line 63
    .line 64
    invoke-direct {v1, v2}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    .line 65
    .line 66
    .line 67
    new-instance v2, Lcom/huawei/hms/common/ApiException;

    .line 68
    .line 69
    invoke-direct {v2, v1}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lua/g;->a()Lua/f;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    return-object v0
.end method

.method public getApiLevel()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public getSignInIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthServiceImpl;->getSignInIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getSignInIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 2
    const-string v0, "getSignInIntent"

    const/4 v1, 0x1

    const-string v2, "[HUAWEIIDSDK]HuaweiIdAuthService"

    invoke-static {v2, v0, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-direct {p0, p1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthServiceImpl;->setSignInParams(Ljava/lang/String;)Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getSubAppID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lib/q0;->a(Landroid/content/Context;Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public signOut()Lua/f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lua/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "signOut"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "[HUAWEIIDSDK]HuaweiIdAuthService"

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lib/q0;->d()V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/huawei/hms/support/api/entity/hwid/SignOutReq;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/hwid/SignOutReq;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const v2, 0x3a14304

    .line 22
    .line 23
    .line 24
    const-string v3, "hwid.signout"

    .line 25
    .line 26
    invoke-static {v1, v3, v2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportEntry(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lib/e;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/huawei/hms/support/api/entity/hwid/SignOutReq;->toJson()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {v2, v3, v0, v1}, Lib/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lcom/huawei/hms/common/HuaweiApi;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lua/f;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method public silentSignIn()Lua/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lua/f<",
            "Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthServiceImpl;->silentSignIn(Ljava/lang/String;)Lua/f;

    move-result-object v0

    return-object v0
.end method

.method public silentSignIn(Ljava/lang/String;)Lua/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lua/f<",
            "Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "hwid.silentSignIn"

    const-string v1, "[HUAWEIIDSDK]HuaweiIdAuthService"

    const-string v2, "silentSignIn"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    new-instance v2, Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;

    invoke-direct {v2}, Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;-><init>()V

    .line 4
    invoke-direct {p0, p1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthServiceImpl;->setSignInParams(Ljava/lang/String;)Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;

    move-result-object p1

    .line 5
    invoke-virtual {v2, p1}, Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;->setHuaweiIdAuthParams(Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;)V

    .line 6
    iget-boolean p1, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthServiceImpl;->mFromRequestToken:Z

    if-eqz p1, :cond_0

    .line 7
    new-instance v4, Lcom/huawei/hms/support/api/hwid/HuaweiIdGetTokenOptions;

    iget-object v5, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthServiceImpl;->mAccountName:Ljava/lang/String;

    invoke-direct {v4, v5, p1}, Lcom/huawei/hms/support/api/hwid/HuaweiIdGetTokenOptions;-><init>(Ljava/lang/String;Z)V

    .line 8
    invoke-virtual {v2, v4}, Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;->setHuaweiIdGetTokenOptions(Lcom/huawei/hms/support/api/hwid/HuaweiIdGetTokenOptions;)V

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;->toJson()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x3a14304

    invoke-static {v2, v0, v4}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportEntry(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-boolean v4, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthServiceImpl;->mFromRequestToken:Z

    if-eqz v4, :cond_1

    .line 12
    new-instance v4, Lib/c;

    invoke-direct {v4, v0, p1, v2}, Lib/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/huawei/hms/common/HuaweiApi;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lua/f;

    move-result-object p1

    return-object p1

    .line 13
    :cond_1
    new-instance v4, Lib/d;

    invoke-direct {v4, v0, p1, v2}, Lib/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/huawei/hms/common/HuaweiApi;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lua/f;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 14
    :catch_0
    const-string p1, "JSONException, errorcode is:2015"

    invoke-static {v1, p1, v3}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    new-instance p1, Lua/g;

    invoke-direct {p1}, Lua/g;-><init>()V

    .line 16
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    const/16 v1, 0x7df

    invoke-direct {v0, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    .line 17
    new-instance v1, Lcom/huawei/hms/common/ApiException;

    invoke-direct {v1, v0}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    invoke-virtual {p1, v1}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 18
    invoke-virtual {p1}, Lua/g;->a()Lua/f;

    move-result-object p1

    return-object p1
.end method
