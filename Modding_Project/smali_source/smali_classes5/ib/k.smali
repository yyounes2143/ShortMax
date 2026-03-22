.class public Lib/k;
.super Lcom/huawei/hms/common/HuaweiApi;
.source "ReadSmsService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/common/HuaweiApi<",
        "Lcom/huawei/hms/api/Api$ApiOptions$NoOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions$NoOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/huawei/hms/api/Api<",
            "Lcom/huawei/hms/api/Api$ApiOptions$NoOptions;",
            ">;",
            "Lcom/huawei/hms/api/Api$ApiOptions$NoOptions;",
            "Lcom/huawei/hms/common/internal/AbstractClientBuilder;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hms/common/HuaweiApi;-><init>(Landroid/app/Activity;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions$NoOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/huawei/hms/api/Api<",
            "Lcom/huawei/hms/api/Api$ApiOptions$NoOptions;",
            ">;",
            "Lcom/huawei/hms/api/Api$ApiOptions$NoOptions;",
            "Lcom/huawei/hms/common/internal/AbstractClientBuilder;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hms/common/HuaweiApi;-><init>(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;)V

    return-void
.end method

.method private f()Lib/g;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lib/g;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lib/g;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v1
.end method


# virtual methods
.method public d()Lua/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lua/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lib/k;->f()Lib/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lib/g;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v0, Lua/g;

    .line 16
    .line 17
    invoke-direct {v0}, Lua/g;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/huawei/hms/common/ApiException;

    .line 21
    .line 22
    new-instance v2, Lcom/huawei/hms/support/api/client/Status;

    .line 23
    .line 24
    const/16 v3, 0x7e4

    .line 25
    .line 26
    const-string v4, "sms param is invalid"

    .line 27
    .line 28
    invoke-direct {v2, v3, v4}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lua/g;->a()Lua/f;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const v2, 0x3a14304

    .line 47
    .line 48
    .line 49
    const-string v3, "hwid.startSmsRetriever"

    .line 50
    .line 51
    invoke-static {v1, v3, v2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportEntry(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v2, Lib/l;

    .line 56
    .line 57
    invoke-direct {v2, v3, v0, v1}, Lib/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v2}, Lcom/huawei/hms/common/HuaweiApi;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lua/f;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method

.method public e(Ljava/lang/String;)Lua/f;
    .locals 7
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
    const-string v0, "ReadSmsService"

    .line 2
    .line 3
    const-string v1, "startConsent enter"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    const-string v1, "sms param is invalid"

    .line 10
    .line 11
    const/16 v3, 0x7e4

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/16 v5, 0x78

    .line 20
    .line 21
    if-le v4, v5, :cond_0

    .line 22
    .line 23
    new-instance p1, Lua/g;

    .line 24
    .line 25
    invoke-direct {p1}, Lua/g;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/huawei/hms/common/ApiException;

    .line 29
    .line 30
    new-instance v2, Lcom/huawei/hms/support/api/client/Status;

    .line 31
    .line 32
    invoke-direct {v2, v3, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v2}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lua/g;->a()Lua/f;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    .line 47
    .line 48
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .line 50
    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    const-string v6, "packageName"

    .line 60
    .line 61
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    const-string v5, "phoneNumber"

    .line 65
    .line 66
    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    const-string p1, "toJson failed"

    .line 71
    .line 72
    invoke-static {v0, p1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_1

    .line 84
    .line 85
    new-instance p1, Lua/g;

    .line 86
    .line 87
    invoke-direct {p1}, Lua/g;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v0, Lcom/huawei/hms/common/ApiException;

    .line 91
    .line 92
    new-instance v2, Lcom/huawei/hms/support/api/client/Status;

    .line 93
    .line 94
    invoke-direct {v2, v3, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, v2}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lua/g;->a()Lua/f;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const v0, 0x3a14304

    .line 113
    .line 114
    .line 115
    const-string v1, "hwid.startConsent"

    .line 116
    .line 117
    invoke-static {p1, v1, v0}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsClient;->reportEntry(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    new-instance v0, Lib/m;

    .line 122
    .line 123
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-direct {v0, v1, v2, p1}, Lib/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v0}, Lcom/huawei/hms/common/HuaweiApi;->doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lua/f;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    return-object p1
.end method

.method public getApiLevel()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
