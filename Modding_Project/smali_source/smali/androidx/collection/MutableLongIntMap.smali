.class public final Landroidx/collection/MutableLongIntMap;
.super Landroidx/collection/LongIntMap;
.source "LongIntMap.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLongIntMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongIntMap.kt\nandroidx/collection/MutableLongIntMap\n+ 2 RuntimeHelpers.kt\nandroidx/collection/internal/RuntimeHelpersKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 LongIntMap.kt\nandroidx/collection/LongIntMap\n+ 6 LongSet.kt\nandroidx/collection/LongSet\n+ 7 LongList.kt\nandroidx/collection/LongList\n+ 8 LongSet.kt\nandroidx/collection/LongSetKt\n*L\n1#1,1034:1\n59#2,5:1035\n1#3:1040\n1254#4,6:1041\n1399#4:1057\n1270#4:1061\n1399#4:1078\n1270#4:1082\n1399#4:1103\n1270#4:1107\n1230#4:1124\n1254#4,6:1125\n1242#4:1131\n1241#4,4:1132\n1254#4,6:1136\n1175#4:1145\n1179#4:1146\n1372#4,3:1147\n1386#4,3:1150\n1312#4:1153\n1303#4:1154\n1297#4:1155\n1309#4:1156\n1393#4:1157\n1265#4:1158\n1220#4:1159\n1262#4:1160\n1220#4:1161\n1230#4:1162\n1254#4,6:1163\n1242#4:1169\n1241#4,4:1170\n1372#4,3:1174\n1399#4:1177\n1297#4:1178\n1144#4,14:1179\n1220#4:1193\n1175#4:1197\n1179#4:1198\n1254#4,6:1199\n1220#4:1205\n1179#4:1206\n1254#4,6:1207\n1254#4,6:1213\n1179#4:1219\n1254#4,6:1220\n1268#4:1226\n1220#4:1227\n1175#4:1231\n1179#4:1232\n1230#4:1233\n1254#4,6:1234\n1242#4:1240\n1241#4,4:1241\n387#5,4:1047\n359#5,6:1051\n369#5,3:1058\n372#5,9:1062\n391#5:1071\n359#5,6:1072\n369#5,3:1079\n372#5,9:1083\n256#6,4:1092\n226#6,7:1096\n237#6,3:1104\n240#6,9:1108\n260#6:1117\n237#7,6:1118\n881#8,3:1142\n881#8,3:1194\n881#8,3:1228\n*S KotlinDebug\n*F\n+ 1 LongIntMap.kt\nandroidx/collection/MutableLongIntMap\n*L\n639#1:1035,5\n667#1:1041,6\n739#1:1057\n739#1:1061\n770#1:1078\n770#1:1082\n791#1:1103\n791#1:1107\n805#1:1124\n805#1:1125,6\n805#1:1131\n805#1:1132,4\n813#1:1136,6\n826#1:1145\n827#1:1146\n834#1:1147,3\n835#1:1150,3\n836#1:1153\n837#1:1154\n837#1:1155\n841#1:1156\n844#1:1157\n853#1:1158\n853#1:1159\n859#1:1160\n859#1:1161\n860#1:1162\n860#1:1163,6\n860#1:1169\n860#1:1170,4\n875#1:1174,3\n876#1:1177\n878#1:1178\n924#1:1179,14\n930#1:1193\n945#1:1197\n956#1:1198\n957#1:1199,6\n967#1:1205\n970#1:1206\n971#1:1207,6\n972#1:1213,6\n982#1:1219\n983#1:1220,6\n1022#1:1226\n1022#1:1227\n1025#1:1231\n1027#1:1232\n1027#1:1233\n1027#1:1234,6\n1027#1:1240\n1027#1:1241,4\n739#1:1047,4\n739#1:1051,6\n739#1:1058,3\n739#1:1062,9\n739#1:1071\n770#1:1072,6\n770#1:1079,3\n770#1:1083,9\n791#1:1092,4\n791#1:1096,7\n791#1:1104,3\n791#1:1108,9\n791#1:1117\n796#1:1118,6\n825#1:1142,3\n944#1:1194,3\n1024#1:1228,3\n*E\n"
    }
.end annotation


