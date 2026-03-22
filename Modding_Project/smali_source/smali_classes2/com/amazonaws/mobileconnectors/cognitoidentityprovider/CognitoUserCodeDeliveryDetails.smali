.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;
.super Ljava/lang/Object;
.source "CognitoUserCodeDeliveryDetails.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;->e()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;->d()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;->b()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->c:Ljava/lang/String;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->a:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->b:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;->c:Ljava/lang/String;

    .line 31
    .line 32
    :goto_0
    return-void
.end method
