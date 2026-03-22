.class public final Lcom/moloco/sdk/MetricsRequest$SDKInitSuccessTrackingRequest$a;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MetricsRequest.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/MetricsRequest$SDKInitSuccessTrackingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/moloco/sdk/MetricsRequest$SDKInitSuccessTrackingRequest;",
        "Lcom/moloco/sdk/MetricsRequest$SDKInitSuccessTrackingRequest$a;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/moloco/sdk/MetricsRequest$SDKInitSuccessTrackingRequest;->a()Lcom/moloco/sdk/MetricsRequest$SDKInitSuccessTrackingRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/moloco/sdk/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/MetricsRequest$SDKInitSuccessTrackingRequest$a;-><init>()V

    return-void
.end method
