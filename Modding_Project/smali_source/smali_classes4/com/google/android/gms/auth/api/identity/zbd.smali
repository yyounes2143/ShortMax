.class final Lcom/google/android/gms/auth/api/identity/zbd;
.super Lcom/google/android/gms/auth/api/identity/Claim$Builder;
.source "com.google.android.gms:play-services-auth@@21.4.0"


# instance fields
.field private zba:Ljava/lang/String;

.field private zbb:Z

.field private zbc:B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/identity/Claim$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/auth/api/identity/Claim;
    .locals 3

    .line 1
    iget-byte v0, p0, Lcom/google/android/gms/auth/api/identity/zbd;->zbc:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/zbd;->zba:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/api/identity/Claim;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/zbd;->zba:Ljava/lang/String;

    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/google/android/gms/auth/api/identity/zbd;->zbb:Z

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/api/identity/Claim;-><init>(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/zbd;->zba:Ljava/lang/String;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    const-string v1, " name"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-byte v1, p0, Lcom/google/android/gms/auth/api/identity/zbd;->zbc:B

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    const-string v1, " essential"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v2, "Missing required properties:"

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v1
.end method

.method public final setEssential(Z)Lcom/google/android/gms/auth/api/identity/Claim$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/identity/zbd;->zbb:Z

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-byte p1, p0, Lcom/google/android/gms/auth/api/identity/zbd;->zbc:B

    .line 5
    .line 6
    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/Claim$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/zbd;->zba:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null name"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method
