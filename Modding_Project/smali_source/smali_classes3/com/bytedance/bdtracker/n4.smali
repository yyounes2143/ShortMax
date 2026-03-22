.class public Lcom/bytedance/bdtracker/n4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/bdtracker/r4;


# static fields
.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static volatile j:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcom/bytedance/bdtracker/v3;

.field public final c:Lcom/bytedance/bdtracker/t3;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/bytedance/bdtracker/d;

.field public final f:Lcom/bytedance/bdtracker/p1;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lcom/bytedance/bdtracker/p1;Lcom/bytedance/bdtracker/t3;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "DeviceParamsProvider"

    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/bytedance/bdtracker/n4;->g:Ljava/util/List;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/bytedance/bdtracker/n4;->e:Lcom/bytedance/bdtracker/d;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/bytedance/bdtracker/n4;->f:Lcom/bytedance/bdtracker/p1;

    .line 15
    .line 16
    iget-object p1, p3, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getLocalTest()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const-string p1, "_local"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p1, ""

    .line 28
    .line 29
    :goto_0
    iput-object p1, p0, Lcom/bytedance/bdtracker/n4;->d:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/bytedance/bdtracker/n4;->a:Landroid/content/Context;

    .line 36
    .line 37
    new-instance p2, Lcom/bytedance/bdtracker/m4;

    .line 38
    .line 39
    invoke-direct {p2}, Lcom/bytedance/bdtracker/m4;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p4, p0, Lcom/bytedance/bdtracker/n4;->c:Lcom/bytedance/bdtracker/t3;

    .line 43
    .line 44
    new-instance v0, Lcom/bytedance/bdtracker/g4;

    .line 45
    .line 46
    iget-object v1, p3, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->getSpName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, "snssdk_openudid"

    .line 53
    .line 54
    invoke-direct {v0, p1, v2, v1}, Lcom/bytedance/bdtracker/g4;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/bytedance/bdtracker/n4;->b:Lcom/bytedance/bdtracker/v3;

    .line 58
    .line 59
    iput-object p4, v0, Lcom/bytedance/bdtracker/v3;->a:Lcom/bytedance/bdtracker/v3;

    .line 60
    .line 61
    iget-object p1, p3, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getAnonymous()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_1

    .line 68
    .line 69
    new-instance p1, Lcom/bytedance/bdtracker/l4;

    .line 70
    .line 71
    invoke-direct {p1, p2}, Lcom/bytedance/bdtracker/l4;-><init>(Lcom/bytedance/bdtracker/m4;)V

    .line 72
    .line 73
    .line 74
    new-instance p2, Ljava/lang/Thread;

    .line 75
    .line 76
    invoke-direct {p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object p1, p3, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getAccount()Landroid/accounts/Account;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/n4;->a(Landroid/accounts/Account;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 6

    const-string v0, "clientudid"

    sget-object v1, Lcom/bytedance/bdtracker/n4;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/bytedance/bdtracker/n4;->i:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/n4;->a:Landroid/content/Context;

    const-string v3, "snssdk_openudid"

    invoke-static {v2, v3, v1}, Lcom/bytedance/bdtracker/g4;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/bdtracker/l0$b;->e(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/n4;->c:Lcom/bytedance/bdtracker/t3;

    invoke-virtual {v0, v4, v3}, Lcom/bytedance/bdtracker/v3;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/bdtracker/n4;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    sput-object v4, Lcom/bytedance/bdtracker/n4;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :goto_1
    iget-object v2, p0, Lcom/bytedance/bdtracker/n4;->e:Lcom/bytedance/bdtracker/d;

    .line 4
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 5
    iget-object v3, p0, Lcom/bytedance/bdtracker/n4;->g:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "getClientUDID failed"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const-string v0, ""

    return-object v0
.end method

.method public a(Landroid/accounts/Account;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/n4;->c:Lcom/bytedance/bdtracker/t3;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/t3;->a(Landroid/accounts/Account;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/bdtracker/n4;->b:Lcom/bytedance/bdtracker/v3;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/v3;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/n4;->e:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 3
    iget-object v1, p0, Lcom/bytedance/bdtracker/n4;->g:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceParamsProvider#clear clearKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " sDeviceId="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/bytedance/bdtracker/n4;->j:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/bdtracker/n4;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/bdtracker/n4;->j:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/n4;->b:Lcom/bytedance/bdtracker/v3;

    const-string v1, ""

    invoke-virtual {v0, v1, v1}, Lcom/bytedance/bdtracker/v3;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/bdtracker/n4;->j:Ljava/lang/String;

    sget-object v0, Lcom/bytedance/bdtracker/n4;->j:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/bdtracker/n4;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/n4;->b:Lcom/bytedance/bdtracker/v3;

    sget-object v1, Lcom/bytedance/bdtracker/n4;->j:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/bdtracker/v3;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/bdtracker/n4;->j:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Lcom/bytedance/bdtracker/n4;->h:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/bytedance/bdtracker/n4;->h:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/n4;->f:Lcom/bytedance/bdtracker/p1;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->isAndroidIdEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const-string v2, "openudid"

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lcom/bytedance/bdtracker/p1;->a(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/bdtracker/n4;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/bytedance/applog/util/HardwareUtils;->getSecureAndroidId(Landroid/content/Context;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string v0, ""

    .line 38
    .line 39
    :goto_0
    const/4 v1, 0x0

    .line 40
    :try_start_0
    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->e(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const/4 v4, 0x0

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    const-string v3, "9774d56d682e549c"

    .line 48
    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v2, p0, Lcom/bytedance/bdtracker/n4;->b:Lcom/bytedance/bdtracker/v3;

    .line 57
    .line 58
    invoke-virtual {v2, v4, v0}, Lcom/bytedance/bdtracker/v3;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :catchall_0
    move-exception v2

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/bytedance/bdtracker/n4;->a:Landroid/content/Context;

    .line 67
    .line 68
    const-string v5, "snssdk_openudid"

    .line 69
    .line 70
    invoke-static {v3, v5, v1}, Lcom/bytedance/bdtracker/g4;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-static {v5}, Lcom/bytedance/bdtracker/l0$b;->e(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-nez v6, :cond_7

    .line 83
    .line 84
    new-instance v4, Ljava/security/SecureRandom;

    .line 85
    .line 86
    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 87
    .line 88
    .line 89
    new-instance v5, Ljava/math/BigInteger;

    .line 90
    .line 91
    const/16 v6, 0x50

    .line 92
    .line 93
    invoke-direct {v5, v6, v4}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 94
    .line 95
    .line 96
    const/16 v4, 0x10

    .line 97
    .line 98
    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    const/16 v6, 0x2d

    .line 107
    .line 108
    if-ne v5, v6, :cond_4

    .line 109
    .line 110
    const/4 v5, 0x1

    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    rsub-int/lit8 v5, v5, 0xd

    .line 120
    .line 121
    if-lez v5, :cond_6

    .line 122
    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    :goto_2
    if-lez v5, :cond_5

    .line 129
    .line 130
    const/16 v7, 0x46

    .line 131
    .line 132
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    add-int/lit8 v5, v5, -0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    :cond_6
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    .line 151
    .line 152
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    .line 154
    .line 155
    move-object v0, v4

    .line 156
    goto :goto_4

    .line 157
    :cond_7
    iget-object v2, p0, Lcom/bytedance/bdtracker/n4;->c:Lcom/bytedance/bdtracker/t3;

    .line 158
    .line 159
    invoke-virtual {v2, v5, v4}, Lcom/bytedance/bdtracker/v3;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .line 161
    .line 162
    move-object v0, v5

    .line 163
    goto :goto_4

    .line 164
    :goto_3
    iget-object v3, p0, Lcom/bytedance/bdtracker/n4;->e:Lcom/bytedance/bdtracker/d;

    .line 165
    .line 166
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 167
    .line 168
    iget-object v4, p0, Lcom/bytedance/bdtracker/n4;->g:Ljava/util/List;

    .line 169
    .line 170
    new-array v1, v1, [Ljava/lang/Object;

    .line 171
    .line 172
    const-string v5, "getOpenUdid failed"

    .line 173
    .line 174
    invoke-interface {v3, v4, v5, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-nez v1, :cond_8

    .line 182
    .line 183
    invoke-static {v0}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/bytedance/bdtracker/n4;->d:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-nez v1, :cond_9

    .line 201
    .line 202
    sput-object v0, Lcom/bytedance/bdtracker/n4;->h:Ljava/lang/String;

    .line 203
    .line 204
    :cond_9
    return-object v0
.end method
