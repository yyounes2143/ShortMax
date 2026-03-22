.class public final Lcom/inmobi/media/W2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/commons/core/configs/Config;

.field public final b:I

.field public c:Lcom/inmobi/media/R2;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/inmobi/commons/core/configs/Config;)V
    .locals 8

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/inmobi/media/W2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/inmobi/media/W2;->b:I

    .line 13
    .line 14
    if-eqz p1, :cond_7

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    :try_start_0
    const-string v2, "status"

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/16 v3, 0x130

    .line 24
    .line 25
    const/16 v4, 0xc8

    .line 26
    .line 27
    if-eq v2, v4, :cond_2

    .line 28
    .line 29
    if-eq v2, v3, :cond_1

    .line 30
    .line 31
    const/16 v5, 0x194

    .line 32
    .line 33
    if-eq v2, v5, :cond_0

    .line 34
    .line 35
    const/16 v5, 0x1f4

    .line 36
    .line 37
    if-eq v2, v5, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v0, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v0, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v0, v4

    .line 45
    :goto_0
    iput v0, p0, Lcom/inmobi/media/W2;->b:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    const-string v2, "access$getTAG$cp(...)"

    .line 48
    .line 49
    const-string v5, "a3"

    .line 50
    .line 51
    if-ne v0, v4, :cond_4

    .line 52
    .line 53
    :try_start_1
    const-string v0, "content"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    sget-object v0, Lcom/inmobi/commons/core/configs/Config;->Companion:Lcom/inmobi/media/G2;

    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v6

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {v3, p1, p2, v6, v7}, Lcom/inmobi/media/G2;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)Lcom/inmobi/commons/core/configs/Config;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-nez p1, :cond_3

    .line 84
    .line 85
    new-instance p1, Lcom/inmobi/media/R2;

    .line 86
    .line 87
    const-string p2, "The received config has failed backend contract."

    .line 88
    .line 89
    const/4 v0, 0x3

    .line 90
    invoke-direct {p1, v0, p2}, Lcom/inmobi/media/R2;-><init>(BLjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Lcom/inmobi/media/W2;->c:Lcom/inmobi/media/R2;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception p1

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    iput-object p1, p0, Lcom/inmobi/media/W2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 99
    .line 100
    :goto_1
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/inmobi/media/W2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/inmobi/media/W2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/Config;->isValid()Z

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/inmobi/media/W2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/Config;->isValid()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_7

    .line 120
    .line 121
    new-instance p1, Lcom/inmobi/media/R2;

    .line 122
    .line 123
    const-string p2, "The received config has failed validation."

    .line 124
    .line 125
    invoke-direct {p1, v1, p2}, Lcom/inmobi/media/R2;-><init>(BLjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object p2, p0, Lcom/inmobi/media/W2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    iput-object p1, p0, Lcom/inmobi/media/W2;->c:Lcom/inmobi/media/R2;

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    if-ne v0, v3, :cond_5

    .line 140
    .line 141
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_5
    new-instance p1, Lcom/inmobi/media/R2;

    .line 149
    .line 150
    const-string v0, "Internal error"

    .line 151
    .line 152
    const/4 v3, 0x1

    .line 153
    invoke-direct {p1, v3, v0}, Lcom/inmobi/media/R2;-><init>(BLjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    iput-object p1, p0, Lcom/inmobi/media/W2;->c:Lcom/inmobi/media/R2;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :goto_2
    new-instance p2, Lcom/inmobi/media/R2;

    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    if-nez p1, :cond_6

    .line 172
    .line 173
    const-string p1, "Exception in config validation"

    .line 174
    .line 175
    :cond_6
    invoke-direct {p2, v1, p1}, Lcom/inmobi/media/R2;-><init>(BLjava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lcom/inmobi/media/W2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    iput-object p2, p0, Lcom/inmobi/media/W2;->c:Lcom/inmobi/media/R2;

    .line 184
    .line 185
    :cond_7
    :goto_3
    return-void
.end method
