.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;

    .line 14
    .line 15
    iget-object v3, v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v0, v2, v1, v4, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;

    .line 22
    .line 23
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->G()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v2, v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
