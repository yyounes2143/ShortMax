.class public final enum Lio/bidmachine/protobuf/ActionType;
.super Ljava/lang/Enum;
.source "ActionType.java"

# interfaces
.implements Lcom/explorestack/protobuf/i0$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/ActionType;",
        ">;",
        "Lcom/explorestack/protobuf/i0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/ActionType;

.field public static final enum ACTION_TYPE_AD_DESTROYING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_AD_DESTROYING_VALUE:I = 0x1f9

.field public static final enum ACTION_TYPE_AD_LOADING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_AD_LOADING_VALUE:I = 0x1f4

.field public static final enum ACTION_TYPE_CLICKING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_CLICKING_VALUE:I = 0x1f7

.field public static final enum ACTION_TYPE_CLOSING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_CLOSING_VALUE:I = 0x1f8

.field public static final enum ACTION_TYPE_HB_INITIALIZING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_HB_INITIALIZING_VALUE:I = 0x2bd

.field public static final enum ACTION_TYPE_HB_PREPARING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_HB_PREPARING_VALUE:I = 0x2be

.field public static final enum ACTION_TYPE_INVALID:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_INVALID_VALUE:I = 0x0

.field public static final enum ACTION_TYPE_REQUEST_CANCELING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_REQUEST_CANCELING_VALUE:I = 0x1fc

.field public static final enum ACTION_TYPE_REQUEST_LOADING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_REQUEST_LOADING_VALUE:I = 0x1fb

.field public static final enum ACTION_TYPE_SESSION_INITIALIZING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_SESSION_INITIALIZING_VALUE:I = 0x1fa

.field public static final enum ACTION_TYPE_SHOWING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_SHOWING_VALUE:I = 0x1f5

.field public static final enum ACTION_TYPE_VIEWING:Lio/bidmachine/protobuf/ActionType;

.field public static final ACTION_TYPE_VIEWING_VALUE:I = 0x1f6

.field public static final enum UNRECOGNIZED:Lio/bidmachine/protobuf/ActionType;

