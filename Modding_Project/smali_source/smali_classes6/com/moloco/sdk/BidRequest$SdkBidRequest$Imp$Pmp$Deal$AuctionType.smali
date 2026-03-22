.class public final enum Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;
.super Ljava/lang/Enum;
.source "BidRequest.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuctionType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

.field public static final enum FIRST_PRICE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

.field public static final FIRST_PRICE_VALUE:I = 0x1

.field public static final enum FIXED_PRICE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

.field public static final FIXED_PRICE_VALUE:I = 0x3

.field public static final enum SECOND_PRICE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

.field public static final SECOND_PRICE_VALUE:I = 0x2

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;
    .locals 3

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->FIRST_PRICE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->SECOND_PRICE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->FIXED_PRICE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    .line 2
    .line 3
    const-string v1, "FIRST_PRICE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->FIRST_PRICE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    .line 11
    .line 12
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    .line 13
    .line 14
    const-string v1, "SECOND_PRICE"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->SECOND_PRICE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    .line 21
    .line 22
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    .line 23
    .line 24
    const-string v1, "FIXED_PRICE"

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->FIXED_PRICE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    .line 31
    .line 32
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->$values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->$VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    .line 37
    .line 38
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType$a;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType$a;-><init>()V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 44
    .line 45
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
    iput p3, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->FIXED_PRICE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->SECOND_PRICE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->FIRST_PRICE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    .line 19
    .line 20
    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType$b;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;
    .locals 1

    .line 1
    const-class v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    return-object p0
.end method

.method public static values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->$VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Pmp$Deal$AuctionType;->value:I

    .line 2
    .line 3
    return v0
.end method
