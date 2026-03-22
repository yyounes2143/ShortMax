.class public final enum Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;
.super Ljava/lang/Enum;
.source "BidRequest.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaybackMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

.field public static final enum AUTO_PLAY_SOUND_OFF:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

.field public static final AUTO_PLAY_SOUND_OFF_VALUE:I = 0x2

.field public static final enum AUTO_PLAY_SOUND_ON:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

.field public static final AUTO_PLAY_SOUND_ON_VALUE:I = 0x1

.field public static final enum CLICK_TO_PLAY:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

.field public static final CLICK_TO_PLAY_VALUE:I = 0x3

.field public static final enum CONTINUOUS:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

.field public static final CONTINUOUS_VALUE:I = 0x7

.field public static final enum ENTER_SOUND_OFF:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

.field public static final ENTER_SOUND_OFF_VALUE:I = 0x6

.field public static final enum ENTER_SOUND_ON:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

.field public static final ENTER_SOUND_ON_VALUE:I = 0x5

.field public static final enum MOUSE_OVER:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

.field public static final MOUSE_OVER_VALUE:I = 0x4

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;
    .locals 7

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->AUTO_PLAY_SOUND_ON:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->AUTO_PLAY_SOUND_OFF:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->CLICK_TO_PLAY:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 6
    .line 7
    sget-object v3, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->MOUSE_OVER:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 8
    .line 9
    sget-object v4, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->ENTER_SOUND_ON:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 10
    .line 11
    sget-object v5, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->ENTER_SOUND_OFF:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 12
    .line 13
    sget-object v6, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->CONTINUOUS:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 2
    .line 3
    const-string v1, "AUTO_PLAY_SOUND_ON"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->AUTO_PLAY_SOUND_ON:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 11
    .line 12
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 13
    .line 14
    const-string v1, "AUTO_PLAY_SOUND_OFF"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->AUTO_PLAY_SOUND_OFF:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 21
    .line 22
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 23
    .line 24
    const-string v1, "CLICK_TO_PLAY"

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->CLICK_TO_PLAY:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 31
    .line 32
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 33
    .line 34
    const-string v1, "MOUSE_OVER"

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v3, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->MOUSE_OVER:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 41
    .line 42
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 43
    .line 44
    const-string v1, "ENTER_SOUND_ON"

    .line 45
    .line 46
    const/4 v3, 0x5

    .line 47
    invoke-direct {v0, v1, v2, v3}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->ENTER_SOUND_ON:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 51
    .line 52
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 53
    .line 54
    const-string v1, "ENTER_SOUND_OFF"

    .line 55
    .line 56
    const/4 v2, 0x6

    .line 57
    invoke-direct {v0, v1, v3, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->ENTER_SOUND_OFF:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 61
    .line 62
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 63
    .line 64
    const-string v1, "CONTINUOUS"

    .line 65
    .line 66
    const/4 v3, 0x7

    .line 67
    invoke-direct {v0, v1, v2, v3}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->CONTINUOUS:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 71
    .line 72
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->$values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->$VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 77
    .line 78
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod$a;

    .line 79
    .line 80
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod$a;-><init>()V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 84
    .line 85
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
    iput p3, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;
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
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->CONTINUOUS:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->ENTER_SOUND_OFF:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->ENTER_SOUND_ON:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->MOUSE_OVER:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->CLICK_TO_PLAY:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->AUTO_PLAY_SOUND_OFF:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->AUTO_PLAY_SOUND_ON:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
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
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod$b;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;
    .locals 1

    .line 1
    const-class v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    return-object p0
.end method

.method public static values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->$VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Video$PlaybackMethod;->value:I

    .line 2
    .line 3
    return v0
.end method
