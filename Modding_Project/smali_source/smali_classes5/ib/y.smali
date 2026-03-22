.class public final Lib/y;
.super Ljava/lang/Object;
.source "AccountAuthUtil.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/huawei/hms/support/account/request/AccountAuthParams;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 1
    const-string v0, "getSignInIntent"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "[AccountSDK]AccountAuthUtil"

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-static {p0, p1, p2, v0, v1}, Lib/y;->b(Landroid/content/Context;Lcom/huawei/hms/support/account/request/AccountAuthParams;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private static b(Landroid/content/Context;Lcom/huawei/hms/support/account/request/AccountAuthParams;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 8

    .line 1
    const-string v0, "INDEPENDENT_SIGN_IN_FLAG"

    .line 2
    .line 3
    const-string v1, "ACCESS_TOKEN"

    .line 4
    .line 5
    const-string v2, "[AccountSDK]AccountAuthUtil"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-ne p3, v3, :cond_0

    .line 9
    .line 10
    const-string v4, "com.huawei.hms.account.picker.signIn"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v4, "com.huawei.hms.account.signIn"

    .line 14
    .line 15
    :goto_0
    new-instance v5, Landroid/content/Intent;

    .line 16
    .line 17
    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-class v4, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;

    .line 28
    .line 29
    invoke-virtual {v5, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    const-string v4, "JSONException:"

    .line 33
    .line 34
    if-ne p3, v3, :cond_2

    .line 35
    .line 36
    :try_start_1
    invoke-virtual {v5, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    .line 41
    .line 42
    :try_start_2
    invoke-virtual {p1}, Lcom/huawei/hms/support/account/request/AccountAuthParams;->getSignInParams()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_1

    .line 51
    .line 52
    new-instance v6, Lorg/json/JSONObject;

    .line 53
    .line 54
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :catch_1
    move-exception p3

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    .line 64
    .line 65
    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    move-object v6, v7

    .line 69
    :goto_1
    invoke-virtual {v6, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    invoke-virtual {p1, p3}, Lcom/huawei/hms/support/account/request/AccountAuthParams;->setSignInParams(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :goto_2
    :try_start_3
    new-instance p4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    invoke-static {v2, p3, v3}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_3
    invoke-static {p0}, Lcom/huawei/hms/utils/Util;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    new-instance p4, Lib/u;

    .line 118
    .line 119
    invoke-direct {p4}, Lib/u;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p4, p3}, Lib/n;->d(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p4, p0}, Lib/n;->f(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const-wide/32 v0, 0x3a5d7ac

    .line 129
    .line 130
    .line 131
    invoke-virtual {p4, v0, v1}, Lib/n;->b(J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p4, p2}, Lib/n;->h(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance p0, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;

    .line 138
    .line 139
    invoke-direct {p0}, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;->setAccountAuthParams(Lcom/huawei/hms/support/account/request/AccountAuthParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 143
    .line 144
    .line 145
    :try_start_4
    const-string p1, "HUAWEIID_CP_CLIENTINFO"

    .line 146
    .line 147
    invoke-virtual {p4}, Lib/n;->g()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    const-string p1, "HUAWEIID_SIGNIN_REQUEST"

    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/huawei/hms/support/api/entity/account/AccountSignInRequest;->toJson()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {v5, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 161
    .line 162
    .line 163
    goto :goto_5

    .line 164
    :catch_2
    move-exception p0

    .line 165
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-static {v2, p0, v3}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 189
    .line 190
    .line 191
    goto :goto_5

    .line 192
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string p2, "Exception:"

    .line 198
    .line 199
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-static {v2, p0, v3}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 218
    .line 219
    .line 220
    :goto_5
    return-object v5
.end method

.method public static c(Landroid/content/Context;Lcom/huawei/hms/support/account/request/AccountAuthParams;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 1
    const-string v0, "[AccountSDK]AccountAuthUtil"

    .line 2
    .line 3
    const-string v1, "getIndependentSignInIntent"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1, p2, v2, p3}, Lib/y;->b(Landroid/content/Context;Lcom/huawei/hms/support/account/request/AccountAuthParams;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static d(Ljava/util/List;)Lcom/huawei/hms/support/account/request/AccountAuthParams;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;)",
            "Lcom/huawei/hms/support/account/request/AccountAuthParams;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lib/q;->b(Ljava/util/Collection;)Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->setScopeList(Ljava/util/List;)Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->createParams()Lcom/huawei/hms/support/account/request/AccountAuthParams;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static e(Landroid/content/Intent;)Lcom/huawei/hms/support/account/result/AccountAuthResult;
    .locals 5

    .line 1
    const-string v0, "[AccountSDK]AccountAuthUtil"

    .line 2
    .line 3
    const-string v1, "getSignInResultFromIntent"

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
    if-eqz p0, :cond_1

    .line 11
    .line 12
    const-string v3, "HUAWEIID_SIGNIN_RESULT"

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :try_start_0
    new-instance v3, Lcom/huawei/hms/support/account/result/AccountAuthResult;

    .line 26
    .line 27
    invoke-direct {v3}, Lcom/huawei/hms/support/account/result/AccountAuthResult;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p0}, Lcom/huawei/hms/support/account/result/AccountAuthResult;->fromJson(Ljava/lang/String;)Lcom/huawei/hms/support/account/result/AccountAuthResult;

    .line 31
    .line 32
    .line 33
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object p0

    .line 35
    :catch_0
    const-string p0, "JSONException"

    .line 36
    .line 37
    invoke-static {v0, p0, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_1
    :goto_0
    const-string p0, "data or signInResult is null"

    .line 42
    .line 43
    invoke-static {v0, p0, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    return-object v1
.end method

.method public static f()V
    .locals 1

    .line 1
    invoke-static {}, Lib/z;->a()Lib/z;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lib/z;->e()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static g(Landroid/app/Activity;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/high16 v2, -0x80000000

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    or-int/lit16 v0, v0, 0x400

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 33
    .line 34
    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 50
    .line 51
    .line 52
    const/16 v1, 0x1d

    .line 53
    .line 54
    if-lt v0, v1, :cond_0

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0, v2}, Landroidx/activity/i;->a(Landroid/view/Window;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v1, "exception occured:"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    const/4 v0, 0x1

    .line 91
    const-string v1, "[AccountSDK]AccountAuthUtil"

    .line 92
    .line 93
    invoke-static {v1, p0, v0}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 94
    .line 95
    .line 96
    :cond_0
    :goto_0
    return-void
.end method

.method public static h(Landroid/view/Window;)V
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1c

    .line 7
    .line 8
    const-string v2, "[AccountSDK]AccountAuthUtil"

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-lt v0, v1, :cond_1

    .line 12
    .line 13
    const-string v0, "android version is Higher than 9.0"

    .line 14
    .line 15
    invoke-static {v2, v0, v3}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0, v3}, Lcom/applovin/adview/b;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/16 v0, 0x1706

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_1
    const-string v0, "android version is Below 9.0"

    .line 40
    .line 41
    invoke-static {v2, v0, v3}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :try_start_0
    const-string v0, "com.huawei.android.view.LayoutParamsEx"

    .line 49
    .line 50
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-class v1, Landroid/view/WindowManager$LayoutParams;

    .line 55
    .line 56
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string v1, "addHwFlags"

    .line 73
    .line 74
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 75
    .line 76
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const/16 v1, 0x1000

    .line 85
    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :catch_0
    move-exception p0

    .line 99
    goto :goto_0

    .line 100
    :catch_1
    move-exception p0

    .line 101
    goto :goto_1

    .line 102
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v1, "Adapt to the digging screen occur exception"

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-static {v2, p0, v3}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v1, "Adapt to the digging screen occur RuntimeException"

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-static {v2, p0, v3}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 157
    .line 158
    .line 159
    :goto_2
    return-void
.end method

.method public static i()Lcom/huawei/hms/support/account/result/AuthAccount;
    .locals 1

    .line 1
    invoke-static {}, Lib/z;->a()Lib/z;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lib/z;->d()Lcom/huawei/hms/support/account/result/AuthAccount;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
