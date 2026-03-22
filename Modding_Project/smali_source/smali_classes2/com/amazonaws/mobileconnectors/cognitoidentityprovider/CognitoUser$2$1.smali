.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$1;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;

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
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;

    .line 4
    .line 5
    new-instance v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$2$1;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ResendConfirmationCodeResult;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;-><init>(Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/VerificationHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
