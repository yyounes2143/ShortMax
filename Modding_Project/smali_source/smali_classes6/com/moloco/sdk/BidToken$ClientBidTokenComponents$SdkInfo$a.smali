.class public final Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$SdkInfo$a;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BidToken.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$SdkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$SdkInfo;",
        "Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$SdkInfo$a;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$SdkInfo;->b()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$SdkInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/moloco/sdk/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$SdkInfo$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$SdkInfo$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$SdkInfo;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$SdkInfo;->a(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$SdkInfo;Z)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
