.class public final Lv/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/k;


# instance fields
.field public final synthetic a:Lja/b;

.field public final synthetic b:Lka/j;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lja/b;Lka/j;ZLandroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv/d;->a:Lja/b;

    .line 2
    .line 3
    iput-object p2, p0, Lv/d;->b:Lka/j;

    .line 4
    .line 5
    iput-boolean p3, p0, Lv/d;->c:Z

    .line 6
    .line 7
    iput-object p4, p0, Lv/d;->d:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static final c(Lja/b;Lka/j;Landroid/app/Activity;Lcom/google/firebase/auth/AuthCredential;Lcom/facebook/AccessToken;Lorg/json/JSONObject;Lcom/facebook/b0;)V
    .locals 8

    .line 1
    const-string v1, "birthday"

    .line 2
    .line 3
    const-string v2, "gender"

    .line 4
    .line 5
    const-string v3, "name"

    .line 6
    .line 7
    const-string v4, "id"

    .line 8
    .line 9
    new-instance v5, Lcom/hades/aar/auth/base/AuthUser;

    .line 10
    .line 11
    invoke-direct {v5}, Lcom/hades/aar/auth/base/AuthUser;-><init>()V

    .line 12
    .line 13
    .line 14
    if-eqz p5, :cond_0

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    invoke-virtual {p5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const-string v6, "`object`.getString(FIELD_ID)"

    .line 27
    .line 28
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v4}, Lja/b;->s(Lja/b;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v5, v4}, Lcom/hades/aar/auth/base/AuthUser;->b(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    .line 42
    .line 43
    invoke-virtual {p5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    invoke-virtual {p5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v5, v3}, Lcom/hades/aar/auth/base/AuthUser;->f(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    if-eqz p5, :cond_2

    .line 57
    .line 58
    invoke-virtual {p5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    invoke-virtual {p5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v5, v2}, Lcom/hades/aar/auth/base/AuthUser;->e(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    if-eqz p5, :cond_3

    .line 72
    .line 73
    invoke-virtual {p5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    invoke-virtual {p5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v5, v0}, Lcom/hades/aar/auth/base/AuthUser;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :goto_1
    if-eqz p1, :cond_3

    .line 88
    .line 89
    invoke-virtual {p0}, Lja/b;->tag()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v3, "parse FacebookResponse failed -> "

    .line 96
    .line 97
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-interface {p1, v1, v0}, Lka/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_2
    sget-object v3, Lcom/hades/aar/auth/base/AuthType;->FACEBOOK:Lcom/hades/aar/auth/base/AuthType;

    .line 115
    .line 116
    invoke-virtual {p4}, Lcom/facebook/AccessToken;->m()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    move-object v1, p0

    .line 121
    move-object v2, p2

    .line 122
    move-object v4, p3

    .line 123
    move-object v6, v0

    .line 124
    move-object v7, p1

    .line 125
    invoke-static/range {v1 .. v7}, Lja/b;->v(Lja/b;Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Lcom/google/firebase/auth/AuthCredential;Lcom/hades/aar/auth/base/AuthUser;Ljava/lang/String;Lka/j;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/FacebookException;)V
    .locals 10

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lv/d;->a:Lja/b;

    .line 7
    .line 8
    sget-object v2, Lcom/hades/aar/auth/base/AuthType;->FACEBOOK:Lcom/hades/aar/auth/base/AuthType;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    iget-object v7, p0, Lv/d;->b:Lka/j;

    .line 15
    .line 16
    const/16 v8, 0x14

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    invoke-static/range {v1 .. v9}, Lka/i;->o(Lka/i;Lcom/hades/aar/auth/base/AuthType;ZILjava/lang/String;ZLka/j;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final b(Lcom/facebook/login/r;)V
    .locals 9

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv/d;->a:Lja/b;

    .line 7
    .line 8
    invoke-static {v0}, Lja/b;->t(Lja/b;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/login/r;->a()Lcom/facebook/AccessToken;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->m()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/google/firebase/auth/e;->a(Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "getCredential(accessToken.token)"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v1, p0, Lv/d;->c:Z

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    sget-object v7, Lcom/facebook/GraphRequest;->n:Lcom/facebook/GraphRequest$c;

    .line 37
    .line 38
    iget-object v2, p0, Lv/d;->a:Lja/b;

    .line 39
    .line 40
    iget-object v3, p0, Lv/d;->b:Lka/j;

    .line 41
    .line 42
    iget-object v4, p0, Lv/d;->d:Landroid/app/Activity;

    .line 43
    .line 44
    new-instance v8, Lv/c;

    .line 45
    .line 46
    move-object v1, v8

    .line 47
    move-object v5, v0

    .line 48
    move-object v6, p1

    .line 49
    invoke-direct/range {v1 .. v6}, Lv/c;-><init>(Lja/b;Lka/j;Landroid/app/Activity;Lcom/google/firebase/auth/AuthCredential;Lcom/facebook/AccessToken;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7, p1, v8}, Lcom/facebook/GraphRequest$c;->y(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$d;)Lcom/facebook/GraphRequest;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v0, Landroid/os/Bundle;

    .line 57
    .line 58
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v1, "fields"

    .line 62
    .line 63
    const-string v2, "id,name,gender,birthday"

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->H(Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->l()Lcom/facebook/z;

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lv/d;->a:Lja/b;

    .line 76
    .line 77
    iget-object v2, p0, Lv/d;->d:Landroid/app/Activity;

    .line 78
    .line 79
    sget-object v3, Lcom/hades/aar/auth/base/AuthType;->FACEBOOK:Lcom/hades/aar/auth/base/AuthType;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->m()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    iget-object v7, p0, Lv/d;->b:Lka/j;

    .line 86
    .line 87
    const/4 v5, 0x0

    .line 88
    move-object v4, v0

    .line 89
    invoke-static/range {v1 .. v7}, Lja/b;->v(Lja/b;Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Lcom/google/firebase/auth/AuthCredential;Lcom/hades/aar/auth/base/AuthUser;Ljava/lang/String;Lka/j;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void
.end method

.method public final onCancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv/d;->a:Lja/b;

    .line 2
    .line 3
    sget-object v1, Lcom/hades/aar/auth/base/AuthType;->FACEBOOK:Lcom/hades/aar/auth/base/AuthType;

    .line 4
    .line 5
    iget-object v2, p0, Lv/d;->b:Lka/j;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lja/b;->u(Lja/b;Lcom/hades/aar/auth/base/AuthType;Lka/j;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/login/r;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lv/d;->b(Lcom/facebook/login/r;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
