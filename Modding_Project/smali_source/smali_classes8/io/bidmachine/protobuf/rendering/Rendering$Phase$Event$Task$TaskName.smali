.class public final enum Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;
.super Ljava/lang/Enum;
.source "Rendering.java"

# interfaces
.implements Lcom/explorestack/protobuf/i0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;",
        ">;",
        "Lcom/explorestack/protobuf/i0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final enum TASK_NAME_CLOSE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final TASK_NAME_CLOSE_VALUE:I = 0x5

.field public static final enum TASK_NAME_HIDE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final enum TASK_NAME_HIDE_OVERLAY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final TASK_NAME_HIDE_OVERLAY_VALUE:I = 0xf

.field public static final TASK_NAME_HIDE_VALUE:I = 0x9

.field public static final enum TASK_NAME_INVALID:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final TASK_NAME_INVALID_VALUE:I = 0x0

.field public static final enum TASK_NAME_LOCK_VISIBILITY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final TASK_NAME_LOCK_VISIBILITY_VALUE:I = 0xc

.field public static final enum TASK_NAME_MUTE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final TASK_NAME_MUTE_VALUE:I = 0x2

.field public static final enum TASK_NAME_NOTIFY_OPEN:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final TASK_NAME_NOTIFY_OPEN_VALUE:I = 0x10

.field public static final enum TASK_NAME_OPEN:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final TASK_NAME_OPEN_VALUE:I = 0x7

.field public static final enum TASK_NAME_PRIVACY_SHEET:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final TASK_NAME_PRIVACY_SHEET_VALUE:I = 0x12

.field public static final enum TASK_NAME_PROGRESS:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final TASK_NAME_PROGRESS_VALUE:I = 0xa

.field public static final enum TASK_NAME_REPEAT:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final TASK_NAME_REPEAT_VALUE:I = 0x13

.field public static final enum TASK_NAME_SCHEDULE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final TASK_NAME_SCHEDULE_VALUE:I = 0xb

.field public static final enum TASK_NAME_SHOW:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final enum TASK_NAME_SHOW_OVERLAY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final TASK_NAME_SHOW_OVERLAY_VALUE:I = 0xe

.field public static final TASK_NAME_SHOW_VALUE:I = 0x8

.field public static final enum TASK_NAME_SIMULATE_CLICK:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final TASK_NAME_SIMULATE_CLICK_VALUE:I = 0x11

.field public static final enum TASK_NAME_SKIP:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final TASK_NAME_SKIP_VALUE:I = 0x6

.field public static final enum TASK_NAME_START:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final TASK_NAME_START_VALUE:I = 0x1

.field public static final enum TASK_NAME_TOGGLE_STATE_GROUPS:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final TASK_NAME_TOGGLE_STATE_GROUPS_VALUE:I = 0x14

.field public static final enum TASK_NAME_TRACK:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final TASK_NAME_TRACK_VALUE:I = 0x4

.field public static final enum TASK_NAME_UNLOCK_VISIBILITY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final TASK_NAME_UNLOCK_VISIBILITY_VALUE:I = 0xd

.field public static final enum TASK_NAME_UNMUTE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field public static final TASK_NAME_UNMUTE_VALUE:I = 0x3

