.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$1;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$1;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->d(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserSession;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoDevice;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
