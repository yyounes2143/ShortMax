.class Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;
.super Ljava/lang/Object;
.source "CognitoUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->v(Ljava/util/Map;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field final synthetic b:Z

.field final synthetic c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->b:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->d:Ljava/util/Map;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->e:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->b(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-boolean v3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->b:Z

    .line 12
    .line 13
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;-><init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->d:Ljava/util/Map;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;->h(Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser$38;->a:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;->G()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v1, v0, v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;->c(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/AuthenticationContinuation;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
