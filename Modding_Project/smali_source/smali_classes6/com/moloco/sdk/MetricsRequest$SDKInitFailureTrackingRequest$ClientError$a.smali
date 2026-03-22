.class public final Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$a;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MetricsRequest.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError;",
        "Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$a;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError;->b()Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/moloco/sdk/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$ClientErrorTypes;)Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError;->a(Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError;Lcom/moloco/sdk/MetricsRequest$SDKInitFailureTrackingRequest$ClientError$ClientErrorTypes;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
