.class public final enum Lcom/explorestack/protobuf/adcom/DisplayContextType;
.super Ljava/lang/Enum;
.source "DisplayContextType.java"

# interfaces
.implements Lcom/explorestack/protobuf/i0$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/adcom/DisplayContextType;",
        ">;",
        "Lcom/explorestack/protobuf/i0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/adcom/DisplayContextType;

.field public static final enum DISPLAY_CONTEXT_TYPE_APP_STORE:Lcom/explorestack/protobuf/adcom/DisplayContextType;

.field public static final DISPLAY_CONTEXT_TYPE_APP_STORE_VALUE:I = 0x1f

.field public static final enum DISPLAY_CONTEXT_TYPE_ARTICLE_CONTENT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

.field public static final DISPLAY_CONTEXT_TYPE_ARTICLE_CONTENT_VALUE:I = 0xb

.field public static final enum DISPLAY_CONTEXT_TYPE_AUDIO_CONTENT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

.field public static final DISPLAY_CONTEXT_TYPE_AUDIO_CONTENT_VALUE:I = 0xd

.field public static final enum DISPLAY_CONTEXT_TYPE_CHAT_CONTENT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

.field public static final DISPLAY_CONTEXT_TYPE_CHAT_CONTENT_VALUE:I = 0x16

.field public static final enum DISPLAY_CONTEXT_TYPE_CONTENT_CENTRIC_CONTEXT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

.field public static final DISPLAY_CONTEXT_TYPE_CONTENT_CENTRIC_CONTEXT_VALUE:I = 0xa

.field public static final enum DISPLAY_CONTEXT_TYPE_EMAIL_CONTENT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

.field public static final DISPLAY_CONTEXT_TYPE_EMAIL_CONTENT_VALUE:I = 0x15

.field public static final enum DISPLAY_CONTEXT_TYPE_IMAGE_CONTENT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

.field public static final DISPLAY_CONTEXT_TYPE_IMAGE_CONTENT_VALUE:I = 0xe

.field public static final enum DISPLAY_CONTEXT_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/DisplayContextType;

.field public static final DISPLAY_CONTEXT_TYPE_INVALID_VALUE:I = 0x0

.field public static final enum DISPLAY_CONTEXT_TYPE_PRODUCT_CONTEXT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

.field public static final DISPLAY_CONTEXT_TYPE_PRODUCT_CONTEXT_VALUE:I = 0x1e

.field public static final enum DISPLAY_CONTEXT_TYPE_PRODUCT_REVIEWS:Lcom/explorestack/protobuf/adcom/DisplayContextType;

.field public static final DISPLAY_CONTEXT_TYPE_PRODUCT_REVIEWS_VALUE:I = 0x20

.field public static final enum DISPLAY_CONTEXT_TYPE_SOCIAL_CENTRIC_CONTEXT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

.field public static final DISPLAY_CONTEXT_TYPE_SOCIAL_CENTRIC_CONTEXT_VALUE:I = 0x14

.field public static final enum DISPLAY_CONTEXT_TYPE_USER_GENERATED_CONTENT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

.field public static final DISPLAY_CONTEXT_TYPE_USER_GENERATED_CONTENT_VALUE:I = 0xf

.field public static final enum DISPLAY_CONTEXT_TYPE_VIDEO_CONTENT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

.field public static final DISPLAY_CONTEXT_TYPE_VIDEO_CONTENT_VALUE:I = 0xc

.field public static final enum UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/DisplayContextType;

