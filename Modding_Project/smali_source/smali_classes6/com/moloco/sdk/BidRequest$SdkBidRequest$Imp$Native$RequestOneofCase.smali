.class public final enum Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;
.super Ljava/lang/Enum;
.source "BidRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

.field public static final enum REQUEST:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

.field public static final enum REQUESTONEOF_NOT_SET:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

.field public static final enum REQUEST_NATIVE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;
    .locals 3

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;->REQUEST:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;->REQUEST_NATIVE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;->REQUESTONEOF_NOT_SET:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

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
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

    .line 2
    .line 3
    const-string v1, "REQUEST"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;->REQUEST:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

    .line 11
    .line 12
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

    .line 13
    .line 14
    const-string v1, "REQUEST_NATIVE"

    .line 15
    .line 16
    const/16 v4, 0x32

    .line 17
    .line 18
    invoke-direct {v0, v1, v3, v4}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;->REQUEST_NATIVE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

    .line 22
    .line 23
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

    .line 24
    .line 25
    const-string v1, "REQUESTONEOF_NOT_SET"

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-direct {v0, v1, v3, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;->REQUESTONEOF_NOT_SET:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

    .line 32
    .line 33
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;->$values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;->$VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

    .line 38
    .line 39
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
    iput p3, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;
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
    const/16 v0, 0x32

    .line 7
    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;->REQUEST_NATIVE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;->REQUEST:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;->REQUESTONEOF_NOT_SET:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

    .line 19
    .line 20
    return-object p0
.end method

.method public static valueOf(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;
    .locals 1

    .line 1
    const-class v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

    return-object p0
.end method

.method public static values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;->$VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$RequestOneofCase;->value:I

    .line 2
    .line 3
    return v0
.end method
