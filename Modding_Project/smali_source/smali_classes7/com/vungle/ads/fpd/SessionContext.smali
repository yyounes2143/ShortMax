.class public final Lcom/vungle/ads/fpd/SessionContext;
.super Ljava/lang/Object;
.source "SessionContext.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/fpd/SessionContext$Companion;,
        Lcom/vungle/ads/fpd/SessionContext$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lst/k;
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/fpd/SessionContext$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private friends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private healthPercentile:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private inGamePurchasesUSD:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private levelPercentile:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private page:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sessionDuration:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sessionStartTime:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private signupDate:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private timeSpent:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private userID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private userLevelPercentile:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private userScorePercentile:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/fpd/SessionContext$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/fpd/SessionContext$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/fpd/SessionContext;->Companion:Lcom/vungle/ads/fpd/SessionContext$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/util/List;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Lvt/r2;)V
    .locals 1
    .annotation runtime Lms/c;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p14, p1, 0x1

    const/4 v0, 0x0

    if-nez p14, :cond_0

    iput-object v0, p0, Lcom/vungle/ads/fpd/SessionContext;->levelPercentile:Ljava/lang/Float;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vungle/ads/fpd/SessionContext;->levelPercentile:Ljava/lang/Float;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vungle/ads/fpd/SessionContext;->page:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/vungle/ads/fpd/SessionContext;->page:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/vungle/ads/fpd/SessionContext;->timeSpent:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lcom/vungle/ads/fpd/SessionContext;->timeSpent:Ljava/lang/Integer;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object v0, p0, Lcom/vungle/ads/fpd/SessionContext;->signupDate:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lcom/vungle/ads/fpd/SessionContext;->signupDate:Ljava/lang/Integer;

    :goto_3
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    iput-object v0, p0, Lcom/vungle/ads/fpd/SessionContext;->userScorePercentile:Ljava/lang/Float;

    goto :goto_4

    :cond_4
    iput-object p6, p0, Lcom/vungle/ads/fpd/SessionContext;->userScorePercentile:Ljava/lang/Float;

    :goto_4
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_5

    iput-object v0, p0, Lcom/vungle/ads/fpd/SessionContext;->userID:Ljava/lang/String;

    goto :goto_5

    :cond_5
    iput-object p7, p0, Lcom/vungle/ads/fpd/SessionContext;->userID:Ljava/lang/String;

    :goto_5
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_6

    iput-object v0, p0, Lcom/vungle/ads/fpd/SessionContext;->friends:Ljava/util/List;

    goto :goto_6

    :cond_6
    iput-object p8, p0, Lcom/vungle/ads/fpd/SessionContext;->friends:Ljava/util/List;

    :goto_6
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_7

    iput-object v0, p0, Lcom/vungle/ads/fpd/SessionContext;->userLevelPercentile:Ljava/lang/Float;

    goto :goto_7

    :cond_7
    iput-object p9, p0, Lcom/vungle/ads/fpd/SessionContext;->userLevelPercentile:Ljava/lang/Float;

    :goto_7
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_8

    iput-object v0, p0, Lcom/vungle/ads/fpd/SessionContext;->healthPercentile:Ljava/lang/Float;

    goto :goto_8

    :cond_8
    iput-object p10, p0, Lcom/vungle/ads/fpd/SessionContext;->healthPercentile:Ljava/lang/Float;

    :goto_8
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_9

    iput-object v0, p0, Lcom/vungle/ads/fpd/SessionContext;->sessionStartTime:Ljava/lang/Integer;

    goto :goto_9

    :cond_9
    iput-object p11, p0, Lcom/vungle/ads/fpd/SessionContext;->sessionStartTime:Ljava/lang/Integer;

    :goto_9
    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_a

    iput-object v0, p0, Lcom/vungle/ads/fpd/SessionContext;->sessionDuration:Ljava/lang/Integer;

    goto :goto_a

    :cond_a
    iput-object p12, p0, Lcom/vungle/ads/fpd/SessionContext;->sessionDuration:Ljava/lang/Integer;

    :goto_a
    and-int/lit16 p1, p1, 0x800

    if-nez p1, :cond_b

    iput-object v0, p0, Lcom/vungle/ads/fpd/SessionContext;->inGamePurchasesUSD:Ljava/lang/Float;

    goto :goto_b

    :cond_b
    iput-object p13, p0, Lcom/vungle/ads/fpd/SessionContext;->inGamePurchasesUSD:Ljava/lang/Float;

    :goto_b
    return-void
