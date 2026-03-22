.class public final enum Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;
.super Ljava/lang/Enum;
.source "ErrorReasonAnalytics.java"

# interfaces
.implements Lcom/explorestack/protobuf/i0$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;",
        ">;",
        "Lcom/explorestack/protobuf/i0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field public static final enum ERROR_REASON_ANALYTICS_INVALID:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field public static final ERROR_REASON_ANALYTICS_INVALID_VALUE:I = 0x0

.field public static final enum ERROR_REASON_ANALYTICS_MONITOR_BAD_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field public static final ERROR_REASON_ANALYTICS_MONITOR_BAD_CONTENT_VALUE:I = 0x836

.field public static final enum ERROR_REASON_ANALYTICS_MONITOR_NO_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field public static final ERROR_REASON_ANALYTICS_MONITOR_NO_CONTENT_VALUE:I = 0x835

.field public static final enum ERROR_REASON_ANALYTICS_MONITOR_UNDEFINED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field public static final ERROR_REASON_ANALYTICS_MONITOR_UNDEFINED_VALUE:I = 0x834

.field public static final enum ERROR_REASON_ANALYTICS_READER_BAD_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field public static final ERROR_REASON_ANALYTICS_READER_BAD_CONTENT_VALUE:I = 0x89a

.field public static final enum ERROR_REASON_ANALYTICS_READER_NO_ACCESS:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field public static final ERROR_REASON_ANALYTICS_READER_NO_ACCESS_VALUE:I = 0x89b

.field public static final enum ERROR_REASON_ANALYTICS_READER_NO_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field public static final ERROR_REASON_ANALYTICS_READER_NO_CONTENT_VALUE:I = 0x899

.field public static final enum ERROR_REASON_ANALYTICS_READER_UNDEFINED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field public static final ERROR_REASON_ANALYTICS_READER_UNDEFINED_VALUE:I = 0x898

.field public static final enum ERROR_REASON_ANALYTICS_UNDEFINED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field public static final ERROR_REASON_ANALYTICS_UNDEFINED_VALUE:I = 0x7d0

