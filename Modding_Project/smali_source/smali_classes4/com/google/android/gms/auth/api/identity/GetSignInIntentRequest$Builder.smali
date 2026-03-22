.class public final Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@21.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zba:Ljava/lang/String;

.field private zbb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zbc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zbd:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zbe:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zbf:Z

.field private zbg:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v8, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zba:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbb:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbc:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbe:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbf:Z

    .line 12
    .line 13
    iget v6, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbg:I

    .line 14
    .line 15
    iget-object v7, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbd:Ljava/util/List;

    .line 16
    .line 17
    move-object v0, v8

    .line 18
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/util/List;)V

    .line 19
    .line 20
    .line 21
    return-object v8
.end method

.method public filterByHostedDomain(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setClaims(Ljava/util/List;)Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/auth/api/identity/Claim;",
            ">;)",
            "Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbd:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setNonce(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbe:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRequestVerifiedPhoneNumber(Z)Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbf:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setServerClientId(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zba:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method

.method public final zba(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zbb(I)Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;->zbg:I

    .line 2
    .line 3
    return-object p0
.end method
