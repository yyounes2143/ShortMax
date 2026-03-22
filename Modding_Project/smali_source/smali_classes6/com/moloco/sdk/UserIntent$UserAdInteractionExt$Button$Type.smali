.class public final enum Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;
.super Ljava/lang/Enum;
.source "UserIntent.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

.field public static final enum AD_BADGE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

.field public static final AD_BADGE_VALUE:I = 0x8

.field public static final enum CLOSE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

.field public static final CLOSE_VALUE:I = 0x1

.field public static final enum CTA:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

.field public static final CTA_VALUE:I = 0x5

.field public static final enum DEC_SKIP:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

.field public static final DEC_SKIP_VALUE:I = 0x7

.field public static final enum MUTE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

.field public static final MUTE_VALUE:I = 0x3

.field public static final enum NONE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

.field public static final NONE_VALUE:I = 0x0

.field public static final enum REPLAY:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

.field public static final REPLAY_VALUE:I = 0x6

.field public static final enum SKIP:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

.field public static final SKIP_VALUE:I = 0x2

.field public static final enum UNMUTE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

.field public static final UNMUTE_VALUE:I = 0x4

.field public static final enum UNRECOGNIZED:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;
    .locals 10

    .line 1
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->NONE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->CLOSE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->SKIP:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 6
    .line 7
    sget-object v3, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->MUTE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 8
    .line 9
    sget-object v4, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->UNMUTE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 10
    .line 11
    sget-object v5, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->CTA:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 12
    .line 13
    sget-object v6, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->REPLAY:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 14
    .line 15
    sget-object v7, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->DEC_SKIP:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 16
    .line 17
    sget-object v8, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->AD_BADGE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 18
    .line 19
    sget-object v9, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->UNRECOGNIZED:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->NONE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 10
    .line 11
    new-instance v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 12
    .line 13
    const-string v1, "CLOSE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->CLOSE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 20
    .line 21
    new-instance v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 22
    .line 23
    const-string v1, "SKIP"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->SKIP:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 30
    .line 31
    new-instance v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 32
    .line 33
    const-string v1, "MUTE"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->MUTE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 40
    .line 41
    new-instance v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 42
    .line 43
    const-string v1, "UNMUTE"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->UNMUTE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 50
    .line 51
    new-instance v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 52
    .line 53
    const-string v1, "CTA"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->CTA:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 60
    .line 61
    new-instance v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 62
    .line 63
    const-string v1, "REPLAY"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->REPLAY:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 70
    .line 71
    new-instance v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 72
    .line 73
    const-string v1, "DEC_SKIP"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->DEC_SKIP:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 80
    .line 81
    new-instance v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 82
    .line 83
    const-string v1, "AD_BADGE"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2, v2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->AD_BADGE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 91
    .line 92
    new-instance v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 93
    .line 94
    const/16 v1, 0x9

    .line 95
    .line 96
    const/4 v2, -0x1

    .line 97
    const-string v3, "UNRECOGNIZED"

    .line 98
    .line 99
    invoke-direct {v0, v3, v1, v2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;-><init>(Ljava/lang/String;II)V

    .line 100
    .line 101
    .line 102
    sput-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->UNRECOGNIZED:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 103
    .line 104
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->$values()[Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    sput-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->$VALUES:[Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 109
    .line 110
    new-instance v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type$a;

    .line 111
    .line 112
    invoke-direct {v0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type$a;-><init>()V

    .line 113
    .line 114
    .line 115
    sput-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 116
    .line 117
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
    iput p3, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;
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
    sget-object p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->AD_BADGE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->DEC_SKIP:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->REPLAY:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->CTA:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->UNMUTE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    sget-object p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->MUTE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->SKIP:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    sget-object p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->CLOSE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    sget-object p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->NONE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
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
            "Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type$b;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->forNumber(I)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    return-object p0
.end method

.method public static values()[Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->$VALUES:[Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->UNRECOGNIZED:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->value:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v1, "Can\'t get the number of an unknown enum value."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method
