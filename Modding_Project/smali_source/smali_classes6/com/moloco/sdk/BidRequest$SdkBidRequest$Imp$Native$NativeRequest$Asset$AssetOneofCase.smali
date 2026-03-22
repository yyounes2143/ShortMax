.class public final enum Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;
.super Ljava/lang/Enum;
.source "BidRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AssetOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

.field public static final enum ASSETONEOF_NOT_SET:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

.field public static final enum DATA:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

.field public static final enum IMG:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

.field public static final enum TITLE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

.field public static final enum VIDEO:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;
    .locals 5

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->TITLE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->IMG:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->VIDEO:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 6
    .line 7
    sget-object v3, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->DATA:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 8
    .line 9
    sget-object v4, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->ASSETONEOF_NOT_SET:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 2
    .line 3
    const-string v1, "TITLE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x3

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->TITLE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 11
    .line 12
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 13
    .line 14
    const-string v1, "IMG"

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x4

    .line 18
    invoke-direct {v0, v1, v4, v5}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->IMG:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 22
    .line 23
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    const/4 v4, 0x5

    .line 27
    const-string v6, "VIDEO"

    .line 28
    .line 29
    invoke-direct {v0, v6, v1, v4}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->VIDEO:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 33
    .line 34
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 35
    .line 36
    const-string v1, "DATA"

    .line 37
    .line 38
    const/4 v4, 0x6

    .line 39
    invoke-direct {v0, v1, v3, v4}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;-><init>(Ljava/lang/String;II)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->DATA:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 43
    .line 44
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 45
    .line 46
    const-string v1, "ASSETONEOF_NOT_SET"

    .line 47
    .line 48
    invoke-direct {v0, v1, v5, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->ASSETONEOF_NOT_SET:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 52
    .line 53
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->$values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->$VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 58
    .line 59
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
    iput p3, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;
    .locals 1

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-eq p0, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x5

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x6

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->DATA:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->VIDEO:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->IMG:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_3
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->TITLE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_4
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->ASSETONEOF_NOT_SET:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 30
    .line 31
    return-object p0
.end method

.method public static valueOf(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;
    .locals 1

    .line 1
    const-class v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    return-object p0
.end method

.method public static values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->$VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$Asset$AssetOneofCase;->value:I

    .line 2
    .line 3
    return v0
.end method
