.class public abstract Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@21.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


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
.method public abstract build()Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setAccount(Landroid/accounts/Account;)Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;
    .param p1    # Landroid/accounts/Account;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setScopes(Ljava/util/List;)Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;"
        }
    .end annotation
.end method

.method public abstract zba(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
