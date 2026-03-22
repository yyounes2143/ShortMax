.class public Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;
.super Landroid/app/Activity;
.source "AccountSignInHubActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;

.field private d:Lcom/huawei/hms/support/account/result/AccountAuthResult;

.field private e:Lib/u;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->a:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->b:Z

    .line 9
    .line 10
    iput-object v0, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->c:Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->d:Lcom/huawei/hms/support/account/result/AccountAuthResult;

    .line 13
    .line 14
    const-string v0, "hwid.signinintent"

    .line 15
    .line 16
    iput-object v0, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->g:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method private a(Lcom/huawei/hms/ui/SafeIntent;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const-string v0, "ACCESS_TOKEN"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/huawei/hms/ui/SafeIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->c:Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;->getAccountAuthParams()Lcom/huawei/hms/support/account/request/AccountAuthParams;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string p1, "accountAuthParams is null"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->f(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hms/support/feature/request/AbstractAuthParams;->getRequestScopeList()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    invoke-static {v0}, Lib/q;->a(Ljava/util/Collection;)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/4 v0, 0x1

    .line 48
    if-eq p1, v0, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-string p1, "hwid.independentsigninintent"

    .line 52
    .line 53
    iput-object p1, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->g:Ljava/lang/String;

    .line 54
    .line 55
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_2
    :goto_0
    const-string p1, "independent sign in params error"

    .line 59
    .line 60
    invoke-direct {p0, p1}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->f(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 64
    .line 65
    return-object p1
.end method

.method private b(I)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onSignInAccountFailed: retCode\uff1a"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "[ACCOUNTSDK]AccountSignInHubActivity"

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-static {v1, v0, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    iget-object v5, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->a:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->e:Lib/u;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v4, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->g:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0}, Lib/n;->a()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-static {p1}, Lib/s;->a(I)I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    iget-object v0, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->e:Lib/u;

    .line 43
    .line 44
    invoke-virtual {v0}, Lib/n;->c()J

    .line 45
    .line 46
    .line 47
    move-result-wide v8

    .line 48
    long-to-int v9, v8

    .line 49
    move-object v3, p0

    .line 50
    move v8, p1

    .line 51
    invoke-static/range {v3 .. v9}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportExit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 52
    .line 53
    .line 54
    :cond_0
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    .line 55
    .line 56
    invoke-direct {v0, p1}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Lcom/huawei/hms/support/account/result/AccountAuthResult;

    .line 60
    .line 61
    invoke-direct {p1}, Lcom/huawei/hms/support/account/result/AccountAuthResult;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/huawei/hms/support/api/client/Result;->setStatus(Lcom/huawei/hms/support/api/client/Status;)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Landroid/content/Intent;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    .line 71
    .line 72
    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/result/AccountAuthResult;->toJson()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string v3, "HUAWEIID_SIGNIN_RESULT"

    .line 77
    .line 78
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    const-string p1, "convert result to json failed"

    .line 83
    .line 84
    invoke-static {v1, p1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    .line 86
    .line 87
    :goto_0
    const/4 p1, 0x0

    .line 88
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method private c(ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "errMessage is: "

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 p2, 0x1

    .line 19
    const-string v0, "[ACCOUNTSDK]AccountSignInHubActivity"

    .line 20
    .line 21
    invoke-static {v0, p1, p2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method static synthetic d(Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->b(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onIndependentSignInFailed errMessage:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "[ACCOUNTSDK]AccountSignInHubActivity"

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-static {v1, v0, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    .line 25
    .line 26
    const/16 v3, 0x7d3

    .line 27
    .line 28
    invoke-direct {v0, v3, p1}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lcom/huawei/hms/support/account/result/AccountAuthResult;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/huawei/hms/support/account/result/AccountAuthResult;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/huawei/hms/support/api/client/Result;->setStatus(Lcom/huawei/hms/support/api/client/Status;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Landroid/content/Intent;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/result/AccountAuthResult;->toJson()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v3, "HUAWEIID_SIGNIN_RESULT"

    .line 49
    .line 50
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    const-string p1, "convert result to json failed"

    .line 55
    .line 56
    invoke-static {v1, p1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    :goto_0
    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private g(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "isActivityFullScreen is :"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    const-string v2, "[ACCOUNTSDK]AccountSignInHubActivity"

    .line 20
    .line 21
    invoke-static {v2, v0, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lib/y;->h(Landroid/view/Window;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/16 v0, 0x400

    .line 38
    .line 39
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p0}, Lib/y;->g(Landroid/app/Activity;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method private h()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->c:Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;->getAccountAuthParams()Lcom/huawei/hms/support/account/request/AccountAuthParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hms/support/account/request/AccountAuthParams;->getSignInParams()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v2, 0x1

    .line 16
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 17
    .line 18
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "idTokenSignAlg"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    if-eq v0, v2, :cond_1

    .line 29
    .line 30
    if-ne v0, v4, :cond_2

    .line 31
    .line 32
    :cond_1
    move v1, v2

    .line 33
    :cond_2
    return v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v4, "JSONException:"

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v3, "[ACCOUNTSDK]AccountSignInHubActivity"

    .line 61
    .line 62
    invoke-static {v3, v0, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    return v1
.end method

.method private i(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    const-string v1, "ANYTHING"

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :catch_0
    :goto_0
    return v0
.end method

.method private j()V
    .locals 3

    .line 1
    const-string v0, "checkMinVersion start."

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "[ACCOUNTSDK]AccountSignInHubActivity"

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity$a;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity$a;-><init>(Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Lib/a;->b(Landroid/app/Activity;Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private k()V
    .locals 5

    .line 1
    const-string v0, "[ACCOUNTSDK]AccountSignInHubActivity"

    .line 2
    .line 3
    const-string v1, "startSignInActivity"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->l()Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :try_start_0
    iget v3, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->f:I

    .line 14
    .line 15
    if-ne v3, v2, :cond_0

    .line 16
    .line 17
    const/16 v3, 0x40cc

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v3, 0x40cb

    .line 21
    .line 22
    :goto_0
    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception v1

    .line 27
    iput-boolean v2, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->b:Z

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v4, "Launch sign in Intent failed. hms is probably being updated\uff1a"

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    const/16 v0, 0x11

    .line 58
    .line 59
    invoke-direct {p0, v0}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->b(I)V

    .line 60
    .line 61
    .line 62
    :goto_1
    return-void
.end method

.method private l()Landroid/content/Intent;
    .locals 9

    .line 1
    const-string v0, "[ACCOUNTSDK]AccountSignInHubActivity"

    .line 2
    .line 3
    const-string v1, "getJosSignInIntent"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v3, "HUAWEIID_CP_CLIENTINFO"

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "HUAWEIID_SIGNIN_REQUEST"

    .line 20
    .line 21
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v5, "exParams"

    .line 26
    .line 27
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    new-instance v7, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v8, "getJosSignInIntent. exParams is null "

    .line 37
    .line 38
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-static {v0, v7, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-nez v7, :cond_0

    .line 60
    .line 61
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    .line 62
    .line 63
    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v5

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v7, "getJosSignInIntent Exception "

    .line 81
    .line 82
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-static {v0, v5, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :try_start_1
    invoke-static {v3}, Lib/u;->j(Ljava/lang/String;)Lib/u;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    new-instance v5, Lcom/huawei/hms/activity/ForegroundIntentBuilder;

    .line 112
    .line 113
    invoke-direct {v5, p0}, Lcom/huawei/hms/activity/ForegroundIntentBuilder;-><init>(Landroid/app/Activity;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v1}, Lcom/huawei/hms/activity/ForegroundIntentBuilder;->setAction(Ljava/lang/String;)Lcom/huawei/hms/activity/ForegroundIntentBuilder;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1, v4}, Lcom/huawei/hms/activity/ForegroundIntentBuilder;->setRequestBody(Ljava/lang/String;)Lcom/huawei/hms/activity/ForegroundIntentBuilder;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const v4, 0x3a14304

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v4}, Lcom/huawei/hms/activity/ForegroundIntentBuilder;->setKitSdkVersion(I)Lcom/huawei/hms/activity/ForegroundIntentBuilder;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v3}, Lib/n;->e()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    if-eqz v4, :cond_1

    .line 136
    .line 137
    invoke-virtual {v3}, Lib/n;->e()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v1, v3}, Lcom/huawei/hms/activity/ForegroundIntentBuilder;->setSubAppId(Ljava/lang/String;)Lcom/huawei/hms/activity/ForegroundIntentBuilder;

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :catch_1
    move-exception v1

    .line 146
    goto :goto_2

    .line 147
    :cond_1
    :goto_1
    iget v3, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->f:I

    .line 148
    .line 149
    if-ne v3, v2, :cond_2

    .line 150
    .line 151
    const-string v3, "setApiLevel is 11"

    .line 152
    .line 153
    invoke-static {v0, v3, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 154
    .line 155
    .line 156
    const/16 v3, 0xb

    .line 157
    .line 158
    invoke-virtual {v1, v3}, Lcom/huawei/hms/activity/ForegroundIntentBuilder;->setApiLevel(I)Lcom/huawei/hms/activity/ForegroundIntentBuilder;

    .line 159
    .line 160
    .line 161
    :cond_2
    invoke-direct {p0}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->m()Ljava/lang/Boolean;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-eqz v3, :cond_3

    .line 170
    .line 171
    const-string v3, "setApiLevel is 13"

    .line 172
    .line 173
    invoke-static {v0, v3, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 174
    .line 175
    .line 176
    const/16 v3, 0xd

    .line 177
    .line 178
    invoke-virtual {v1, v3}, Lcom/huawei/hms/activity/ForegroundIntentBuilder;->setApiLevel(I)Lcom/huawei/hms/activity/ForegroundIntentBuilder;

    .line 179
    .line 180
    .line 181
    :cond_3
    invoke-direct {p0}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->n()Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_4

    .line 186
    .line 187
    const-string v3, "setApiLevel is 22"

    .line 188
    .line 189
    invoke-static {v0, v3, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 190
    .line 191
    .line 192
    const/16 v3, 0x16

    .line 193
    .line 194
    invoke-virtual {v1, v3}, Lcom/huawei/hms/activity/ForegroundIntentBuilder;->setApiLevel(I)Lcom/huawei/hms/activity/ForegroundIntentBuilder;

    .line 195
    .line 196
    .line 197
    :cond_4
    invoke-virtual {v1}, Lcom/huawei/hms/activity/ForegroundIntentBuilder;->build()Landroid/content/Intent;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v4, "get package name of hms is "

    .line 207
    .line 208
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-static {p0}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v4}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageName()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-static {v0, v3, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 227
    .line 228
    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    const-string v4, "current package name is "

    .line 235
    .line 236
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-static {v0, v3, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 258
    .line 259
    .line 260
    return-object v1

    .line 261
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string v4, "getSignInIntent failed because:"

    .line 267
    .line 268
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-static {v0, v1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 287
    .line 288
    .line 289
    new-instance v0, Landroid/content/Intent;

    .line 290
    .line 291
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 292
    .line 293
    .line 294
    return-object v0
.end method

.method private m()Ljava/lang/Boolean;
    .locals 5

    .line 1
    const-string v0, "[ACCOUNTSDK]AccountSignInHubActivity"

    .line 2
    .line 3
    const-string v1, "checkCarrierIdPermission begin"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->c:Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;->getAccountAuthParams()Lcom/huawei/hms/support/account/request/AccountAuthParams;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hms/support/feature/request/AbstractAuthParams;->getPermissionInfos()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lib/q;->b(Ljava/util/Collection;)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->getPermission()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    const-string v4, "https://www.huawei.com/auth/account/carrierid"

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    const-string v1, "permissioninfos contain carrierId"

    .line 65
    .line 66
    invoke-static {v0, v1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 73
    .line 74
    return-object v0
.end method

.method private n()Z
    .locals 6

    .line 1
    const-string v0, "[ACCOUNTSDK]AccountSignInHubActivity"

    .line 2
    .line 3
    const-string v1, "checkNeedConsent begin"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->c:Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;->getAccountAuthParams()Lcom/huawei/hms/support/account/request/AccountAuthParams;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return v3

    .line 19
    :cond_0
    invoke-virtual {v1}, Lcom/huawei/hms/support/account/request/AccountAuthParams;->getSignInParams()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "needConsent"

    .line 29
    .line 30
    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return v0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v5, "JSONException:"

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    return v3
.end method


# virtual methods
.method protected o(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "HiAnalyticsTransId"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->a:Ljava/lang/String;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v3, "onActivityResult: requestCode\uff1a"

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v3, " , resultCode\uff1a"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "[ACCOUNTSDK]AccountSignInHubActivity"

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-static {v3, v2, v4}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz p3, :cond_0

    .line 37
    .line 38
    new-instance v5, Lcom/huawei/hms/ui/SafeIntent;

    .line 39
    .line 40
    invoke-direct {v5, p3}, Lcom/huawei/hms/ui/SafeIntent;-><init>(Landroid/content/Intent;)V

    .line 41
    .line 42
    .line 43
    move-object v7, v5

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object v7, v2

    .line 46
    :goto_0
    iget-boolean v5, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->b:Z

    .line 47
    .line 48
    if-nez v5, :cond_6

    .line 49
    .line 50
    const/16 v5, 0x40cb

    .line 51
    .line 52
    if-eq p1, v5, :cond_1

    .line 53
    .line 54
    const/16 v6, 0x40cc

    .line 55
    .line 56
    if-ne p1, v6, :cond_6

    .line 57
    .line 58
    :cond_1
    const/16 v6, 0x8

    .line 59
    .line 60
    if-eqz v7, :cond_4

    .line 61
    .line 62
    const-string v8, "HUAWEIID_SIGNIN_RESULT"

    .line 63
    .line 64
    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    :try_start_0
    new-instance v8, Lcom/huawei/hms/support/account/result/AccountAuthResult;

    .line 71
    .line 72
    invoke-direct {v8}, Lcom/huawei/hms/support/account/result/AccountAuthResult;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8, v1}, Lcom/huawei/hms/support/account/result/AccountAuthResult;->fromJson(Ljava/lang/String;)Lcom/huawei/hms/support/account/result/AccountAuthResult;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput-object v1, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->d:Lcom/huawei/hms/support/account/result/AccountAuthResult;

    .line 80
    .line 81
    if-ne p1, v5, :cond_2

    .line 82
    .line 83
    invoke-static {}, Lib/z;->a()Lib/z;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->d:Lcom/huawei/hms/support/account/result/AccountAuthResult;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/huawei/hms/support/account/result/AccountAuthResult;->getAccount()Lcom/huawei/hms/support/account/result/AuthAccount;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v5, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->c:Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;

    .line 94
    .line 95
    invoke-virtual {v5}, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;->getAccountAuthParams()Lcom/huawei/hms/support/account/request/AccountAuthParams;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v0, v1, v5}, Lib/z;->b(Lcom/huawei/hms/support/account/result/AuthAccount;Lcom/huawei/hms/support/account/request/AccountAuthParams;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object v0, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->d:Lcom/huawei/hms/support/account/result/AccountAuthResult;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/huawei/hms/support/api/client/Result;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    .line 109
    .line 110
    .line 111
    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    move v5, v0

    .line 113
    goto :goto_1

    .line 114
    :catch_0
    iput-object v2, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->d:Lcom/huawei/hms/support/account/result/AccountAuthResult;

    .line 115
    .line 116
    const-string v0, "onActivityResult: JsonException"

    .line 117
    .line 118
    invoke-static {v3, v0, v4}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    .line 120
    .line 121
    move v5, v6

    .line 122
    :goto_1
    iget-object v2, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->a:Ljava/lang/String;

    .line 123
    .line 124
    if-eqz v2, :cond_3

    .line 125
    .line 126
    iget-object v0, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->e:Lib/u;

    .line 127
    .line 128
    if-eqz v0, :cond_3

    .line 129
    .line 130
    iget-object v1, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->g:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v0}, Lib/n;->a()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-static {v5}, Lib/s;->a(I)I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    iget-object v0, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->e:Lib/u;

    .line 141
    .line 142
    invoke-virtual {v0}, Lib/n;->c()J

    .line 143
    .line 144
    .line 145
    move-result-wide v8

    .line 146
    long-to-int v6, v8

    .line 147
    move-object v0, p0

    .line 148
    invoke-static/range {v0 .. v6}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportExit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 149
    .line 150
    .line 151
    :cond_3
    invoke-virtual {p0, p2, v7}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_4
    if-lez p2, :cond_5

    .line 159
    .line 160
    move v6, p2

    .line 161
    :cond_5
    invoke-direct {p0, v6}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->b(I)V

    .line 162
    .line 163
    .line 164
    :cond_6
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const-string v0, "onCreate: JsonException"

    .line 2
    .line 3
    const-string v1, "[ACCOUNTSDK]AccountSignInHubActivity"

    .line 4
    .line 5
    const-string v2, "onCreate"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v1, v2, v3}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {p0, v2}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->i(Landroid/content/Intent;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v5, 0x0

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    const-string p1, "invalid intent"

    .line 26
    .line 27
    invoke-direct {p0, v5, p1}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->c(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance v4, Lcom/huawei/hms/ui/SafeIntent;

    .line 32
    .line 33
    invoke-direct {v4, v2}, Lcom/huawei/hms/ui/SafeIntent;-><init>(Landroid/content/Intent;)V

    .line 34
    .line 35
    .line 36
    const-string v2, "intent.extra.isfullscreen"

    .line 37
    .line 38
    invoke-virtual {v4, v2, v5}, Lcom/huawei/hms/ui/SafeIntent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-direct {p0, v2}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->g(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/huawei/hms/ui/SafeIntent;->getAction()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v6, "com.huawei.hms.jos.signIn"

    .line 50
    .line 51
    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-nez v6, :cond_2

    .line 56
    .line 57
    const-string v6, "com.huawei.hms.account.signIn"

    .line 58
    .line 59
    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-nez v6, :cond_2

    .line 64
    .line 65
    const-string v6, "com.huawei.hms.account.picker.signIn"

    .line 66
    .line 67
    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-nez v6, :cond_2

    .line 72
    .line 73
    const-string p1, "unknow Action:"

    .line 74
    .line 75
    if-nez v2, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :goto_0
    invoke-direct {p0, v5, p1}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->c(ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_2
    const-string v2, "HUAWEIID_CP_CLIENTINFO"

    .line 98
    .line 99
    invoke-virtual {v4, v2}, Lcom/huawei/hms/ui/SafeIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    const-string v6, "HUAWEIID_SIGNIN_REQUEST"

    .line 104
    .line 105
    invoke-virtual {v4, v6}, Lcom/huawei/hms/ui/SafeIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    const/4 v7, 0x0

    .line 110
    :try_start_0
    invoke-static {v6}, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;->fromJson(Ljava/lang/String;)Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    iput-object v6, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->c:Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catch_0
    iput-object v7, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->c:Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;

    .line 118
    .line 119
    invoke-static {v1, v0, v3}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 120
    .line 121
    .line 122
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-eqz v6, :cond_3

    .line 127
    .line 128
    const-string p1, "Activity started with invalid cp client info"

    .line 129
    .line 130
    invoke-direct {p0, v5, p1}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->c(ILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_3
    :try_start_1
    invoke-static {v2}, Lib/u;->j(Ljava/lang/String;)Lib/u;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    iput-object v2, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->e:Lib/u;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :catch_1
    iput-object v7, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->e:Lib/u;

    .line 142
    .line 143
    invoke-static {v1, v0, v3}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 144
    .line 145
    .line 146
    :goto_2
    iget-object v0, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->c:Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;

    .line 147
    .line 148
    if-eqz v0, :cond_8

    .line 149
    .line 150
    iget-object v0, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->e:Lib/u;

    .line 151
    .line 152
    if-nez v0, :cond_4

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_4
    invoke-direct {p0}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->h()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    const/16 v1, 0x7d3

    .line 160
    .line 161
    if-nez v0, :cond_5

    .line 162
    .line 163
    invoke-direct {p0, v1}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->b(I)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_5
    const-string v0, "INDEPENDENT_SIGN_IN_FLAG"

    .line 168
    .line 169
    invoke-virtual {v4, v0, v5}, Lcom/huawei/hms/ui/SafeIntent;->getIntExtra(Ljava/lang/String;I)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    iput v0, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->f:I

    .line 174
    .line 175
    if-ne v0, v3, :cond_6

    .line 176
    .line 177
    invoke-direct {p0, v4}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->a(Lcom/huawei/hms/ui/SafeIntent;)Ljava/lang/Boolean;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-nez v0, :cond_6

    .line 186
    .line 187
    invoke-direct {p0, v1}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->b(I)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_6
    invoke-static {p0}, Lib/p;->b(Landroid/app/Activity;)V

    .line 192
    .line 193
    .line 194
    if-eqz p1, :cond_7

    .line 195
    .line 196
    invoke-virtual {p0, p1}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->o(Landroid/os/Bundle;)V

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_7
    iget-object p1, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->g:Ljava/lang/String;

    .line 201
    .line 202
    const v0, 0x3a14304

    .line 203
    .line 204
    .line 205
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportEntry(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    iput-object p1, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->a:Ljava/lang/String;

    .line 210
    .line 211
    invoke-direct {p0}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->j()V

    .line 212
    .line 213
    .line 214
    :goto_3
    return-void

    .line 215
    :cond_8
    :goto_4
    const-string p1, "Activity started with invalid sign in request info"

    .line 216
    .line 217
    invoke-direct {p0, v5, p1}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->c(ILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "onSaveInstanceState start"

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const-string v2, "[ACCOUNTSDK]AccountSignInHubActivity"

    .line 8
    .line 9
    invoke-static {v2, v0, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->a:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const-string v1, "HiAnalyticsTransId"

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
