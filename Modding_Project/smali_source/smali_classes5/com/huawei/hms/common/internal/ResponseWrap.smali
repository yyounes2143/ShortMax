.class public Lcom/huawei/hms/common/internal/ResponseWrap;
.super Ljava/lang/Object;
.source "ResponseWrap.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/huawei/hms/common/internal/ResponseHeader;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/common/internal/ResponseHeader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public fromJson(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 13
    .line 14
    const-string v2, "status_code"

    .line 15
    .line 16
    invoke-static {v0, v2}, Lcom/huawei/hms/utils/JsonUtil;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {p1, v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->setStatusCode(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 24
    .line 25
    const-string v2, "error_code"

    .line 26
    .line 27
    invoke-static {v0, v2}, Lcom/huawei/hms/utils/JsonUtil;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {p1, v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->setErrorCode(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 35
    .line 36
    const-string v2, "error_reason"

    .line 37
    .line 38
    invoke-static {v0, v2}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p1, v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->setErrorReason(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 46
    .line 47
    const-string v2, "srv_name"

    .line 48
    .line 49
    invoke-static {v0, v2}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p1, v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->setSrvName(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 57
    .line 58
    const-string v2, "api_name"

    .line 59
    .line 60
    invoke-static {v0, v2}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {p1, v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->setApiName(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 68
    .line 69
    const-string v2, "app_id"

    .line 70
    .line 71
    invoke-static {v0, v2}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {p1, v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->setAppID(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 79
    .line 80
    const-string v2, "pkg_name"

    .line 81
    .line 82
    invoke-static {v0, v2}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {p1, v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->setPkgName(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 90
    .line 91
    const-string v2, "session_id"

    .line 92
    .line 93
    invoke-static {v0, v2}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {p1, v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->setSessionId(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 101
    .line 102
    const-string v2, "transaction_id"

    .line 103
    .line 104
    invoke-static {v0, v2}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {p1, v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->setTransactionId(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 112
    .line 113
    const-string v2, "resolution"

    .line 114
    .line 115
    invoke-static {v0, v2}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {p1, v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->setResolution(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string p1, "body"

    .line 123
    .line 124
    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->a:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    const/4 p1, 0x1

    .line 131
    return p1

    .line 132
    :catch_0
    move-exception p1

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v2, "fromJson failed: "

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const-string v0, "ResponseWrap"

    .line 155
    .line 156
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return v1
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->a:Ljava/lang/String;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->a:Ljava/lang/String;

    .line 21
    .line 22
    return-object v0
.end method

.method public getResponseHeader()Lcom/huawei/hms/common/internal/ResponseHeader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 2
    .line 3
    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setResponseHeader(Lcom/huawei/hms/common/internal/ResponseHeader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 2
    .line 3
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "{}"

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    const-string v1, "status_code"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->getStatusCode()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    const-string v1, "error_code"

    .line 25
    .line 26
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->getErrorCode()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    const-string v1, "error_reason"

    .line 36
    .line 37
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->getErrorReason()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    const-string v1, "srv_name"

    .line 47
    .line 48
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->getSrvName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    const-string v1, "api_name"

    .line 58
    .line 59
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->getApiName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    const-string v1, "app_id"

    .line 69
    .line 70
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->getAppID()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    const-string v1, "pkg_name"

    .line 80
    .line 81
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->getPkgName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    const-string v1, "transaction_id"

    .line 91
    .line 92
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->getTransactionId()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    const-string v1, "resolution"

    .line 102
    .line 103
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->getResolution()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->getSessionId()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-nez v2, :cond_1

    .line 123
    .line 124
    const-string v2, "session_id"

    .line 125
    .line 126
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    goto :goto_1

    .line 132
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->a:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-nez v1, :cond_2

    .line 139
    .line 140
    const-string v1, "body"

    .line 141
    .line 142
    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->a:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v3, "toJson failed: "

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    const-string v2, "ResponseWrap"

    .line 170
    .line 171
    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_2
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ResponseWrap{body=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", responseHeader="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/huawei/hms/common/internal/ResponseWrap;->b:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x7d

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