.end method

.method private static synthetic getFriends$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getHealthPercentile$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getInGamePurchasesUSD$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getLevelPercentile$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getPage$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getSessionDuration$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getSessionStartTime$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getSignupDate$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getTimeSpent$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getUserID$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getUserLevelPercentile$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getUserScorePercentile$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/fpd/SessionContext;Lkotlinx/serialization/encoding/d;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .param p0    # Lcom/vungle/ads/fpd/SessionContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/serialization/encoding/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "self"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "output"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "serialDesc"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/vungle/ads/fpd/SessionContext;->levelPercentile:Ljava/lang/Float;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    :goto_0
    sget-object v1, Lvt/l0;->a:Lvt/l0;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/vungle/ads/fpd/SessionContext;->levelPercentile:Ljava/lang/Float;

    .line 31
    .line 32
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    const/4 v0, 0x1

    .line 36
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/fpd/SessionContext;->page:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    :goto_1
    sget-object v1, Lvt/w2;->a:Lvt/w2;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/vungle/ads/fpd/SessionContext;->page:Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    const/4 v0, 0x2

    .line 55
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    iget-object v1, p0, Lcom/vungle/ads/fpd/SessionContext;->timeSpent:Ljava/lang/Integer;

    .line 63
    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    :goto_2
    sget-object v1, Lvt/v0;->a:Lvt/v0;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/vungle/ads/fpd/SessionContext;->timeSpent:Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    const/4 v0, 0x3

    .line 74
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_6

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_6
    iget-object v1, p0, Lcom/vungle/ads/fpd/SessionContext;->signupDate:Ljava/lang/Integer;

    .line 82
    .line 83
    if-eqz v1, :cond_7

    .line 84
    .line 85
    :goto_3
    sget-object v1, Lvt/v0;->a:Lvt/v0;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/vungle/ads/fpd/SessionContext;->signupDate:Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_7
    const/4 v0, 0x4

    .line 93
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_8

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_8
    iget-object v1, p0, Lcom/vungle/ads/fpd/SessionContext;->userScorePercentile:Ljava/lang/Float;

    .line 101
    .line 102
    if-eqz v1, :cond_9

    .line 103
    .line 104
    :goto_4
    sget-object v1, Lvt/l0;->a:Lvt/l0;

    .line 105
    .line 106
    iget-object v2, p0, Lcom/vungle/ads/fpd/SessionContext;->userScorePercentile:Ljava/lang/Float;

    .line 107
    .line 108
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_9
    const/4 v0, 0x5

    .line 112
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_a

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_a
    iget-object v1, p0, Lcom/vungle/ads/fpd/SessionContext;->userID:Ljava/lang/String;

    .line 120
    .line 121
    if-eqz v1, :cond_b

    .line 122
    .line 123
    :goto_5
    sget-object v1, Lvt/w2;->a:Lvt/w2;

    .line 124
    .line 125
    iget-object v2, p0, Lcom/vungle/ads/fpd/SessionContext;->userID:Ljava/lang/String;

    .line 126
    .line 127
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_b
    const/4 v0, 0x6

    .line 131
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_c

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_c
    iget-object v1, p0, Lcom/vungle/ads/fpd/SessionContext;->friends:Ljava/util/List;

    .line 139
    .line 140
    if-eqz v1, :cond_d

    .line 141
    .line 142
    :goto_6
    new-instance v1, Lvt/f;

    .line 143
    .line 144
    sget-object v2, Lvt/w2;->a:Lvt/w2;

    .line 145
    .line 146
    invoke-direct {v1, v2}, Lvt/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 147
    .line 148
    .line 149
    iget-object v2, p0, Lcom/vungle/ads/fpd/SessionContext;->friends:Ljava/util/List;

    .line 150
    .line 151
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_d
    const/4 v0, 0x7

    .line 155
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_e

    .line 160
    .line 161
    goto :goto_7

    .line 162
    :cond_e
    iget-object v1, p0, Lcom/vungle/ads/fpd/SessionContext;->userLevelPercentile:Ljava/lang/Float;

    .line 163
    .line 164
    if-eqz v1, :cond_f

    .line 165
    .line 166
    :goto_7
    sget-object v1, Lvt/l0;->a:Lvt/l0;

    .line 167
    .line 168
    iget-object v2, p0, Lcom/vungle/ads/fpd/SessionContext;->userLevelPercentile:Ljava/lang/Float;

    .line 169
    .line 170
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_f
    const/16 v0, 0x8

    .line 174
    .line 175
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_10

    .line 180
    .line 181
    goto :goto_8

    .line 182
    :cond_10
    iget-object v1, p0, Lcom/vungle/ads/fpd/SessionContext;->healthPercentile:Ljava/lang/Float;

    .line 183
    .line 184
    if-eqz v1, :cond_11

    .line 185
    .line 186
    :goto_8
    sget-object v1, Lvt/l0;->a:Lvt/l0;

    .line 187
    .line 188
    iget-object v2, p0, Lcom/vungle/ads/fpd/SessionContext;->healthPercentile:Ljava/lang/Float;

    .line 189
    .line 190
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_11
    const/16 v0, 0x9

    .line 194
    .line 195
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_12

    .line 200
    .line 201
    goto :goto_9

    .line 202
    :cond_12
    iget-object v1, p0, Lcom/vungle/ads/fpd/SessionContext;->sessionStartTime:Ljava/lang/Integer;

    .line 203
    .line 204
    if-eqz v1, :cond_13

    .line 205
    .line 206
    :goto_9
    sget-object v1, Lvt/v0;->a:Lvt/v0;

    .line 207
    .line 208
    iget-object v2, p0, Lcom/vungle/ads/fpd/SessionContext;->sessionStartTime:Ljava/lang/Integer;

    .line 209
    .line 210
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_13
    const/16 v0, 0xa

    .line 214
    .line 215
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-eqz v1, :cond_14

    .line 220
    .line 221
    goto :goto_a

    .line 222
    :cond_14
    iget-object v1, p0, Lcom/vungle/ads/fpd/SessionContext;->sessionDuration:Ljava/lang/Integer;

    .line 223
    .line 224
    if-eqz v1, :cond_15

    .line 225
    .line 226
    :goto_a
    sget-object v1, Lvt/v0;->a:Lvt/v0;

    .line 227
    .line 228
    iget-object v2, p0, Lcom/vungle/ads/fpd/SessionContext;->sessionDuration:Ljava/lang/Integer;

    .line 229
    .line 230
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    :cond_15
    const/16 v0, 0xb

    .line 234
    .line 235
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/d;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_16

    .line 240
    .line 241
    goto :goto_b

    .line 242
    :cond_16
    iget-object v1, p0, Lcom/vungle/ads/fpd/SessionContext;->inGamePurchasesUSD:Ljava/lang/Float;

    .line 243
    .line 244
    if-eqz v1, :cond_17

    .line 245
    .line 246
    :goto_b
    sget-object v1, Lvt/l0;->a:Lvt/l0;

    .line 247
    .line 248
    iget-object p0, p0, Lcom/vungle/ads/fpd/SessionContext;->inGamePurchasesUSD:Ljava/lang/Float;

    .line 249
    .line 250
    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/d;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILst/l;Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    :cond_17
    return-void
