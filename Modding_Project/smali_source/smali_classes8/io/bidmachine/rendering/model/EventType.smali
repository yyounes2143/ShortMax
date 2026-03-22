.class public final enum Lio/bidmachine/rendering/model/EventType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lyq/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/EventType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/EventType;",
        ">;",
        "Lyq/k;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/rendering/model/EventType$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum OnClick:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnClose:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnComplete:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnFirstQuartile:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnImpression:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnMidpoint:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnMute:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnNavigate:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnPause:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnProgress:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnResume:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnScheduled:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnSkip:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnStart:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnThirdQuartile:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnUnMute:Lio/bidmachine/rendering/model/EventType;

.field public static final enum OnUseCustomClose:Lio/bidmachine/rendering/model/EventType;

.field private static final synthetic b:[Lio/bidmachine/rendering/model/EventType;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "on_impression"

    .line 5
    .line 6
    const-string v3, "OnImpression"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnImpression:Lio/bidmachine/rendering/model/EventType;

    .line 12
    .line 13
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "on_click"

    .line 17
    .line 18
    const-string v3, "OnClick"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnClick:Lio/bidmachine/rendering/model/EventType;

    .line 24
    .line 25
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "on_mute"

    .line 29
    .line 30
    const-string v3, "OnMute"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnMute:Lio/bidmachine/rendering/model/EventType;

    .line 36
    .line 37
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "on_unmute"

    .line 41
    .line 42
    const-string v3, "OnUnMute"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnUnMute:Lio/bidmachine/rendering/model/EventType;

    .line 48
    .line 49
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "on_pause"

    .line 53
    .line 54
    const-string v3, "OnPause"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnPause:Lio/bidmachine/rendering/model/EventType;

    .line 60
    .line 61
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "on_resume"

    .line 65
    .line 66
    const-string v3, "OnResume"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnResume:Lio/bidmachine/rendering/model/EventType;

    .line 72
    .line 73
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "on_skip"

    .line 77
    .line 78
    const-string v3, "OnSkip"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnSkip:Lio/bidmachine/rendering/model/EventType;

    .line 84
    .line 85
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "on_close"

    .line 89
    .line 90
    const-string v3, "OnClose"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnClose:Lio/bidmachine/rendering/model/EventType;

    .line 96
    .line 97
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const-string v2, "on_start"

    .line 102
    .line 103
    const-string v3, "OnStart"

    .line 104
    .line 105
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnStart:Lio/bidmachine/rendering/model/EventType;

    .line 109
    .line 110
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    .line 111
    .line 112
    const/16 v1, 0x9

    .line 113
    .line 114
    const-string v2, "on_first_quartile"

    .line 115
    .line 116
    const-string v3, "OnFirstQuartile"

    .line 117
    .line 118
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnFirstQuartile:Lio/bidmachine/rendering/model/EventType;

    .line 122
    .line 123
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    .line 124
    .line 125
    const/16 v1, 0xa

    .line 126
    .line 127
    const-string v2, "on_midpoint"

    .line 128
    .line 129
    const-string v3, "OnMidpoint"

    .line 130
    .line 131
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnMidpoint:Lio/bidmachine/rendering/model/EventType;

    .line 135
    .line 136
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    .line 137
    .line 138
    const/16 v1, 0xb

    .line 139
    .line 140
    const-string v2, "on_third_quartile"

    .line 141
    .line 142
    const-string v3, "OnThirdQuartile"

    .line 143
    .line 144
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnThirdQuartile:Lio/bidmachine/rendering/model/EventType;

    .line 148
    .line 149
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    .line 150
    .line 151
    const/16 v1, 0xc

    .line 152
    .line 153
    const-string v2, "on_complete"

    .line 154
    .line 155
    const-string v3, "OnComplete"

    .line 156
    .line 157
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnComplete:Lio/bidmachine/rendering/model/EventType;

    .line 161
    .line 162
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    .line 163
    .line 164
    const/16 v1, 0xd

    .line 165
    .line 166
    const-string v2, "on_progress"

    .line 167
    .line 168
    const-string v3, "OnProgress"

    .line 169
    .line 170
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    .line 172
    .line 173
    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnProgress:Lio/bidmachine/rendering/model/EventType;

    .line 174
    .line 175
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    .line 176
    .line 177
    const/16 v1, 0xe

    .line 178
    .line 179
    const-string v2, "on_use_custom_close"

    .line 180
    .line 181
    const-string v3, "OnUseCustomClose"

    .line 182
    .line 183
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnUseCustomClose:Lio/bidmachine/rendering/model/EventType;

    .line 187
    .line 188
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    .line 189
    .line 190
    const/16 v1, 0xf

    .line 191
    .line 192
    const-string v2, "on_scheduled"

    .line 193
    .line 194
    const-string v3, "OnScheduled"

    .line 195
    .line 196
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    .line 198
    .line 199
    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnScheduled:Lio/bidmachine/rendering/model/EventType;

    .line 200
    .line 201
    new-instance v0, Lio/bidmachine/rendering/model/EventType;

    .line 202
    .line 203
    const/16 v1, 0x10

    .line 204
    .line 205
    const-string v2, "on_navigate"

    .line 206
    .line 207
    const-string v3, "OnNavigate"

    .line 208
    .line 209
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    sput-object v0, Lio/bidmachine/rendering/model/EventType;->OnNavigate:Lio/bidmachine/rendering/model/EventType;

    .line 213
    .line 214
    invoke-static {}, Lio/bidmachine/rendering/model/EventType;->a()[Lio/bidmachine/rendering/model/EventType;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    sput-object v0, Lio/bidmachine/rendering/model/EventType;->b:[Lio/bidmachine/rendering/model/EventType;

    .line 219
    .line 220
    new-instance v0, Lio/bidmachine/rendering/model/EventType$a;

    .line 221
    .line 222
    const/4 v1, 0x0

    .line 223
    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/EventType$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 224
    .line 225
    .line 226
    sput-object v0, Lio/bidmachine/rendering/model/EventType;->Companion:Lio/bidmachine/rendering/model/EventType$a;

    .line 227
    .line 228
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/model/EventType;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private static final synthetic a()[Lio/bidmachine/rendering/model/EventType;
    .locals 17

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnImpression:Lio/bidmachine/rendering/model/EventType;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/rendering/model/EventType;->OnClick:Lio/bidmachine/rendering/model/EventType;

    .line 4
    .line 5
    sget-object v2, Lio/bidmachine/rendering/model/EventType;->OnMute:Lio/bidmachine/rendering/model/EventType;

    .line 6
    .line 7
    sget-object v3, Lio/bidmachine/rendering/model/EventType;->OnUnMute:Lio/bidmachine/rendering/model/EventType;

    .line 8
    .line 9
    sget-object v4, Lio/bidmachine/rendering/model/EventType;->OnPause:Lio/bidmachine/rendering/model/EventType;

    .line 10
    .line 11
    sget-object v5, Lio/bidmachine/rendering/model/EventType;->OnResume:Lio/bidmachine/rendering/model/EventType;

    .line 12
    .line 13
    sget-object v6, Lio/bidmachine/rendering/model/EventType;->OnSkip:Lio/bidmachine/rendering/model/EventType;

    .line 14
    .line 15
    sget-object v7, Lio/bidmachine/rendering/model/EventType;->OnClose:Lio/bidmachine/rendering/model/EventType;

    .line 16
    .line 17
    sget-object v8, Lio/bidmachine/rendering/model/EventType;->OnStart:Lio/bidmachine/rendering/model/EventType;

    .line 18
    .line 19
    sget-object v9, Lio/bidmachine/rendering/model/EventType;->OnFirstQuartile:Lio/bidmachine/rendering/model/EventType;

    .line 20
    .line 21
    sget-object v10, Lio/bidmachine/rendering/model/EventType;->OnMidpoint:Lio/bidmachine/rendering/model/EventType;

    .line 22
    .line 23
    sget-object v11, Lio/bidmachine/rendering/model/EventType;->OnThirdQuartile:Lio/bidmachine/rendering/model/EventType;

    .line 24
    .line 25
    sget-object v12, Lio/bidmachine/rendering/model/EventType;->OnComplete:Lio/bidmachine/rendering/model/EventType;

    .line 26
    .line 27
    sget-object v13, Lio/bidmachine/rendering/model/EventType;->OnProgress:Lio/bidmachine/rendering/model/EventType;

    .line 28
    .line 29
    sget-object v14, Lio/bidmachine/rendering/model/EventType;->OnUseCustomClose:Lio/bidmachine/rendering/model/EventType;

    .line 30
    .line 31
    sget-object v15, Lio/bidmachine/rendering/model/EventType;->OnScheduled:Lio/bidmachine/rendering/model/EventType;

    .line 32
    .line 33
    sget-object v16, Lio/bidmachine/rendering/model/EventType;->OnNavigate:Lio/bidmachine/rendering/model/EventType;

    .line 34
    .line 35
    filled-new-array/range {v0 .. v16}, [Lio/bidmachine/rendering/model/EventType;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public static final get(Ljava/lang/String;)Lio/bidmachine/rendering/model/EventType;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->Companion:Lio/bidmachine/rendering/model/EventType$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lio/bidmachine/rendering/model/EventType$a;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/EventType;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/EventType;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/rendering/model/EventType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/bidmachine/rendering/model/EventType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/EventType;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->b:[Lio/bidmachine/rendering/model/EventType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/rendering/model/EventType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/EventType;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
