.class final Lcom/google/android/gms/auth/api/identity/zbe;
.super Lcom/google/android/gms/auth/api/identity/ClearTokenRequest$Builder;
.source "com.google.android.gms:play-services-auth@@21.4.0"


# instance fields
.field private zba:Ljava/lang/String;

.field private zbb:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest$Builder;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/identity/zbe;->zba:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;->zba()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/zbe;->zbb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/zbe;->zba:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/zbe;->zba:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/zbe;->zbb:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v1, "Missing required properties: token"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method

.method public final setToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/ClearTokenRequest$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/zbe;->zba:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null token"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final zba(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/ClearTokenRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/zbe;->zbb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
