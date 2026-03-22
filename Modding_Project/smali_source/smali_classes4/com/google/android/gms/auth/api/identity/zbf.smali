.class final Lcom/google/android/gms/auth/api/identity/zbf;
.super Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;
.source "com.google.android.gms:play-services-auth@@21.4.0"


# instance fields
.field private zba:Ljava/util/List;

.field private zbb:Landroid/accounts/Account;

.field private zbc:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->getScopes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/identity/zbf;->zba:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/identity/zbf;->zbb:Landroid/accounts/Account;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->zba()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/zbf;->zbc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/zbf;->zba:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/zbf;->zbb:Landroid/accounts/Account;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/zbf;->zba:Ljava/util/List;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/zbf;->zbb:Landroid/accounts/Account;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/google/android/gms/auth/api/identity/zbf;->zbc:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;-><init>(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/zbf;->zba:Ljava/util/List;

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    const-string v1, " scopes"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/zbf;->zbb:Landroid/accounts/Account;

    .line 37
    .line 38
    if-nez v1, :cond_3

    .line 39
    .line 40
    const-string v1, " account"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v2, "Missing required properties:"

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1
.end method

.method public final setAccount(Landroid/accounts/Account;)Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/zbf;->zbb:Landroid/accounts/Account;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null account"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final setScopes(Ljava/util/List;)Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/zbf;->zba:Ljava/util/List;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null scopes"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final zba(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/zbf;->zbc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
