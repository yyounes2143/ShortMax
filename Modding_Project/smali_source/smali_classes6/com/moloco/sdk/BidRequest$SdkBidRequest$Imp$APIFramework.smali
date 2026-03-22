.class public final enum Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;
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
    name = "APIFramework"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

.field public static final enum MRAID_1:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

.field public static final MRAID_1_VALUE:I = 0x3

.field public static final enum MRAID_2:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

.field public static final MRAID_2_VALUE:I = 0x5

.field public static final enum MRAID_3:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

.field public static final MRAID_3_VALUE:I = 0x6

.field public static final enum OMID_1:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

.field public static final OMID_1_VALUE:I = 0x7

.field public static final enum ORMMA:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

.field public static final ORMMA_VALUE:I = 0x4

.field public static final enum SIMID_1_0:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

.field public static final SIMID_1_0_VALUE:I = 0x8

.field public static final enum SIMID_1_1:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

.field public static final SIMID_1_1_VALUE:I = 0x9

.field public static final enum VPAID_1:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

.field public static final VPAID_1_VALUE:I = 0x1

.field public static final enum VPAID_2:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

.field public static final VPAID_2_VALUE:I = 0x2

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;
    .locals 9

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->VPAID_1:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->VPAID_2:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->MRAID_1:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 6
    .line 7
    sget-object v3, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->ORMMA:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 8
    .line 9
    sget-object v4, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->MRAID_2:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 10
    .line 11
    sget-object v5, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->MRAID_3:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 12
    .line 13
    sget-object v6, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->OMID_1:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 14
    .line 15
    sget-object v7, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->SIMID_1_0:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 16
    .line 17
    sget-object v8, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->SIMID_1_1:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 18
    .line 19
    filled-new-array/range {v0 .. v8}, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 2
    .line 3
    const-string v1, "VPAID_1"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->VPAID_1:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 11
    .line 12
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 13
    .line 14
    const-string v1, "VPAID_2"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->VPAID_2:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 21
    .line 22
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 23
    .line 24
    const-string v1, "MRAID_1"

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->MRAID_1:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 31
    .line 32
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 33
    .line 34
    const-string v1, "ORMMA"

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v3, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->ORMMA:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 41
    .line 42
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 43
    .line 44
    const-string v1, "MRAID_2"

    .line 45
    .line 46
    const/4 v3, 0x5

    .line 47
    invoke-direct {v0, v1, v2, v3}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->MRAID_2:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 51
    .line 52
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 53
    .line 54
    const-string v1, "MRAID_3"

    .line 55
    .line 56
    const/4 v2, 0x6

    .line 57
    invoke-direct {v0, v1, v3, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->MRAID_3:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 61
    .line 62
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 63
    .line 64
    const-string v1, "OMID_1"

    .line 65
    .line 66
    const/4 v3, 0x7

    .line 67
    invoke-direct {v0, v1, v2, v3}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->OMID_1:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 71
    .line 72
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 73
    .line 74
    const-string v1, "SIMID_1_0"

    .line 75
    .line 76
    const/16 v2, 0x8

    .line 77
    .line 78
    invoke-direct {v0, v1, v3, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->SIMID_1_0:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 82
    .line 83
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 84
    .line 85
    const-string v1, "SIMID_1_1"

    .line 86
    .line 87
    const/16 v3, 0x9

    .line 88
    .line 89
    invoke-direct {v0, v1, v2, v3}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;-><init>(Ljava/lang/String;II)V

    .line 90
    .line 91
    .line 92
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->SIMID_1_1:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 93
    .line 94
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->$values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->$VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 99
    .line 100
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework$a;

    .line 101
    .line 102
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework$a;-><init>()V

    .line 103
    .line 104
    .line 105
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 106
    .line 107
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
    iput p3, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :pswitch_0
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->SIMID_1_1:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->SIMID_1_0:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->OMID_1:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->MRAID_3:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->MRAID_2:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->ORMMA:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->MRAID_1:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->VPAID_2:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->VPAID_1:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework$b;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;
    .locals 1

    .line 1
    const-class v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    return-object p0
.end method

.method public static values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->$VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$APIFramework;->value:I

    .line 2
    .line 3
    return v0
.end method
