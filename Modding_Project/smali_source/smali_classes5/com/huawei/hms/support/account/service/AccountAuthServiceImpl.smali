.class public Lcom/huawei/hms/support/account/service/AccountAuthServiceImpl;
.super Lcom/huawei/hms/common/HuaweiApi;
.source "AccountAuthServiceImpl.java"

# interfaces
.implements Lcom/huawei/hms/support/account/service/AccountAuthService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/common/HuaweiApi<",
        "Lcom/huawei/hms/support/account/request/AccountAuthParams;",
        ">;",
        "Lcom/huawei/hms/support/account/service/AccountAuthService;"
    }
.end annotation


# static fields
.field private static final ACCOUNT_AUTH_API:Lcom/huawei/hms/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/api/Api<",
            "Lcom/huawei/hms/support/account/request/AccountAuthParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final ONE_WEEK_MILLISECOND:Ljava/lang/Long;

.field protected static final TAG:Ljava/lang/String; = "[ACCOUNT]AccountAuthServiceImpl"


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
    const-string v1, "AuthAccount.API"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/huawei/hms/api/Api;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/huawei/hms/support/account/service/AccountAuthServiceImpl;->ACCOUNT_AUTH_API:Lcom/huawei/hms/api/Api;

    .line 9
    .line 10
    const-wide/32 v0, 0x240c8400

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/huawei/hms/support/account/service/AccountAuthServiceImpl;->ONE_WEEK_MILLISECOND:Ljava/lang/Long;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/huawei/hms/support/account/request/AccountAuthParams;I)V
    .locals 6

    .line 1
    sget-object v2, Lcom/huawei/hms/support/account/service/AccountAuthServiceImpl;->ACCOUNT_AUTH_API:Lcom/huawei/hms/api/Api;

    new-instance v4, Lib/w;

    invoke-direct {v4}, Lib/w;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/common/HuaweiApi;-><init>(Landroid/app/Activity;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/huawei/hms/support/account/request/AccountAuthParams;Ljava/lang/String;I)V
    .locals 6

    .line 6
    sget-object v2, Lcom/huawei/hms/support/account/service/AccountAuthServiceImpl;->ACCOUNT_AUTH_API:Lcom/huawei/hms/api/Api;

    new-instance v4, Lib/w;

    invoke-direct {v4}, Lib/w;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/common/HuaweiApi;-><init>(Landroid/app/Activity;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;I)V

    .line 7
    iput-object p3, p0, Lcom/huawei/hms/support/account/service/AccountAuthServiceImpl;->mAccountName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/huawei/hms/support/account/service/AccountAuthServiceImpl;->mFromRequestToken:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/support/account/request/AccountAuthParams;I)V
    .locals 6

    .line 2
    sget-object v2, Lcom/huawei/hms/support/account/service/AccountAuthServiceImpl;->ACCOUNT_AUTH_API:Lcom/huawei/hms/api/Api;

    new-instance v4, Lib/w;

    invoke-direct {v4}, Lib/w;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/common/HuaweiApi;-><init>(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/support/account/request/AccountAuthParams;Ljava/lang/String;I)V
    .locals 6

    .line 3
    sget-object v2, Lcom/huawei/hms/support/account/service/AccountAuthServiceImpl;->ACCOUNT_AUTH_API:Lcom/huawei/hms/api/Api;

    new-instance v4, Lib/w;

    invoke-direct {v4}, Lib/w;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/common/HuaweiApi;-><init>(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;I)V

    .line 4
    iput-object p3, p0, Lcom/huawei/hms/support/account/service/AccountAuthServiceImpl;->mAccountName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/huawei/hms/support/account/service/AccountAuthServiceImpl;->mFromRequestToken:Z

    return-void
.end method

