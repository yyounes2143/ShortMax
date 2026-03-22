.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$1;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;

.field final synthetic b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$1;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$3$1;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/ForgotPasswordHandler;->a(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ForgotPasswordContinuation;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
