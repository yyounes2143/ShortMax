.class public abstract Landroidx/navigation/NavType;
.super Ljava/lang/Object;
.source "NavType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavType$SerializableArrayType;,
        Landroidx/navigation/NavType$EnumType;,
        Landroidx/navigation/NavType$SerializableType;,
        Landroidx/navigation/NavType$ParcelableArrayType;,
        Landroidx/navigation/NavType$ParcelableType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BoolArrayType:Landroidx/navigation/NavType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[Z>;"
        }
    .end annotation
.end field

.field public static final BoolType:Landroidx/navigation/NavType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final FloatArrayType:Landroidx/navigation/NavType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[F>;"
        }
    .end annotation
.end field

.field public static final FloatType:Landroidx/navigation/NavType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final IntArrayType:Landroidx/navigation/NavType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final IntType:Landroidx/navigation/NavType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LongArrayType:Landroidx/navigation/NavType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[J>;"
        }
    .end annotation
.end field

.field public static final LongType:Landroidx/navigation/NavType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final ReferenceType:Landroidx/navigation/NavType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final StringArrayType:Landroidx/navigation/NavType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final StringType:Landroidx/navigation/NavType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/NavType<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mNullableAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/navigation/NavType$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/navigation/NavType$1;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    .line 8
    .line 9
    new-instance v0, Landroidx/navigation/NavType$2;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroidx/navigation/NavType$2;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/navigation/NavType;->ReferenceType:Landroidx/navigation/NavType;

    .line 15
    .line 16
    new-instance v0, Landroidx/navigation/NavType$3;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {v0, v2}, Landroidx/navigation/NavType$3;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroidx/navigation/NavType;->IntArrayType:Landroidx/navigation/NavType;

    .line 23
    .line 24
    new-instance v0, Landroidx/navigation/NavType$4;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Landroidx/navigation/NavType$4;-><init>(Z)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;

    .line 30
    .line 31
    new-instance v0, Landroidx/navigation/NavType$5;

    .line 32
    .line 33
    invoke-direct {v0, v2}, Landroidx/navigation/NavType$5;-><init>(Z)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Landroidx/navigation/NavType;->LongArrayType:Landroidx/navigation/NavType;

    .line 37
    .line 38
    new-instance v0, Landroidx/navigation/NavType$6;

    .line 39
    .line 40
    invoke-direct {v0, v1}, Landroidx/navigation/NavType$6;-><init>(Z)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;

    .line 44
    .line 45
    new-instance v0, Landroidx/navigation/NavType$7;

    .line 46
    .line 47
    invoke-direct {v0, v2}, Landroidx/navigation/NavType$7;-><init>(Z)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Landroidx/navigation/NavType;->FloatArrayType:Landroidx/navigation/NavType;

    .line 51
    .line 52
    new-instance v0, Landroidx/navigation/NavType$8;

    .line 53
    .line 54
    invoke-direct {v0, v1}, Landroidx/navigation/NavType$8;-><init>(Z)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType;

    .line 58
    .line 59
    new-instance v0, Landroidx/navigation/NavType$9;

    .line 60
    .line 61
    invoke-direct {v0, v2}, Landroidx/navigation/NavType$9;-><init>(Z)V

    .line 62
    .line 63
    .line 64
    sput-object v0, Landroidx/navigation/NavType;->BoolArrayType:Landroidx/navigation/NavType;

    .line 65
    .line 66
    new-instance v0, Landroidx/navigation/NavType$10;

    .line 67
    .line 68
    invoke-direct {v0, v2}, Landroidx/navigation/NavType$10;-><init>(Z)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType;

    .line 72
    .line 73
    new-instance v0, Landroidx/navigation/NavType$11;

    .line 74
    .line 75
    invoke-direct {v0, v2}, Landroidx/navigation/NavType$11;-><init>(Z)V

    .line 76
    .line 77
    .line 78
    sput-object v0, Landroidx/navigation/NavType;->StringArrayType:Landroidx/navigation/NavType;

    .line 79
    .line 80
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/navigation/NavType;->mNullableAllowed:Z

    .line 5
    .line 6
    return-void
.end method

