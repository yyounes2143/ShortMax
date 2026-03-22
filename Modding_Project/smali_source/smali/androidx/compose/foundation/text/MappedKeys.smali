.class public final Landroidx/compose/foundation/text/MappedKeys;
.super Ljava/lang/Object;
.source "KeyMapping.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final A:J

.field private static final Backslash:J

.field private static final Backspace:J

.field private static final C:J

.field private static final Cut:J

.field private static final Delete:J

.field private static final DirectionDown:J

.field private static final DirectionLeft:J

.field private static final DirectionRight:J

.field private static final DirectionUp:J

.field private static final Enter:J

.field private static final H:J

.field public static final INSTANCE:Landroidx/compose/foundation/text/MappedKeys;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Insert:J

.field private static final MoveEnd:J

.field private static final MoveHome:J

.field private static final PageDown:J

.field private static final PageUp:J

.field private static final Paste:J

.field private static final Tab:J

.field private static final V:J

.field private static final X:J

.field private static final Z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/MappedKeys;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/foundation/text/MappedKeys;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/foundation/text/MappedKeys;->INSTANCE:Landroidx/compose/foundation/text/MappedKeys;

    .line 7
    .line 8
    const/16 v0, 0x1d

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->A:J

    .line 15
    .line 16
    const/16 v0, 0x1f

    .line 17
    .line 18
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->C:J

    .line 23
    .line 24
    const/16 v0, 0x24

    .line 25
    .line 26
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->H:J

    .line 31
    .line 32
    const/16 v0, 0x32

    .line 33
    .line 34
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->V:J

    .line 39
    .line 40
    const/16 v0, 0x34

    .line 41
    .line 42
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->X:J

    .line 47
    .line 48
    const/16 v0, 0x36

    .line 49
    .line 50
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Z:J

    .line 55
    .line 56
    const/16 v0, 0x49

    .line 57
    .line 58
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Backslash:J

    .line 63
    .line 64
    const/16 v0, 0x15

    .line 65
    .line 66
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionLeft:J

    .line 71
    .line 72
    const/16 v0, 0x16

    .line 73
    .line 74
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionRight:J

    .line 79
    .line 80
    const/16 v0, 0x13

    .line 81
    .line 82
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionUp:J

    .line 87
    .line 88
    const/16 v0, 0x14

    .line 89
    .line 90
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 91
    .line 92
    .line 93
    move-result-wide v0

    .line 94
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionDown:J

    .line 95
    .line 96
    const/16 v0, 0x5c

    .line 97
    .line 98
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 99
    .line 100
    .line 101
    move-result-wide v0

    .line 102
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->PageUp:J

    .line 103
    .line 104
    const/16 v0, 0x5d

    .line 105
    .line 106
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->PageDown:J

    .line 111
    .line 112
    const/16 v0, 0x7a

    .line 113
    .line 114
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 115
    .line 116
    .line 117
    move-result-wide v0

    .line 118
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->MoveHome:J

    .line 119
    .line 120
    const/16 v0, 0x7b

    .line 121
    .line 122
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 123
    .line 124
    .line 125
    move-result-wide v0

    .line 126
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->MoveEnd:J

    .line 127
    .line 128
    const/16 v0, 0x7c

    .line 129
    .line 130
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 131
    .line 132
    .line 133
    move-result-wide v0

    .line 134
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Insert:J

    .line 135
    .line 136
    const/16 v0, 0x42

    .line 137
    .line 138
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 139
    .line 140
    .line 141
    move-result-wide v0

    .line 142
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Enter:J

    .line 143
    .line 144
    const/16 v0, 0x43

    .line 145
    .line 146
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 147
    .line 148
    .line 149
    move-result-wide v0

    .line 150
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Backspace:J

    .line 151
    .line 152
    const/16 v0, 0x70

    .line 153
    .line 154
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 155
    .line 156
    .line 157
    move-result-wide v0

    .line 158
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Delete:J

    .line 159
    .line 160
    const/16 v0, 0x117

    .line 161
    .line 162
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 163
    .line 164
    .line 165
    move-result-wide v0

    .line 166
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Paste:J

    .line 167
    .line 168
    const/16 v0, 0x115

    .line 169
    .line 170
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 171
    .line 172
    .line 173
    move-result-wide v0

    .line 174
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Cut:J

    .line 175
    .line 176
    const/16 v0, 0x3d

    .line 177
    .line 178
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 179
    .line 180
    .line 181
    move-result-wide v0

    .line 182
    sput-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Tab:J

    .line 183
    .line 184
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getA-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->A:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getBackslash-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Backslash:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getBackspace-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Backspace:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getC-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->C:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getCut-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Cut:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDelete-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Delete:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDirectionDown-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionDown:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDirectionLeft-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionLeft:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDirectionRight-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionRight:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDirectionUp-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->DirectionUp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getEnter-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Enter:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getH-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->H:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getInsert-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Insert:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMoveEnd-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->MoveEnd:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMoveHome-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->MoveHome:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPageDown-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->PageDown:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPageUp-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->PageUp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPaste-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Paste:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTab-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Tab:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getV-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->V:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getX-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->X:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getZ-EK5gGoQ()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/foundation/text/MappedKeys;->Z:J

    .line 2
    .line 3
    return-wide v0
.end method
