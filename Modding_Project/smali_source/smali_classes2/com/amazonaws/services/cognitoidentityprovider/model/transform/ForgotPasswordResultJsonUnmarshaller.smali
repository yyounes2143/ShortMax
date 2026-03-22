.class public Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForgotPasswordResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "ForgotPasswordResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
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
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/ForgotPasswordResultJsonUnmarshaller;->b(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public b(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->a()Lcom/amazonaws/util/json/AwsJsonReader;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "CodeDeliveryDetails"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CodeDeliveryDetailsTypeJsonUnmarshaller;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CodeDeliveryDetailsTypeJsonUnmarshaller;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/CodeDeliveryDetailsTypeJsonUnmarshaller;->c(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/ForgotPasswordResult;->d(Lcom/amazonaws/services/cognitoidentityprovider/model/CodeDeliveryDetailsType;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->f()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method
