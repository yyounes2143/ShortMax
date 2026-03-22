.class public final Landroidx/compose/runtime/SlotTable;
.super Ljava/lang/Object;
.source "SlotTable.kt"

# interfaces
.implements Landroidx/compose/runtime/tooling/CompositionData;
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/tooling/CompositionData;",
        "Ljava/lang/Iterable<",
        "Landroidx/compose/runtime/tooling/CompositionGroup;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSlotTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Preconditions.kt\nandroidx/compose/runtime/PreconditionsKt\n+ 6 SlotTable.kt\nandroidx/compose/runtime/SlotTableKt\n+ 7 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,4061:1\n159#1,7:4119\n175#1,4:4126\n180#1,3:4136\n25#2,5:4062\n33#2:4114\n1#3:4067\n1#3:4135\n4788#4,4:4068\n4788#4,4:4072\n4788#4,4:4076\n4788#4,4:4090\n4788#4,4:4094\n4788#4,4:4102\n4788#4,4:4106\n4788#4,4:4110\n34#5,4:4080\n34#5,4:4098\n34#5,4:4115\n49#5,4:4141\n49#5,4:4145\n34#5,4:4152\n34#5,4:4156\n34#5,4:4161\n34#5,4:4165\n49#5,4:4181\n49#5,4:4185\n49#5,4:4189\n49#5,4:4195\n49#5,4:4199\n49#5,4:4203\n49#5,4:4210\n49#5,4:4216\n49#5,4:4221\n49#5,4:4225\n49#5,4:4231\n34#5,4:4238\n34#5,4:4242\n3923#6,6:4084\n3799#6:4139\n3847#6:4140\n3827#6:4169\n3833#6:4170\n3790#6:4171\n3799#6:4172\n3773#6:4173\n3767#6:4174\n3770#6:4175\n3782#6:4176\n3878#6:4177\n3878#6:4178\n3878#6:4179\n3847#6:4180\n3878#6:4193\n3878#6:4194\n3767#6:4207\n3773#6:4208\n3782#6:4209\n3767#6:4214\n3770#6:4215\n3833#6:4220\n3809#6:4229\n3799#6:4230\n3878#6:4247\n34#7,5:4130\n34#7,3:4149\n38#7:4160\n34#7,3:4235\n38#7:4246\n*S KotlinDebug\n*F\n+ 1 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n*L\n353#1:4119,7\n389#1:4126,4\n389#1:4136,3\n124#1:4062,5\n275#1:4114\n389#1:4135\n203#1:4068,4\n204#1:4072,4\n220#1:4076,4\n227#1:4090,4\n238#1:4094,4\n261#1:4102,4\n262#1:4106,4\n272#1:4110,4\n221#1:4080,4\n239#1:4098,4\n301#1:4115,4\n500#1:4141,4\n507#1:4145,4\n516#1:4152,4\n519#1:4156,4\n540#1:4161,4\n541#1:4165,4\n441#1:4181,4\n446#1:4185,4\n449#1:4189,4\n455#1:4195,4\n458#1:4199,4\n460#1:4203,4\n465#1:4210,4\n469#1:4216,4\n478#1:4221,4\n483#1:4225,4\n488#1:4231,4\n528#1:4238,4\n529#1:4242,4\n222#1:4084,6\n406#1:4139\n425#1:4140\n595#1:4169\n600#1:4170\n603#1:4171\n606#1:4172\n612#1:4173\n619#1:4174\n620#1:4175\n622#1:4176\n667#1:4177\n668#1:4178\n674#1:4179\n440#1:4180\n453#1:4193\n454#1:4194\n462#1:4207\n463#1:4208\n464#1:4209\n468#1:4214\n469#1:4215\n476#1:4220\n487#1:4229\n488#1:4230\n596#1:4247\n391#1:4130,5\n514#1:4149,3\n514#1:4160\n525#1:4235,3\n525#1:4246\n*E\n"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private anchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private calledByMap:Landroidx/collection/MutableIntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/collection/MutableIntSet;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private groups:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private groupsSize:I

.field private final lock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private readers:I

.field private slots:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private slotsSize:I

.field private sourceInformationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private version:I

.field private writer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    iput-object v1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 8
    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/compose/runtime/SlotTable;->lock:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    .line 26
    .line 27
    return-void
.end method

