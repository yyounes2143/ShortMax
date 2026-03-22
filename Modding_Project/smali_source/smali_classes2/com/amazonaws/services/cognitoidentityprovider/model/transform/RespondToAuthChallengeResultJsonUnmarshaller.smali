.class public Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RespondToAuthChallengeResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "RespondToAuthChallengeResultJsonUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;",
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
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/RespondToAuthChallengeResultJsonUnmarshaller;->b(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public b(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;-><init>()V

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
    if-eqz v2, :cond_4

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->g()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "ChallengeName"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->b()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->c(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->h(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string v3, "Session"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->b()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->c(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->j(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const-string v3, "ChallengeParameters"

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    new-instance v2, Lcom/amazonaws/transform/MapUnmarshaller;

    .line 72
    .line 73
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->b()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-direct {v2, v3}, Lcom/amazonaws/transform/MapUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/MapUnmarshaller;->b(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->i(Ljava/util/Map;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    const-string v3, "AuthenticationResult"

    .line 89
    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    invoke-static {}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthenticationResultTypeJsonUnmarshaller;->b()Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthenticationResultTypeJsonUnmarshaller;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2, p1}, Lcom/amazonaws/services/cognitoidentityprovider/model/transform/AuthenticationResultTypeJsonUnmarshaller;->c(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentityprovider/model/RespondToAuthChallengeResult;->g(Lcom/amazonaws/services/cognitoidentityprovider/model/AuthenticationResultType;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->f()V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->d()V

    .line 113
    .line 114
    .line 115
    return-object v0
.end method
