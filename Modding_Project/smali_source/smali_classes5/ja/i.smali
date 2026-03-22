.class public final Lja/i;
.super Lka/i;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final e:Lv/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public d:Lcom/huawei/hms/support/account/service/AccountAuthService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lv/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lv/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lja/i;->e:Lv/f;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lka/i;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final t(Lja/i;Landroid/app/Activity;Lka/j;Lcom/huawei/hms/support/account/result/AuthAccount;)V
    .locals 1

    .line 1
    const-string v0, "authAccount"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lja/i;->s(Landroid/app/Activity;Lcom/huawei/hms/support/account/result/AuthAccount;Lka/j;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final u(Lja/i;Lka/j;Landroid/app/Activity;Ljava/lang/Exception;)V
    .locals 9

    .line 1
    instance-of v0, p3, Lcom/huawei/hms/common/ApiException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lja/i;->d:Lcom/huawei/hms/support/account/service/AccountAuthService;

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/huawei/hms/support/feature/service/AuthService;->getSignInIntent()Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const-string p1, "intent.extra.isfullscreen"

    .line 16
    .line 17
    const/4 p3, 0x1

    .line 18
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const/16 p1, 0x3f3

    .line 22
    .line 23
    invoke-virtual {p2, p0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object v1, Lcom/hades/aar/auth/base/AuthType;->HUAWEI:Lcom/hades/aar/auth/base/AuthType;

    .line 28
    .line 29
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const/16 v7, 0x14

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    move-object v0, p0

    .line 40
    move-object v6, p1

    .line 41
    invoke-static/range {v0 .. v8}, Lka/i;->o(Lka/i;Lcom/hades/aar/auth/base/AuthType;ZILjava/lang/String;ZLka/j;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public k(Landroid/app/Activity;ZLka/j;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lka/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lka/i;->k(Landroid/app/Activity;ZLka/j;)V

    .line 7
    .line 8
    .line 9
    new-instance p2, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    .line 10
    .line 11
    sget-object v0, Lcom/huawei/hms/support/account/request/AccountAuthParams;->DEFAULT_AUTH_REQUEST_PARAM:Lcom/huawei/hms/support/account/request/AccountAuthParams;

    .line 12
    .line 13
    invoke-direct {p2, v0}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;-><init>(Lcom/huawei/hms/support/account/request/AccountAuthParams;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->setEmail()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->setAuthorizationCode()Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lcom/huawei/hms/support/account/request/AccountAuthParamsHelper;->createParams()Lcom/huawei/hms/support/account/request/AccountAuthParams;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p1, p2}, Lcom/huawei/hms/support/account/AccountAuthManager;->getService(Landroid/app/Activity;Lcom/huawei/hms/support/account/request/AccountAuthParams;)Lcom/huawei/hms/support/account/service/AccountAuthService;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iput-object p2, p0, Lja/i;->d:Lcom/huawei/hms/support/account/service/AccountAuthService;

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    invoke-interface {p2}, Lcom/huawei/hms/support/account/service/AccountAuthService;->silentSignIn()Lua/f;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p2, 0x0

    .line 42
    :goto_0
    if-eqz p2, :cond_1

    .line 43
    .line 44
    new-instance v0, Lja/g;

    .line 45
    .line 46
    invoke-direct {v0, p0, p1, p3}, Lja/g;-><init>(Lja/i;Landroid/app/Activity;Lka/j;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Lua/f;->c(Lua/e;)Lua/f;

    .line 50
    .line 51
    .line 52
    :cond_1
    if-eqz p2, :cond_2

    .line 53
    .line 54
    new-instance v0, Lja/h;

    .line 55
    .line 56
    invoke-direct {v0, p0, p3, p1}, Lja/h;-><init>(Lja/i;Lka/j;Landroid/app/Activity;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v0}, Lua/f;->b(Lua/d;)Lua/f;

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-super {p0}, Lka/i;->q()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lja/i;->d:Lcom/huawei/hms/support/account/service/AccountAuthService;

    .line 6
    .line 7
    return-void
.end method

.method public final s(Landroid/app/Activity;Lcom/huawei/hms/support/account/result/AuthAccount;Lka/j;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "code:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAuthorizationCode()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "HuaWeiAuth"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    new-instance v7, Lcom/hades/aar/auth/base/AuthUser;

    .line 25
    .line 26
    invoke-direct {v7}, Lcom/hades/aar/auth/base/AuthUser;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getDisplayName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p2}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getDisplayName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v7, v0}, Lcom/hades/aar/auth/base/AuthUser;->f(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAvatarUriString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {p2}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAvatarUriString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v7, v0}, Lcom/hades/aar/auth/base/AuthUser;->b(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_1
    sget-object v4, Lcom/hades/aar/auth/base/AuthType;->HUAWEI:Lcom/hades/aar/auth/base/AuthType;

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAuthorizationCode()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    const-string v6, ""

    .line 76
    .line 77
    const/4 v8, 0x0

    .line 78
    move-object v2, p0

    .line 79
    move-object v3, p1

    .line 80
    move-object v9, p3

    .line 81
    invoke-virtual/range {v2 .. v9}, Lka/i;->d(Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Ljava/lang/String;Lcom/hades/aar/auth/base/AuthUser;ZLka/j;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public tag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "HuaWeiAuth"

    .line 2
    .line 3
    return-object v0
.end method

.method public v(Landroid/app/Activity;IILandroid/content/Intent;Lka/j;)Z
    .locals 10
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lka/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p3, "activity"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p3, p0, Lka/i;->a:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    const/16 p3, 0x3f3

    .line 13
    .line 14
    if-ne p2, p3, :cond_3

    .line 15
    .line 16
    const-string p2, "HuaWeiAuth"

    .line 17
    .line 18
    const-string p3, "onActivitResult of sigInInIntent, request code: 1011"

    .line 19
    .line 20
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-static {p4}, Lcom/huawei/hms/support/account/AccountAuthManager;->parseAuthResultFromIntent(Landroid/content/Intent;)Lua/f;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    invoke-virtual {p4}, Lua/f;->g()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p4}, Lua/f;->e()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    check-cast p4, Lcom/huawei/hms/support/account/result/AuthAccount;

    .line 38
    .line 39
    const-string v0, "authAccount"

    .line 40
    .line 41
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1, p4, p5}, Lja/i;->s(Landroid/app/Activity;Lcom/huawei/hms/support/account/result/AuthAccount;Lka/j;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p4}, Lua/f;->f()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    const-string p1, "sign in cancel"

    .line 58
    .line 59
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    sget-object v1, Lcom/hades/aar/auth/base/AuthType;->HUAWEI:Lcom/hades/aar/auth/base/AuthType;

    .line 63
    .line 64
    const/16 v7, 0x14

    .line 65
    .line 66
    const/4 v8, 0x0

    .line 67
    const/4 v2, 0x0

    .line 68
    const/4 v3, 0x0

    .line 69
    const-string v4, "Request cancelled"

    .line 70
    .line 71
    const/4 v5, 0x0

    .line 72
    move-object v0, p0

    .line 73
    move-object v6, p5

    .line 74
    invoke-static/range {v0 .. v8}, Lka/i;->o(Lka/i;Lcom/hades/aar/auth/base/AuthType;ZILjava/lang/String;ZLka/j;ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string p3, "sign in failed : "

    .line 81
    .line 82
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p4}, Lua/f;->d()Ljava/lang/Exception;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    const-string v0, "null cannot be cast to non-null type com.huawei.hms.common.ApiException"

    .line 90
    .line 91
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    check-cast p3, Lcom/huawei/hms/common/ApiException;

    .line 95
    .line 96
    invoke-virtual {p3}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    sget-object v2, Lcom/hades/aar/auth/base/AuthType;->HUAWEI:Lcom/hades/aar/auth/base/AuthType;

    .line 111
    .line 112
    invoke-virtual {p4}, Lua/f;->d()Ljava/lang/Exception;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    check-cast p1, Lcom/huawei/hms/common/ApiException;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    invoke-virtual {p4}, Lua/f;->d()Ljava/lang/Exception;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    check-cast p1, Lcom/huawei/hms/common/ApiException;

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/huawei/hms/common/ApiException;->getStatusMessage()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    const/16 v8, 0x10

    .line 139
    .line 140
    const/4 v9, 0x0

    .line 141
    const/4 v3, 0x0

    .line 142
    const/4 v6, 0x0

    .line 143
    move-object v1, p0

    .line 144
    move-object v7, p5

    .line 145
    invoke-static/range {v1 .. v9}, Lka/i;->o(Lka/i;Lcom/hades/aar/auth/base/AuthType;ZILjava/lang/String;ZLka/j;ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :goto_0
    const/4 p1, 0x1

    .line 149
    return p1

    .line 150
    :cond_3
    return v0
.end method
