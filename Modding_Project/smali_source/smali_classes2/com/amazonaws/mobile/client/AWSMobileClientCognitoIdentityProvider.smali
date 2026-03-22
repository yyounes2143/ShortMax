.class Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;
.super Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;
.source "AWSMobileClient.java"


# instance fields
.field h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->e:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->d()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "AWSMobileClient"

    .line 2
    .line 3
    return-object v0
.end method

.method n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->l(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p2}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->m(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;->h:Z

    .line 9
    .line 10
    return-void
.end method

.method o()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClientCognitoIdentityProvider;->h:Z

    .line 3
    .line 4
    return-void
.end method
