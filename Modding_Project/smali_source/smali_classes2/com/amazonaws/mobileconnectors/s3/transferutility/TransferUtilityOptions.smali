.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;
.super Ljava/lang/Object;
.source "TransferUtilityOptions.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final e:Lcom/amazonaws/logging/Log;


# instance fields
.field private a:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private b:I

.field private c:J

.field protected d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->e:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->b()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->a:J

    .line 9
    .line 10
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->d()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->b:I

    .line 15
    .line 16
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->e()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 21
    .line 22
    const-wide/32 v0, 0x500000

    .line 23
    .line 24
    .line 25
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->c:J

    .line 26
    .line 27
    return-void
.end method

.method static b()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-wide/32 v0, 0xea60

    .line 2
    .line 3
    .line 4
    return-wide v0
.end method

.method static d()I
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    mul-int/lit8 v0, v0, 0x2

    .line 12
    .line 13
    return v0
.end method

.method static e()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->ANY:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method protected f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public g()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->b:I

    .line 2
    .line 3
    return v0
.end method
