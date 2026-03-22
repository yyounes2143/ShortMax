.class public final enum Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;
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
    name = "AdPosition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

.field public static final enum ABOVE_THE_FOLD:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

.field public static final ABOVE_THE_FOLD_VALUE:I = 0x1

.field public static final enum AD_POSITION_FULLSCREEN:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

.field public static final AD_POSITION_FULLSCREEN_VALUE:I = 0x7

.field public static final enum BELOW_THE_FOLD:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

.field public static final BELOW_THE_FOLD_VALUE:I = 0x3

.field public static final enum FOOTER:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

.field public static final FOOTER_VALUE:I = 0x5

.field public static final enum HEADER:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

.field public static final HEADER_VALUE:I = 0x4

.field public static final enum LOCKED:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

.field public static final LOCKED_VALUE:I = 0x2

.field public static final enum SIDEBAR:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

.field public static final SIDEBAR_VALUE:I = 0x6

.field public static final enum UNKNOWN:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

.field public static final UNKNOWN_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;
    .locals 8

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->UNKNOWN:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->ABOVE_THE_FOLD:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->LOCKED:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 6
    .line 7
    sget-object v3, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->BELOW_THE_FOLD:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 8
    .line 9
    sget-object v4, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->HEADER:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 10
    .line 11
    sget-object v5, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->FOOTER:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 12
    .line 13
    sget-object v6, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->SIDEBAR:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 14
    .line 15
    sget-object v7, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->AD_POSITION_FULLSCREEN:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 2
    .line 3
    const-string v1, "UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->UNKNOWN:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 10
    .line 11
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 12
    .line 13
    const-string v1, "ABOVE_THE_FOLD"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->ABOVE_THE_FOLD:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 20
    .line 21
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 22
    .line 23
    const-string v1, "LOCKED"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->LOCKED:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 30
    .line 31
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 32
    .line 33
    const-string v1, "BELOW_THE_FOLD"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->BELOW_THE_FOLD:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 40
    .line 41
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 42
    .line 43
    const-string v1, "HEADER"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->HEADER:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 50
    .line 51
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 52
    .line 53
    const-string v1, "FOOTER"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->FOOTER:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 60
    .line 61
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 62
    .line 63
    const-string v1, "SIDEBAR"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->SIDEBAR:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 70
    .line 71
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 72
    .line 73
    const-string v1, "AD_POSITION_FULLSCREEN"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->AD_POSITION_FULLSCREEN:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 80
    .line 81
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->$values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->$VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 86
    .line 87
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition$a;

    .line 88
    .line 89
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition$a;-><init>()V

    .line 90
    .line 91
    .line 92
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 93
    .line 94
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
    iput p3, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;
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
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->AD_POSITION_FULLSCREEN:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->SIDEBAR:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->FOOTER:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->HEADER:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->BELOW_THE_FOLD:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->LOCKED:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->ABOVE_THE_FOLD:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->UNKNOWN:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 28
    .line 29
    return-object p0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
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
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition$b;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;
    .locals 1

    .line 1
    const-class v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    return-object p0
.end method

.method public static values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->$VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$AdPosition;->value:I

    .line 2
    .line 3
    return v0
.end method