.end method


# virtual methods
.method public final setFriends(Ljava/util/List;)Lcom/vungle/ads/fpd/SessionContext;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vungle/ads/fpd/SessionContext;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    check-cast p1, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iput-object p1, p0, Lcom/vungle/ads/fpd/SessionContext;->friends:Ljava/util/List;

    .line 12
    .line 13
    return-object p0
.end method

.method public final setHealthPercentile(F)Lcom/vungle/ads/fpd/SessionContext;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/RangeUtil;->INSTANCE:Lcom/vungle/ads/internal/util/RangeUtil;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x42c80000    # 100.0f

    .line 5
    .line 6
    invoke-virtual {v0, p1, v1, v2}, Lcom/vungle/ads/internal/util/RangeUtil;->isInRange(FFF)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/vungle/ads/fpd/SessionContext;->healthPercentile:Ljava/lang/Float;

    .line 17
    .line 18
    :cond_0
    return-object p0
.end method

.method public final setInGamePurchasesUSD(F)Lcom/vungle/ads/fpd/SessionContext;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/RangeUtil;->INSTANCE:Lcom/vungle/ads/internal/util/RangeUtil;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move v1, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/util/RangeUtil;->isInRange$default(Lcom/vungle/ads/internal/util/RangeUtil;FFFILjava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/vungle/ads/fpd/SessionContext;->inGamePurchasesUSD:Ljava/lang/Float;

    .line 19
    .line 20
    :cond_0
    return-object p0
.end method

.method public final setLevelPercentile(F)Lcom/vungle/ads/fpd/SessionContext;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/RangeUtil;->INSTANCE:Lcom/vungle/ads/internal/util/RangeUtil;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x42c80000    # 100.0f

    .line 5
    .line 6
    invoke-virtual {v0, p1, v1, v2}, Lcom/vungle/ads/internal/util/RangeUtil;->isInRange(FFF)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/vungle/ads/fpd/SessionContext;->levelPercentile:Ljava/lang/Float;

    .line 17
    .line 18
    :cond_0
    return-object p0
.end method

.method public final setPage(Ljava/lang/String;)Lcom/vungle/ads/fpd/SessionContext;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "page"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/vungle/ads/fpd/SessionContext;->page:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setSessionDuration(I)Lcom/vungle/ads/fpd/SessionContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/vungle/ads/fpd/SessionContext;->sessionDuration:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public final setSessionStartTime(I)Lcom/vungle/ads/fpd/SessionContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/vungle/ads/fpd/SessionContext;->sessionStartTime:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public final setSignupDate(I)Lcom/vungle/ads/fpd/SessionContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/vungle/ads/fpd/SessionContext;->signupDate:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public final setTimeSpent(I)Lcom/vungle/ads/fpd/SessionContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/vungle/ads/fpd/SessionContext;->timeSpent:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public final setUserID(Ljava/lang/String;)Lcom/vungle/ads/fpd/SessionContext;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "userID"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/vungle/ads/fpd/SessionContext;->userID:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setUserLevelPercentile(F)Lcom/vungle/ads/fpd/SessionContext;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/RangeUtil;->INSTANCE:Lcom/vungle/ads/internal/util/RangeUtil;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x42c80000    # 100.0f

    .line 5
    .line 6
    invoke-virtual {v0, p1, v1, v2}, Lcom/vungle/ads/internal/util/RangeUtil;->isInRange(FFF)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/vungle/ads/fpd/SessionContext;->userLevelPercentile:Ljava/lang/Float;

    .line 17
    .line 18
    :cond_0
    return-object p0
.end method

.method public final setUserScorePercentile(F)Lcom/vungle/ads/fpd/SessionContext;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/RangeUtil;->INSTANCE:Lcom/vungle/ads/internal/util/RangeUtil;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x42c80000    # 100.0f

    .line 5
    .line 6
    invoke-virtual {v0, p1, v1, v2}, Lcom/vungle/ads/internal/util/RangeUtil;->isInRange(FFF)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/vungle/ads/fpd/SessionContext;->userScorePercentile:Ljava/lang/Float;

    .line 17
    .line 18
    :cond_0
    return-object p0
.end method