# instance fields
.field private growthLimit:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/MutableLongIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/collection/LongIntMap;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    const-string v0, "Capacity must be a positive value."

    .line 4
    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->unloadedCapacity(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/collection/MutableLongIntMap;->initializeStorage(I)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x6

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/MutableLongIntMap;-><init>(I)V

    return-void
.end method

.method private final findFirstAvailableSlot(I)I
    .locals 9

    .line 1
    iget v0, p0, Landroidx/collection/LongIntMap;->_capacity:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Landroidx/collection/LongIntMap;->metadata:[J

    .line 6
    .line 7
    shr-int/lit8 v3, p1, 0x3

    .line 8
    .line 9
    and-int/lit8 v4, p1, 0x7

    .line 10
    .line 11
    shl-int/lit8 v4, v4, 0x3

    .line 12
    .line 13
    aget-wide v5, v2, v3

    .line 14
    .line 15
    ushr-long/2addr v5, v4

    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 17
    .line 18
    aget-wide v7, v2, v3

    .line 19
    .line 20
    rsub-int/lit8 v2, v4, 0x40

    .line 21
    .line 22
    shl-long v2, v7, v2

    .line 23
    .line 24
    int-to-long v7, v4

    .line 25
    neg-long v7, v7

    .line 26
    const/16 v4, 0x3f

    .line 27
    .line 28
    shr-long/2addr v7, v4

    .line 29
    and-long/2addr v2, v7

    .line 30
    or-long/2addr v2, v5

    .line 31
    not-long v4, v2

    .line 32
    const/4 v6, 0x7

    .line 33
    shl-long/2addr v4, v6

    .line 34
    and-long/2addr v2, v4

    .line 35
    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    and-long/2addr v2, v4

    .line 41
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    cmp-long v4, v2, v4

    .line 44
    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    shr-int/lit8 v1, v1, 0x3

    .line 52
    .line 53
    add-int/2addr p1, v1

    .line 54
    and-int/2addr p1, v0

    .line 55
    return p1

    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x8

    .line 57
    .line 58
    add-int/2addr p1, v1

    .line 59
    and-int/2addr p1, v0

    .line 60
    goto :goto_0
.end method

.method private final findInsertIndex(J)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->hashCode(J)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, -0x3361d2af    # -8.2930312E7f

    .line 8
    .line 9
    .line 10
    mul-int/2addr v1, v2

    .line 11
    shl-int/lit8 v2, v1, 0x10

    .line 12
    .line 13
    xor-int/2addr v1, v2

    .line 14
    ushr-int/lit8 v2, v1, 0x7

    .line 15
    .line 16
    and-int/lit8 v1, v1, 0x7f

    .line 17
    .line 18
    iget v3, v0, Landroidx/collection/LongIntMap;->_capacity:I

    .line 19
    .line 20
    and-int v4, v2, v3

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    :goto_0
    iget-object v7, v0, Landroidx/collection/LongIntMap;->metadata:[J

    .line 24
    .line 25
    shr-int/lit8 v8, v4, 0x3

    .line 26
    .line 27
    and-int/lit8 v9, v4, 0x7

    .line 28
    .line 29
    shl-int/lit8 v9, v9, 0x3

    .line 30
    .line 31
    aget-wide v10, v7, v8

    .line 32
    .line 33
    ushr-long/2addr v10, v9

    .line 34
    const/4 v12, 0x1

    .line 35
    add-int/2addr v8, v12

    .line 36
    aget-wide v13, v7, v8

    .line 37
    .line 38
    rsub-int/lit8 v7, v9, 0x40

    .line 39
    .line 40
    shl-long v7, v13, v7

    .line 41
    .line 42
    int-to-long v13, v9

    .line 43
    neg-long v13, v13

    .line 44
    const/16 v9, 0x3f

    .line 45
    .line 46
    shr-long/2addr v13, v9

    .line 47
    and-long/2addr v7, v13

    .line 48
    or-long/2addr v7, v10

    .line 49
    int-to-long v9, v1

    .line 50
    const-wide v13, 0x101010101010101L

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    mul-long v15, v9, v13

    .line 56
    .line 57
    move/from16 v17, v6

    .line 58
    .line 59
    xor-long v5, v7, v15

    .line 60
    .line 61
    sub-long v13, v5, v13

    .line 62
    .line 63
    not-long v5, v5

    .line 64
    and-long/2addr v5, v13

    .line 65
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    and-long/2addr v5, v13

    .line 71
    :goto_1
    const-wide/16 v15, 0x0

    .line 72
    .line 73
    cmp-long v18, v5, v15

    .line 74
    .line 75
    if-eqz v18, :cond_1

    .line 76
    .line 77
    invoke-static {v5, v6}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 78
    .line 79
    .line 80
    move-result v15

    .line 81
    shr-int/lit8 v15, v15, 0x3

    .line 82
    .line 83
    add-int/2addr v15, v4

    .line 84
    and-int/2addr v15, v3

    .line 85
    iget-object v11, v0, Landroidx/collection/LongIntMap;->keys:[J

    .line 86
    .line 87
    aget-wide v19, v11, v15

    .line 88
    .line 89
    cmp-long v11, v19, p1

    .line 90
    .line 91
    if-nez v11, :cond_0

    .line 92
    .line 93
    return v15

    .line 94
    :cond_0
    const-wide/16 v15, 0x1

    .line 95
    .line 96
    sub-long v15, v5, v15

    .line 97
    .line 98
    and-long/2addr v5, v15

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    not-long v5, v7

    .line 101
    const/4 v11, 0x6

    .line 102
    shl-long/2addr v5, v11

    .line 103
    and-long/2addr v5, v7

    .line 104
    and-long/2addr v5, v13

    .line 105
    cmp-long v5, v5, v15

    .line 106
    .line 107
    if-eqz v5, :cond_5

    .line 108
    .line 109
    invoke-direct {v0, v2}, Landroidx/collection/MutableLongIntMap;->findFirstAvailableSlot(I)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    iget v3, v0, Landroidx/collection/MutableLongIntMap;->growthLimit:I

    .line 114
    .line 115
    const-wide/16 v4, 0xff

    .line 116
    .line 117
    if-nez v3, :cond_3

    .line 118
    .line 119
    iget-object v3, v0, Landroidx/collection/LongIntMap;->metadata:[J

    .line 120
    .line 121
    shr-int/lit8 v6, v1, 0x3

    .line 122
    .line 123
    aget-wide v6, v3, v6

    .line 124
    .line 125
    and-int/lit8 v3, v1, 0x7

    .line 126
    .line 127
    shl-int/lit8 v3, v3, 0x3

    .line 128
    .line 129
    shr-long/2addr v6, v3

    .line 130
    and-long/2addr v6, v4

    .line 131
    const-wide/16 v13, 0xfe

    .line 132
    .line 133
    cmp-long v3, v6, v13

    .line 134
    .line 135
    if-nez v3, :cond_2

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/collection/MutableLongIntMap;->adjustStorage$collection()V

    .line 139
    .line 140
    .line 141
    invoke-direct {v0, v2}, Landroidx/collection/MutableLongIntMap;->findFirstAvailableSlot(I)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    :cond_3
    :goto_2
    iget v2, v0, Landroidx/collection/LongIntMap;->_size:I

    .line 146
    .line 147
    add-int/2addr v2, v12

    .line 148
    iput v2, v0, Landroidx/collection/LongIntMap;->_size:I

    .line 149
    .line 150
    iget v2, v0, Landroidx/collection/MutableLongIntMap;->growthLimit:I

    .line 151
    .line 152
    iget-object v3, v0, Landroidx/collection/LongIntMap;->metadata:[J

    .line 153
    .line 154
    shr-int/lit8 v6, v1, 0x3

    .line 155
    .line 156
    aget-wide v7, v3, v6

    .line 157
    .line 158
    and-int/lit8 v11, v1, 0x7

    .line 159
    .line 160
    shl-int/lit8 v11, v11, 0x3

    .line 161
    .line 162
    shr-long v13, v7, v11

    .line 163
    .line 164
    and-long/2addr v13, v4

    .line 165
    const-wide/16 v15, 0x80

    .line 166
    .line 167
    cmp-long v13, v13, v15

    .line 168
    .line 169
    if-nez v13, :cond_4

    .line 170
    .line 171
    move/from16 v18, v12

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_4
    const/16 v18, 0x0

    .line 175
    .line 176
    :goto_3
    sub-int v2, v2, v18

    .line 177
    .line 178
    iput v2, v0, Landroidx/collection/MutableLongIntMap;->growthLimit:I

    .line 179
    .line 180
    iget v2, v0, Landroidx/collection/LongIntMap;->_capacity:I

    .line 181
    .line 182
    shl-long/2addr v4, v11

    .line 183
    not-long v4, v4

    .line 184
    and-long/2addr v4, v7

    .line 185
    shl-long v7, v9, v11

    .line 186
    .line 187
    or-long/2addr v4, v7

    .line 188
    aput-wide v4, v3, v6

    .line 189
    .line 190
    add-int/lit8 v6, v1, -0x7

    .line 191
    .line 192
    and-int/2addr v6, v2

    .line 193
    and-int/lit8 v2, v2, 0x7

    .line 194
    .line 195
    add-int/2addr v6, v2

    .line 196
    shr-int/lit8 v2, v6, 0x3

    .line 197
    .line 198
    aput-wide v4, v3, v2

    .line 199
    .line 200
    not-int v1, v1

    .line 201
    return v1

    .line 202
    :cond_5
    add-int/lit8 v6, v17, 0x8

    .line 203
    .line 204
    add-int/2addr v4, v6

    .line 205
    and-int/2addr v4, v3

    .line 206
    goto/16 :goto_0
.end method

.method private final initializeGrowth()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/collection/LongIntMap;->getCapacity()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Landroidx/collection/LongIntMap;->_size:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    iput v0, p0, Landroidx/collection/MutableLongIntMap;->growthLimit:I

    .line 13
    .line 14
    return-void
.end method

.method private final initializeMetadata(I)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    add-int/lit8 v0, p1, 0xf

    .line 7
    .line 8
    and-int/lit8 v0, v0, -0x8

    .line 9
    .line 10
    shr-int/lit8 v0, v0, 0x3

    .line 11
    .line 12
    new-array v0, v0, [J

    .line 13
    .line 14
    const/4 v6, 0x6

    .line 15
    const/4 v7, 0x0

    .line 16
    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v1, v0

    .line 24
    invoke-static/range {v1 .. v7}, Lkotlin/collections/n;->G([JJIIILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iput-object v0, p0, Landroidx/collection/LongIntMap;->metadata:[J

    .line 28
    .line 29
    shr-int/lit8 v1, p1, 0x3

    .line 30
    .line 31
    and-int/lit8 p1, p1, 0x7

    .line 32
    .line 33
    shl-int/lit8 p1, p1, 0x3

    .line 34
    .line 35
    aget-wide v2, v0, v1

    .line 36
    .line 37
    const-wide/16 v4, 0xff

    .line 38
    .line 39
    shl-long/2addr v4, p1

    .line 40
    not-long v6, v4

    .line 41
    and-long/2addr v2, v6

    .line 42
    or-long/2addr v2, v4

    .line 43
    aput-wide v2, v0, v1

    .line 44
    .line 45
    invoke-direct {p0}, Landroidx/collection/MutableLongIntMap;->initializeGrowth()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private final initializeStorage(I)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->normalizeCapacity(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iput p1, p0, Landroidx/collection/LongIntMap;->_capacity:I

    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/collection/MutableLongIntMap;->initializeMetadata(I)V

    .line 17
    .line 18
    .line 19
    new-array v0, p1, [J

    .line 20
    .line 21
    iput-object v0, p0, Landroidx/collection/LongIntMap;->keys:[J

    .line 22
    .line 23
    new-array p1, p1, [I

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/collection/LongIntMap;->values:[I

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final adjustStorage$collection()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/collection/LongIntMap;->_capacity:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroidx/collection/LongIntMap;->_size:I

    .line 8
    .line 9
    int-to-long v0, v0

    .line 10
    invoke-static {v0, v1}, Lms/p;->b(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x20

    .line 15
    .line 16
    mul-long/2addr v0, v2

    .line 17
    invoke-static {v0, v1}, Lms/p;->b(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget v2, p0, Landroidx/collection/LongIntMap;->_capacity:I

    .line 22
    .line 23
    int-to-long v2, v2

    .line 24
    invoke-static {v2, v3}, Lms/p;->b(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    const-wide/16 v4, 0x19

    .line 29
    .line 30
    mul-long/2addr v2, v4

    .line 31
    invoke-static {v2, v3}, Lms/p;->b(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    invoke-static {v0, v1, v2, v3}, Landroidx/collection/a;->a(JJ)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-gtz v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/collection/MutableLongIntMap;->dropDeletes$collection()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget v0, p0, Landroidx/collection/LongIntMap;->_capacity:I

    .line 46
    .line 47
    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p0, v0}, Landroidx/collection/MutableLongIntMap;->resizeStorage$collection(I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public final clear()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/collection/LongIntMap;->_size:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/collection/LongIntMap;->metadata:[J

    .line 5
    .line 6
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 7
    .line 8
    if-eq v1, v0, :cond_0

    .line 9
    .line 10
    const/4 v6, 0x6

    .line 11
    const/4 v7, 0x0

    .line 12
    const-wide v2, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-static/range {v1 .. v7}, Lkotlin/collections/n;->G([JJIIILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/collection/LongIntMap;->metadata:[J

    .line 23
    .line 24
    iget v1, p0, Landroidx/collection/LongIntMap;->_capacity:I

    .line 25
    .line 26
    shr-int/lit8 v2, v1, 0x3

    .line 27
    .line 28
    and-int/lit8 v1, v1, 0x7

    .line 29
    .line 30
    shl-int/lit8 v1, v1, 0x3

    .line 31
    .line 32
    aget-wide v3, v0, v2

    .line 33
    .line 34
    const-wide/16 v5, 0xff

    .line 35
    .line 36
    shl-long/2addr v5, v1

    .line 37
    not-long v7, v5

    .line 38
    and-long/2addr v3, v7

    .line 39
    or-long/2addr v3, v5

    .line 40
    aput-wide v3, v0, v2

    .line 41
    .line 42
    :cond_0
    invoke-direct {p0}, Landroidx/collection/MutableLongIntMap;->initializeGrowth()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final dropDeletes$collection()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/collection/LongIntMap;->metadata:[J

    .line 4
    .line 5
    iget v2, v0, Landroidx/collection/LongIntMap;->_capacity:I

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/collection/LongIntMap;->keys:[J

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/collection/LongIntMap;->values:[I

    .line 10
    .line 11
    add-int/lit8 v5, v2, 0x7

    .line 12
    .line 13
    shr-int/lit8 v5, v5, 0x3

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    move v7, v6

    .line 17
    :goto_0
    if-ge v7, v5, :cond_0

    .line 18
    .line 19
    aget-wide v8, v1, v7

    .line 20
    .line 21
    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long/2addr v8, v10

    .line 27
    not-long v10, v8

    .line 28
    const/4 v12, 0x7

    .line 29
    ushr-long/2addr v8, v12

    .line 30
    add-long/2addr v10, v8

    .line 31
    const-wide v8, -0x101010101010102L

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    and-long/2addr v8, v10

    .line 37
    aput-wide v8, v1, v7

    .line 38
    .line 39
    add-int/lit8 v7, v7, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v1}, Lkotlin/collections/n;->q0([J)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    add-int/lit8 v7, v5, -0x1

    .line 47
    .line 48
    aget-wide v8, v1, v7

    .line 49
    .line 50
    const-wide v10, 0xffffffffffffffL

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    and-long/2addr v8, v10

    .line 56
    const-wide/high16 v12, -0x100000000000000L

    .line 57
    .line 58
    or-long/2addr v8, v12

    .line 59
    aput-wide v8, v1, v7

    .line 60
    .line 61
    aget-wide v7, v1, v6

    .line 62
    .line 63
    aput-wide v7, v1, v5

    .line 64
    .line 65
    move v5, v6

    .line 66
    :goto_1
    if-eq v5, v2, :cond_5

    .line 67
    .line 68
    shr-int/lit8 v7, v5, 0x3

    .line 69
    .line 70
    aget-wide v8, v1, v7

    .line 71
    .line 72
    and-int/lit8 v12, v5, 0x7

    .line 73
    .line 74
    shl-int/lit8 v12, v12, 0x3

    .line 75
    .line 76
    shr-long/2addr v8, v12

    .line 77
    const-wide/16 v13, 0xff

    .line 78
    .line 79
    and-long/2addr v8, v13

    .line 80
    const-wide/16 v15, 0x80

    .line 81
    .line 82
    cmp-long v17, v8, v15

    .line 83
    .line 84
    if-nez v17, :cond_1

    .line 85
    .line 86
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    const-wide/16 v17, 0xfe

    .line 90
    .line 91
    cmp-long v8, v8, v17

    .line 92
    .line 93
    if-eqz v8, :cond_2

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    aget-wide v8, v3, v5

    .line 97
    .line 98
    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    const v9, -0x3361d2af    # -8.2930312E7f

    .line 103
    .line 104
    .line 105
    mul-int/2addr v8, v9

    .line 106
    shl-int/lit8 v9, v8, 0x10

    .line 107
    .line 108
    xor-int/2addr v8, v9

    .line 109
    ushr-int/lit8 v9, v8, 0x7

    .line 110
    .line 111
    invoke-direct {v0, v9}, Landroidx/collection/MutableLongIntMap;->findFirstAvailableSlot(I)I

    .line 112
    .line 113
    .line 114
    move-result v17

    .line 115
    and-int/2addr v9, v2

    .line 116
    sub-int v18, v17, v9

    .line 117
    .line 118
    and-int v18, v18, v2

    .line 119
    .line 120
    div-int/lit8 v15, v18, 0x8

    .line 121
    .line 122
    sub-int v9, v5, v9

    .line 123
    .line 124
    and-int/2addr v9, v2

    .line 125
    div-int/lit8 v9, v9, 0x8

    .line 126
    .line 127
    const-wide/high16 v21, -0x8000000000000000L

    .line 128
    .line 129
    if-ne v15, v9, :cond_3

    .line 130
    .line 131
    and-int/lit8 v8, v8, 0x7f

    .line 132
    .line 133
    int-to-long v8, v8

    .line 134
    aget-wide v15, v1, v7

    .line 135
    .line 136
    shl-long/2addr v13, v12

    .line 137
    not-long v13, v13

    .line 138
    and-long/2addr v13, v15

    .line 139
    shl-long/2addr v8, v12

    .line 140
    or-long/2addr v8, v13

    .line 141
    aput-wide v8, v1, v7

    .line 142
    .line 143
    invoke-static {v1}, Lkotlin/collections/n;->q0([J)I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    aget-wide v8, v1, v6

    .line 148
    .line 149
    and-long/2addr v8, v10

    .line 150
    or-long v8, v8, v21

    .line 151
    .line 152
    aput-wide v8, v1, v7

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_3
    shr-int/lit8 v9, v17, 0x3

    .line 156
    .line 157
    aget-wide v15, v1, v9

    .line 158
    .line 159
    and-int/lit8 v18, v17, 0x7

    .line 160
    .line 161
    shl-int/lit8 v18, v18, 0x3

    .line 162
    .line 163
    shr-long v23, v15, v18

    .line 164
    .line 165
    and-long v23, v23, v13

    .line 166
    .line 167
    const-wide/16 v19, 0x80

    .line 168
    .line 169
    cmp-long v23, v23, v19

    .line 170
    .line 171
    if-nez v23, :cond_4

    .line 172
    .line 173
    and-int/lit8 v8, v8, 0x7f

    .line 174
    .line 175
    int-to-long v10, v8

    .line 176
    move/from16 v25, v7

    .line 177
    .line 178
    shl-long v6, v13, v18

    .line 179
    .line 180
    not-long v6, v6

    .line 181
    and-long/2addr v6, v15

    .line 182
    shl-long v10, v10, v18

    .line 183
    .line 184
    or-long/2addr v6, v10

    .line 185
    aput-wide v6, v1, v9

    .line 186
    .line 187
    aget-wide v6, v1, v25

    .line 188
    .line 189
    shl-long v8, v13, v12

    .line 190
    .line 191
    not-long v8, v8

    .line 192
    and-long/2addr v6, v8

    .line 193
    const-wide/16 v8, 0x80

    .line 194
    .line 195
    shl-long/2addr v8, v12

    .line 196
    or-long/2addr v6, v8

    .line 197
    aput-wide v6, v1, v25

    .line 198
    .line 199
    aget-wide v6, v3, v5

    .line 200
    .line 201
    aput-wide v6, v3, v17

    .line 202
    .line 203
    const-wide/16 v6, 0x0

    .line 204
    .line 205
    aput-wide v6, v3, v5

    .line 206
    .line 207
    aget v6, v4, v5

    .line 208
    .line 209
    aput v6, v4, v17

    .line 210
    .line 211
    const/4 v6, 0x0

    .line 212
    aput v6, v4, v5

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_4
    and-int/lit8 v6, v8, 0x7f

    .line 216
    .line 217
    int-to-long v6, v6

    .line 218
    shl-long v10, v13, v18

    .line 219
    .line 220
    not-long v10, v10

    .line 221
    and-long/2addr v10, v15

    .line 222
    shl-long v6, v6, v18

    .line 223
    .line 224
    or-long/2addr v6, v10

    .line 225
    aput-wide v6, v1, v9

    .line 226
    .line 227
    aget-wide v6, v3, v17

    .line 228
    .line 229
    aget-wide v8, v3, v5

    .line 230
    .line 231
    aput-wide v8, v3, v17

    .line 232
    .line 233
    aput-wide v6, v3, v5

    .line 234
    .line 235
    aget v6, v4, v17

    .line 236
    .line 237
    aget v7, v4, v5

    .line 238
    .line 239
    aput v7, v4, v17

    .line 240
    .line 241
    aput v6, v4, v5

    .line 242
    .line 243
    add-int/lit8 v5, v5, -0x1

    .line 244
    .line 245
    :goto_3
    invoke-static {v1}, Lkotlin/collections/n;->q0([J)I

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    const/4 v7, 0x0

    .line 250
    aget-wide v8, v1, v7

    .line 251
    .line 252
    const-wide v10, 0xffffffffffffffL

    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    and-long/2addr v8, v10

    .line 258
    or-long v8, v8, v21

    .line 259
    .line 260
    aput-wide v8, v1, v6

    .line 261
    .line 262
    add-int/lit8 v5, v5, 0x1

    .line 263
    .line 264
    move v6, v7

    .line 265
    goto/16 :goto_1

    .line 266
    .line 267
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroidx/collection/MutableLongIntMap;->initializeGrowth()V

    .line 268
    .line 269
    .line 270
    return-void
.end method

.method public final getOrPut(JLkotlin/jvm/functions/Function0;)I
    .locals 1
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    const-string v0, "defaultValue"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongIntMap;->findKeyIndex(J)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    check-cast p3, Ljava/lang/Number;

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    invoke-virtual {p0, p1, p2, p3}, Landroidx/collection/MutableLongIntMap;->put(JI)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Landroidx/collection/LongIntMap;->values:[I

    .line 27
    .line 28
    aget p3, p1, v0

    .line 29
    .line 30
    :goto_0
    return p3
.end method

.method public final minusAssign(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->remove(J)V

    return-void
.end method

.method public final minusAssign(Landroidx/collection/LongList;)V
    .locals 4
    .param p1    # Landroidx/collection/LongList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p1, Landroidx/collection/LongList;->content:[J

    .line 11
    iget p1, p1, Landroidx/collection/LongList;->_size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 12
    aget-wide v2, v0, v1

    .line 13
    invoke-virtual {p0, v2, v3}, Landroidx/collection/MutableLongIntMap;->remove(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final minusAssign(Landroidx/collection/LongSet;)V
    .locals 13
    .param p1    # Landroidx/collection/LongSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p1, Landroidx/collection/LongSet;->elements:[J

    .line 5
    iget-object p1, p1, Landroidx/collection/LongSet;->metadata:[J

    .line 6
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_3

    const/4 v2, 0x0

    move v3, v2

    .line 7
    :goto_0
    aget-wide v4, p1, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    sub-int v6, v3, v1

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_1

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    .line 8
    aget-wide v9, v0, v9

    .line 9
    invoke-virtual {p0, v9, v10}, Landroidx/collection/MutableLongIntMap;->remove(J)V

    :cond_0
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    if-ne v6, v7, :cond_3

    :cond_2
    if-eq v3, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final minusAssign([J)V
    .locals 4
    .param p1    # [J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    .line 3
    invoke-virtual {p0, v2, v3}, Landroidx/collection/MutableLongIntMap;->remove(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final plusAssign(Landroidx/collection/LongIntMap;)V
    .locals 1
    .param p1    # Landroidx/collection/LongIntMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/collection/MutableLongIntMap;->putAll(Landroidx/collection/LongIntMap;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final put(JII)I
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->findInsertIndex(J)I

    move-result v0

    if-gez v0, :cond_0

    not-int v0, v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p4, p0, Landroidx/collection/LongIntMap;->values:[I

    aget p4, p4, v0

    .line 4
    :goto_0
    iget-object v1, p0, Landroidx/collection/LongIntMap;->keys:[J

    aput-wide p1, v1, v0

    .line 5
    iget-object p1, p0, Landroidx/collection/LongIntMap;->values:[I

    aput p3, p1, v0

    return p4
.end method

.method public final put(JI)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    return-void
.end method

.method public final putAll(Landroidx/collection/LongIntMap;)V
    .locals 14
    .param p1    # Landroidx/collection/LongIntMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroidx/collection/LongIntMap;->keys:[J

    .line 7
    .line 8
    iget-object v1, p1, Landroidx/collection/LongIntMap;->values:[I

    .line 9
    .line 10
    iget-object p1, p1, Landroidx/collection/LongIntMap;->metadata:[J

    .line 11
    .line 12
    array-length v2, p1

    .line 13
    add-int/lit8 v2, v2, -0x2

    .line 14
    .line 15
    if-ltz v2, :cond_3

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    :goto_0
    aget-wide v5, p1, v4

    .line 20
    .line 21
    not-long v7, v5

    .line 22
    const/4 v9, 0x7

    .line 23
    shl-long/2addr v7, v9

    .line 24
    and-long/2addr v7, v5

    .line 25
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    and-long/2addr v7, v9

    .line 31
    cmp-long v7, v7, v9

    .line 32
    .line 33
    if-eqz v7, :cond_2

    .line 34
    .line 35
    sub-int v7, v4, v2

    .line 36
    .line 37
    not-int v7, v7

    .line 38
    ushr-int/lit8 v7, v7, 0x1f

    .line 39
    .line 40
    const/16 v8, 0x8

    .line 41
    .line 42
    rsub-int/lit8 v7, v7, 0x8

    .line 43
    .line 44
    move v9, v3

    .line 45
    :goto_1
    if-ge v9, v7, :cond_1

    .line 46
    .line 47
    const-wide/16 v10, 0xff

    .line 48
    .line 49
    and-long/2addr v10, v5

    .line 50
    const-wide/16 v12, 0x80

    .line 51
    .line 52
    cmp-long v10, v10, v12

    .line 53
    .line 54
    if-gez v10, :cond_0

    .line 55
    .line 56
    shl-int/lit8 v10, v4, 0x3

    .line 57
    .line 58
    add-int/2addr v10, v9

    .line 59
    aget-wide v11, v0, v10

    .line 60
    .line 61
    aget v10, v1, v10

    .line 62
    .line 63
    invoke-virtual {p0, v11, v12, v10}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 64
    .line 65
    .line 66
    :cond_0
    shr-long/2addr v5, v8

    .line 67
    add-int/lit8 v9, v9, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    if-ne v7, v8, :cond_3

    .line 71
    .line 72
    :cond_2
    if-eq v4, v2, :cond_3

    .line 73
    .line 74
    add-int/lit8 v4, v4, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    return-void
.end method

.method public final remove(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongIntMap;->findKeyIndex(J)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/collection/MutableLongIntMap;->removeValueAt(I)V

    :cond_0
    return-void
.end method

.method public final remove(JI)Z
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongIntMap;->findKeyIndex(J)I

    move-result p1

    if-ltz p1, :cond_0

    .line 4
    iget-object p2, p0, Landroidx/collection/LongIntMap;->values:[I

    aget p2, p2, p1

    if-ne p2, p3, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/collection/MutableLongIntMap;->removeValueAt(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final removeIf(Lkotlin/jvm/functions/Function2;)V
    .locals 13
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "predicate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/collection/LongIntMap;->metadata:[J

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    add-int/lit8 v1, v1, -0x2

    .line 10
    .line 11
    if-ltz v1, :cond_3

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    aget-wide v4, v0, v3

    .line 16
    .line 17
    not-long v6, v4

    .line 18
    const/4 v8, 0x7

    .line 19
    shl-long/2addr v6, v8

    .line 20
    and-long/2addr v6, v4

    .line 21
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long/2addr v6, v8

    .line 27
    cmp-long v6, v6, v8

    .line 28
    .line 29
    if-eqz v6, :cond_2

    .line 30
    .line 31
    sub-int v6, v3, v1

    .line 32
    .line 33
    not-int v6, v6

    .line 34
    ushr-int/lit8 v6, v6, 0x1f

    .line 35
    .line 36
    const/16 v7, 0x8

    .line 37
    .line 38
    rsub-int/lit8 v6, v6, 0x8

    .line 39
    .line 40
    move v8, v2

    .line 41
    :goto_1
    if-ge v8, v6, :cond_1

    .line 42
    .line 43
    const-wide/16 v9, 0xff

    .line 44
    .line 45
    and-long/2addr v9, v4

    .line 46
    const-wide/16 v11, 0x80

    .line 47
    .line 48
    cmp-long v9, v9, v11

    .line 49
    .line 50
    if-gez v9, :cond_0

    .line 51
    .line 52
    shl-int/lit8 v9, v3, 0x3

    .line 53
    .line 54
    add-int/2addr v9, v8

    .line 55
    iget-object v10, p0, Landroidx/collection/LongIntMap;->keys:[J

    .line 56
    .line 57
    aget-wide v11, v10, v9

    .line 58
    .line 59
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    iget-object v11, p0, Landroidx/collection/LongIntMap;->values:[I

    .line 64
    .line 65
    aget v11, v11, v9

    .line 66
    .line 67
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    invoke-interface {p1, v10, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    check-cast v10, Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    if-eqz v10, :cond_0

    .line 82
    .line 83
    invoke-virtual {p0, v9}, Landroidx/collection/MutableLongIntMap;->removeValueAt(I)V

    .line 84
    .line 85
    .line 86
    :cond_0
    shr-long/2addr v4, v7

    .line 87
    add-int/lit8 v8, v8, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    if-ne v6, v7, :cond_3

    .line 91
    .line 92
    :cond_2
    if-eq v3, v1, :cond_3

    .line 93
    .line 94
    add-int/lit8 v3, v3, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    return-void
.end method

.method public final removeValueAt(I)V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/collection/LongIntMap;->_size:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Landroidx/collection/LongIntMap;->_size:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/collection/LongIntMap;->metadata:[J

    .line 8
    .line 9
    iget v1, p0, Landroidx/collection/LongIntMap;->_capacity:I

    .line 10
    .line 11
    shr-int/lit8 v2, p1, 0x3

    .line 12
    .line 13
    and-int/lit8 v3, p1, 0x7

    .line 14
    .line 15
    shl-int/lit8 v3, v3, 0x3

    .line 16
    .line 17
    aget-wide v4, v0, v2

    .line 18
    .line 19
    const-wide/16 v6, 0xff

    .line 20
    .line 21
    shl-long/2addr v6, v3

    .line 22
    not-long v6, v6

    .line 23
    and-long/2addr v4, v6

    .line 24
    const-wide/16 v6, 0xfe

    .line 25
    .line 26
    shl-long/2addr v6, v3

    .line 27
    or-long v3, v4, v6

    .line 28
    .line 29
    aput-wide v3, v0, v2

    .line 30
    .line 31
    add-int/lit8 p1, p1, -0x7

    .line 32
    .line 33
    and-int/2addr p1, v1

    .line 34
    and-int/lit8 v1, v1, 0x7

    .line 35
    .line 36
    add-int/2addr p1, v1

    .line 37
    shr-int/lit8 p1, p1, 0x3

    .line 38
    .line 39
    aput-wide v3, v0, p1

    .line 40
    .line 41
    return-void
.end method

.method public final resizeStorage$collection(I)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/collection/LongIntMap;->metadata:[J

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/collection/LongIntMap;->keys:[J

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/collection/LongIntMap;->values:[I

    .line 8
    .line 9
    iget v4, v0, Landroidx/collection/LongIntMap;->_capacity:I

    .line 10
    .line 11
    invoke-direct/range {p0 .. p1}, Landroidx/collection/MutableLongIntMap;->initializeStorage(I)V

    .line 12
    .line 13
    .line 14
    iget-object v5, v0, Landroidx/collection/LongIntMap;->metadata:[J

    .line 15
    .line 16
    iget-object v6, v0, Landroidx/collection/LongIntMap;->keys:[J

    .line 17
    .line 18
    iget-object v7, v0, Landroidx/collection/LongIntMap;->values:[I

    .line 19
    .line 20
    iget v8, v0, Landroidx/collection/LongIntMap;->_capacity:I

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    :goto_0
    if-ge v9, v4, :cond_1

    .line 24
    .line 25
    shr-int/lit8 v10, v9, 0x3

    .line 26
    .line 27
    aget-wide v10, v1, v10

    .line 28
    .line 29
    and-int/lit8 v12, v9, 0x7

    .line 30
    .line 31
    shl-int/lit8 v12, v12, 0x3

    .line 32
    .line 33
    shr-long/2addr v10, v12

    .line 34
    const-wide/16 v12, 0xff

    .line 35
    .line 36
    and-long/2addr v10, v12

    .line 37
    const-wide/16 v14, 0x80

    .line 38
    .line 39
    cmp-long v10, v10, v14

    .line 40
    .line 41
    if-gez v10, :cond_0

    .line 42
    .line 43
    aget-wide v10, v2, v9

    .line 44
    .line 45
    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    .line 46
    .line 47
    .line 48
    move-result v14

    .line 49
    const v15, -0x3361d2af    # -8.2930312E7f

    .line 50
    .line 51
    .line 52
    mul-int/2addr v14, v15

    .line 53
    shl-int/lit8 v15, v14, 0x10

    .line 54
    .line 55
    xor-int/2addr v14, v15

    .line 56
    ushr-int/lit8 v15, v14, 0x7

    .line 57
    .line 58
    invoke-direct {v0, v15}, Landroidx/collection/MutableLongIntMap;->findFirstAvailableSlot(I)I

    .line 59
    .line 60
    .line 61
    move-result v15

    .line 62
    and-int/lit8 v14, v14, 0x7f

    .line 63
    .line 64
    int-to-long v12, v14

    .line 65
    shr-int/lit8 v14, v15, 0x3

    .line 66
    .line 67
    and-int/lit8 v18, v15, 0x7

    .line 68
    .line 69
    shl-int/lit8 v18, v18, 0x3

    .line 70
    .line 71
    aget-wide v19, v5, v14

    .line 72
    .line 73
    move-object/from16 v21, v1

    .line 74
    .line 75
    const-wide/16 v16, 0xff

    .line 76
    .line 77
    shl-long v0, v16, v18

    .line 78
    .line 79
    not-long v0, v0

    .line 80
    and-long v0, v19, v0

    .line 81
    .line 82
    shl-long v12, v12, v18

    .line 83
    .line 84
    or-long/2addr v0, v12

    .line 85
    aput-wide v0, v5, v14

    .line 86
    .line 87
    add-int/lit8 v12, v15, -0x7

    .line 88
    .line 89
    and-int/2addr v12, v8

    .line 90
    and-int/lit8 v13, v8, 0x7

    .line 91
    .line 92
    add-int/2addr v12, v13

    .line 93
    shr-int/lit8 v12, v12, 0x3

    .line 94
    .line 95
    aput-wide v0, v5, v12

    .line 96
    .line 97
    aput-wide v10, v6, v15

    .line 98
    .line 99
    aget v0, v3, v9

    .line 100
    .line 101
    aput v0, v7, v15

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_0
    move-object/from16 v21, v1

    .line 105
    .line 106
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 107
    .line 108
    move-object/from16 v0, p0

    .line 109
    .line 110
    move-object/from16 v1, v21

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    return-void
.end method

.method public final set(JI)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->findInsertIndex(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    not-int v0, v0

    .line 8
    :cond_0
    iget-object v1, p0, Landroidx/collection/LongIntMap;->keys:[J

    .line 9
    .line 10
    aput-wide p1, v1, v0

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/collection/LongIntMap;->values:[I

    .line 13
    .line 14
    aput p3, p1, v0

    .line 15
    .line 16
    return-void
.end method

.method public final trim()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/collection/LongIntMap;->_capacity:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/collection/LongIntMap;->_size:I

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->unloadedCapacity(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Landroidx/collection/ScatterMapKt;->normalizeCapacity(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroidx/collection/MutableLongIntMap;->resizeStorage$collection(I)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroidx/collection/LongIntMap;->_capacity:I

    .line 19
    .line 20
    sub-int/2addr v0, v1

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method
