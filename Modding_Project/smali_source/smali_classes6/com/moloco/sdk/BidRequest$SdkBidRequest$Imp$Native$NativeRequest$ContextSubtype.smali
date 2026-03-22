.class public final enum Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;
.super Ljava/lang/Enum;
.source "BidRequest.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContextSubtype"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

.field public static final enum CONTENT_ARTICLE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

.field public static final CONTENT_ARTICLE_VALUE:I = 0xb

.field public static final enum CONTENT_AUDIO:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

.field public static final CONTENT_AUDIO_VALUE:I = 0xd

.field public static final enum CONTENT_GENERAL_OR_MIXED:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

.field public static final CONTENT_GENERAL_OR_MIXED_VALUE:I = 0xa

.field public static final enum CONTENT_IMAGE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

.field public static final CONTENT_IMAGE_VALUE:I = 0xe

.field public static final enum CONTENT_USER_GENERATED:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

.field public static final CONTENT_USER_GENERATED_VALUE:I = 0xf

.field public static final enum CONTENT_VIDEO:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

.field public static final CONTENT_VIDEO_VALUE:I = 0xc

.field public static final enum PRODUCT_MARKETPLACE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

.field public static final PRODUCT_MARKETPLACE_VALUE:I = 0x1f

.field public static final enum PRODUCT_REVIEW:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

.field public static final PRODUCT_REVIEW_VALUE:I = 0x20

.field public static final enum PRODUCT_SELLING:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

.field public static final PRODUCT_SELLING_VALUE:I = 0x1e

.field public static final enum SOCIAL_CHAT_IM:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

.field public static final SOCIAL_CHAT_IM_VALUE:I = 0x16

.field public static final enum SOCIAL_EMAIL:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

.field public static final SOCIAL_EMAIL_VALUE:I = 0x15

.field public static final enum SOCIAL_GENERAL:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