.field private static final VALUES:[Lio/bidmachine/protobuf/ActionType;

.field private static final internalValueMap:Lcom/explorestack/protobuf/i0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/i0$d<",
            "Lio/bidmachine/protobuf/ActionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lio/bidmachine/protobuf/ActionType;

    .line 2
    .line 3
    const-string v1, "ACTION_TYPE_INVALID"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_INVALID:Lio/bidmachine/protobuf/ActionType;

    .line 10
    .line 11
    new-instance v1, Lio/bidmachine/protobuf/ActionType;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/16 v3, 0x1f4

    .line 15
    .line 16
    const-string v4, "ACTION_TYPE_AD_LOADING"

    .line 17
    .line 18
    invoke-direct {v1, v4, v2, v3}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_AD_LOADING:Lio/bidmachine/protobuf/ActionType;

    .line 22
    .line 23
    new-instance v2, Lio/bidmachine/protobuf/ActionType;

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    const/16 v4, 0x1f5

    .line 27
    .line 28
    const-string v5, "ACTION_TYPE_SHOWING"

    .line 29
    .line 30
    invoke-direct {v2, v5, v3, v4}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    sput-object v2, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_SHOWING:Lio/bidmachine/protobuf/ActionType;

    .line 34
    .line 35
    new-instance v3, Lio/bidmachine/protobuf/ActionType;

    .line 36
    .line 37
    const/4 v4, 0x3

    .line 38
    const/16 v5, 0x1f6

    .line 39
    .line 40
    const-string v6, "ACTION_TYPE_VIEWING"

    .line 41
    .line 42
    invoke-direct {v3, v6, v4, v5}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    .line 43
    .line 44
    .line 45
    sput-object v3, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_VIEWING:Lio/bidmachine/protobuf/ActionType;

    .line 46
    .line 47
    new-instance v4, Lio/bidmachine/protobuf/ActionType;

    .line 48
    .line 49
    const/4 v5, 0x4

    .line 50
    const/16 v6, 0x1f7

    .line 51
    .line 52
    const-string v7, "ACTION_TYPE_CLICKING"

    .line 53
    .line 54
    invoke-direct {v4, v7, v5, v6}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    sput-object v4, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_CLICKING:Lio/bidmachine/protobuf/ActionType;

    .line 58
    .line 59
    new-instance v5, Lio/bidmachine/protobuf/ActionType;

    .line 60
    .line 61
    const/4 v6, 0x5

    .line 62
    const/16 v7, 0x1f8

    .line 63
    .line 64
    const-string v8, "ACTION_TYPE_CLOSING"

    .line 65
    .line 66
    invoke-direct {v5, v8, v6, v7}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v5, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_CLOSING:Lio/bidmachine/protobuf/ActionType;

    .line 70
    .line 71
    new-instance v6, Lio/bidmachine/protobuf/ActionType;

    .line 72
    .line 73
    const/4 v7, 0x6

    .line 74
    const/16 v8, 0x1f9

    .line 75
    .line 76
    const-string v9, "ACTION_TYPE_AD_DESTROYING"

    .line 77
    .line 78
    invoke-direct {v6, v9, v7, v8}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v6, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_AD_DESTROYING:Lio/bidmachine/protobuf/ActionType;

    .line 82
    .line 83
    new-instance v7, Lio/bidmachine/protobuf/ActionType;

    .line 84
    .line 85
    const/4 v8, 0x7

    .line 86
    const/16 v9, 0x1fa

    .line 87
    .line 88
    const-string v10, "ACTION_TYPE_SESSION_INITIALIZING"

    .line 89
    .line 90
    invoke-direct {v7, v10, v8, v9}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    sput-object v7, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_SESSION_INITIALIZING:Lio/bidmachine/protobuf/ActionType;

    .line 94
    .line 95
    new-instance v8, Lio/bidmachine/protobuf/ActionType;

    .line 96
    .line 97
    const/16 v9, 0x8

    .line 98
    .line 99
    const/16 v10, 0x1fb

    .line 100
    .line 101
    const-string v11, "ACTION_TYPE_REQUEST_LOADING"

    .line 102
    .line 103
    invoke-direct {v8, v11, v9, v10}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    .line 104
    .line 105
    .line 106
    sput-object v8, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_REQUEST_LOADING:Lio/bidmachine/protobuf/ActionType;

    .line 107
    .line 108
    new-instance v9, Lio/bidmachine/protobuf/ActionType;

    .line 109
    .line 110
    const/16 v10, 0x9

    .line 111
    .line 112
    const/16 v11, 0x1fc

    .line 113
    .line 114
    const-string v12, "ACTION_TYPE_REQUEST_CANCELING"

    .line 115
    .line 116
    invoke-direct {v9, v12, v10, v11}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    .line 117
    .line 118
    .line 119
    sput-object v9, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_REQUEST_CANCELING:Lio/bidmachine/protobuf/ActionType;

    .line 120
    .line 121
    new-instance v10, Lio/bidmachine/protobuf/ActionType;

    .line 122
    .line 123
    const/16 v11, 0xa

    .line 124
    .line 125
    const/16 v12, 0x2bd

    .line 126
    .line 127
    const-string v13, "ACTION_TYPE_HB_INITIALIZING"

    .line 128
    .line 129
    invoke-direct {v10, v13, v11, v12}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    .line 130
    .line 131
    .line 132
    sput-object v10, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_HB_INITIALIZING:Lio/bidmachine/protobuf/ActionType;

    .line 133
    .line 134
    new-instance v11, Lio/bidmachine/protobuf/ActionType;

    .line 135
    .line 136
    const/16 v12, 0xb

    .line 137
    .line 138
    const/16 v13, 0x2be

    .line 139
    .line 140
    const-string v14, "ACTION_TYPE_HB_PREPARING"

    .line 141
    .line 142
    invoke-direct {v11, v14, v12, v13}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    .line 143
    .line 144
    .line 145
    sput-object v11, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_HB_PREPARING:Lio/bidmachine/protobuf/ActionType;

    .line 146
    .line 147
    new-instance v12, Lio/bidmachine/protobuf/ActionType;

    .line 148
    .line 149
    const/16 v13, 0xc

    .line 150
    .line 151
    const/4 v14, -0x1

    .line 152
    const-string v15, "UNRECOGNIZED"

    .line 153
    .line 154
    invoke-direct {v12, v15, v13, v14}, Lio/bidmachine/protobuf/ActionType;-><init>(Ljava/lang/String;II)V

    .line 155
    .line 156
    .line 157
    sput-object v12, Lio/bidmachine/protobuf/ActionType;->UNRECOGNIZED:Lio/bidmachine/protobuf/ActionType;

    .line 158
    .line 159
    filled-new-array/range {v0 .. v12}, [Lio/bidmachine/protobuf/ActionType;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    sput-object v0, Lio/bidmachine/protobuf/ActionType;->$VALUES:[Lio/bidmachine/protobuf/ActionType;

    .line 164
    .line 165
    new-instance v0, Lio/bidmachine/protobuf/ActionType$1;

    .line 166
    .line 167
    invoke-direct {v0}, Lio/bidmachine/protobuf/ActionType$1;-><init>()V

    .line 168
    .line 169
    .line 170
    sput-object v0, Lio/bidmachine/protobuf/ActionType;->internalValueMap:Lcom/explorestack/protobuf/i0$d;

    .line 171
    .line 172
    invoke-static {}, Lio/bidmachine/protobuf/ActionType;->values()[Lio/bidmachine/protobuf/ActionType;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    sput-object v0, Lio/bidmachine/protobuf/ActionType;->VALUES:[Lio/bidmachine/protobuf/ActionType;

    .line 177
    .line 178
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
    iput p3, p0, Lio/bidmachine/protobuf/ActionType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/ActionType;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/16 v0, 0x2bd

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x2be

    .line 8
    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :pswitch_0
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_REQUEST_CANCELING:Lio/bidmachine/protobuf/ActionType;

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_1
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_REQUEST_LOADING:Lio/bidmachine/protobuf/ActionType;

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_2
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_SESSION_INITIALIZING:Lio/bidmachine/protobuf/ActionType;

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_3
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_AD_DESTROYING:Lio/bidmachine/protobuf/ActionType;

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_4
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_CLOSING:Lio/bidmachine/protobuf/ActionType;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_5
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_CLICKING:Lio/bidmachine/protobuf/ActionType;

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_6
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_VIEWING:Lio/bidmachine/protobuf/ActionType;

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_7
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_SHOWING:Lio/bidmachine/protobuf/ActionType;

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_8
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_AD_LOADING:Lio/bidmachine/protobuf/ActionType;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_0
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_HB_PREPARING:Lio/bidmachine/protobuf/ActionType;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_1
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_HB_INITIALIZING:Lio/bidmachine/protobuf/ActionType;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_2
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->ACTION_TYPE_INVALID:Lio/bidmachine/protobuf/ActionType;

    .line 50
    .line 51
    return-object p0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x1f4
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

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/ExtensionsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

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
    const/4 v1, 0x2

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
            "Lio/bidmachine/protobuf/ActionType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ActionType;->internalValueMap:Lcom/explorestack/protobuf/i0$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/ActionType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/bidmachine/protobuf/ActionType;->forNumber(I)Lio/bidmachine/protobuf/ActionType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lio/bidmachine/protobuf/ActionType;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lio/bidmachine/protobuf/ActionType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lio/bidmachine/protobuf/ActionType;->UNRECOGNIZED:Lio/bidmachine/protobuf/ActionType;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lio/bidmachine/protobuf/ActionType;->VALUES:[Lio/bidmachine/protobuf/ActionType;

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

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/ActionType;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/protobuf/ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/ActionType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/ActionType;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/ActionType;->$VALUES:[Lio/bidmachine/protobuf/ActionType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/bidmachine/protobuf/ActionType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/protobuf/ActionType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/ActionType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

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
    sget-object v0, Lio/bidmachine/protobuf/ActionType;->UNRECOGNIZED:Lio/bidmachine/protobuf/ActionType;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lio/bidmachine/protobuf/ActionType;->value:I

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
    sget-object v0, Lio/bidmachine/protobuf/ActionType;->UNRECOGNIZED:Lio/bidmachine/protobuf/ActionType;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/ActionType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

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
