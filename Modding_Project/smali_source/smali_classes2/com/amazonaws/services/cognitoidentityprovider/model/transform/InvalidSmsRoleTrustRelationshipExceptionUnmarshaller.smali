.class public Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidSmsRoleTrustRelationshipExceptionUnmarshaller;
.super Lcom/amazonaws/transform/JsonErrorUnmarshaller;
.source "InvalidSmsRoleTrustRelationshipExceptionUnmarshaller.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/services/cognitoidentityprovider/model/InvalidSmsRoleTrustRelationshipException;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/InvalidSmsRoleTrustRelationshipExceptionUnmarshaller;->d(Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/amazonaws/AmazonServiceException;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public c(Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "InvalidSmsRoleTrustRelationshipException"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public d(Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/amazonaws/AmazonServiceException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;->d(Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/amazonaws/AmazonServiceException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/amazonaws/services/cognitoidentityprovider/model/InvalidSmsRoleTrustRelationshipException;

    .line 6
    .line 7
    const-string v0, "InvalidSmsRoleTrustRelationshipException"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/amazonaws/AmazonServiceException;->h(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method
