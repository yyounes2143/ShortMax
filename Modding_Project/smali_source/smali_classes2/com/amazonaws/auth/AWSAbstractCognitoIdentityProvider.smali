.class public abstract Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;
.super Ljava/lang/Object;
.source "AWSAbstractCognitoIdentityProvider.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSCognitoIdentityProvider;


# instance fields
.field protected final a:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

.field protected b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/IdentityChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/Map;
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->d:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->g:Ljava/util/Map;

    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->f:Ljava/util/List;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->a:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b(Lcom/amazonaws/auth/IdentityChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->f:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->b:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->b:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->f:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/amazonaws/auth/IdentityChangedListener;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->b:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v1, v0, v2}, Lcom/amazonaws/auth/IdentityChangedListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->j()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;->u(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->a()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;->v(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->g:Ljava/util/Map;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;->y(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->k()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->i(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->a:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    .line 40
    .line 41
    invoke-interface {v1, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;->j(Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetIdResult;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdResult;->b()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdResult;->b()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->c(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->b:Ljava/lang/String;

    .line 59
    .line 60
    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->g:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public f(Ljava/util/Map;)V
    .locals 0
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
    iput-object p1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->g:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public h()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->g:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method protected i(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->g()Lcom/amazonaws/RequestClientOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/amazonaws/RequestClientOptions;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected abstract k()Ljava/lang/String;
.end method

.method protected l(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method protected m(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
