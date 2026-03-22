.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$30;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->J(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationDetails;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$30;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$30;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$30;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;

    .line 4
    .line 5
    const-string v2, "Authentication failed due to an internal error: PASSWORD_VERIFIER challenge encountered not at the start of authentication flow"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/exceptions/CognitoInternalErrorException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->onFailure(Ljava/lang/Exception;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