.field private static final VALUES:[Lcom/explorestack/protobuf/adcom/DisplayContextType;

.field private static final internalValueMap:Lcom/explorestack/protobuf/i0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/i0$d<",
            "Lcom/explorestack/protobuf/adcom/DisplayContextType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 2
    .line 3
    const-string v1, "DISPLAY_CONTEXT_TYPE_INVALID"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/explorestack/protobuf/adcom/DisplayContextType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 10
    .line 11
    new-instance v1, Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 12
    .line 13
    const-string v2, "DISPLAY_CONTEXT_TYPE_CONTENT_CENTRIC_CONTEXT"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/16 v4, 0xa

    .line 17
    .line 18
    invoke-direct {v1, v2, v3, v4}, Lcom/explorestack/protobuf/adcom/DisplayContextType;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_CONTENT_CENTRIC_CONTEXT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 22
    .line 23
    new-instance v2, Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 24
    .line 25
    const-string v3, "DISPLAY_CONTEXT_TYPE_ARTICLE_CONTENT"

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    const/16 v6, 0xb

    .line 29
    .line 30
    invoke-direct {v2, v3, v5, v6}, Lcom/explorestack/protobuf/adcom/DisplayContextType;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    sput-object v2, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_ARTICLE_CONTENT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 34
    .line 35
    new-instance v3, Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 36
    .line 37
    const-string v5, "DISPLAY_CONTEXT_TYPE_VIDEO_CONTENT"

    .line 38
    .line 39
    const/4 v7, 0x3

    .line 40
    const/16 v8, 0xc

    .line 41
    .line 42
    invoke-direct {v3, v5, v7, v8}, Lcom/explorestack/protobuf/adcom/DisplayContextType;-><init>(Ljava/lang/String;II)V

    .line 43
    .line 44
    .line 45
    sput-object v3, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_VIDEO_CONTENT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 46
    .line 47
    new-instance v5, Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 48
    .line 49
    const-string v7, "DISPLAY_CONTEXT_TYPE_AUDIO_CONTENT"

    .line 50
    .line 51
    const/4 v9, 0x4

    .line 52
    const/16 v10, 0xd

    .line 53
    .line 54
    invoke-direct {v5, v7, v9, v10}, Lcom/explorestack/protobuf/adcom/DisplayContextType;-><init>(Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    sput-object v5, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_AUDIO_CONTENT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 58
    .line 59
    new-instance v7, Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 60
    .line 61
    const/4 v9, 0x5

    .line 62
    const/16 v11, 0xe

    .line 63
    .line 64
    const-string v12, "DISPLAY_CONTEXT_TYPE_IMAGE_CONTENT"

    .line 65
    .line 66
    invoke-direct {v7, v12, v9, v11}, Lcom/explorestack/protobuf/adcom/DisplayContextType;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v7, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_IMAGE_CONTENT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 70
    .line 71
    new-instance v9, Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 72
    .line 73
    const/4 v11, 0x6

    .line 74
    const/16 v12, 0xf

    .line 75
    .line 76
    const-string v13, "DISPLAY_CONTEXT_TYPE_USER_GENERATED_CONTENT"

    .line 77
    .line 78
    invoke-direct {v9, v13, v11, v12}, Lcom/explorestack/protobuf/adcom/DisplayContextType;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v9, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_USER_GENERATED_CONTENT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 82
    .line 83
    new-instance v11, Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 84
    .line 85
    const/4 v12, 0x7

    .line 86
    const/16 v13, 0x14

    .line 87
    .line 88
    const-string v14, "DISPLAY_CONTEXT_TYPE_SOCIAL_CENTRIC_CONTEXT"

    .line 89
    .line 90
    invoke-direct {v11, v14, v12, v13}, Lcom/explorestack/protobuf/adcom/DisplayContextType;-><init>(Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    sput-object v11, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_SOCIAL_CENTRIC_CONTEXT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 94
    .line 95
    new-instance v12, Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 96
    .line 97
    const/16 v13, 0x8

    .line 98
    .line 99
    const/16 v14, 0x15

    .line 100
    .line 101
    const-string v15, "DISPLAY_CONTEXT_TYPE_EMAIL_CONTENT"

    .line 102
    .line 103
    invoke-direct {v12, v15, v13, v14}, Lcom/explorestack/protobuf/adcom/DisplayContextType;-><init>(Ljava/lang/String;II)V

    .line 104
    .line 105
    .line 106
    sput-object v12, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_EMAIL_CONTENT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 107
    .line 108
    new-instance v13, Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 109
    .line 110
    const/16 v14, 0x9

    .line 111
    .line 112
    const/16 v15, 0x16

    .line 113
    .line 114
    const-string v10, "DISPLAY_CONTEXT_TYPE_CHAT_CONTENT"

    .line 115
    .line 116
    invoke-direct {v13, v10, v14, v15}, Lcom/explorestack/protobuf/adcom/DisplayContextType;-><init>(Ljava/lang/String;II)V

    .line 117
    .line 118
    .line 119
    sput-object v13, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_CHAT_CONTENT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 120
    .line 121
    new-instance v10, Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 122
    .line 123
    const-string v14, "DISPLAY_CONTEXT_TYPE_PRODUCT_CONTEXT"

    .line 124
    .line 125
    const/16 v15, 0x1e

    .line 126
    .line 127
    invoke-direct {v10, v14, v4, v15}, Lcom/explorestack/protobuf/adcom/DisplayContextType;-><init>(Ljava/lang/String;II)V

    .line 128
    .line 129
    .line 130
    sput-object v10, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_PRODUCT_CONTEXT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 131
    .line 132
    new-instance v14, Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 133
    .line 134
    const-string v4, "DISPLAY_CONTEXT_TYPE_APP_STORE"

    .line 135
    .line 136
    const/16 v15, 0x1f

    .line 137
    .line 138
    invoke-direct {v14, v4, v6, v15}, Lcom/explorestack/protobuf/adcom/DisplayContextType;-><init>(Ljava/lang/String;II)V

    .line 139
    .line 140
    .line 141
    sput-object v14, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_APP_STORE:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 142
    .line 143
    new-instance v15, Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 144
    .line 145
    const-string v4, "DISPLAY_CONTEXT_TYPE_PRODUCT_REVIEWS"

    .line 146
    .line 147
    const/16 v6, 0x20

    .line 148
    .line 149
    invoke-direct {v15, v4, v8, v6}, Lcom/explorestack/protobuf/adcom/DisplayContextType;-><init>(Ljava/lang/String;II)V

    .line 150
    .line 151
    .line 152
    sput-object v15, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_PRODUCT_REVIEWS:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 153
    .line 154
    new-instance v8, Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 155
    .line 156
    const-string v4, "UNRECOGNIZED"

    .line 157
    .line 158
    const/4 v6, -0x1

    .line 159
    move-object/from16 v16, v15

    .line 160
    .line 161
    const/16 v15, 0xd

    .line 162
    .line 163
    invoke-direct {v8, v4, v15, v6}, Lcom/explorestack/protobuf/adcom/DisplayContextType;-><init>(Ljava/lang/String;II)V

    .line 164
    .line 165
    .line 166
    sput-object v8, Lcom/explorestack/protobuf/adcom/DisplayContextType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 167
    .line 168
    move-object v4, v5

    .line 169
    move-object v5, v7

    .line 170
    move-object v6, v9

    .line 171
    move-object v7, v11

    .line 172
    move-object v15, v8

    .line 173
    move-object v8, v12

    .line 174
    move-object v9, v13

    .line 175
    move-object v11, v14

    .line 176
    move-object/from16 v12, v16

    .line 177
    .line 178
    move-object v13, v15

    .line 179
    filled-new-array/range {v0 .. v13}, [Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    sput-object v0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->$VALUES:[Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 184
    .line 185
    new-instance v0, Lcom/explorestack/protobuf/adcom/DisplayContextType$a;

    .line 186
    .line 187
    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/DisplayContextType$a;-><init>()V

    .line 188
    .line 189
    .line 190
    sput-object v0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->internalValueMap:Lcom/explorestack/protobuf/i0$d;

    .line 191
    .line 192
    invoke-static {}, Lcom/explorestack/protobuf/adcom/DisplayContextType;->values()[Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    sput-object v0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->VALUES:[Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 197
    .line 198
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
    iput p3, p0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/adcom/DisplayContextType;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    packed-switch p0, :pswitch_data_1

    .line 7
    .line 8
    .line 9
    packed-switch p0, :pswitch_data_2

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :pswitch_0
    sget-object p0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_PRODUCT_REVIEWS:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_1
    sget-object p0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_APP_STORE:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_2
    sget-object p0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_PRODUCT_CONTEXT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_3
    sget-object p0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_CHAT_CONTENT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_4
    sget-object p0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_EMAIL_CONTENT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_5
    sget-object p0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_SOCIAL_CENTRIC_CONTEXT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_6
    sget-object p0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_USER_GENERATED_CONTENT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_7
    sget-object p0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_IMAGE_CONTENT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_8
    sget-object p0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_AUDIO_CONTENT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_9
    sget-object p0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_VIDEO_CONTENT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_a
    sget-object p0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_ARTICLE_CONTENT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_b
    sget-object p0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_CONTENT_CENTRIC_CONTEXT:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_0
    sget-object p0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->DISPLAY_CONTEXT_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

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
    .line 66
    .line 67
    .line 68
    .line 69
    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/adcom/b;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

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
    const/16 v1, 0xa

    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 16
    .line 17
    return-object v0
.end method

.method public static internalGetValueMap()Lcom/explorestack/protobuf/i0$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/i0$d<",
            "Lcom/explorestack/protobuf/adcom/DisplayContextType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->internalValueMap:Lcom/explorestack/protobuf/i0$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/adcom/DisplayContextType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/DisplayContextType;->forNumber(I)Lcom/explorestack/protobuf/adcom/DisplayContextType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/adcom/DisplayContextType;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/DisplayContextType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->VALUES:[Lcom/explorestack/protobuf/adcom/DisplayContextType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/DisplayContextType;
    .locals 1

    .line 1
    const-class v0, Lcom/explorestack/protobuf/adcom/DisplayContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/DisplayContextType;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/adcom/DisplayContextType;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->$VALUES:[Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/explorestack/protobuf/adcom/DisplayContextType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/adcom/DisplayContextType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

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
    sget-object v0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->value:I

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
    sget-object v0, Lcom/explorestack/protobuf/adcom/DisplayContextType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/DisplayContextType;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/adcom/DisplayContextType;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

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
