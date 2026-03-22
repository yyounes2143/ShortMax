.class final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbu;
.super Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbu;->zza:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbu;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Failed to generate query info for the tagging library, error: "

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfj;->zzc:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbu;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzb(Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zza()Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, ",\"as\":"

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string v0, ""

    .line 52
    .line 53
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbu;->zza:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbfj;->zze:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbfj;->zzh:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Ljava/lang/Long;

    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 82
    .line 83
    .line 84
    move-result-wide v4

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    const-wide/16 v4, 0x0

    .line 87
    .line 88
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    filled-new-array {v1, p1, v4, v0}, [Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v0, "window.postMessage({\"paw_id\":\"%1$s\",\"error\":\"%2$s\",\"sdk_ttl_ms\":%3$d%4$s}, \'*\');"

    .line 97
    .line 98
    invoke-static {v2, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Ljava/lang/Boolean;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbu;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzd(Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;)Lcom/google/android/gms/internal/ads/zzgdy;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    new-instance v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbs;

    .line 121
    .line 122
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbs;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbu;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :catch_0
    move-exception p1

    .line 130
    const-string v0, "TaggingLibraryJsInterface.getQueryInfo.onFailure"

    .line 131
    .line 132
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbu;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;

    .line 141
    .line 142
    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zza(Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;)Landroid/webkit/WebView;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const/4 v1, 0x0

    .line 147
    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 148
    .line 149
    .line 150
    :goto_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbfj;->zzc:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Ljava/lang/Boolean;

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_3

    .line 163
    .line 164
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbfj;->zzd:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    check-cast p1, Ljava/lang/Boolean;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_3

    .line 177
    .line 178
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbu;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;

    .line 179
    .line 180
    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzc(Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzj;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzj;->zzb()V

    .line 185
    .line 186
    .line 187
    :cond_3
    return-void
.end method

.method public final onSuccess(Lcom/google/android/gms/ads/query/QueryInfo;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/query/QueryInfo;->getQuery()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "paw_id"

    .line 13
    .line 14
    iget-object v5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbu;->zza:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbfj;->zzc:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 20
    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    const-string v4, "as"

    .line 34
    .line 35
    iget-object v5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbu;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;

    .line 36
    .line 37
    invoke-static {v5}, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzb(Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v5}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zza()Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    :cond_0
    const-string v4, "sdk_ttl_ms"

    .line 49
    .line 50
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbfj;->zze:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 51
    .line 52
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_1

    .line 63
    .line 64
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbfj;->zzh:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 65
    .line 66
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Ljava/lang/Long;

    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide v5

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    move-wide v5, v1

    .line 78
    :goto_0
    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    const-string v4, "signal"

    .line 82
    .line 83
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v4, "window.postMessage(%1$s, \'*\');"

    .line 91
    .line 92
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_2

    .line 101
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfj;->zzc:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Ljava/lang/Boolean;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbu;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;

    .line 116
    .line 117
    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzb(Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zza()Lorg/json/JSONObject;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string v3, ",\"as\":"

    .line 130
    .line 131
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    goto :goto_1

    .line 136
    :cond_2
    const-string v0, ""

    .line 137
    .line 138
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbu;->zza:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {p1}, Lcom/google/android/gms/ads/query/QueryInfo;->getQuery()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbfj;->zze:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 149
    .line 150
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    check-cast v5, Ljava/lang/Boolean;

    .line 155
    .line 156
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_3

    .line 161
    .line 162
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfj;->zzh:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Ljava/lang/Long;

    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 171
    .line 172
    .line 173
    move-result-wide v1

    .line 174
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    filled-new-array {v3, p1, v1, v0}, [Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    const-string v0, "window.postMessage({\"paw_id\":\"%1$s\",\"signal\":\"%2$s\",\"sdk_ttl_ms\":%3$d%4$s}, \'*\');"

    .line 183
    .line 184
    invoke-static {v4, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfj;->zze:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 189
    .line 190
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Ljava/lang/Boolean;

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_4

    .line 201
    .line 202
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbu;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;

    .line 203
    .line 204
    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzd(Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;)Lcom/google/android/gms/internal/ads/zzgdy;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    new-instance v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbt;

    .line 209
    .line 210
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbt;-><init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbu;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :catch_1
    move-exception p1

    .line 218
    const-string v0, "TaggingLibraryJsInterface.getQueryInfo.onSuccess"

    .line 219
    .line 220
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbu;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;

    .line 229
    .line 230
    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zza(Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;)Landroid/webkit/WebView;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const/4 v1, 0x0

    .line 235
    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 236
    .line 237
    .line 238
    :goto_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbfj;->zzc:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 239
    .line 240
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    check-cast p1, Ljava/lang/Boolean;

    .line 245
    .line 246
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-eqz p1, :cond_5

    .line 251
    .line 252
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbfj;->zzd:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 253
    .line 254
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    check-cast p1, Ljava/lang/Boolean;

    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-eqz p1, :cond_5

    .line 265
    .line 266
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbu;->zzb:Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;

    .line 267
    .line 268
    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;->zzc(Lcom/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzj;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzj;->zzb()V

    .line 273
    .line 274
    .line 275
    :cond_5
    return-void
.end method
