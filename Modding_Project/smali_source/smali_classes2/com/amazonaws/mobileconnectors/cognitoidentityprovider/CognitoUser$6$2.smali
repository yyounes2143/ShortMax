.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$2;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$2;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$2;->b:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$2;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$2;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$6$2;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