.field public static final enum UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field private static final VALUES:[Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

.field private static final internalValueMap:Lcom/explorestack/protobuf/i0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/i0$d<",
            "Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 2
    .line 3
    const-string v1, "ERROR_REASON_ANALYTICS_INVALID"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_INVALID:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 10
    .line 11
    new-instance v1, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/16 v3, 0x7d0

    .line 15
    .line 16
    const-string v4, "ERROR_REASON_ANALYTICS_UNDEFINED"

    .line 17
    .line 18
    invoke-direct {v1, v4, v2, v3}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_UNDEFINED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 22
    .line 23
    new-instance v2, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    const/16 v4, 0x834

    .line 27
    .line 28
    const-string v5, "ERROR_REASON_ANALYTICS_MONITOR_UNDEFINED"

    .line 29
    .line 30
    invoke-direct {v2, v5, v3, v4}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    sput-object v2, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_MONITOR_UNDEFINED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 34
    .line 35
    new-instance v3, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 36
    .line 37
    const/4 v4, 0x3

    .line 38
    const/16 v5, 0x835

    .line 39
    .line 40
    const-string v6, "ERROR_REASON_ANALYTICS_MONITOR_NO_CONTENT"

    .line 41
    .line 42
    invoke-direct {v3, v6, v4, v5}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;-><init>(Ljava/lang/String;II)V

    .line 43
    .line 44
    .line 45
    sput-object v3, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_MONITOR_NO_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 46
    .line 47
    new-instance v4, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 48
    .line 49
    const/4 v5, 0x4

    .line 50
    const/16 v6, 0x836

    .line 51
    .line 52
    const-string v7, "ERROR_REASON_ANALYTICS_MONITOR_BAD_CONTENT"

    .line 53
    .line 54
    invoke-direct {v4, v7, v5, v6}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;-><init>(Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    sput-object v4, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_MONITOR_BAD_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 58
    .line 59
    new-instance v5, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 60
    .line 61
    const/4 v6, 0x5

    .line 62
    const/16 v7, 0x898

    .line 63
    .line 64
    const-string v8, "ERROR_REASON_ANALYTICS_READER_UNDEFINED"

    .line 65
    .line 66
    invoke-direct {v5, v8, v6, v7}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v5, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_READER_UNDEFINED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 70
    .line 71
    new-instance v6, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 72
    .line 73
    const/4 v7, 0x6

    .line 74
    const/16 v8, 0x899

    .line 75
    .line 76
    const-string v9, "ERROR_REASON_ANALYTICS_READER_NO_CONTENT"

    .line 77
    .line 78
    invoke-direct {v6, v9, v7, v8}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v6, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_READER_NO_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 82
    .line 83
    new-instance v7, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 84
    .line 85
    const/4 v8, 0x7

    .line 86
    const/16 v9, 0x89a

    .line 87
    .line 88
    const-string v10, "ERROR_REASON_ANALYTICS_READER_BAD_CONTENT"

    .line 89
    .line 90
    invoke-direct {v7, v10, v8, v9}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;-><init>(Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    sput-object v7, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_READER_BAD_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 94
    .line 95
    new-instance v8, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 96
    .line 97
    const/16 v9, 0x8

    .line 98
    .line 99
    const/16 v10, 0x89b

    .line 100
    .line 101
    const-string v11, "ERROR_REASON_ANALYTICS_READER_NO_ACCESS"

    .line 102
    .line 103
    invoke-direct {v8, v11, v9, v10}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;-><init>(Ljava/lang/String;II)V

    .line 104
    .line 105
    .line 106
    sput-object v8, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_READER_NO_ACCESS:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 107
    .line 108
    new-instance v9, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 109
    .line 110
    const/16 v10, 0x9

    .line 111
    .line 112
    const/4 v11, -0x1

    .line 113
    const-string v12, "UNRECOGNIZED"

    .line 114
    .line 115
    invoke-direct {v9, v12, v10, v11}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;-><init>(Ljava/lang/String;II)V

    .line 116
    .line 117
    .line 118
    sput-object v9, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 119
    .line 120
    filled-new-array/range {v0 .. v9}, [Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    sput-object v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->$VALUES:[Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 125
    .line 126
    new-instance v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics$1;

    .line 127
    .line 128
    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics$1;-><init>()V

    .line 129
    .line 130
    .line 131
    sput-object v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->internalValueMap:Lcom/explorestack/protobuf/i0$d;

    .line 132
    .line 133
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->values()[Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    sput-object v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->VALUES:[Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 138
    .line 139
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
    iput p3, p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/16 v0, 0x7d0

    .line 4
    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    packed-switch p0, :pswitch_data_1

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    sget-object p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_READER_NO_ACCESS:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_1
    sget-object p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_READER_BAD_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_2
    sget-object p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_READER_NO_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_3
    sget-object p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_READER_UNDEFINED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_4
    sget-object p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_MONITOR_BAD_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_5
    sget-object p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_MONITOR_NO_CONTENT:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_6
    sget-object p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_MONITOR_UNDEFINED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_0
    sget-object p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_UNDEFINED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_1
    sget-object p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->ERROR_REASON_ANALYTICS_INVALID:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 40
    .line 41
    return-object p0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x834
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    :pswitch_data_1
    .packed-switch 0x898
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKErrorsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 15
    .line 16
    return-object v0
.end method

.method public static internalGetValueMap()Lcom/explorestack/protobuf/i0$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/i0$d<",
            "Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->internalValueMap:Lcom/explorestack/protobuf/i0$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->forNumber(I)Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->VALUES:[Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->$VALUES:[Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->value:I

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

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->UNRECOGNIZED:Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method