.method public static fromArgType(Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/navigation/NavType<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    sget-object v0, Landroidx/navigation/NavType;->IntArrayType:Landroidx/navigation/NavType;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    sget-object v0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_2
    sget-object v0, Landroidx/navigation/NavType;->LongArrayType:Landroidx/navigation/NavType;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_3
    sget-object v0, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_4
    sget-object v0, Landroidx/navigation/NavType;->BoolArrayType:Landroidx/navigation/NavType;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_5
    sget-object v0, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_6

    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_6
    sget-object v1, Landroidx/navigation/NavType;->StringArrayType:Landroidx/navigation/NavType;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_7

    .line 103
    .line 104
    return-object v1

    .line 105
    :cond_7
    sget-object v1, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;

    .line 106
    .line 107
    invoke-virtual {v1}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_8

    .line 116
    .line 117
    return-object v1

    .line 118
    :cond_8
    sget-object v1, Landroidx/navigation/NavType;->FloatArrayType:Landroidx/navigation/NavType;

    .line 119
    .line 120
    invoke-virtual {v1}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_9

    .line 129
    .line 130
    return-object v1

    .line 131
    :cond_9
    sget-object v1, Landroidx/navigation/NavType;->ReferenceType:Landroidx/navigation/NavType;

    .line 132
    .line 133
    invoke-virtual {v1}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_a

    .line 142
    .line 143
    return-object v1

    .line 144
    :cond_a
    if-eqz p0, :cond_11

    .line 145
    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-nez v1, :cond_11

    .line 151
    .line 152
    :try_start_0
    const-string v0, "."

    .line 153
    .line 154
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_b

    .line 159
    .line 160
    if-eqz p1, :cond_b

    .line 161
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    goto :goto_0

    .line 178
    :catch_0
    move-exception p0

    .line 179
    goto/16 :goto_1

    .line 180
    .line 181
    :cond_b
    move-object p1, p0

    .line 182
    :goto_0
    const-string v0, "[]"

    .line 183
    .line 184
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    const-class v0, Ljava/io/Serializable;

    .line 189
    .line 190
    const-class v1, Landroid/os/Parcelable;

    .line 191
    .line 192
    if-eqz p0, :cond_d

    .line 193
    .line 194
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    add-int/lit8 p0, p0, -0x2

    .line 199
    .line 200
    const/4 v2, 0x0

    .line 201
    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_c

    .line 214
    .line 215
    new-instance p1, Landroidx/navigation/NavType$ParcelableArrayType;

    .line 216
    .line 217
    invoke-direct {p1, p0}, Landroidx/navigation/NavType$ParcelableArrayType;-><init>(Ljava/lang/Class;)V

    .line 218
    .line 219
    .line 220
    return-object p1

    .line 221
    :cond_c
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_10

    .line 226
    .line 227
    new-instance p1, Landroidx/navigation/NavType$SerializableArrayType;

    .line 228
    .line 229
    invoke-direct {p1, p0}, Landroidx/navigation/NavType$SerializableArrayType;-><init>(Ljava/lang/Class;)V

    .line 230
    .line 231
    .line 232
    return-object p1

    .line 233
    :cond_d
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_e

    .line 242
    .line 243
    new-instance p1, Landroidx/navigation/NavType$ParcelableType;

    .line 244
    .line 245
    invoke-direct {p1, p0}, Landroidx/navigation/NavType$ParcelableType;-><init>(Ljava/lang/Class;)V

    .line 246
    .line 247
    .line 248
    return-object p1

    .line 249
    :cond_e
    const-class v1, Ljava/lang/Enum;

    .line 250
    .line 251
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-eqz v1, :cond_f

    .line 256
    .line 257
    new-instance p1, Landroidx/navigation/NavType$EnumType;

    .line 258
    .line 259
    invoke-direct {p1, p0}, Landroidx/navigation/NavType$EnumType;-><init>(Ljava/lang/Class;)V

    .line 260
    .line 261
    .line 262
    return-object p1

    .line 263
    :cond_f
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_10

    .line 268
    .line 269
    new-instance p1, Landroidx/navigation/NavType$SerializableType;

    .line 270
    .line 271
    invoke-direct {p1, p0}, Landroidx/navigation/NavType$SerializableType;-><init>(Ljava/lang/Class;)V

    .line 272
    .line 273
    .line 274
    return-object p1

    .line 275
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 276
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string p1, " is not Serializable or Parcelable."

    .line 286
    .line 287
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw p0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 299
    .line 300
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 301
    .line 302
    .line 303
    throw p1

    .line 304
    :cond_11
    return-object v0
.end method

.method static inferFromValue(Ljava/lang/String;)Landroidx/navigation/NavType;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-object v0

    .line 7
    :catch_0
    :try_start_1
    sget-object v0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :catch_1
    :try_start_2
    sget-object v0, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :catch_2
    :try_start_3
    sget-object v0, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :catch_3
    sget-object p0, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType;

    .line 26
    .line 27
    return-object p0
.end method

.method static inferFromValueType(Ljava/lang/Object;)Landroidx/navigation/NavType;
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, [I

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object p0, Landroidx/navigation/NavType;->IntArrayType:Landroidx/navigation/NavType;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    sget-object p0, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    instance-of v0, p0, [J

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    sget-object p0, Landroidx/navigation/NavType;->LongArrayType:Landroidx/navigation/NavType;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_3
    instance-of v0, p0, Ljava/lang/Float;

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    sget-object p0, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_4
    instance-of v0, p0, [F

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    sget-object p0, Landroidx/navigation/NavType;->FloatArrayType:Landroidx/navigation/NavType;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_5
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 44
    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    sget-object p0, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType;

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_6
    instance-of v0, p0, [Z

    .line 51
    .line 52
    if-eqz v0, :cond_7

    .line 53
    .line 54
    sget-object p0, Landroidx/navigation/NavType;->BoolArrayType:Landroidx/navigation/NavType;

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    .line 58
    .line 59
    if-nez v0, :cond_f

    .line 60
    .line 61
    if-nez p0, :cond_8

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_8
    instance-of v0, p0, [Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v0, :cond_9

    .line 68
    .line 69
    sget-object p0, Landroidx/navigation/NavType;->StringArrayType:Landroidx/navigation/NavType;

    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_a

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-class v1, Landroid/os/Parcelable;

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_a

    .line 97
    .line 98
    new-instance v0, Landroidx/navigation/NavType$ParcelableArrayType;

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-direct {v0, p0}, Landroidx/navigation/NavType$ParcelableArrayType;-><init>(Ljava/lang/Class;)V

    .line 109
    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_b

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-class v1, Ljava/io/Serializable;

    .line 131
    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_b

    .line 137
    .line 138
    new-instance v0, Landroidx/navigation/NavType$SerializableArrayType;

    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-direct {v0, p0}, Landroidx/navigation/NavType$SerializableArrayType;-><init>(Ljava/lang/Class;)V

    .line 149
    .line 150
    .line 151
    return-object v0

    .line 152
    :cond_b
    instance-of v0, p0, Landroid/os/Parcelable;

    .line 153
    .line 154
    if-eqz v0, :cond_c

    .line 155
    .line 156
    new-instance v0, Landroidx/navigation/NavType$ParcelableType;

    .line 157
    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-direct {v0, p0}, Landroidx/navigation/NavType$ParcelableType;-><init>(Ljava/lang/Class;)V

    .line 163
    .line 164
    .line 165
    return-object v0

    .line 166
    :cond_c
    instance-of v0, p0, Ljava/lang/Enum;

    .line 167
    .line 168
    if-eqz v0, :cond_d

    .line 169
    .line 170
    new-instance v0, Landroidx/navigation/NavType$EnumType;

    .line 171
    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-direct {v0, p0}, Landroidx/navigation/NavType$EnumType;-><init>(Ljava/lang/Class;)V

    .line 177
    .line 178
    .line 179
    return-object v0

    .line 180
    :cond_d
    instance-of v0, p0, Ljava/io/Serializable;

    .line 181
    .line 182
    if-eqz v0, :cond_e

    .line 183
    .line 184
    new-instance v0, Landroidx/navigation/NavType$SerializableType;

    .line 185
    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-direct {v0, p0}, Landroidx/navigation/NavType$SerializableType;-><init>(Ljava/lang/Class;)V

    .line 191
    .line 192
    .line 193
    return-object v0

    .line 194
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 195
    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    const-string v2, "Object of type "

    .line 202
    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string p0, " is not supported for navigation arguments."

    .line 218
    .line 219
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v0

    .line 230
    :cond_f
    :goto_0
    sget-object p0, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType;

    .line 231
    .line 232
    return-object p0
.end method


# virtual methods
.method public abstract get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public isNullableAllowed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/navigation/NavType;->mNullableAllowed:Z

    .line 2
    .line 3
    return v0
.end method

.method parseAndPut(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/NavType;->put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object p3
.end method

.method public abstract parseValue(Ljava/lang/String;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
