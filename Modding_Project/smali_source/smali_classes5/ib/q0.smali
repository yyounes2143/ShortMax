.class public final Lib/q0;
.super Ljava/lang/Object;
.source "HuaweiIdAuthUtil.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7

    .line 1
    const-string v0, "[HUAWEIIDSDK]HuaweiIdAuthTool"

    .line 2
    .line 3
    const-string v1, "getSignInIntent enter"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroid/content/Intent;

    .line 10
    .line 11
    const-string v3, "com.huawei.hms.jos.signIn"

    .line 12
    .line 13
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const-class v3, Lcom/huawei/hms/hwid/internal/ui/activity/HwIdSignInHubActivity;

    .line 24
    .line 25
    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lcom/huawei/hms/utils/Util;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance v4, Lib/l0;

    .line 37
    .line 38
    invoke-direct {v4}, Lib/l0;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v3}, Lib/n;->d(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, p0}, Lib/n;->f(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-wide/32 v5, 0x3a5d7ac

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v5, v6}, Lib/n;->b(J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, p2}, Lib/n;->h(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance p0, Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;

    .line 57
    .line 58
    invoke-direct {p0}, Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;->setHuaweiIdAuthParams(Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    :try_start_1
    const-string p1, "HUAWEIID_CP_CLIENTINFO"

    .line 65
    .line 66
    invoke-virtual {v4}, Lib/n;->g()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    const-string p1, "HUAWEIID_SIGNIN_REQUEST"

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/huawei/hms/support/api/entity/hwid/HuaweiIdSignInRequest;->toJson()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catch_0
    move-exception p0

    .line 84
    goto :goto_0

    .line 85
    :catch_1
    move-exception p0

    .line 86
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string p2, "JSONException:"

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {v0, p0, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string p2, "Exception:"

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-static {v0, p0, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 141
    .line 142
    .line 143
    :goto_1
    return-object v1
.end method

.method public static b(Ljava/util/List;)Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;)",
            "Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;-><init>()V

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
    invoke-virtual {v0, p0}, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;->setScopeList(Ljava/util/List;)Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/huawei/hms/support/api/entity/auth/Scope;

    .line 34
    .line 35
    const-string v2, "https://www.huawei.com/auth/account/shipping.address"

    .line 36
    .line 37
    invoke-static {v1, v2}, Lib/q0;->e(Lcom/huawei/hms/support/api/entity/auth/Scope;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;->setShippingAddress()Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v0}, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParamsHelper;->createParams()Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method

.method public static c(Landroid/content/Intent;)Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;
    .locals 5

    .line 1
    const-string v0, "[HUAWEIIDSDK]HuaweiIdAuthTool"

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
    new-instance v3, Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;

    .line 26
    .line 27
    invoke-direct {v3}, Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p0}, Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;->fromJson(Ljava/lang/String;)Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;

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

.method public static d()V
    .locals 1

    .line 1
    invoke-static {}, Lib/r0;->a()Lib/r0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lib/r0;->e()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static e(Lcom/huawei/hms/support/api/entity/auth/Scope;Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/huawei/hms/support/api/entity/auth/Scope;->getScopeUri()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static f()Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;
    .locals 1

    .line 1
    invoke-static {}, Lib/r0;->a()Lib/r0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lib/r0;->d()Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
