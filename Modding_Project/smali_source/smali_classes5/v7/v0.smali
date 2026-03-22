.class public final Lv7/v0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.0.1"


# direct methods
.method public static a(Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzajb;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lcom/google/firebase/auth/GoogleAuthCredential;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p0, Lcom/google/firebase/auth/GoogleAuthCredential;

    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/google/firebase/auth/GoogleAuthCredential;->w(Lcom/google/firebase/auth/GoogleAuthCredential;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzajb;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    instance-of v0, p0, Lcom/google/firebase/auth/FacebookAuthCredential;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p0, Lcom/google/firebase/auth/FacebookAuthCredential;

    .line 20
    .line 21
    invoke-static {p0, p1}, Lcom/google/firebase/auth/FacebookAuthCredential;->w(Lcom/google/firebase/auth/FacebookAuthCredential;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzajb;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_1
    instance-of v0, p0, Lcom/google/firebase/auth/TwitterAuthCredential;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    check-cast p0, Lcom/google/firebase/auth/TwitterAuthCredential;

    .line 31
    .line 32
    invoke-static {p0, p1}, Lcom/google/firebase/auth/TwitterAuthCredential;->w(Lcom/google/firebase/auth/TwitterAuthCredential;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzajb;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_2
    instance-of v0, p0, Lcom/google/firebase/auth/GithubAuthCredential;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    check-cast p0, Lcom/google/firebase/auth/GithubAuthCredential;

    .line 42
    .line 43
    invoke-static {p0, p1}, Lcom/google/firebase/auth/GithubAuthCredential;->w(Lcom/google/firebase/auth/GithubAuthCredential;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzajb;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_3
    instance-of v0, p0, Lcom/google/firebase/auth/PlayGamesAuthCredential;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    check-cast p0, Lcom/google/firebase/auth/PlayGamesAuthCredential;

    .line 53
    .line 54
    invoke-static {p0, p1}, Lcom/google/firebase/auth/PlayGamesAuthCredential;->w(Lcom/google/firebase/auth/PlayGamesAuthCredential;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzajb;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_4
    instance-of v0, p0, Lcom/google/firebase/auth/zze;

    .line 60
    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    check-cast p0, Lcom/google/firebase/auth/zze;

    .line 64
    .line 65
    invoke-static {p0, p1}, Lcom/google/firebase/auth/zze;->x(Lcom/google/firebase/auth/zze;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzajb;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    const-string p1, "Unsupported credential type."

    .line 73
    .line 74
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method
