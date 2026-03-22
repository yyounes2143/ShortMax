.class Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$ConnectionType$a;
.super Ljava/lang/Object;
.source "BidToken.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$ConnectionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$ConnectionType;",
        ">;"
    }
.end annotation


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


# virtual methods
.method public a(I)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$ConnectionType;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$ConnectionType;->forNumber(I)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$ConnectionType;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$ConnectionType$a;->a(I)Lcom/moloco/sdk/BidToken$ClientBidTokenComponents$NetworkInfo$ConnectionType;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
