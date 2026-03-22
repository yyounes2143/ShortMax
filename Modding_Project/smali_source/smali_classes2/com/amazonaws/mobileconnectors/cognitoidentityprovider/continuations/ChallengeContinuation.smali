.class public Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;
.super Ljava/lang/Object;
.source "ChallengeContinuation.java"


# instance fields
.field protected final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

.field private final i:Z

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;ZLcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p6, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->c:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->d:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->e:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->f:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUser;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->g:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->h:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/AuthenticationHandler;

    .line 17
    .line 18
    iput-boolean p7, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->i:Z

    .line 19
    .line 20
    new-instance p1, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->a:Ljava/util/Map;

    .line 26
    .line 27
    new-instance p1, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->j:Ljava/util/Map;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->b:Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->e()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->j:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/continuations/ChallengeContinuation;->j:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
