.class public interface abstract Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;
.super Ljava/lang/Object;
.source "AuthenticationHandler.java"


# virtual methods
.method public abstract a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;)V
.end method

.method public abstract b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/MultiFactorAuthenticationContinuation;)V
.end method

.method public abstract c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V
.end method

.method public abstract d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V
.end method

.method public abstract onFailure(Ljava/lang/Exception;)V
.end method
