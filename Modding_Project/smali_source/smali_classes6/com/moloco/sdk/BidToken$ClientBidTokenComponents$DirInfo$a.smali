.class public final Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$DirInfo$a;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BidToken.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$DirInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$DirInfo;",
        "Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$DirInfo$a;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$DirInfo;->b()Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$DirInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/moloco/sdk/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$DirInfo$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$DirInfo$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$DirInfo;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$DirInfo;->a(Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$DirInfo;J)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
