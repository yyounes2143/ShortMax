.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;
.super Ljava/lang/Object;
.source "ForgotPasswordContinuation.java"


# instance fields
.field private final a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

.field private final b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field private final c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

.field private final d:Z

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->f:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->g:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserCodeDeliveryDetails;

    .line 14
    .line 15
    iput-boolean p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->d:Z

    .line 16
    .line 17
    new-instance p1, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;->e:Ljava/util/Map;

    .line 23
    .line 24
    return-void
.end method
