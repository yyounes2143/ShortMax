.class public interface abstract Lcom/google/android/gms/auth/api/identity/AuthorizationClient;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@21.4.0"

# interfaces
.implements Lcom/google/android/gms/common/api/HasApiKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/HasApiKey<",
        "Lcom/google/android/gms/auth/api/identity/zba;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract authorize(Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;)Lcom/google/android/gms/tasks/Task;
    .param p1    # Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/auth/api/identity/AuthorizationResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract clearToken(Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;)Lcom/google/android/gms/tasks/Task;
    .param p1    # Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAuthorizationResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/identity/AuthorizationResult;
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation
.end method

.method public abstract revokeAccess(Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;)Lcom/google/android/gms/tasks/Task;
    .param p1    # Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method