.method private checkIdTokenSignAlg(Lcom/huawei/hms/support/account/request/AccountAuthParams;)Z
    .locals 5

    .line 1
    const-string v0, "[ACCOUNT]AccountAuthServiceImpl"

    .line 2
    .line 3
    const-string v1, "checkIdTokenSignAlg"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "accountAuthParams is null"

    .line 13
    .line 14
    invoke-static {v0, p1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/request/AccountAuthParams;->getSignInParams()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 23
    .line 24
    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string p1, "idTokenSignAlg"

    .line 28
    .line 29
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    if-eq p1, v2, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    if-ne p1, v0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v2, v1

    .line 40
    :cond_2
    :goto_0
    return v2

    .line 41
    :catch_0
    move-exception p1

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v4, "JSONException:"

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v0, p1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    return v1
.end method

.method private doWriteGetAssistToken(Lcom/huawei/hms/support/api/entity/account/GetAssistTokenRequest;)Lua/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/support/api/entity/account/GetAssistTokenRequest;",
            ")",
            "Lua/f<",
            "Lcom/huawei/hms/support/account/result/AssistTokenResult;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "hwid.getAssistToken"

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/entity/account/GetAssistTokenRequest;->toJson()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const v2, 0x3a14304

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0, v2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportEntry(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lib/i0;

    .line 19
    .line 20
    invoke-direct {v2, v0, p1, v1}, Lib/i0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v2}, Lcom/huawei/hms/common/HuaweiApi;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lua/f;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object p1

    .line 28
    :catch_0
    const-string p1, "JSONException\uff0c errorcode is:2015"

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    const-string v1, "[ACCOUNT]AccountAuthServiceImpl"

    .line 32
    .line 33
    invoke-static {v1, p1, v0}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Lua/g;

    .line 37
    .line 38
    invoke-direct {p1}, Lua/g;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    .line 42
    .line 43
    const/16 v1, 0x7df

    .line 44
    .line 45
    invoke-direct {v0, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/huawei/hms/common/ApiException;

    .line 49
    .line 50
    invoke-direct {v1, v0}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lua/g;->a()Lua/f;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method private stringToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    const-string v0, "[ACCOUNT]AccountAuthServiceImpl"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    array-length v3, p1

    .line 10
    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception p1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "stringToBitmap Exception is "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v0, p1, v1}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_1
    const-string p1, "out of memory error "

    .line 46
    .line 47
    invoke-static {v0, p1, v1}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    :goto_0
    const/4 p1, 0x0

    .line 51
    :goto_1
    return-object p1
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
    const-string v0, "[ACCOUNT]AccountAuthServiceImpl"

    .line 2
    .line 3
    const-string v1, "cancelAuthorization"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getOption()Lcom/huawei/hms/api/Api$ApiOptions;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/huawei/hms/support/account/request/AccountAuthParams;

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;->setAccountAuthParams(Lcom/huawei/hms/support/account/request/AccountAuthParams;)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    const-string v3, "account.revokeAccess"

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;->toJson()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

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
    invoke-static {v4, v3, v5}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportEntry(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    new-instance v5, Lib/a0;

    .line 41
    .line 42
    invoke-direct {v5, v3, v1, v4}, Lib/a0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    const-string v1, "JSONException, errorcode is:2015"

    .line 51
    .line 52
    invoke-static {v0, v1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

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
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getOption()Lcom/huawei/hms/api/Api$ApiOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/huawei/hms/support/account/request/AccountAuthParams;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/huawei/hms/support/feature/request/AbstractAuthParams;->getPermissionInfos()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->getPermission()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    const-string v3, "https://www.huawei.com/auth/account/carrierid"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    const-string v0, "[ACCOUNT]AccountAuthServiceImpl"

    .line 53
    .line 54
    const-string v2, "permissioninfos contain carrierId and silentSignIn setApiLevel is 13"

    .line 55
    .line 56
    invoke-static {v0, v2, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    const/16 v0, 0xd

    .line 60
    .line 61
    return v0

    .line 62
    :cond_1
    return v1
.end method

.method public getAssistToken(Lcom/huawei/hms/support/api/entity/account/GetAssistTokenRequest;)Lua/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/support/api/entity/account/GetAssistTokenRequest;",
            ")",
            "Lua/f<",
            "Lcom/huawei/hms/support/account/result/AssistTokenResult;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "getAssistToken"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "[ACCOUNT]AccountAuthServiceImpl"

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/huawei/hms/support/account/service/AccountAuthServiceImpl;->doWriteGetAssistToken(Lcom/huawei/hms/support/api/entity/account/GetAssistTokenRequest;)Lua/f;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getChannel()Lua/f;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lua/f<",
            "Lcom/huawei/hms/support/account/result/AccountIcon;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "[ACCOUNT]AccountAuthServiceImpl"

    .line 4
    .line 5
    const-string v2, "getChannel"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v1, v2, v3}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/common/HuaweiApi;->getOption()Lcom/huawei/hms/api/Api$ApiOptions;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lcom/huawei/hms/support/account/request/AccountAuthParams;

    .line 21
    .line 22
    invoke-virtual {v2, v4}, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;->setAccountAuthParams(Lcom/huawei/hms/support/account/request/AccountAuthParams;)V

    .line 23
    .line 24
    .line 25
    const-string v4, "account.getChannel"

    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const-string v6, "ACCOUNT_CHANNEL_CACHE"

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const-string v8, "icon"

    .line 39
    .line 40
    const-string v9, ""

    .line 41
    .line 42
    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    const-string v10, "desc"

    .line 47
    .line 48
    invoke-interface {v6, v10, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    const-string v10, "cache_time"

    .line 53
    .line 54
    const-wide/16 v11, 0x0

    .line 55
    .line 56
    invoke-interface {v6, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v13

    .line 60
    invoke-static {}, Lib/p;->a()J

    .line 61
    .line 62
    .line 63
    move-result-wide v15

    .line 64
    cmp-long v6, v13, v11

    .line 65
    .line 66
    if-eqz v6, :cond_0

    .line 67
    .line 68
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-nez v6, :cond_0

    .line 73
    .line 74
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-nez v6, :cond_0

    .line 79
    .line 80
    sub-long/2addr v15, v13

    .line 81
    sget-object v6, Lcom/huawei/hms/support/account/service/AccountAuthServiceImpl;->ONE_WEEK_MILLISECOND:Ljava/lang/Long;

    .line 82
    .line 83
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 84
    .line 85
    .line 86
    move-result-wide v10

    .line 87
    cmp-long v6, v15, v10

    .line 88
    .line 89
    if-gez v6, :cond_0

    .line 90
    .line 91
    invoke-direct {v0, v8}, Lcom/huawei/hms/support/account/service/AccountAuthServiceImpl;->stringToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    new-instance v2, Lcom/huawei/hms/support/account/result/AccountIcon;

    .line 96
    .line 97
    invoke-direct {v2, v9, v1}, Lcom/huawei/hms/support/account/result/AccountIcon;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 98
    .line 99
    .line 100
    new-instance v1, Lua/g;

    .line 101
    .line 102
    invoke-direct {v1}, Lua/g;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Lua/g;->c(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    new-instance v2, Lcom/huawei/hms/support/api/client/Status;

    .line 109
    .line 110
    invoke-direct {v2, v7}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    .line 111
    .line 112
    .line 113
    new-instance v3, Lcom/huawei/hms/common/ApiException;

    .line 114
    .line 115
    invoke-direct {v3, v2}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v3}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Lua/g;->a()Lua/f;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    return-object v1

    .line 126
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;->toJson()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    const v7, 0x3a14304

    .line 135
    .line 136
    .line 137
    invoke-static {v6, v4, v7}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportEntry(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    new-instance v7, Lib/b0;

    .line 142
    .line 143
    invoke-direct {v7, v4, v2, v6, v5}, Lib/b0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v7}, Lcom/huawei/hms/common/HuaweiApi;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lua/f;

    .line 147
    .line 148
    .line 149
    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    return-object v1

    .line 151
    :catch_0
    const-string v2, "JSONException, errorcode is:2015"

    .line 152
    .line 153
    invoke-static {v1, v2, v3}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 154
    .line 155
    .line 156
    new-instance v1, Lua/g;

    .line 157
    .line 158
    invoke-direct {v1}, Lua/g;-><init>()V

    .line 159
    .line 160
    .line 161
    new-instance v2, Lcom/huawei/hms/support/api/client/Status;

    .line 162
    .line 163
    const/16 v3, 0x7df

    .line 164
    .line 165
    invoke-direct {v2, v3}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    .line 166
    .line 167
    .line 168
    new-instance v3, Lcom/huawei/hms/common/ApiException;

    .line 169
    .line 170
    invoke-direct {v3, v2}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v3}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Lua/g;->a()Lua/f;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    return-object v1
.end method

.method public getIndependentSignInIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 1
    const-string v0, "getIndependentSignInIntent"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "[ACCOUNT]AccountAuthServiceImpl"

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getOption()Lcom/huawei/hms/api/Api$ApiOptions;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/huawei/hms/support/account/request/AccountAuthParams;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getSubAppID()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v0, v1, v2, p1}, Lib/y;->c(Landroid/content/Context;Lcom/huawei/hms/support/account/request/AccountAuthParams;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public getSignInIntent()Landroid/content/Intent;
    .locals 3

    .line 1
    const-string v0, "getSignInIntent"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "[ACCOUNT]AccountAuthServiceImpl"

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getOption()Lcom/huawei/hms/api/Api$ApiOptions;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/huawei/hms/support/account/request/AccountAuthParams;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getSubAppID()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v0, v1, v2}, Lib/y;->a(Landroid/content/Context;Lcom/huawei/hms/support/account/request/AccountAuthParams;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public logout()Lua/f;
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
    const-string v0, "[ACCOUNT]AccountAuthServiceImpl"

    .line 2
    .line 3
    const-string v1, "logout"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/huawei/hms/support/api/entity/account/AccountLogoutRequest;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/huawei/hms/support/api/entity/account/AccountLogoutRequest;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getOption()Lcom/huawei/hms/api/Api$ApiOptions;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/huawei/hms/support/account/request/AccountAuthParams;

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;->setAccountAuthParams(Lcom/huawei/hms/support/account/request/AccountAuthParams;)V

    .line 21
    .line 22
    .line 23
    const-string v3, "hwid.logout"

    .line 24
    .line 25
    :try_start_0
    invoke-virtual {v1}, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;->toJson()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

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
    invoke-static {v4, v3, v5}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportEntry(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    new-instance v5, Lib/c0;

    .line 41
    .line 42
    invoke-direct {v5, v3, v1, v4}, Lib/c0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    const-string v1, "JSONException, errorcode is:2015"

    .line 51
    .line 52
    invoke-static {v0, v1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

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
    const-string v2, "[ACCOUNT]AccountAuthServiceImpl"

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lib/y;->f()V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/huawei/hms/support/api/entity/account/AccountSignOutReq;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/account/AccountSignOutReq;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "hwid.signout"

    .line 22
    .line 23
    const v3, 0x3a14304

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2, v3}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportEntry(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lib/g0;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/huawei/hms/support/api/entity/account/AccountSignOutReq;->toJson()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v3, "account.signout"

    .line 37
    .line 38
    invoke-direct {v2, v3, v0, v1}, Lib/g0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Lcom/huawei/hms/common/HuaweiApi;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lua/f;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public silentSignIn()Lua/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lua/f<",
            "Lcom/huawei/hms/support/account/result/AuthAccount;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "[ACCOUNT]AccountAuthServiceImpl"

    .line 2
    .line 3
    const-string v1, "silentSignIn"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getOption()Lcom/huawei/hms/api/Api$ApiOptions;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/huawei/hms/support/account/request/AccountAuthParams;

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;->setAccountAuthParams(Lcom/huawei/hms/support/account/request/AccountAuthParams;)V

    .line 21
    .line 22
    .line 23
    iget-boolean v4, p0, Lcom/huawei/hms/support/account/service/AccountAuthServiceImpl;->mFromRequestToken:Z

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    new-instance v5, Lcom/huawei/hms/support/api/account/AccountGetTokenOptions;

    .line 28
    .line 29
    iget-object v6, p0, Lcom/huawei/hms/support/account/service/AccountAuthServiceImpl;->mAccountName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {v5, v6, v4}, Lcom/huawei/hms/support/api/account/AccountGetTokenOptions;-><init>(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v5}, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;->setAccountGetTokenOptions(Lcom/huawei/hms/support/api/account/AccountGetTokenOptions;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-direct {p0, v3}, Lcom/huawei/hms/support/account/service/AccountAuthServiceImpl;->checkIdTokenSignAlg(Lcom/huawei/hms/support/account/request/AccountAuthParams;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    const-string v1, "idTokenSignAlg is invalid"

    .line 44
    .line 45
    invoke-static {v0, v1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lua/g;

    .line 49
    .line 50
    invoke-direct {v0}, Lua/g;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v2, Lcom/huawei/hms/support/api/client/Status;

    .line 54
    .line 55
    const/16 v3, 0x7d3

    .line 56
    .line 57
    invoke-direct {v2, v3, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Lcom/huawei/hms/common/ApiException;

    .line 61
    .line 62
    invoke-direct {v1, v2}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lua/g;->a()Lua/f;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :cond_1
    const-string v3, "account.silentSignIn"

    .line 74
    .line 75
    :try_start_0
    invoke-virtual {v1}, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;->toJson()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    const v5, 0x3a14304

    .line 84
    .line 85
    .line 86
    invoke-static {v4, v3, v5}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportEntry(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    iget-boolean v5, p0, Lcom/huawei/hms/support/account/service/AccountAuthServiceImpl;->mFromRequestToken:Z

    .line 91
    .line 92
    if-eqz v5, :cond_2

    .line 93
    .line 94
    new-instance v5, Lib/e0;

    .line 95
    .line 96
    invoke-direct {v5, v3, v1, v4}, Lib/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v5}, Lcom/huawei/hms/common/HuaweiApi;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lua/f;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    return-object v0

    .line 104
    :cond_2
    new-instance v5, Lib/f0;

    .line 105
    .line 106
    invoke-direct {v5, v3, v1, v4}, Lib/f0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v5}, Lcom/huawei/hms/common/HuaweiApi;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lua/f;

    .line 110
    .line 111
    .line 112
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-object v0

    .line 114
    :catch_0
    const-string v1, "JSONException, errorcode is:2015"

    .line 115
    .line 116
    invoke-static {v0, v1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 117
    .line 118
    .line 119
    new-instance v0, Lua/g;

    .line 120
    .line 121
    invoke-direct {v0}, Lua/g;-><init>()V

    .line 122
    .line 123
    .line 124
    new-instance v1, Lcom/huawei/hms/support/api/client/Status;

    .line 125
    .line 126
    const/16 v2, 0x7df

    .line 127
    .line 128
    invoke-direct {v1, v2}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    .line 129
    .line 130
    .line 131
    new-instance v2, Lcom/huawei/hms/common/ApiException;

    .line 132
    .line 133
    invoke-direct {v2, v1}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v2}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Lua/g;->a()Lua/f;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    return-object v0
.end method

.method public startAssistLogin(Ljava/lang/String;)Lua/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lua/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "[ACCOUNT]AccountAuthServiceImpl"

    .line 2
    .line 3
    const-string v1, "startAssistLogin"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/huawei/hms/support/api/entity/account/AccountStartAssistLoginRequest;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Lcom/huawei/hms/support/api/entity/account/AccountStartAssistLoginRequest;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    const-string p1, "hwid.startAssistLogin"

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/huawei/hms/support/api/entity/account/AccountStartAssistLoginRequest;->toJson()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const v4, 0x3a14304

    .line 25
    .line 26
    .line 27
    invoke-static {v3, p1, v4}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportEntry(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    new-instance v4, Lib/h0;

    .line 32
    .line 33
    invoke-direct {v4, p1, v1, v3}, Lib/h0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v4}, Lcom/huawei/hms/common/HuaweiApi;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lua/f;

    .line 37
    .line 38
    .line 39
    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object p1

    .line 41
    :catch_0
    const-string p1, "JSONException, errorcode is:2015"

    .line 42
    .line 43
    invoke-static {v0, p1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lua/g;

    .line 47
    .line 48
    invoke-direct {p1}, Lua/g;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    .line 52
    .line 53
    const/16 v1, 0x7df

    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/huawei/hms/common/ApiException;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lua/g;->a()Lua/f;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method
