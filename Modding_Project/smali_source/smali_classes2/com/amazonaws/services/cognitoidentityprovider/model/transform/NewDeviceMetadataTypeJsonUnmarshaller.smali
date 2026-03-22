.class Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NewDeviceMetadataTypeJsonUnmarshaller;
.super Ljava/lang/Object;
.source "NewDeviceMetadataTypeJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NewDeviceMetadataTypeJsonUnmarshaller;


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

.method public static b()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NewDeviceMetadataTypeJsonUnmarshaller;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NewDeviceMetadataTypeJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NewDeviceMetadataTypeJsonUnmarshaller;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NewDeviceMetadataTypeJsonUnmarshaller;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NewDeviceMetadataTypeJsonUnmarshaller;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NewDeviceMetadataTypeJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NewDeviceMetadataTypeJsonUnmarshaller;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NewDeviceMetadataTypeJsonUnmarshaller;->a:Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NewDeviceMetadataTypeJsonUnmarshaller;

    .line 13
    .line 14
    return-object v0
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
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/NewDeviceMetadataTypeJsonUnmarshaller;->c(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public c(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->a()Lcom/amazonaws/util/json/AwsJsonReader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->f()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance v1, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;

    .line 17
    .line 18
    invoke-direct {v1}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->c()V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "DeviceKey"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->b()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->c(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->f(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-string v3, "DeviceGroupKey"

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->b()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->c(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/NewDeviceMetadataType;->e(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->f()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-interface {v0}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    .line 79
    .line 80
    .line 81
    return-object v1
.end method
