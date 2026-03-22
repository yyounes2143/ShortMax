.class public final Lja/f;
.super Lka/i;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final f:Lv/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lv/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lv/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lja/f;->f:Lv/e;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "clientId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lka/i;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lja/f;->d:Ljava/lang/String;

    .line 10
    .line 11
    iput p2, p0, Lja/f;->e:I

    .line 12
    .line 13
    return-void
.end method

.method public static final s(Lja/f;Lka/j;)V
    .locals 9

    .line 1
    sget-object v1, Lcom/hades/aar/auth/base/AuthType;->GOOGLE:Lcom/hades/aar/auth/base/AuthType;

    .line 2
    .line 3
    const/16 v7, 0x14

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "Request cancelled"

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v0, p0

    .line 12
    move-object v6, p1

    .line 13
    invoke-static/range {v0 .. v8}, Lka/i;->o(Lka/i;Lcom/hades/aar/auth/base/AuthType;ZILjava/lang/String;ZLka/j;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final t(Lja/f;Lka/j;Ljava/lang/Exception;)V
    .locals 10

    .line 1
    const-string v2, "e"

    .line 2
    .line 3
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v2, p2, Lcom/google/android/gms/common/api/ApiException;

    .line 7
    .line 8
    if-eqz v2, :cond_3

    .line 9
    .line 10
    move-object v1, p2

    .line 11
    check-cast v1, Lcom/google/android/gms/common/api/ApiException;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x30d5

    .line 18
    .line 19
    if-ne v2, v3, :cond_2

    .line 20
    .line 21
    sget-object v1, Lcom/hades/aar/auth/base/AuthType;->GOOGLE:Lcom/hades/aar/auth/base/AuthType;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const-string v2, "authType"

    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v2, p0, Lka/i;->a:Z

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 37
    iput-boolean v2, p0, Lka/i;->a:Z

    .line 38
    .line 39
    iget-object v2, p0, Lka/i;->b:Lka/b;

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-interface {v2}, Lka/b;->a()V

    .line 44
    .line 45
    .line 46
    :cond_1
    if-eqz p1, :cond_4

    .line 47
    .line 48
    invoke-interface {p0}, Lka/a;->tag()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v2, "auth cancelled"

    .line 53
    .line 54
    invoke-interface {p1, v0, v2}, Lka/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v1}, Lka/j;->d(Lcom/hades/aar/auth/base/AuthType;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    sget-object v2, Lcom/hades/aar/auth/base/AuthType;->GOOGLE:Lcom/hades/aar/auth/base/AuthType;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const/16 v7, 0x10

    .line 76
    .line 77
    const/4 v8, 0x0

    .line 78
    const/4 v5, 0x0

    .line 79
    const/4 v9, 0x0

    .line 80
    move-object v0, p0

    .line 81
    move-object v1, v2

    .line 82
    move v2, v5

    .line 83
    move v5, v9

    .line 84
    move-object v6, p1

    .line 85
    invoke-static/range {v0 .. v8}, Lka/i;->o(Lka/i;Lcom/hades/aar/auth/base/AuthType;ZILjava/lang/String;ZLka/j;ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    sget-object v2, Lcom/hades/aar/auth/base/AuthType;->GOOGLE:Lcom/hades/aar/auth/base/AuthType;

    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    const/16 v7, 0x14

    .line 96
    .line 97
    const/4 v8, 0x0

    .line 98
    const/4 v3, 0x0

    .line 99
    const/4 v5, 0x0

    .line 100
    const/4 v9, 0x0

    .line 101
    move-object v0, p0

    .line 102
    move-object v1, v2

    .line 103
    move v2, v3

    .line 104
    move v3, v5

    .line 105
    move v5, v9

    .line 106
    move-object v6, p1

    .line 107
    invoke-static/range {v0 .. v8}, Lka/i;->o(Lka/i;Lcom/hades/aar/auth/base/AuthType;ZILjava/lang/String;ZLka/j;ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_4
    :goto_0
    return-void
.end method

.method public static final u(Lja/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lka/i;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic v(Lja/f;Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Lcom/google/firebase/auth/AuthCredential;Lcom/hades/aar/auth/base/AuthUser;Ljava/lang/String;Lka/j;)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lka/i;->b(Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Lcom/google/firebase/auth/AuthCredential;Lcom/hades/aar/auth/base/AuthUser;Ljava/lang/String;Lka/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final w(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
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
    new-instance p2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 10
    .line 11
    sget-object p3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 12
    .line 13
    invoke-direct {p2, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestProfile()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iget-object p3, p0, Lja/f;->d:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p2, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iget-object p3, p0, Lja/f;->d:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p2, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestServerAuthCode(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const-string p3, "Builder(GoogleSignInOpti\u2026tId)\n            .build()"

    .line 37
    .line 38
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const-string p3, "getClient(activity, signInOptions).signInIntent"

    .line 50
    .line 51
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget p3, p0, Lja/f;->e:I

    .line 55
    .line 56
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public tag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "GoogleAuth"

    .line 2
    .line 3
    return-object v0
.end method

.method public x(Landroid/app/Activity;IILandroid/content/Intent;Lka/j;)Z
    .locals 1
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
    iget p3, p0, Lja/f;->e:I

    .line 13
    .line 14
    if-ne p2, p3, :cond_1

    .line 15
    .line 16
    invoke-static {p4}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    new-instance p3, Lauth/a/f;

    .line 21
    .line 22
    invoke-direct {p3, p0, p1, p5}, Lauth/a/f;-><init>(Lja/f;Landroid/app/Activity;Lka/j;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lja/c;

    .line 26
    .line 27
    invoke-direct {p1, p3}, Lja/c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance p2, Lja/d;

    .line 35
    .line 36
    invoke-direct {p2, p0, p5}, Lja/d;-><init>(Lja/f;Lka/j;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance p2, Lja/e;

    .line 44
    .line 45
    invoke-direct {p2, p0, p5}, Lja/e;-><init>(Lja/f;Lka/j;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    return p1

    .line 53
    :cond_1
    return v0
.end method
