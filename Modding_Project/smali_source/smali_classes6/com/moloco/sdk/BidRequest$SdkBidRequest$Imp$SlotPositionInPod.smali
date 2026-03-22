.class public final enum Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;
.super Ljava/lang/Enum;
.source "BidRequest.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SlotPositionInPod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

.field public static final enum SLOT_POSITION_POD_ANY:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

.field public static final SLOT_POSITION_POD_ANY_VALUE:I = 0x0

.field public static final enum SLOT_POSITION_POD_FIRST:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

.field public static final enum SLOT_POSITION_POD_FIRST_OR_LAST:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

.field public static final SLOT_POSITION_POD_FIRST_OR_LAST_VALUE:I = 0x2

.field public static final SLOT_POSITION_POD_FIRST_VALUE:I = 0x1

.field public static final enum SLOT_POSITION_POD_LAST:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

.field public static final SLOT_POSITION_POD_LAST_VALUE:I = -0x1

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;
    .locals 4

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->SLOT_POSITION_POD_ANY:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->SLOT_POSITION_POD_LAST:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->SLOT_POSITION_POD_FIRST:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 6
    .line 7
    sget-object v3, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->SLOT_POSITION_POD_FIRST_OR_LAST:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 2
    .line 3
    const-string v1, "SLOT_POSITION_POD_ANY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->SLOT_POSITION_POD_ANY:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 10
    .line 11
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    const-string v2, "SLOT_POSITION_POD_LAST"

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v0, v2, v3, v1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->SLOT_POSITION_POD_LAST:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 21
    .line 22
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 23
    .line 24
    const-string v1, "SLOT_POSITION_POD_FIRST"

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->SLOT_POSITION_POD_FIRST:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 31
    .line 32
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 33
    .line 34
    const-string v1, "SLOT_POSITION_POD_FIRST_OR_LAST"

    .line 35
    .line 36
    const/4 v3, 0x3

    .line 37
    invoke-direct {v0, v1, v3, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->SLOT_POSITION_POD_FIRST_OR_LAST:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 41
    .line 42
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->$values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->$VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 47
    .line 48
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod$a;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod$a;-><init>()V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 54
    .line 55
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
    iput p3, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p0, v0, :cond_3

    .line 3
    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->SLOT_POSITION_POD_FIRST_OR_LAST:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->SLOT_POSITION_POD_FIRST:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_2
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->SLOT_POSITION_POD_ANY:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_3
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->SLOT_POSITION_POD_LAST:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 24
    .line 25
    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod$b;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;
    .locals 1

    .line 1
    const-class v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    return-object p0
.end method

.method public static values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->$VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$SlotPositionInPod;->value:I

    .line 2
    .line 3
    return v0
.end method