.field public static final enum UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field private static final VALUES:[Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

.field private static final internalValueMap:Lcom/explorestack/protobuf/i0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/i0$d<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 1
    new-instance v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 2
    .line 3
    move-object v0, v1

    .line 4
    const-string v2, "TASK_NAME_INVALID"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v1, v2, v3, v3}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_INVALID:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 11
    .line 12
    new-instance v2, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    const-string v3, "TASK_NAME_START"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v2, v3, v4, v4}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v2, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_START:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 22
    .line 23
    new-instance v3, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 24
    .line 25
    move-object v2, v3

    .line 26
    const-string v4, "TASK_NAME_MUTE"

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    invoke-direct {v3, v4, v5, v5}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    sput-object v3, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_MUTE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 33
    .line 34
    new-instance v4, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 35
    .line 36
    move-object v3, v4

    .line 37
    const-string v5, "TASK_NAME_UNMUTE"

    .line 38
    .line 39
    const/4 v6, 0x3

    .line 40
    invoke-direct {v4, v5, v6, v6}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    sput-object v4, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_UNMUTE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 44
    .line 45
    new-instance v5, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 46
    .line 47
    move-object v4, v5

    .line 48
    const-string v6, "TASK_NAME_TRACK"

    .line 49
    .line 50
    const/4 v7, 0x4

    .line 51
    invoke-direct {v5, v6, v7, v7}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 52
    .line 53
    .line 54
    sput-object v5, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_TRACK:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 55
    .line 56
    new-instance v6, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 57
    .line 58
    move-object v5, v6

    .line 59
    const-string v7, "TASK_NAME_CLOSE"

    .line 60
    .line 61
    const/4 v8, 0x5

    .line 62
    invoke-direct {v6, v7, v8, v8}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    sput-object v6, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_CLOSE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 66
    .line 67
    new-instance v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 68
    .line 69
    move-object v6, v7

    .line 70
    const-string v8, "TASK_NAME_SKIP"

    .line 71
    .line 72
    const/4 v9, 0x6

    .line 73
    invoke-direct {v7, v8, v9, v9}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 74
    .line 75
    .line 76
    sput-object v7, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SKIP:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 77
    .line 78
    new-instance v8, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 79
    .line 80
    move-object v7, v8

    .line 81
    const-string v9, "TASK_NAME_OPEN"

    .line 82
    .line 83
    const/4 v10, 0x7

    .line 84
    invoke-direct {v8, v9, v10, v10}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 85
    .line 86
    .line 87
    sput-object v8, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_OPEN:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 88
    .line 89
    new-instance v9, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 90
    .line 91
    move-object v8, v9

    .line 92
    const-string v10, "TASK_NAME_SHOW"

    .line 93
    .line 94
    const/16 v11, 0x8

    .line 95
    .line 96
    invoke-direct {v9, v10, v11, v11}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 97
    .line 98
    .line 99
    sput-object v9, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SHOW:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 100
    .line 101
    new-instance v10, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 102
    .line 103
    move-object v9, v10

    .line 104
    const-string v11, "TASK_NAME_HIDE"

    .line 105
    .line 106
    const/16 v12, 0x9

    .line 107
    .line 108
    invoke-direct {v10, v11, v12, v12}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 109
    .line 110
    .line 111
    sput-object v10, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_HIDE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 112
    .line 113
    new-instance v11, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 114
    .line 115
    move-object v10, v11

    .line 116
    const-string v12, "TASK_NAME_PROGRESS"

    .line 117
    .line 118
    const/16 v13, 0xa

    .line 119
    .line 120
    invoke-direct {v11, v12, v13, v13}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    sput-object v11, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_PROGRESS:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 124
    .line 125
    new-instance v12, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 126
    .line 127
    move-object v11, v12

    .line 128
    const-string v13, "TASK_NAME_SCHEDULE"

    .line 129
    .line 130
    const/16 v14, 0xb

    .line 131
    .line 132
    invoke-direct {v12, v13, v14, v14}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 133
    .line 134
    .line 135
    sput-object v12, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SCHEDULE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 136
    .line 137
    new-instance v13, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 138
    .line 139
    move-object v12, v13

    .line 140
    const-string v14, "TASK_NAME_LOCK_VISIBILITY"

    .line 141
    .line 142
    const/16 v15, 0xc

    .line 143
    .line 144
    invoke-direct {v13, v14, v15, v15}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 145
    .line 146
    .line 147
    sput-object v13, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_LOCK_VISIBILITY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 148
    .line 149
    new-instance v14, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 150
    .line 151
    move-object v13, v14

    .line 152
    const-string v15, "TASK_NAME_UNLOCK_VISIBILITY"

    .line 153
    .line 154
    move-object/from16 v22, v0

    .line 155
    .line 156
    const/16 v0, 0xd

    .line 157
    .line 158
    invoke-direct {v14, v15, v0, v0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 159
    .line 160
    .line 161
    sput-object v14, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_UNLOCK_VISIBILITY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 162
    .line 163
    new-instance v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 164
    .line 165
    move-object v14, v0

    .line 166
    const-string v15, "TASK_NAME_SHOW_OVERLAY"

    .line 167
    .line 168
    move-object/from16 v23, v1

    .line 169
    .line 170
    const/16 v1, 0xe

    .line 171
    .line 172
    invoke-direct {v0, v15, v1, v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 173
    .line 174
    .line 175
    sput-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SHOW_OVERLAY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 176
    .line 177
    new-instance v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 178
    .line 179
    move-object v15, v0

    .line 180
    const-string v1, "TASK_NAME_HIDE_OVERLAY"

    .line 181
    .line 182
    move-object/from16 v24, v2

    .line 183
    .line 184
    const/16 v2, 0xf

    .line 185
    .line 186
    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 187
    .line 188
    .line 189
    sput-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_HIDE_OVERLAY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 190
    .line 191
    new-instance v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 192
    .line 193
    move-object/from16 v16, v0

    .line 194
    .line 195
    const-string v1, "TASK_NAME_NOTIFY_OPEN"

    .line 196
    .line 197
    const/16 v2, 0x10

    .line 198
    .line 199
    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 200
    .line 201
    .line 202
    sput-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_NOTIFY_OPEN:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 203
    .line 204
    new-instance v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 205
    .line 206
    move-object/from16 v17, v0

    .line 207
    .line 208
    const-string v1, "TASK_NAME_SIMULATE_CLICK"

    .line 209
    .line 210
    const/16 v2, 0x11

    .line 211
    .line 212
    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 213
    .line 214
    .line 215
    sput-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SIMULATE_CLICK:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 216
    .line 217
    new-instance v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 218
    .line 219
    move-object/from16 v18, v0

    .line 220
    .line 221
    const-string v1, "TASK_NAME_PRIVACY_SHEET"

    .line 222
    .line 223
    const/16 v2, 0x12

    .line 224
    .line 225
    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 226
    .line 227
    .line 228
    sput-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_PRIVACY_SHEET:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 229
    .line 230
    new-instance v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 231
    .line 232
    move-object/from16 v19, v0

    .line 233
    .line 234
    const-string v1, "TASK_NAME_REPEAT"

    .line 235
    .line 236
    const/16 v2, 0x13

    .line 237
    .line 238
    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 239
    .line 240
    .line 241
    sput-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_REPEAT:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 242
    .line 243
    new-instance v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 244
    .line 245
    move-object/from16 v20, v0

    .line 246
    .line 247
    const-string v1, "TASK_NAME_TOGGLE_STATE_GROUPS"

    .line 248
    .line 249
    const/16 v2, 0x14

    .line 250
    .line 251
    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 252
    .line 253
    .line 254
    sput-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_TOGGLE_STATE_GROUPS:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 255
    .line 256
    new-instance v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 257
    .line 258
    move-object/from16 v21, v0

    .line 259
    .line 260
    const/16 v1, 0x15

    .line 261
    .line 262
    const/4 v2, -0x1

    .line 263
    move-object/from16 v25, v3

    .line 264
    .line 265
    const-string v3, "UNRECOGNIZED"

    .line 266
    .line 267
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;-><init>(Ljava/lang/String;II)V

    .line 268
    .line 269
    .line 270
    sput-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 271
    .line 272
    move-object/from16 v0, v22

    .line 273
    .line 274
    move-object/from16 v1, v23

    .line 275
    .line 276
    move-object/from16 v2, v24

    .line 277
    .line 278
    move-object/from16 v3, v25

    .line 279
    .line 280
    filled-new-array/range {v0 .. v21}, [Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    sput-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->$VALUES:[Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 285
    .line 286
    new-instance v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName$1;

    .line 287
    .line 288
    invoke-direct {v0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName$1;-><init>()V

    .line 289
    .line 290
    .line 291
    sput-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->internalValueMap:Lcom/explorestack/protobuf/i0$d;

    .line 292
    .line 293
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->values()[Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    sput-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->VALUES:[Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 298
    .line 299
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
    iput p3, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;
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
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_TOGGLE_STATE_GROUPS:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_REPEAT:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_PRIVACY_SHEET:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SIMULATE_CLICK:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_NOTIFY_OPEN:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_HIDE_OVERLAY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SHOW_OVERLAY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_UNLOCK_VISIBILITY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_LOCK_VISIBILITY:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SCHEDULE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_PROGRESS:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_b
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_HIDE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_c
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SHOW:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_d
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_OPEN:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_e
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_SKIP:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_f
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_CLOSE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_10
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_TRACK:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_11
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_UNMUTE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_12
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_MUTE:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_13
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_START:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_14
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->TASK_NAME_INVALID:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

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
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->internalValueMap:Lcom/explorestack/protobuf/i0$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->forNumber(I)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->VALUES:[Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

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

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->$VALUES:[Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

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
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->value:I

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
    sget-object v0, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->UNRECOGNIZED:Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

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
