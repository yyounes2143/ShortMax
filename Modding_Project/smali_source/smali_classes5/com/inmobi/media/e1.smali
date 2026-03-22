.class public final Lcom/inmobi/media/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/util/HashMap;

.field public static final f:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/e1;->e:Ljava/util/HashMap;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    sput-byte v0, Lcom/inmobi/media/e1;->f:B

    .line 10
    .line 11
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v3, v2

    .line 24
    :goto_0
    const/16 v4, 0x80

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v5, v2

    .line 38
    :goto_1
    if-eqz v5, :cond_2

    .line 39
    .line 40
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 41
    .line 42
    sput-object v6, Lcom/inmobi/media/e1;->a:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v5, v3}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    sput-object v5, Lcom/inmobi/media/e1;->d:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    sput-object v5, Lcom/inmobi/media/e1;->b:Ljava/lang/String;

    .line 62
    .line 63
    :cond_2
    if-eqz v3, :cond_3

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    move-object v1, v2

    .line 75
    :goto_2
    if-eqz v1, :cond_6

    .line 76
    .line 77
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 78
    .line 79
    if-eqz v2, :cond_4

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-nez v3, :cond_6

    .line 86
    .line 87
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 88
    .line 89
    const/16 v3, 0x1c

    .line 90
    .line 91
    if-ge v2, v3, :cond_5

    .line 92
    .line 93
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 94
    .line 95
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    :goto_3
    move-object v2, v1

    .line 100
    goto :goto_4

    .line 101
    :cond_5
    invoke-static {v1}, Lcom/appsflyer/internal/z;->a(Landroid/content/pm/PackageInfo;)J

    .line 102
    .line 103
    .line 104
    move-result-wide v1

    .line 105
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    goto :goto_3

    .line 110
    :cond_6
    :goto_4
    invoke-static {v2}, Lcom/inmobi/media/B2;->a(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    sput-object v2, Lcom/inmobi/media/e1;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    :catch_0
    :cond_7
    :try_start_1
    sget-object v1, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->H()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_8

    .line 125
    .line 126
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    .line 131
    .line 132
    .line 133
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    xor-int/lit8 v0, v0, 0x1

    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_8
    const/4 v0, 0x0

    .line 138
    :catch_1
    :goto_5
    sput-byte v0, Lcom/inmobi/media/e1;->f:B

    .line 139
    .line 140
    sget-object v1, Lcom/inmobi/media/e1;->a:Ljava/lang/String;

    .line 141
    .line 142
    if-eqz v1, :cond_9

    .line 143
    .line 144
    sget-object v2, Lcom/inmobi/media/e1;->e:Ljava/util/HashMap;

    .line 145
    .line 146
    const-string v3, "u-appbid"

    .line 147
    .line 148
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    :cond_9
    sget-object v1, Lcom/inmobi/media/e1;->d:Ljava/lang/String;

    .line 152
    .line 153
    if-eqz v1, :cond_a

    .line 154
    .line 155
    sget-object v2, Lcom/inmobi/media/e1;->e:Ljava/util/HashMap;

    .line 156
    .line 157
    const-string v3, "u-appdnm"

    .line 158
    .line 159
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    :cond_a
    sget-object v1, Lcom/inmobi/media/e1;->c:Ljava/lang/String;

    .line 163
    .line 164
    if-eqz v1, :cond_b

    .line 165
    .line 166
    sget-object v2, Lcom/inmobi/media/e1;->e:Ljava/util/HashMap;

    .line 167
    .line 168
    const-string v3, "u-appver"

    .line 169
    .line 170
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    :cond_b
    sget-object v1, Lcom/inmobi/media/e1;->e:Ljava/util/HashMap;

    .line 174
    .line 175
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const-string v2, "u-appsecure"

    .line 180
    .line 181
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