.field public static final SOCIAL_GENERAL_VALUE:I = 0x14

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;
    .locals 12

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->CONTENT_GENERAL_OR_MIXED:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->CONTENT_ARTICLE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->CONTENT_VIDEO:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 6
    .line 7
    sget-object v3, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->CONTENT_AUDIO:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 8
    .line 9
    sget-object v4, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->CONTENT_IMAGE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 10
    .line 11
    sget-object v5, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->CONTENT_USER_GENERATED:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 12
    .line 13
    sget-object v6, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->SOCIAL_GENERAL:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 14
    .line 15
    sget-object v7, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->SOCIAL_EMAIL:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 16
    .line 17
    sget-object v8, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->SOCIAL_CHAT_IM:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 18
    .line 19
    sget-object v9, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->PRODUCT_SELLING:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 20
    .line 21
    sget-object v10, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->PRODUCT_MARKETPLACE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 22
    .line 23
    sget-object v11, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->PRODUCT_REVIEW:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 24
    .line 25
    filled-new-array/range {v0 .. v11}, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 2
    .line 3
    const-string v1, "CONTENT_GENERAL_OR_MIXED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0xa

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->CONTENT_GENERAL_OR_MIXED:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 12
    .line 13
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 14
    .line 15
    const-string v1, "CONTENT_ARTICLE"

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const/16 v4, 0xb

    .line 19
    .line 20
    invoke-direct {v0, v1, v2, v4}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->CONTENT_ARTICLE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 24
    .line 25
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const/16 v2, 0xc

    .line 29
    .line 30
    const-string v5, "CONTENT_VIDEO"

    .line 31
    .line 32
    invoke-direct {v0, v5, v1, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->CONTENT_VIDEO:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 36
    .line 37
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const/16 v2, 0xd

    .line 41
    .line 42
    const-string v5, "CONTENT_AUDIO"

    .line 43
    .line 44
    invoke-direct {v0, v5, v1, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;-><init>(Ljava/lang/String;II)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->CONTENT_AUDIO:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 48
    .line 49
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const/16 v2, 0xe

    .line 53
    .line 54
    const-string v5, "CONTENT_IMAGE"

    .line 55
    .line 56
    invoke-direct {v0, v5, v1, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->CONTENT_IMAGE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 60
    .line 61
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const/16 v2, 0xf

    .line 65
    .line 66
    const-string v5, "CONTENT_USER_GENERATED"

    .line 67
    .line 68
    invoke-direct {v0, v5, v1, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->CONTENT_USER_GENERATED:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 72
    .line 73
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const/16 v2, 0x14

    .line 77
    .line 78
    const-string v5, "SOCIAL_GENERAL"

    .line 79
    .line 80
    invoke-direct {v0, v5, v1, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;-><init>(Ljava/lang/String;II)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->SOCIAL_GENERAL:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 84
    .line 85
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const/16 v2, 0x15

    .line 89
    .line 90
    const-string v5, "SOCIAL_EMAIL"

    .line 91
    .line 92
    invoke-direct {v0, v5, v1, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;-><init>(Ljava/lang/String;II)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->SOCIAL_EMAIL:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 96
    .line 97
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const/16 v2, 0x16

    .line 102
    .line 103
    const-string v5, "SOCIAL_CHAT_IM"

    .line 104
    .line 105
    invoke-direct {v0, v5, v1, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;-><init>(Ljava/lang/String;II)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->SOCIAL_CHAT_IM:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 109
    .line 110
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 111
    .line 112
    const/16 v1, 0x9

    .line 113
    .line 114
    const/16 v2, 0x1e

    .line 115
    .line 116
    const-string v5, "PRODUCT_SELLING"

    .line 117
    .line 118
    invoke-direct {v0, v5, v1, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;-><init>(Ljava/lang/String;II)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->PRODUCT_SELLING:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 122
    .line 123
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 124
    .line 125
    const-string v1, "PRODUCT_MARKETPLACE"

    .line 126
    .line 127
    const/16 v2, 0x1f

    .line 128
    .line 129
    invoke-direct {v0, v1, v3, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;-><init>(Ljava/lang/String;II)V

    .line 130
    .line 131
    .line 132
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->PRODUCT_MARKETPLACE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 133
    .line 134
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 135
    .line 136
    const-string v1, "PRODUCT_REVIEW"

    .line 137
    .line 138
    const/16 v2, 0x20

    .line 139
    .line 140
    invoke-direct {v0, v1, v4, v2}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;-><init>(Ljava/lang/String;II)V

    .line 141
    .line 142
    .line 143
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->PRODUCT_REVIEW:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 144
    .line 145
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->$values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->$VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 150
    .line 151
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype$a;

    .line 152
    .line 153
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype$a;-><init>()V

    .line 154
    .line 155
    .line 156
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 157
    .line 158
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
    iput p3, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    packed-switch p0, :pswitch_data_1

    .line 5
    .line 6
    .line 7
    packed-switch p0, :pswitch_data_2

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :pswitch_0
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->PRODUCT_REVIEW:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_1
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->PRODUCT_MARKETPLACE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_2
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->PRODUCT_SELLING:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_3
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->SOCIAL_CHAT_IM:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_4
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->SOCIAL_EMAIL:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_5
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->SOCIAL_GENERAL:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_6
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->CONTENT_USER_GENERATED:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_7
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->CONTENT_IMAGE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_8
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->CONTENT_AUDIO:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_9
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->CONTENT_VIDEO:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_a
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->CONTENT_ARTICLE:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_b
    sget-object p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->CONTENT_GENERAL_OR_MIXED:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 46
    .line 47
    return-object p0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :pswitch_data_2
    .packed-switch 0x1e
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
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype$b;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->forNumber(I)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;
    .locals 1

    .line 1
    const-class v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    return-object p0
.end method

.method public static values()[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->$VALUES:[Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$Native$NativeRequest$ContextSubtype;->value:I

    .line 2
    .line 3
    return v0
.end method