.method private final dataIndexes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 4
    .line 5
    mul-int/lit8 v1, v1, 0x5

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchors([II)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final emitGroup(Ljava/lang/StringBuilder;II)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-ge v1, p3, :cond_0

    .line 4
    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "Group("

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ")"

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotTable;->sourceInformationOf(I)Landroidx/compose/runtime/GroupSourceInformation;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/compose/runtime/GroupSourceInformation;->getSourceInformation()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const-string v2, "C("

    .line 39
    .line 40
    const/4 v3, 0x2

    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    const-string v2, "CC("

    .line 49
    .line 50
    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    :cond_1
    const/4 v6, 0x6

    .line 57
    const/4 v7, 0x0

    .line 58
    const-string v3, "("

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    const/4 v5, 0x0

    .line 62
    move-object v2, v1

    .line 63
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    const/16 v3, 0x29

    .line 70
    .line 71
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->p0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const-string v3, " "

    .line 76
    .line 77
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v1, "substring(...)"

    .line 85
    .line 86
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, "()"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    :cond_2
    const-string v0, " key="

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 103
    .line 104
    mul-int/lit8 v1, p2, 0x5

    .line 105
    .line 106
    aget v0, v0, v1

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 112
    .line 113
    invoke-static {v0, p2}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    const-string v2, ", nodes="

    .line 118
    .line 119
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v2, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 123
    .line 124
    add-int/lit8 v3, v1, 0x1

    .line 125
    .line 126
    aget v2, v2, v3

    .line 127
    .line 128
    const v4, 0x3ffffff

    .line 129
    .line 130
    .line 131
    and-int/2addr v2, v4

    .line 132
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v2, ", size="

    .line 136
    .line 137
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget-object v2, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 144
    .line 145
    aget v2, v2, v3

    .line 146
    .line 147
    const/high16 v4, 0x8000000

    .line 148
    .line 149
    and-int/2addr v2, v4

    .line 150
    if-eqz v2, :cond_3

    .line 151
    .line 152
    const-string v2, ", mark"

    .line 153
    .line 154
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    :cond_3
    iget-object v2, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 158
    .line 159
    aget v2, v2, v3

    .line 160
    .line 161
    const/high16 v4, 0x4000000

    .line 162
    .line 163
    and-int/2addr v2, v4

    .line 164
    if-eqz v2, :cond_4

    .line 165
    .line 166
    const-string v2, ", contains mark"

    .line 167
    .line 168
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    :cond_4
    invoke-static {p0, p2}, Landroidx/compose/runtime/SlotTable;->emitGroup$dataIndex(Landroidx/compose/runtime/SlotTable;I)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    add-int/lit8 v4, p2, 0x1

    .line 176
    .line 177
    invoke-static {p0, v4}, Landroidx/compose/runtime/SlotTable;->emitGroup$dataIndex(Landroidx/compose/runtime/SlotTable;I)I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    const/16 v6, 0xa

    .line 182
    .line 183
    if-ltz v2, :cond_a

    .line 184
    .line 185
    if-gt v2, v5, :cond_a

    .line 186
    .line 187
    iget v7, p0, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    .line 188
    .line 189
    if-gt v5, v7, :cond_a

    .line 190
    .line 191
    iget-object v2, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 192
    .line 193
    aget v2, v2, v3

    .line 194
    .line 195
    const/high16 v7, 0x20000000

    .line 196
    .line 197
    and-int/2addr v2, v7

    .line 198
    if-eqz v2, :cond_5

    .line 199
    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v7, " objectKey="

    .line 206
    .line 207
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    iget-object v7, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    .line 211
    .line 212
    iget-object v8, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 213
    .line 214
    invoke-static {v8, p2}, Landroidx/compose/runtime/SlotTableKt;->access$objectKeyIndex([II)I

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    aget-object v7, v7, v8

    .line 219
    .line 220
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    invoke-static {v7, v6}, Landroidx/compose/runtime/SlotTableKt;->access$summarize(Ljava/lang/String;I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    :cond_5
    iget-object v2, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 239
    .line 240
    aget v2, v2, v3

    .line 241
    .line 242
    const/high16 v7, 0x40000000    # 2.0f

    .line 243
    .line 244
    and-int/2addr v2, v7

    .line 245
    if-eqz v2, :cond_6

    .line 246
    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    const-string v7, " node="

    .line 253
    .line 254
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    iget-object v7, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    .line 258
    .line 259
    iget-object v8, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 260
    .line 261
    add-int/lit8 v1, v1, 0x4

    .line 262
    .line 263
    aget v1, v8, v1

    .line 264
    .line 265
    aget-object v1, v7, v1

    .line 266
    .line 267
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-static {v1, v6}, Landroidx/compose/runtime/SlotTableKt;->access$summarize(Ljava/lang/String;I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    :cond_6
    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 286
    .line 287
    aget v1, v1, v3

    .line 288
    .line 289
    const/high16 v2, 0x10000000

    .line 290
    .line 291
    and-int/2addr v1, v2

    .line 292
    if-eqz v1, :cond_7

    .line 293
    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    const-string v2, " aux="

    .line 300
    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    iget-object v2, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    .line 305
    .line 306
    iget-object v3, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 307
    .line 308
    invoke-static {v3, p2}, Landroidx/compose/runtime/SlotTableKt;->access$auxIndex([II)I

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    aget-object v2, v2, v3

    .line 313
    .line 314
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-static {v2, v6}, Landroidx/compose/runtime/SlotTableKt;->access$summarize(Ljava/lang/String;I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    :cond_7
    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 333
    .line 334
    invoke-static {v1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-ge v1, v5, :cond_b

    .line 339
    .line 340
    const-string v2, ", slots=["

    .line 341
    .line 342
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    const-string v2, ": "

    .line 349
    .line 350
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    move v2, v1

    .line 354
    :goto_1
    if-ge v2, v5, :cond_9

    .line 355
    .line 356
    if-eq v2, v1, :cond_8

    .line 357
    .line 358
    const-string v3, ", "

    .line 359
    .line 360
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    :cond_8
    iget-object v3, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    .line 364
    .line 365
    aget-object v3, v3, v2

    .line 366
    .line 367
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    invoke-static {v3, v6}, Landroidx/compose/runtime/SlotTableKt;->access$summarize(Ljava/lang/String;I)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    add-int/lit8 v2, v2, 0x1

    .line 379
    .line 380
    goto :goto_1

    .line 381
    :cond_9
    const-string v1, "]"

    .line 382
    .line 383
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    goto :goto_2

    .line 387
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .line 391
    .line 392
    const-string v3, ", *invalid data offsets "

    .line 393
    .line 394
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const/16 v2, 0x2d

    .line 401
    .line 402
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    const/16 v2, 0x2a

    .line 409
    .line 410
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    :cond_b
    :goto_2
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    add-int/2addr p2, v0

    .line 424
    :goto_3
    if-ge v4, p2, :cond_c

    .line 425
    .line 426
    add-int/lit8 v1, p3, 0x1

    .line 427
    .line 428
    invoke-direct {p0, p1, v4, v1}, Landroidx/compose/runtime/SlotTable;->emitGroup(Ljava/lang/StringBuilder;II)I

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    add-int/2addr v4, v1

    .line 433
    goto :goto_3

    .line 434
    :cond_c
    return v0
.end method

.method private static final emitGroup$dataIndex(Landroidx/compose/runtime/SlotTable;I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 9
    .line 10
    mul-int/lit8 p1, p1, 0x5

    .line 11
    .line 12
    add-int/lit8 p1, p1, 0x4

    .line 13
    .line 14
    aget p0, p0, p1

    .line 15
    .line 16
    :goto_0
    return p0
.end method

.method private final findEffectiveRecomposeScope(I)Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 4

    .line 1
    move v0, p1

    .line 2
    :goto_0
    if-lez v0, :cond_3

    .line 3
    .line 4
    new-instance v1, Landroidx/compose/runtime/DataIterator;

    .line 5
    .line 6
    invoke-direct {v1, p0, v0}, Landroidx/compose/runtime/DataIterator;-><init>(Landroidx/compose/runtime/SlotTable;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/runtime/DataIterator;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    instance-of v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->getUsed()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    if-eq v0, p1, :cond_1

    .line 36
    .line 37
    return-object v2

    .line 38
    :cond_1
    const/4 v3, 0x1

    .line 39
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/RecomposeScopeImpl;->setForcedRecompose(Z)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 44
    .line 45
    mul-int/lit8 v0, v0, 0x5

    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x2

    .line 48
    .line 49
    aget v0, v1, v0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    const/4 p1, 0x0

    .line 53
    return-object p1
.end method

.method private final groupSizes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 4
    .line 5
    mul-int/lit8 v1, v1, 0x5

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSizes([II)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static final invalidateGroupsWithKey$lambda$20$scanGroup(Landroidx/compose/runtime/SlotReader;Landroidx/collection/MutableIntSet;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/runtime/SlotTable;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotReader;",
            "Landroidx/collection/MutableIntSet;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/Anchor;",
            ">;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Landroidx/compose/runtime/SlotTable;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroidx/collection/IntSet;->contains(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    const/4 p1, -0x3

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eq v0, p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-static {p0, v1, p1, v0}, Landroidx/compose/runtime/SlotReader;->anchor$default(Landroidx/compose/runtime/SlotReader;IILjava/lang/Object;)Landroidx/compose/runtime/Anchor;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-boolean p1, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-direct {p4, p1}, Landroidx/compose/runtime/SlotTable;->findEffectiveRecomposeScope(I)Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getLocation$runtime()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getCurrentGroup()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-ne p1, p2, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getParent()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-direct {p4, p1}, Landroidx/compose/runtime/SlotTable;->findEffectiveRecomposeScope(I)Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iput-boolean v1, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 72
    .line 73
    invoke-interface {p5}, Ljava/util/List;->clear()V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->skipGroup()I

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->startGroup()V

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->isGroupEnd()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_4

    .line 88
    .line 89
    invoke-static/range {p0 .. p5}, Landroidx/compose/runtime/SlotTable;->invalidateGroupsWithKey$lambda$20$scanGroup(Landroidx/compose/runtime/SlotReader;Landroidx/collection/MutableIntSet;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/runtime/SlotTable;Ljava/util/List;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->endGroup()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method private final keys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 4
    .line 5
    mul-int/lit8 v1, v1, 0x5

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$keys([II)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final nodes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 4
    .line 5
    mul-int/lit8 v1, v1, 0x5

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCounts([II)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final parentIndexes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 4
    .line 5
    mul-int/lit8 v1, v1, 0x5

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchors([II)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final tryAnchor(I)Landroidx/compose/runtime/Anchor;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "use active SlotWriter to crate an anchor for location instead"

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    if-ltz p1, :cond_1

    .line 11
    .line 12
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 13
    .line 14
    if-ge p1, v0, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-static {v1, p1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$find(Ljava/util/ArrayList;II)Landroidx/compose/runtime/Anchor;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_0
    return-object p1
.end method

.method private static final verifyWellFormed$validateGroup(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/runtime/SlotTable;II)I
    .locals 11

    .line 1
    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 6
    .line 7
    iget-object v2, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 8
    .line 9
    mul-int/lit8 v3, v0, 0x5

    .line 10
    .line 11
    add-int/lit8 v4, v3, 0x2

    .line 12
    .line 13
    aget v2, v2, v4

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x1

    .line 17
    if-ne v2, p2, :cond_0

    .line 18
    .line 19
    move v6, v5

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v6, v4

    .line 22
    :goto_0
    if-nez v6, :cond_1

    .line 23
    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v7, "Invalid parent index detected at "

    .line 30
    .line 31
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v7, ", expected parent index to be "

    .line 38
    .line 39
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v7, " found "

    .line 46
    .line 47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object v2, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 61
    .line 62
    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    add-int/2addr v2, v0

    .line 67
    iget v6, p1, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 68
    .line 69
    if-gt v2, v6, :cond_2

    .line 70
    .line 71
    move v6, v5

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move v6, v4

    .line 74
    :goto_1
    if-nez v6, :cond_3

    .line 75
    .line 76
    new-instance v6, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v7, "A group extends past the end of the table at "

    .line 82
    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-static {v6}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    if-gt v2, p3, :cond_4

    .line 97
    .line 98
    move p3, v5

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    move p3, v4

    .line 101
    :goto_2
    if-nez p3, :cond_5

    .line 102
    .line 103
    new-instance p3, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v6, "A group extends past its parent group at "

    .line 109
    .line 110
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-static {p3}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_5
    iget-object p3, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 124
    .line 125
    add-int/lit8 v6, v3, 0x4

    .line 126
    .line 127
    aget v7, p3, v6

    .line 128
    .line 129
    iget v8, p1, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 130
    .line 131
    sub-int/2addr v8, v5

    .line 132
    if-lt v0, v8, :cond_6

    .line 133
    .line 134
    iget p3, p1, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_6
    mul-int/lit8 v1, v1, 0x5

    .line 138
    .line 139
    add-int/lit8 v1, v1, 0x4

    .line 140
    .line 141
    aget p3, p3, v1

    .line 142
    .line 143
    :goto_3
    iget-object v1, p1, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    .line 144
    .line 145
    array-length v1, v1

    .line 146
    if-gt p3, v1, :cond_7

    .line 147
    .line 148
    move v1, v5

    .line 149
    goto :goto_4

    .line 150
    :cond_7
    move v1, v4

    .line 151
    :goto_4
    if-nez v1, :cond_8

    .line 152
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v8, "Slots for "

    .line 159
    .line 160
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v8, " extend past the end of the slot table"

    .line 167
    .line 168
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-static {v1}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :cond_8
    if-gt v7, p3, :cond_9

    .line 179
    .line 180
    move v1, v5

    .line 181
    goto :goto_5

    .line 182
    :cond_9
    move v1, v4

    .line 183
    :goto_5
    if-nez v1, :cond_a

    .line 184
    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v8, "Invalid data anchor at "

    .line 191
    .line 192
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-static {v1}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :cond_a
    iget-object v1, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 206
    .line 207
    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-gt v1, p3, :cond_b

    .line 212
    .line 213
    move v1, v5

    .line 214
    goto :goto_6

    .line 215
    :cond_b
    move v1, v4

    .line 216
    :goto_6
    if-nez v1, :cond_c

    .line 217
    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    const-string v8, "Slots start out of range at "

    .line 224
    .line 225
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-static {v1}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :cond_c
    iget-object v1, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 239
    .line 240
    add-int/2addr v3, v5

    .line 241
    aget v1, v1, v3

    .line 242
    .line 243
    const/high16 v8, 0x40000000    # 2.0f

    .line 244
    .line 245
    and-int v9, v1, v8

    .line 246
    .line 247
    if-eqz v9, :cond_d

    .line 248
    .line 249
    move v9, v5

    .line 250
    goto :goto_7

    .line 251
    :cond_d
    move v9, v4

    .line 252
    :goto_7
    const/high16 v10, 0x20000000

    .line 253
    .line 254
    and-int/2addr v10, v1

    .line 255
    if-eqz v10, :cond_e

    .line 256
    .line 257
    move v10, v5

    .line 258
    goto :goto_8

    .line 259
    :cond_e
    move v10, v4

    .line 260
    :goto_8
    add-int/2addr v9, v10

    .line 261
    const/high16 v10, 0x10000000

    .line 262
    .line 263
    and-int/2addr v1, v10

    .line 264
    if-eqz v1, :cond_f

    .line 265
    .line 266
    move v1, v5

    .line 267
    goto :goto_9

    .line 268
    :cond_f
    move v1, v4

    .line 269
    :goto_9
    add-int/2addr v9, v1

    .line 270
    sub-int/2addr p3, v7

    .line 271
    if-lt p3, v9, :cond_10

    .line 272
    .line 273
    move p3, v5

    .line 274
    goto :goto_a

    .line 275
    :cond_10
    move p3, v4

    .line 276
    :goto_a
    if-nez p3, :cond_11

    .line 277
    .line 278
    new-instance p3, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    const-string v1, "Not enough slots added for group "

    .line 284
    .line 285
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p3

    .line 295
    invoke-static {p3}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :cond_11
    iget-object p3, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 299
    .line 300
    aget v1, p3, v3

    .line 301
    .line 302
    and-int/2addr v1, v8

    .line 303
    if-eqz v1, :cond_12

    .line 304
    .line 305
    move v1, v5

    .line 306
    goto :goto_b

    .line 307
    :cond_12
    move v1, v4

    .line 308
    :goto_b
    if-eqz v1, :cond_14

    .line 309
    .line 310
    iget-object v7, p1, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    .line 311
    .line 312
    aget p3, p3, v6

    .line 313
    .line 314
    aget-object p3, v7, p3

    .line 315
    .line 316
    if-eqz p3, :cond_13

    .line 317
    .line 318
    goto :goto_c

    .line 319
    :cond_13
    move p3, v4

    .line 320
    goto :goto_d

    .line 321
    :cond_14
    :goto_c
    move p3, v5

    .line 322
    :goto_d
    if-nez p3, :cond_15

    .line 323
    .line 324
    new-instance p3, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    const-string v6, "No node recorded for a node group at "

    .line 330
    .line 331
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p3

    .line 341
    invoke-static {p3}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    :cond_15
    move p3, v4

    .line 345
    :goto_e
    iget v6, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 346
    .line 347
    if-ge v6, v2, :cond_16

    .line 348
    .line 349
    invoke-static {p0, p1, v0, v2}, Landroidx/compose/runtime/SlotTable;->verifyWellFormed$validateGroup(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/runtime/SlotTable;II)I

    .line 350
    .line 351
    .line 352
    move-result v6

    .line 353
    add-int/2addr p3, v6

    .line 354
    goto :goto_e

    .line 355
    :cond_16
    iget-object v2, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 356
    .line 357
    aget v6, v2, v3

    .line 358
    .line 359
    const v7, 0x3ffffff

    .line 360
    .line 361
    .line 362
    and-int/2addr v6, v7

    .line 363
    invoke-static {v2, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    if-ne v6, p3, :cond_17

    .line 368
    .line 369
    move v7, v5

    .line 370
    goto :goto_f

    .line 371
    :cond_17
    move v7, v4

    .line 372
    :goto_f
    const-string v8, ", received "

    .line 373
    .line 374
    const-string v9, ", expected "

    .line 375
    .line 376
    if-nez v7, :cond_18

    .line 377
    .line 378
    new-instance v7, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .line 382
    .line 383
    const-string v10, "Incorrect node count detected at "

    .line 384
    .line 385
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v6

    .line 407
    invoke-static {v6}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    :cond_18
    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 411
    .line 412
    sub-int/2addr p0, v0

    .line 413
    if-ne v2, p0, :cond_19

    .line 414
    .line 415
    move v6, v5

    .line 416
    goto :goto_10

    .line 417
    :cond_19
    move v6, v4

    .line 418
    :goto_10
    if-nez v6, :cond_1a

    .line 419
    .line 420
    new-instance v6, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .line 424
    .line 425
    const-string v7, "Incorrect slot count detected at "

    .line 426
    .line 427
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object p0

    .line 449
    invoke-static {p0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    :cond_1a
    iget-object p0, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 453
    .line 454
    aget p1, p0, v3

    .line 455
    .line 456
    const/high16 v2, 0xc000000

    .line 457
    .line 458
    and-int/2addr p1, v2

    .line 459
    if-eqz p1, :cond_1d

    .line 460
    .line 461
    if-lez v0, :cond_1b

    .line 462
    .line 463
    mul-int/lit8 p1, p2, 0x5

    .line 464
    .line 465
    add-int/2addr p1, v5

    .line 466
    aget p0, p0, p1

    .line 467
    .line 468
    const/high16 p1, 0x4000000

    .line 469
    .line 470
    and-int/2addr p0, p1

    .line 471
    if-eqz p0, :cond_1c

    .line 472
    .line 473
    :cond_1b
    move v4, v5

    .line 474
    :cond_1c
    if-nez v4, :cond_1d

    .line 475
    .line 476
    new-instance p0, Ljava/lang/StringBuilder;

    .line 477
    .line 478
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    .line 480
    .line 481
    const-string p1, "Expected group "

    .line 482
    .line 483
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    const-string p1, " to record it contains a mark because "

    .line 490
    .line 491
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    const-string p1, " does"

    .line 498
    .line 499
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object p0

    .line 506
    invoke-static {p0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    :cond_1d
    if-eqz v1, :cond_1e

    .line 510
    .line 511
    goto :goto_11

    .line 512
    :cond_1e
    move v5, p3

    .line 513
    :goto_11
    return v5
.end method

.method private static final verifyWellFormed$verifySourceGroup(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/GroupSourceInformation;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/compose/runtime/GroupSourceInformation;->getGroups()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_3

    .line 13
    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    instance-of v3, v2, Landroidx/compose/runtime/Anchor;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    check-cast v2, Landroidx/compose/runtime/Anchor;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/compose/runtime/Anchor;->getValid()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    const-string v3, "Source map contains invalid anchor"

    .line 31
    .line 32
    invoke-static {v3}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotTable;->ownsAnchor(Landroidx/compose/runtime/Anchor;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    const-string v2, "Source map anchor is not owned by the slot table"

    .line 42
    .line 43
    invoke-static {v2}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    instance-of v3, v2, Landroidx/compose/runtime/GroupSourceInformation;

    .line 48
    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    check-cast v2, Landroidx/compose/runtime/GroupSourceInformation;

    .line 52
    .line 53
    invoke-static {p0, v2}, Landroidx/compose/runtime/SlotTable;->verifyWellFormed$verifySourceGroup(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/GroupSourceInformation;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return-void
.end method


# virtual methods
.method public final anchor(I)Landroidx/compose/runtime/Anchor;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "use active SlotWriter to create an anchor location instead"

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ltz p1, :cond_1

    .line 13
    .line 14
    iget v2, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 15
    .line 16
    if-ge p1, v2, :cond_1

    .line 17
    .line 18
    move v0, v1

    .line 19
    :cond_1
    if-nez v0, :cond_2

    .line 20
    .line 21
    const-string v0, "Parameter index is out of range"

    .line 22
    .line 23
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget v2, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 29
    .line 30
    invoke-static {v0, p1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$search(Ljava/util/ArrayList;II)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-gez v2, :cond_3

    .line 35
    .line 36
    new-instance v3, Landroidx/compose/runtime/Anchor;

    .line 37
    .line 38
    invoke-direct {v3, p1}, Landroidx/compose/runtime/Anchor;-><init>(I)V

    .line 39
    .line 40
    .line 41
    add-int/2addr v2, v1

    .line 42
    neg-int p1, v2

    .line 43
    invoke-virtual {v0, p1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    move-object v3, p1

    .line 52
    check-cast v3, Landroidx/compose/runtime/Anchor;

    .line 53
    .line 54
    :goto_0
    return-object v3
.end method

.method public final anchorIndex(Landroidx/compose/runtime/Anchor;)I
    .locals 1
    .param p1    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Use active SlotWriter to determine anchor location instead"

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getValid()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const-string v0, "Anchor refers to a group that was removed"

    .line 17
    .line 18
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getLocation$runtime()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public final close$runtime(Landroidx/compose/runtime/SlotReader;Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/SlotReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotReader;",
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->getTable$runtime()Landroidx/compose/runtime/SlotTable;

    move-result-object p1

    if-ne p1, p0, :cond_0

    iget p1, p0, Landroidx/compose/runtime/SlotTable;->readers:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "Unexpected reader close()"

    .line 2
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 3
    :cond_1
    iget p1, p0, Landroidx/compose/runtime/SlotTable;->readers:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/SlotTable;->readers:I

    if-eqz p2, :cond_3

    .line 4
    iget-object p1, p0, Landroidx/compose/runtime/SlotTable;->lock:Ljava/lang/Object;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    .line 8
    :cond_2
    iput-object p2, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    .line 9
    :goto_1
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p1

    goto :goto_3

    :goto_2
    monitor-exit p1

    throw p2

    :cond_3
    :goto_3
    return-void
.end method

.method public final close$runtime(Landroidx/compose/runtime/SlotWriter;[II[Ljava/lang/Object;ILjava/util/ArrayList;Ljava/util/HashMap;Landroidx/collection/MutableIntObjectMap;)V
    .locals 9
    .param p1    # Landroidx/compose/runtime/SlotWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/collection/MutableIntObjectMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/SlotWriter;",
            "[II[",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;",
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;",
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/collection/MutableIntSet;",
            ">;)V"
        }
    .end annotation

    move-object v8, p0

    .line 11
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->getTable$runtime()Landroidx/compose/runtime/SlotTable;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, v8, :cond_0

    iget-boolean v0, v8, Landroidx/compose/runtime/SlotTable;->writer:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Unexpected writer close()"

    .line 12
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 13
    :cond_1
    iput-boolean v1, v8, Landroidx/compose/runtime/SlotTable;->writer:Z

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 14
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/runtime/SlotTable;->setTo$runtime([II[Ljava/lang/Object;ILjava/util/ArrayList;Ljava/util/HashMap;Landroidx/collection/MutableIntObjectMap;)V

    return-void
.end method

.method public final collectCalledByInformation()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntObjectMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    .line 10
    .line 11
    return-void
.end method

.method public final collectSourceInformation()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public final containsMark()Z
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    aget v0, v0, v1

    .line 9
    .line 10
    const/high16 v2, 0x4000000

    .line 11
    .line 12
    and-int/2addr v0, v2

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    return v1
.end method

.method public find(Ljava/lang/Object;)Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v6, Landroidx/compose/runtime/SlotTableGroup;

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
    move-object v0, v6

    .line 8
    move-object v1, p0

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/SlotTableGroup;-><init>(Landroidx/compose/runtime/SlotTable;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/SlotTableGroup;->find(Ljava/lang/Object;)Landroidx/compose/runtime/tooling/CompositionGroup;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final getAnchors$runtime()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCalledByMap$runtime()Landroidx/collection/MutableIntObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/collection/MutableIntSet;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCompositionGroups()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public final getGroups()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGroupsSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSlots()[Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSlotsSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSourceInformationMap$runtime()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVersion$runtime()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->version:I

    .line 2
    .line 3
    return v0
.end method

.method public final getWriter$runtime()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    .line 2
    .line 3
    return v0
.end method

.method public final groupContainsAnchor(ILandroidx/compose/runtime/Anchor;)Z
    .locals 3
    .param p2    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Writer is active"

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-ltz p1, :cond_1

    .line 13
    .line 14
    iget v2, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 15
    .line 16
    if-ge p1, v2, :cond_1

    .line 17
    .line 18
    move v2, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v2, v1

    .line 21
    :goto_0
    if-nez v2, :cond_2

    .line 22
    .line 23
    const-string v2, "Invalid group index"

    .line 24
    .line 25
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotTable;->ownsAnchor(Landroidx/compose/runtime/Anchor;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 35
    .line 36
    invoke-static {v2, p1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    add-int/2addr v2, p1

    .line 41
    invoke-virtual {p2}, Landroidx/compose/runtime/Anchor;->getLocation$runtime()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-gt p1, p2, :cond_3

    .line 46
    .line 47
    if-ge p2, v2, :cond_3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    move v0, v1

    .line 51
    :goto_1
    return v0
.end method

.method public final inGroup(Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/Anchor;)Z
    .locals 2
    .param p1    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getLocation$runtime()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/2addr v0, p1

    .line 12
    invoke-virtual {p2}, Landroidx/compose/runtime/Anchor;->getLocation$runtime()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    const/4 v1, 0x0

    .line 17
    if-gt p1, p2, :cond_0

    .line 18
    .line 19
    if-ge p2, v0, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_0
    return v1
.end method

.method public final invalidateGroupsWithKey$runtime(I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/RecomposeScopeImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v6, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v7, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 12
    .line 13
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v9, 0x1

    .line 17
    iput-boolean v9, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 18
    .line 19
    new-instance v1, Landroidx/collection/MutableIntSet;

    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    const/4 v11, 0x0

    .line 23
    invoke-direct {v1, v10, v9, v11}, Landroidx/collection/MutableIntSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Landroidx/collection/MutableIntSet;->add(I)Z

    .line 27
    .line 28
    .line 29
    const/4 v0, -0x3

    .line 30
    invoke-virtual {v1, v0}, Landroidx/collection/MutableIntSet;->add(I)Z

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroidx/collection/MutableIntSet;

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Landroidx/collection/MutableIntSet;->addAll(Landroidx/collection/IntSet;)Z

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    move-object v0, p1

    .line 53
    move-object v2, v6

    .line 54
    move-object v3, v8

    .line 55
    move-object v4, p0

    .line 56
    move-object v5, v7

    .line 57
    :try_start_0
    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/SlotTable;->invalidateGroupsWithKey$lambda$20$scanGroup(Landroidx/compose/runtime/SlotReader;Landroidx/collection/MutableIntSet;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/runtime/SlotTable;Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->close()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :try_start_1
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    .line 70
    .line 71
    .line 72
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    move v1, v10

    .line 77
    :goto_0
    if-ge v1, v0, :cond_2

    .line 78
    .line 79
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Landroidx/compose/runtime/Anchor;

    .line 84
    .line 85
    invoke-virtual {v2, p1}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotWriter;)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-lt v3, v4, :cond_1

    .line 94
    .line 95
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/SlotWriter;->seek(Landroidx/compose/runtime/Anchor;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->bashCurrentGroup()V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    goto :goto_3

    .line 104
    :cond_1
    :goto_1
    add-int/2addr v1, v9

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotWriter;->endGroup()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v9}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 113
    .line 114
    .line 115
    iget-boolean p1, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 116
    .line 117
    if-eqz p1, :cond_3

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    move-object v7, v11

    .line 121
    :goto_2
    return-object v7

    .line 122
    :goto_3
    invoke-virtual {p1, v10}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :catchall_1
    move-exception v0

    .line 127
    invoke-virtual {p1}, Landroidx/compose/runtime/SlotReader;->close()V

    .line 128
    .line 129
    .line 130
    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/GroupIterator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2}, Landroidx/compose/runtime/GroupIterator;-><init>(Landroidx/compose/runtime/SlotTable;II)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final openReader()Landroidx/compose/runtime/SlotReader;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->readers:I

    .line 6
    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iput v0, p0, Landroidx/compose/runtime/SlotTable;->readers:I

    .line 10
    .line 11
    new-instance v0, Landroidx/compose/runtime/SlotReader;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroidx/compose/runtime/SlotReader;-><init>(Landroidx/compose/runtime/SlotTable;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v1, "Cannot read while a writer is pending"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public final openWriter()Landroidx/compose/runtime/SlotWriter;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Cannot start a writer when another writer is pending"

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->readers:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-gtz v0, :cond_1

    .line 14
    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-nez v0, :cond_2

    .line 19
    .line 20
    const-string v0, "Cannot start a writer when a reader is pending"

    .line 21
    .line 22
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iput-boolean v1, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    .line 26
    .line 27
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->version:I

    .line 28
    .line 29
    add-int/2addr v0, v1

    .line 30
    iput v0, p0, Landroidx/compose/runtime/SlotTable;->version:I

    .line 31
    .line 32
    new-instance v0, Landroidx/compose/runtime/SlotWriter;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Landroidx/compose/runtime/SlotWriter;-><init>(Landroidx/compose/runtime/SlotTable;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public final ownsAnchor(Landroidx/compose/runtime/Anchor;)Z
    .locals 3
    .param p1    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getLocation$runtime()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget v2, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$search(Ljava/util/ArrayList;II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ltz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    :goto_0
    return p1
.end method

.method public final read(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/SlotReader;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotTable;->openReader()Landroidx/compose/runtime/SlotReader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    :try_start_0
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->close()V

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/runtime/SlotReader;->close()V

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final setAnchors$runtime(Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public final setCalledByMap$runtime(Landroidx/collection/MutableIntObjectMap;)V
    .locals 0
    .param p1    # Landroidx/collection/MutableIntObjectMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/collection/MutableIntSet;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    .line 2
    .line 3
    return-void
.end method

.method public final setSourceInformationMap$runtime(Ljava/util/HashMap;)V
    .locals 0
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

.method public final setTo$runtime([II[Ljava/lang/Object;ILjava/util/ArrayList;Ljava/util/HashMap;Landroidx/collection/MutableIntObjectMap;)V
    .locals 0
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/collection/MutableIntObjectMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II[",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/Anchor;",
            ">;",
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/Anchor;",
            "Landroidx/compose/runtime/GroupSourceInformation;",
            ">;",
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/collection/MutableIntSet;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    .line 6
    .line 7
    iput p4, p0, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    .line 14
    .line 15
    return-void
.end method

.method public final setVersion$runtime(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/SlotTable;->version:I

    .line 2
    .line 3
    return-void
.end method

.method public final slot$runtime(II)Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor([II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 10
    .line 11
    if-ge p1, v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 14
    .line 15
    mul-int/lit8 p1, p1, 0x5

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x4

    .line 18
    .line 19
    aget p1, v1, p1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    .line 23
    .line 24
    array-length p1, p1

    .line 25
    :goto_0
    sub-int/2addr p1, v0

    .line 26
    if-ltz p2, :cond_1

    .line 27
    .line 28
    if-ge p2, p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    .line 31
    .line 32
    add-int/2addr v0, p2

    .line 33
    aget-object p1, p1, v0

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_1
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public final slotsOf$runtime(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 2
    .line 3
    mul-int/lit8 v1, p1, 0x5

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x4

    .line 6
    .line 7
    aget v1, v0, v1

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iget v2, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 12
    .line 13
    if-ge p1, v2, :cond_0

    .line 14
    .line 15
    mul-int/lit8 p1, p1, 0x5

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x4

    .line 18
    .line 19
    aget p1, v0, p1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    .line 23
    .line 24
    array-length p1, p1

    .line 25
    :goto_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/collections/n;->x1([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public final sourceInformationOf(I)Landroidx/compose/runtime/GroupSourceInformation;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/compose/runtime/SlotTable;->tryAnchor(I)Landroidx/compose/runtime/Anchor;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    move-object v1, p1

    .line 17
    check-cast v1, Landroidx/compose/runtime/GroupSourceInformation;

    .line 18
    .line 19
    :cond_0
    return-object v1
.end method

.method public final toDebugString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/16 v1, 0xa

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 28
    .line 29
    if-lez v1, :cond_1

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    move v3, v2

    .line 33
    :goto_0
    if-ge v3, v1, :cond_2

    .line 34
    .line 35
    invoke-direct {p0, v0, v3, v2}, Landroidx/compose/runtime/SlotTable;->emitGroup(Ljava/lang/StringBuilder;II)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    add-int/2addr v3, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string v1, "<EMPTY>"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "toString(...)"

    .line 51
    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-object v0
.end method

.method public final verifyWellFormed()V
    .locals 8

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-lez v1, :cond_2

    .line 12
    .line 13
    :goto_0
    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 14
    .line 15
    iget v5, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 16
    .line 17
    if-ge v1, v5, :cond_0

    .line 18
    .line 19
    iget-object v5, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    .line 20
    .line 21
    invoke-static {v5, v1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize([II)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    add-int/2addr v1, v5

    .line 26
    invoke-static {v0, p0, v2, v1}, Landroidx/compose/runtime/SlotTable;->verifyWellFormed$validateGroup(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/runtime/SlotTable;II)I

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    if-ne v1, v5, :cond_1

    .line 31
    .line 32
    move v1, v4

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v1, v3

    .line 35
    :goto_1
    if-nez v1, :cond_2

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v5, "Incomplete group at root "

    .line 43
    .line 44
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, " expected to be "

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    iget v0, p0, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    .line 70
    .line 71
    iget-object v1, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    .line 72
    .line 73
    array-length v1, v1

    .line 74
    :goto_2
    if-ge v0, v1, :cond_5

    .line 75
    .line 76
    iget-object v5, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    .line 77
    .line 78
    aget-object v5, v5, v0

    .line 79
    .line 80
    if-nez v5, :cond_3

    .line 81
    .line 82
    move v5, v4

    .line 83
    goto :goto_3

    .line 84
    :cond_3
    move v5, v3

    .line 85
    :goto_3
    if-nez v5, :cond_4

    .line 86
    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v6, "Non null value in the slot gap at index "

    .line 93
    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-static {v5}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    move v5, v3

    .line 117
    :goto_4
    if-ge v5, v1, :cond_a

    .line 118
    .line 119
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    check-cast v6, Landroidx/compose/runtime/Anchor;

    .line 124
    .line 125
    invoke-virtual {v6, p0}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotTable;)I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-ltz v6, :cond_6

    .line 130
    .line 131
    iget v7, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    .line 132
    .line 133
    if-gt v6, v7, :cond_6

    .line 134
    .line 135
    move v7, v4

    .line 136
    goto :goto_5

    .line 137
    :cond_6
    move v7, v3

    .line 138
    :goto_5
    if-nez v7, :cond_7

    .line 139
    .line 140
    const-string v7, "Invalid anchor, location out of bound"

    .line 141
    .line 142
    invoke-static {v7}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_7
    if-ge v2, v6, :cond_8

    .line 146
    .line 147
    move v2, v4

    .line 148
    goto :goto_6

    .line 149
    :cond_8
    move v2, v3

    .line 150
    :goto_6
    if-nez v2, :cond_9

    .line 151
    .line 152
    const-string v2, "Anchor is out of order"

    .line 153
    .line 154
    invoke-static {v2}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 158
    .line 159
    move v2, v6

    .line 160
    goto :goto_4

    .line 161
    :cond_a
    iget-object v0, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    .line 162
    .line 163
    if-eqz v0, :cond_d

    .line 164
    .line 165
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_d

    .line 178
    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Ljava/util/Map$Entry;

    .line 184
    .line 185
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    check-cast v2, Landroidx/compose/runtime/Anchor;

    .line 190
    .line 191
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    check-cast v1, Landroidx/compose/runtime/GroupSourceInformation;

    .line 196
    .line 197
    invoke-virtual {v2}, Landroidx/compose/runtime/Anchor;->getValid()Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-nez v3, :cond_b

    .line 202
    .line 203
    const-string v3, "Source map contains invalid anchor"

    .line 204
    .line 205
    invoke-static {v3}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    :cond_b
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotTable;->ownsAnchor(Landroidx/compose/runtime/Anchor;)Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-nez v2, :cond_c

    .line 213
    .line 214
    const-string v2, "Source map anchor is not owned by the slot table"

    .line 215
    .line 216
    invoke-static {v2}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :cond_c
    invoke-static {p0, v1}, Landroidx/compose/runtime/SlotTable;->verifyWellFormed$verifySourceGroup(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/GroupSourceInformation;)V

    .line 220
    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_d
    return-void
.end method

.method public final write(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/SlotWriter;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    :try_start_0
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method
