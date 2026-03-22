.class public Lcom/huawei/hms/framework/network/grs/f/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "e"

.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hms/framework/network/grs/f/e$a;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/huawei/hms/framework/network/grs/f/e$a;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/huawei/hms/framework/network/grs/f/e;->b:Ljava/util/Set;

    .line 13
    .line 14
    return-void
.end method

.method private static a(Landroid/content/Context;Lya/a;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Z)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p3}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getSerCountry()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p3}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getRegCountry()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p3}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getIssueCountry()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, ">"

    .line 14
    .line 15
    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    array-length v3, p2

    .line 20
    const/4 v4, 0x0

    .line 21
    :goto_0
    if-ge v4, v3, :cond_4

    .line 22
    .line 23
    aget-object v5, p2, v4

    .line 24
    .line 25
    sget-object v6, Lcom/huawei/hms/framework/network/grs/f/e;->b:Ljava/util/Set;

    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_3

    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const-string v7, "ser_country"

    .line 42
    .line 43
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    const-string v7, "UNKNOWN"

    .line 48
    .line 49
    if-eqz v6, :cond_0

    .line 50
    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-nez v6, :cond_0

    .line 56
    .line 57
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-nez v6, :cond_0

    .line 62
    .line 63
    sget-object p0, Lcom/huawei/hms/framework/network/grs/f/e;->a:Ljava/lang/String;

    .line 64
    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string p2, "current route_by is serCountry and routerCountry is: "

    .line 71
    .line 72
    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p0, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_2

    .line 86
    .line 87
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    const-string v8, "reg_country"

    .line 92
    .line 93
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_1

    .line 98
    .line 99
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-nez v6, :cond_1

    .line 104
    .line 105
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-nez v6, :cond_1

    .line 110
    .line 111
    sget-object p0, Lcom/huawei/hms/framework/network/grs/f/e;->a:Ljava/lang/String;

    .line 112
    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string p2, "current route_by is regCountry and routerCountry is: "

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p0, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    move-object v0, v1

    .line 134
    goto :goto_2

    .line 135
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    const-string v8, "issue_country"

    .line 140
    .line 141
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_2

    .line 146
    .line 147
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-nez v6, :cond_2

    .line 152
    .line 153
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-nez v6, :cond_2

    .line 158
    .line 159
    sget-object p0, Lcom/huawei/hms/framework/network/grs/f/e;->a:Ljava/lang/String;

    .line 160
    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string p2, "current route_by is issueCountry and routerCountry is: "

    .line 167
    .line 168
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {p0, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    move-object v0, v2

    .line 182
    goto :goto_2

    .line 183
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    const-string v6, "geo_ip"

    .line 188
    .line 189
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    if-eqz v5, :cond_3

    .line 194
    .line 195
    new-instance p2, Lab/b;

    .line 196
    .line 197
    invoke-direct {p2, p0, p1, p3}, Lab/b;-><init>(Landroid/content/Context;Lya/a;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2, p4}, Lab/b;->a(Z)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    sget-object p0, Lcom/huawei/hms/framework/network/grs/f/e;->a:Ljava/lang/String;

    .line 205
    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string p2, "current route_by is geo_ip and routerCountry is: "

    .line 212
    .line 213
    goto/16 :goto_1

    .line 214
    .line 215
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_4
    const-string v0, ""

    .line 220
    .line 221
    :goto_2
    return-object v0
.end method

.method public static b(Landroid/content/Context;Lya/a;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Z)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/huawei/hms/framework/network/grs/f/e;->a:Ljava/lang/String;

    .line 8
    .line 9
    const-string p1, "routeBy must be not empty string or null."

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string v0, "no_route"

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    const-string v0, "unconditional"

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/hms/framework/network/grs/f/e;->a(Landroid/content/Context;Lya/a;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Z)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_2
    :goto_0
    sget-object p0, Lcom/huawei/hms/framework/network/grs/f/e;->a:Ljava/lang/String;

    .line 39
    .line 40
    const-string p1, "routeBy equals NO_ROUTE_POLICY"

    .line 41
    .line 42
    invoke-static {p0, p1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    const-string p0, "no_route_country"

    .line 46
    .line 47
    return-object p0
.end method
