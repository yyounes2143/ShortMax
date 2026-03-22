.class public Lbb/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static b:Lcb/d;

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lbb/a;->c:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcb/d;
    .locals 6

    .line 1
    const-class v0, Lbb/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lbb/a;->c:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    sget-object v2, Lbb/a;->b:Lcb/d;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit v0

    .line 13
    return-object v2

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getInstance()Lcom/huawei/hms/framework/network/grs/GrsApp;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v4, "/"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getBrand(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v3, "grs_sdk_server_config.json"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2, p0}, Ldb/c;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v3, 0x0

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    monitor-exit v0

    .line 57
    return-object v3

    .line 58
    :cond_1
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    .line 59
    .line 60
    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string p0, "grs_server"

    .line 64
    .line 65
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string v2, "grs_base_url"

    .line 70
    .line 71
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-lez v4, :cond_2

    .line 82
    .line 83
    new-instance v3, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    const/4 v4, 0x0

    .line 89
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-ge v4, v5, :cond_2

    .line 94
    .line 95
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    add-int/lit8 v4, v4, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catch_0
    move-exception p0

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    new-instance v2, Lcb/d;

    .line 112
    .line 113
    invoke-direct {v2}, Lcb/d;-><init>()V

    .line 114
    .line 115
    .line 116
    sput-object v2, Lbb/a;->b:Lcb/d;

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Lcb/d;->d(Ljava/util/List;)V

    .line 119
    .line 120
    .line 121
    const-string v2, "grs_query_endpoint_2.0"

    .line 122
    .line 123
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    sget-object v3, Lbb/a;->b:Lcb/d;

    .line 128
    .line 129
    invoke-virtual {v3, v2}, Lcb/d;->c(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v2, "grs_query_timeout"

    .line 133
    .line 134
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    sget-object v2, Lbb/a;->b:Lcb/d;

    .line 139
    .line 140
    invoke-virtual {v2, p0}, Lcb/d;->b(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :goto_1
    :try_start_4
    sget-object v2, Lbb/a;->a:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 145
    .line 146
    :try_start_5
    const-string v3, "getGrsServerBean catch JSONException: %s"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 147
    .line 148
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {p0}, Lcom/huawei/hms/framework/common/StringUtils;->anonymizeMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-static {v2, v3, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :goto_2
    sget-object p0, Lbb/a;->b:Lcb/d;

    .line 164
    .line 165
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 166
    monitor-exit v0

    .line 167
    return-object p0

    .line 168
    :catchall_1
    move-exception p0

    .line 169
    goto :goto_4

    .line 170
    :goto_3
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 171
    :try_start_8
    throw p0

    .line 172
    :goto_4
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 173
    throw p0
.end method
