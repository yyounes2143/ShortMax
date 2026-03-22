.class public Lcom/amazonaws/mobile/client/DeviceOperations;
.super Ljava/lang/Object;
.source "DeviceOperations.java"


# instance fields
.field private final a:Lcom/amazonaws/mobile/client/AWSMobileClient;

.field private final b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/mobile/client/DeviceOperations;->a:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/amazonaws/mobile/client/DeviceOperations;->b:Lcom/amazonaws/services/cognitoidentityprovider/AmazonCognitoIdentityProvider;

    .line 7
    .line 8
    return-void
.end method
