.class public final Lauth/a/f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic d:Lja/f;

.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Lka/j;


# direct methods
.method public constructor <init>(Lja/f;Landroid/app/Activity;Lka/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lauth/a/f;->d:Lja/f;

    .line 2
    .line 3
    iput-object p2, p0, Lauth/a/f;->e:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p3, p0, Lauth/a/f;->f:Lka/j;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 2
    .line 3
    iget-object v0, p0, Lauth/a/f;->d:Lja/f;

    .line 4
    .line 5
    invoke-static {v0}, Lja/f;->u(Lja/f;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v5, Lcom/hades/aar/auth/base/AuthUser;

    .line 13
    .line 14
    invoke-direct {v5}, Lcom/hades/aar/auth/base/AuthUser;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getDisplayName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getDisplayName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v5, v0}, Lcom/hades/aar/auth/base/AuthUser;->f(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getPhotoUrl()Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getPhotoUrl()Landroid/net/Uri;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v5, v0}, Lcom/hades/aar/auth/base/AuthUser;->b(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    iget-object v1, p0, Lauth/a/f;->d:Lja/f;

    .line 55
    .line 56
    iget-object v2, p0, Lauth/a/f;->e:Landroid/app/Activity;

    .line 57
    .line 58
    sget-object v3, Lcom/hades/aar/auth/base/AuthType;->GOOGLE:Lcom/hades/aar/auth/base/AuthType;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-static {v0, v4}, Lcom/google/firebase/auth/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const-string v0, "getCredential(it.idToken, null)"

    .line 70
    .line 71
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    iget-object v7, p0, Lauth/a/f;->f:Lka/j;

    .line 79
    .line 80
    invoke-static/range {v1 .. v7}, Lja/f;->v(Lja/f;Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Lcom/google/firebase/auth/AuthCredential;Lcom/hades/aar/auth/base/AuthUser;Ljava/lang/String;Lka/j;)V

    .line 81
    .line 82
    .line 83
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 84
    .line 85
    return-object p1
.end method
