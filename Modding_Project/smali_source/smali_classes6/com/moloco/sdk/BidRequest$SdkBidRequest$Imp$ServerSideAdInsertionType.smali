.class public final enum Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;
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
    name = "ServerSideAdInsertionType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

.field public static final enum CLIENT_SIDE_ONLY:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

.field public static final CLIENT_SIDE_ONLY_VALUE:I = 0x1

.field public static final enum SERVER_SIDE_AD_INSERTION_TYPE_UNKNOWN:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

.field public static final SERVER_SIDE_AD_INSERTION_TYPE_UNKNOWN_VALUE:I = 0x0

.field public static final enum SERVER_SIDE_ONLY:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

.field public static final SERVER_SIDE_ONLY_VALUE:I = 0x3

.field public static final enum SERVER_SIDE_STITCHED_CLIENT_TRACKER:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

.field public static final SERVER_SIDE_STITCHED_CLIENT_TRACKER_VALUE:I = 0x2

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;
    .locals 4

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;->SERVER_SIDE_AD_INSERTION_TYPE_UNKNOWN:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;->CLIENT_SIDE_ONLY:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;->SERVER_SIDE_STITCHED_CLIENT_TRACKER:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    .line 6
    .line 7
    sget-object v3, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;->SERVER_SIDE_ONLY:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    .line 2
    .line 3
    const-string v1, "SERVER_SIDE_AD_INSERTION_TYPE_UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;->SERVER_SIDE_AD_INSERTION_TYPE_UNKNOWN:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    .line 10
    .line 11
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    .line 12
    .line 13
    const-string v1, "CLIENT_SIDE_ONLY"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;->CLIENT_SIDE_ONLY:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    .line 20
    .line 21
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    .line 22
    .line 23
    const-string v1, "SERVER_SIDE_STITCHED_CLIENT_TRACKER"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;->SERVER_SIDE_STITCHED_CLIENT_TRACKER:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    .line 30
    .line 31
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    .line 32
    .line 33
    const-string v1, "SERVER_SIDE_ONLY"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;->SERVER_SIDE_ONLY:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    .line 40
    .line 41
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;->$values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;->$VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    .line 46
    .line 47
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType$a;

    .line 48
    .line 49
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType$a;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 53
    .line 54
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
    iput p3, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;->SERVER_SIDE_ONLY:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;->SERVER_SIDE_STITCHED_CLIENT_TRACKER:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_2
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;->CLIENT_SIDE_ONLY:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_3
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;->SERVER_SIDE_AD_INSERTION_TYPE_UNKNOWN:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

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
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType$b;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;
    .locals 1

    .line 1
    const-class v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    return-object p0
.end method

.method public static values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;->$VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$ServerSideAdInsertionType;->value:I

    .line 2
    .line 3
    return v0
.end method
