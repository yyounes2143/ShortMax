.class public Lib/g0;
.super Lcom/huawei/hms/common/internal/TaskApiCall;
.source "AccountSignOutTaskApiCall.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/common/internal/TaskApiCall<",
        "Lib/v;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/common/internal/TaskApiCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b(Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "headerErrorCode:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 p2, 0x1

    .line 35
    const-string v0, "[AccountSDK]AccountSignOutTaskApiCall"

    .line 36
    .line 37
    invoke-static {v0, p1, p2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method protected synthetic a(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V
    .locals 0

    .line 1
    check-cast p1, Lib/v;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lib/g0;->c(Lib/v;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected c(Lib/v;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lua/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/v;",
            "Lcom/huawei/hms/common/internal/ResponseErrorCode;",
            "Ljava/lang/String;",
            "Lua/g<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    const-string v0, "[AccountSDK]AccountSignOutTaskApiCall"

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const-string p2, "response is null."

    .line 7
    .line 8
    invoke-static {v0, p2, p1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/huawei/hms/support/api/client/Status;

    .line 12
    .line 13
    const/16 p3, 0x7d3

    .line 14
    .line 15
    invoke-direct {p1, p3, p2}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance p2, Lcom/huawei/hms/common/ApiException;

    .line 19
    .line 20
    invoke-direct {p2, p1}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p4, p2}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-direct {p0, p2, p3}, Lib/g0;->b(Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorCode()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const-string v2, "hasContextResolution"

    .line 37
    .line 38
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getResolution()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    const-string p3, "apk version is low or is not exist."

    .line 49
    .line 50
    invoke-static {v0, p3, p1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Lcom/huawei/hms/support/api/client/Status;

    .line 54
    .line 55
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-direct {p1, v1, p3}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p2, p1}, Lib/p;->c(Lcom/huawei/hms/common/internal/ResponseErrorCode;Lcom/huawei/hms/support/api/client/Status;)V

    .line 63
    .line 64
    .line 65
    new-instance p2, Lcom/huawei/hms/common/ResolvableApiException;

    .line 66
    .line 67
    invoke-direct {p2, p1}, Lcom/huawei/hms/common/ResolvableApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p4, p2}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_4

    .line 79
    .line 80
    const-string v2, "{}"

    .line 81
    .line 82
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_2

    .line 87
    .line 88
    const-string p3, "SignOut complete, body is null"

    .line 89
    .line 90
    invoke-static {v0, p3, p1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    .line 92
    .line 93
    new-instance p1, Lcom/huawei/hms/common/ApiException;

    .line 94
    .line 95
    new-instance p3, Lcom/huawei/hms/support/api/client/Status;

    .line 96
    .line 97
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-direct {p3, v1, p2}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p1, p3}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p4, p1}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_2
    :try_start_0
    new-instance v2, Lcom/huawei/hms/support/api/hwid/SignOutResult;

    .line 112
    .line 113
    invoke-direct {v2}, Lcom/huawei/hms/support/api/hwid/SignOutResult;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, p3}, Lcom/huawei/hms/support/api/hwid/SignOutResult;->fromJson(Ljava/lang/String;)Lcom/huawei/hms/support/api/hwid/SignOutResult;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-virtual {p3}, Lcom/huawei/hms/support/api/hwid/SignOutResult;->isSuccess()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_3

    .line 125
    .line 126
    const/4 p3, 0x0

    .line 127
    invoke-virtual {p4, p3}, Lua/g;->c(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :catch_0
    move-exception p3

    .line 132
    goto :goto_0

    .line 133
    :cond_3
    new-instance v2, Lcom/huawei/hms/common/ApiException;

    .line 134
    .line 135
    invoke-virtual {p3}, Lcom/huawei/hms/support/api/client/Result;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    invoke-direct {v2, p3}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p4, v2}, Lua/g;->b(Ljava/lang/Exception;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v3, "JSONException:"

    .line 152
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p3

    .line 171
    invoke-static {v0, p3, p1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 172
    .line 173
    .line 174
    new-instance p1, Lcom/huawei/hms/support/api/client/Status;

    .line 175
    .line 176
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-direct {p1, v1, p2}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 181
    .line 182
    .line 183
    new-instance p2, Lcom/huawei/hms/common/ApiException;

    .line 184
    .line 185
    invoke-direct {p2, p1}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p4, p2}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_4
    new-instance p1, Lcom/huawei/hms/common/ApiException;

    .line 193
    .line 194
    new-instance p3, Lcom/huawei/hms/support/api/client/Status;

    .line 195
    .line 196
    invoke-interface {p2}, Lcom/huawei/hms/common/internal/ResponseErrorCode;->getErrorReason()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-direct {p3, v1, p2}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-direct {p1, p3}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p4, p1}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 207
    .line 208
    .line 209
    :goto_1
    return-void
.end method

.method public getApiLevel()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
