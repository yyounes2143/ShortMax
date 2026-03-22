.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserContextDataTypeJsonMarshaller;
.super Ljava/lang/Object;
.source "UserContextDataTypeJsonMarshaller.java"


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserContextDataTypeJsonMarshaller;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserContextDataTypeJsonMarshaller;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserContextDataTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserContextDataTypeJsonMarshaller;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserContextDataTypeJsonMarshaller;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserContextDataTypeJsonMarshaller;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserContextDataTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserContextDataTypeJsonMarshaller;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserContextDataTypeJsonMarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/UserContextDataTypeJsonMarshaller;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public b(Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;Lcom/amazonaws/util/json/AwsJsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->c()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;->d()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;->d()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "IpAddress"

    .line 15
    .line 16
    invoke-interface {p2, v1}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->e(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;->b()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/UserContextDataType;->b()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "EncodedData"

    .line 33
    .line 34
    invoke-interface {p2, v0}, Lcom/amazonaws/util/json/AwsJsonWriter;->f(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 35
    .line 36
    .line 37
    invoke-interface {p2, p1}, Lcom/amazonaws/util/json/AwsJsonWriter;->e(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-interface {p2}, Lcom/amazonaws/util/json/AwsJsonWriter;->d()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 41
    .line 42
    .line 43
    return-void
.end method
