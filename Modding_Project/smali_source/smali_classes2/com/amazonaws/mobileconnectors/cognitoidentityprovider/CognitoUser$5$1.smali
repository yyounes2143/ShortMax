.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$1;
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
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$5;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->o(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-interface {v1, v0, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
