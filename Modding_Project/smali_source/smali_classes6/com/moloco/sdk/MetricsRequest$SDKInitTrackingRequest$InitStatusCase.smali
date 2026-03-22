.class public final enum Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;
.super Ljava/lang/Enum;
.source "MetricsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitStatusCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

.field public static final enum FAILURE:Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

.field public static final enum INITSTATUS_NOT_SET:Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

.field public static final enum SUCCESS:Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;
    .locals 3

    .line 1
    sget-object v0, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;->SUCCESS:Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;->FAILURE:Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;->INITSTATUS_NOT_SET:Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

    .line 2
    .line 3
    const-string v1, "SUCCESS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;->SUCCESS:Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

    .line 11
    .line 12
    new-instance v0, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

    .line 13
    .line 14
    const-string v1, "FAILURE"

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v4}, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;->FAILURE:Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

    .line 21
    .line 22
    new-instance v0, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

    .line 23
    .line 24
    const-string v1, "INITSTATUS_NOT_SET"

    .line 25
    .line 26
    invoke-direct {v0, v1, v4, v2}, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;->INITSTATUS_NOT_SET:Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

    .line 30
    .line 31
    invoke-static {}, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;->$values()[Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;->$VALUES:[Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

    .line 36
    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    sget-object p0, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;->FAILURE:Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    sget-object p0, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;->SUCCESS:Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_2
    sget-object p0, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;->INITSTATUS_NOT_SET:Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

    .line 18
    .line 19
    return-object p0
.end method

.method public static valueOf(I)Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;->forNumber(I)Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;
    .locals 1

    .line 1
    const-class v0, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

    return-object p0
.end method

.method public static values()[Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;->$VALUES:[Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/MetricsRequest$SDKInitTrackingRequest$InitStatusCase;->value:I

    .line 2
    .line 3
    return v0
.end method
