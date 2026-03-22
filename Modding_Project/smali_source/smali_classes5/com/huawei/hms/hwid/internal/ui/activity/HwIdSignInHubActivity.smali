.class public Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;
.super Landroid/app/Activity;
.source "HwIdSignInHubActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;

.field private d:Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;

.field private e:Lib/l0;


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
    iput-object v0, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->a:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->b:Z

    .line 9
    .line 10
    iput-object v0, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->c:Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->d:Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;

    .line 13
    .line 14
    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    const-string v0, "checkMinVersion start."

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "[HUAWEIIDSDK]HwIdSignInClientHub"

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity$a;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity$a;-><init>(Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Lib/j0;->b(Landroid/app/Activity;Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;)V

    .line 15
    .line 16
    .line 17
    return-void
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
    const-string v1, "[HUAWEIIDSDK]HwIdSignInClientHub"

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-static {v1, v0, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    iget-object v5, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->a:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->e:Lib/l0;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Lib/n;->a()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-static {p1}, Lib/s;->a(I)I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    iget-object v0, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->e:Lib/l0;

    .line 41
    .line 42
    invoke-virtual {v0}, Lib/n;->c()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    long-to-int v9, v3

    .line 47
    const-string v4, "hwid.signinintent"

    .line 48
    .line 49
    move-object v3, p0

    .line 50
    move v8, p1

    .line 51
    invoke-static/range {v3 .. v9}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportExit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v3, "report: api=hwid.signinintentversion="

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v3, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->e:Lib/l0;

    .line 65
    .line 66
    invoke-virtual {v3}, Lib/n;->c()J

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v1, v0, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    :cond_0
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    .line 81
    .line 82
    invoke-direct {v0, p1}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    .line 83
    .line 84
    .line 85
    new-instance p1, Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;

    .line 86
    .line 87
    invoke-direct {p1}, Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lcom/huawei/hms/support/api/client/Result;->setStatus(Lcom/huawei/hms/support/api/client/Status;)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Landroid/content/Intent;

    .line 94
    .line 95
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    .line 97
    .line 98
    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;->toJson()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string v3, "HUAWEIID_SIGNIN_RESULT"

    .line 103
    .line 104
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catch_0
    const-string p1, "convert result to json failed"

    .line 109
    .line 110
    invoke-static {v1, p1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    .line 112
    .line 113
    :goto_0
    const/4 p1, 0x0

    .line 114
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method private c(ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "[HUAWEIIDSDK]HwIdSignInClientHub"

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, p2, v0}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method static synthetic d(Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->b(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f(Landroid/content/Intent;)Z
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

.method private g()V
    .locals 5

    .line 1
    const-string v0, "[HUAWEIIDSDK]HwIdSignInClientHub"

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
    invoke-direct {p0}, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->h()Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/16 v3, 0x40cb

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    iput-boolean v2, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->b:Z

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v4, "Launch sign in Intent failed. hms is probably being updated\uff1a"

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0, v1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    const/16 v0, 0x11

    .line 51
    .line 52
    invoke-direct {p0, v0}, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->b(I)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method private h()Landroid/content/Intent;
    .locals 9

    .line 1
    const-string v0, "[HUAWEIIDSDK]HwIdSignInClientHub"

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
    invoke-static {v3}, Lib/l0;->j(Ljava/lang/String;)Lib/l0;

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
    invoke-virtual {v1}, Lcom/huawei/hms/activity/ForegroundIntentBuilder;->build()Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v4, "get package name of hms is "

    .line 157
    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-static {p0}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v4}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-static {v0, v3, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 177
    .line 178
    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v4, "Current package name is "

    .line 185
    .line 186
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-static {v0, v3, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    .line 209
    .line 210
    return-object v1

    .line 211
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string v4, "getSignInIntent failed because:"

    .line 217
    .line 218
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-static {v0, v1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 237
    .line 238
    .line 239
    new-instance v0, Landroid/content/Intent;

    .line 240
    .line 241
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 242
    .line 243
    .line 244
    return-object v0
.end method


# virtual methods
.method protected i(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->a:Ljava/lang/String;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "onActivityResult: requestCode\uff1a"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " , resultCode\uff1a"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "[HUAWEIIDSDK]HwIdSignInClientHub"

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-static {v1, v0, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    if-eqz p3, :cond_0

    .line 37
    .line 38
    new-instance v3, Lcom/huawei/hms/ui/SafeIntent;

    .line 39
    .line 40
    invoke-direct {v3, p3}, Lcom/huawei/hms/ui/SafeIntent;-><init>(Landroid/content/Intent;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object v3, v0

    .line 45
    :goto_0
    iget-boolean v4, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->b:Z

    .line 46
    .line 47
    if-nez v4, :cond_4

    .line 48
    .line 49
    const/16 v4, 0x40cb

    .line 50
    .line 51
    if-ne p1, v4, :cond_4

    .line 52
    .line 53
    const/16 p1, 0x8

    .line 54
    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    const-string v4, "HUAWEIID_SIGNIN_RESULT"

    .line 58
    .line 59
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    if-eqz p3, :cond_2

    .line 64
    .line 65
    :try_start_0
    new-instance v4, Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;

    .line 66
    .line 67
    invoke-direct {v4}, Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, p3}, Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;->fromJson(Ljava/lang/String;)Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    iput-object p3, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->d:Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;

    .line 75
    .line 76
    invoke-static {}, Lib/r0;->a()Lib/r0;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    iget-object v4, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->d:Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;

    .line 81
    .line 82
    invoke-virtual {v4}, Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;->getHuaweiId()Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    iget-object v5, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->c:Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;

    .line 87
    .line 88
    invoke-virtual {v5}, Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;->getHuaweiIdAuthParams()Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {p3, v4, v5}, Lib/r0;->b(Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;)V

    .line 93
    .line 94
    .line 95
    iget-object p3, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->d:Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;

    .line 96
    .line 97
    invoke-virtual {p3}, Lcom/huawei/hms/support/api/client/Result;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    invoke-virtual {p3}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    .line 102
    .line 103
    .line 104
    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_1
    move v9, p1

    .line 106
    goto :goto_2

    .line 107
    :catch_0
    iput-object v0, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->d:Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;

    .line 108
    .line 109
    const-string p3, "onActivityResult: JsonException"

    .line 110
    .line 111
    invoke-static {v1, p3, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :goto_2
    iget-object v6, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->a:Ljava/lang/String;

    .line 116
    .line 117
    if-eqz v6, :cond_1

    .line 118
    .line 119
    iget-object p1, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->e:Lib/l0;

    .line 120
    .line 121
    if-eqz p1, :cond_1

    .line 122
    .line 123
    invoke-virtual {p1}, Lib/n;->a()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-static {v9}, Lib/s;->a(I)I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    iget-object p1, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->e:Lib/l0;

    .line 132
    .line 133
    invoke-virtual {p1}, Lib/n;->c()J

    .line 134
    .line 135
    .line 136
    move-result-wide v4

    .line 137
    long-to-int v10, v4

    .line 138
    const-string v5, "hwid.signinintent"

    .line 139
    .line 140
    move-object v4, p0

    .line 141
    invoke-static/range {v4 .. v10}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportExit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 142
    .line 143
    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string p3, "report: api=hwid.signinintentversion="

    .line 150
    .line 151
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object p3, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->e:Lib/l0;

    .line 155
    .line 156
    invoke-virtual {p3}, Lib/n;->c()J

    .line 157
    .line 158
    .line 159
    move-result-wide v4

    .line 160
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {v1, p1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    .line 169
    .line 170
    :cond_1
    invoke-virtual {p0, p2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_2
    if-lez p2, :cond_3

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_3
    move p2, p1

    .line 181
    :goto_3
    invoke-direct {p0, p2}, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->b(I)V

    .line 182
    .line 183
    .line 184
    :cond_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const-string v0, "onCreate: JsonException"

    .line 2
    .line 3
    const-string v1, "[HUAWEIIDSDK]HwIdSignInClientHub"

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
    invoke-direct {p0, v2}, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->f(Landroid/content/Intent;)Z

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
    invoke-direct {p0, v5, p1}, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->c(ILjava/lang/String;)V

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
    new-instance v6, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v7, "isActivityFullScreen is :"

    .line 48
    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-static {v1, v6, v3}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v2}, Lib/y;->h(Landroid/view/Window;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const/16 v6, 0x400

    .line 76
    .line 77
    invoke-virtual {v2, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-static {p0}, Lib/y;->g(Landroid/app/Activity;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    invoke-virtual {v4}, Lcom/huawei/hms/ui/SafeIntent;->getAction()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const-string v6, "com.huawei.hms.jos.signIn"

    .line 89
    .line 90
    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-nez v6, :cond_3

    .line 95
    .line 96
    const-string p1, "unknow Action:"

    .line 97
    .line 98
    if-nez v2, :cond_2

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :goto_1
    invoke-direct {p0, v5, p1}, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->c(ILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_3
    const-string v2, "HUAWEIID_CP_CLIENTINFO"

    .line 121
    .line 122
    invoke-virtual {v4, v2}, Lcom/huawei/hms/ui/SafeIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    const-string v6, "HUAWEIID_SIGNIN_REQUEST"

    .line 127
    .line 128
    invoke-virtual {v4, v6}, Lcom/huawei/hms/ui/SafeIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    const/4 v6, 0x0

    .line 133
    :try_start_0
    invoke-static {v4}, Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;->fromJson(Ljava/lang/String;)Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    iput-object v4, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->c:Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :catch_0
    iput-object v6, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->c:Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;

    .line 141
    .line 142
    invoke-static {v1, v0, v3}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 143
    .line 144
    .line 145
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_4

    .line 150
    .line 151
    const-string p1, "Activity started with invalid cp client info"

    .line 152
    .line 153
    invoke-direct {p0, v5, p1}, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->c(ILjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_4
    :try_start_1
    invoke-static {v2}, Lib/l0;->j(Ljava/lang/String;)Lib/l0;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    iput-object v2, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->e:Lib/l0;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :catch_1
    iput-object v6, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->e:Lib/l0;

    .line 165
    .line 166
    invoke-static {v1, v0, v3}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 167
    .line 168
    .line 169
    :goto_3
    iget-object v0, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->c:Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;

    .line 170
    .line 171
    if-eqz v0, :cond_7

    .line 172
    .line 173
    iget-object v0, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->e:Lib/l0;

    .line 174
    .line 175
    if-nez v0, :cond_5

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_5
    invoke-static {p0}, Lib/p;->b(Landroid/app/Activity;)V

    .line 179
    .line 180
    .line 181
    if-eqz p1, :cond_6

    .line 182
    .line 183
    invoke-virtual {p0, p1}, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->i(Landroid/os/Bundle;)V

    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_6
    const-string p1, "hwid.signinintent"

    .line 188
    .line 189
    const v0, 0x3a14304

    .line 190
    .line 191
    .line 192
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportEntry(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    iput-object p1, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->a:Ljava/lang/String;

    .line 197
    .line 198
    invoke-direct {p0}, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->a()V

    .line 199
    .line 200
    .line 201
    :goto_4
    return-void

    .line 202
    :cond_7
    :goto_5
    const-string p1, "Activity started with invalid sign in request info"

    .line 203
    .line 204
    invoke-direct {p0, v5, p1}, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->c(ILjava/lang/String;)V

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;->a:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v1, "HiAnalyticsTransId"

    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
