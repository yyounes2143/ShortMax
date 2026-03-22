.class public Lcom/ss/ttm/utils/HardWareInfo;
.super Ljava/lang/Object;
.source "HardWareInfo.java"


# static fields
.field private static final ATOM:I = 0x1

.field public static final CPU_FAMILY_ARM:I = 0x1

.field public static final CPU_FAMILY_MIPS:I = 0x3

.field public static final CPU_FAMILY_UNKNOWN:I = 0x0

.field public static final CPU_FAMILY_X86:I = 0x2

.field private static final NEON:I

.field private static mArmArchitecture:[I

.field private static mCpuType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lcom/ss/ttm/utils/HardWareInfo;->mArmArchitecture:[I

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static getAvailableStorageSize(Landroid/content/Context;)J
    .locals 3

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lcom/ss/ttm/utils/HardWareInfo;->getDirectoryAvailableSize(Ljava/lang/String;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    :cond_1
    return-wide v0
.end method

.method public static getCpuArchitecture()[I
    .locals 15

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 4
    .line 5
    const-string v2, "/proc/cpuinfo"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/io/InputStreamReader;

    .line 11
    .line 12
    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 13
    .line 14
    .line 15
    new-instance v3, Ljava/io/BufferedReader;

    .line 16
    .line 17
    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :try_start_1
    const-string v4, "Processor"

    .line 21
    .line 22
    const-string v5, "Features"

    .line 23
    .line 24
    const-string v6, "model name"

    .line 25
    .line 26
    const-string v7, "cpu family"

    .line 27
    .line 28
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    if-nez v8, :cond_1

    .line 33
    .line 34
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 41
    .line 42
    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :catch_0
    move-exception v0

    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_1
    :try_start_3
    const-string v9, "\t"

    .line 49
    .line 50
    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    const-string v9, ":"

    .line 55
    .line 56
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    array-length v9, v8

    .line 61
    const/4 v10, 0x2

    .line 62
    if-eq v9, v10, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 v9, 0x0

    .line 66
    aget-object v11, v8, v9

    .line 67
    .line 68
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    const/4 v12, 0x1

    .line 73
    aget-object v8, v8, v12

    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {v11, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    if-nez v13, :cond_4

    .line 84
    .line 85
    new-instance v10, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v11, "ARMv"

    .line 91
    .line 92
    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    add-int/lit8 v11, v11, 0x4

    .line 97
    .line 98
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    if-ge v11, v13, :cond_3

    .line 103
    .line 104
    new-instance v13, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    .line 110
    .line 111
    .line 112
    move-result v14

    .line 113
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    const-string v14, "\\d"

    .line 124
    .line 125
    invoke-virtual {v13, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v14

    .line 129
    if-eqz v14, :cond_3

    .line 130
    .line 131
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    add-int/lit8 v11, v11, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :catchall_0
    move-exception v0

    .line 138
    goto :goto_2

    .line 139
    :cond_3
    sget-object v8, Lcom/ss/ttm/utils/HardWareInfo;->mArmArchitecture:[I

    .line 140
    .line 141
    aput v12, v8, v9

    .line 142
    .line 143
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    aput v9, v8, v12

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_4
    invoke-virtual {v11, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v13

    .line 158
    if-nez v13, :cond_5

    .line 159
    .line 160
    const-string v11, "neon"

    .line 161
    .line 162
    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-eqz v8, :cond_0

    .line 167
    .line 168
    sget-object v8, Lcom/ss/ttm/utils/HardWareInfo;->mArmArchitecture:[I

    .line 169
    .line 170
    aput v9, v8, v10

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_5
    invoke-virtual {v11, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v13

    .line 178
    if-nez v13, :cond_6

    .line 179
    .line 180
    const-string v11, "Intel"

    .line 181
    .line 182
    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    if-eqz v8, :cond_0

    .line 187
    .line 188
    sget-object v8, Lcom/ss/ttm/utils/HardWareInfo;->mArmArchitecture:[I

    .line 189
    .line 190
    aput v10, v8, v9

    .line 191
    .line 192
    aput v12, v8, v10

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_6
    invoke-virtual {v11, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v9

    .line 200
    if-nez v9, :cond_0

    .line 201
    .line 202
    sget-object v9, Lcom/ss/ttm/utils/HardWareInfo;->mArmArchitecture:[I

    .line 203
    .line 204
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    aput v8, v9, v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 219
    .line 220
    .line 221
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 222
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 223
    .line 224
    .line 225
    :goto_4
    sget-object v0, Lcom/ss/ttm/utils/HardWareInfo;->mArmArchitecture:[I

    .line 226
    .line 227
    return-object v0
.end method

.method public static getCpuFamily()I
    .locals 2

    .line 1
    sget v0, Lcom/ss/ttm/utils/HardWareInfo;->mCpuType:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/ss/ttm/utils/HardWareInfo;->getCpuInfo()[I

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/ss/ttm/utils/HardWareInfo;->mArmArchitecture:[I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    sput v0, Lcom/ss/ttm/utils/HardWareInfo;->mCpuType:I

    .line 14
    .line 15
    :cond_0
    sget v0, Lcom/ss/ttm/utils/HardWareInfo;->mCpuType:I

    .line 16
    .line 17
    return v0
.end method

.method public static getCpuInfo()[I
    .locals 13

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 2
    .line 3
    const-string v1, "/proc/cpuinfo"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/io/InputStreamReader;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Ljava/io/BufferedReader;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :try_start_1
    const-string v3, "processor"

    .line 19
    .line 20
    const-string v4, "features"

    .line 21
    .line 22
    const-string v5, "model name"

    .line 23
    .line 24
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    if-nez v6, :cond_1

    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_1
    const-string v7, "\t"

    .line 33
    .line 34
    const-string v8, ""

    .line 35
    .line 36
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 41
    .line 42
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const-string v7, ":"

    .line 47
    .line 48
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    array-length v7, v6

    .line 53
    const/4 v8, 0x2

    .line 54
    if-eq v7, v8, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 v7, 0x0

    .line 58
    aget-object v9, v6, v7

    .line 59
    .line 60
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    const/4 v10, 0x1

    .line 65
    aget-object v6, v6, v10

    .line 66
    .line 67
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    if-eqz v6, :cond_0

    .line 72
    .line 73
    if-nez v9, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {v9, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    const-string v12, "intel"

    .line 81
    .line 82
    if-nez v11, :cond_6

    .line 83
    .line 84
    :try_start_2
    const-string v9, "armv"

    .line 85
    .line 86
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-nez v9, :cond_5

    .line 91
    .line 92
    const-string v9, "aarch64"

    .line 93
    .line 94
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-eqz v9, :cond_4

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_0

    .line 106
    .line 107
    sget-object v3, Lcom/ss/ttm/utils/HardWareInfo;->mArmArchitecture:[I

    .line 108
    .line 109
    aput v8, v3, v7

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :catchall_0
    move-exception v3

    .line 113
    goto :goto_3

    .line 114
    :cond_5
    :goto_1
    sget-object v3, Lcom/ss/ttm/utils/HardWareInfo;->mArmArchitecture:[I

    .line 115
    .line 116
    aput v10, v3, v7

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_6
    invoke-virtual {v9, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    if-nez v11, :cond_8

    .line 124
    .line 125
    const-string v8, "neon"

    .line 126
    .line 127
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-nez v8, :cond_7

    .line 132
    .line 133
    const-string/jumbo v8, "thumb"

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-nez v8, :cond_7

    .line 141
    .line 142
    const-string/jumbo v8, "vfpv"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    if-nez v8, :cond_7

    .line 150
    .line 151
    const-string v8, "asimd"

    .line 152
    .line 153
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    if-nez v8, :cond_7

    .line 158
    .line 159
    const-string/jumbo v8, "simd"

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-eqz v6, :cond_0

    .line 167
    .line 168
    :cond_7
    sget-object v6, Lcom/ss/ttm/utils/HardWareInfo;->mArmArchitecture:[I

    .line 169
    .line 170
    aput v10, v6, v7

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_8
    invoke-virtual {v9, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v9

    .line 178
    if-nez v9, :cond_0

    .line 179
    .line 180
    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    if-eqz v9, :cond_9

    .line 185
    .line 186
    sget-object v3, Lcom/ss/ttm/utils/HardWareInfo;->mArmArchitecture:[I

    .line 187
    .line 188
    aput v8, v3, v7

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_9
    const-string v8, "arm"

    .line 192
    .line 193
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-eqz v6, :cond_0

    .line 198
    .line 199
    sget-object v3, Lcom/ss/ttm/utils/HardWareInfo;->mArmArchitecture:[I

    .line 200
    .line 201
    aput v10, v3, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    .line 203
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 210
    .line 211
    .line 212
    goto :goto_5

    .line 213
    :catch_0
    move-exception v0

    .line 214
    goto :goto_4

    .line 215
    :goto_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 222
    .line 223
    .line 224
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 225
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 226
    .line 227
    .line 228
    :goto_5
    sget-object v0, Lcom/ss/ttm/utils/HardWareInfo;->mArmArchitecture:[I

    .line 229
    .line 230
    return-object v0
.end method

.method private static getDirectoryAvailableSize(Ljava/lang/String;)J
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/ss/ttm/utils/HardWareInfo;->isAndroidJB2()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    int-to-long v1, p0

    .line 26
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    .line 27
    .line 28
    .line 29
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    int-to-long v3, p0

    .line 31
    :goto_0
    mul-long/2addr v1, v3

    .line 32
    return-wide v1

    .line 33
    :catch_0
    const-wide/16 v0, -0x1

    .line 34
    .line 35
    return-wide v0
.end method

.method private static getDirectoryTotalSize(Ljava/lang/String;)J
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/ss/ttm/utils/HardWareInfo;->isAndroidJB2()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    int-to-long v1, p0

    .line 26
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    .line 27
    .line 28
    .line 29
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    int-to-long v3, p0

    .line 31
    :goto_0
    mul-long/2addr v1, v3

    .line 32
    return-wide v1

    .line 33
    :catch_0
    const-wide/16 v0, -0x1

    .line 34
    .line 35
    return-wide v0
.end method

.method public static getProcessCpuInfo()J
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    new-instance v4, Ljava/io/BufferedReader;

    .line 9
    .line 10
    new-instance v5, Ljava/io/InputStreamReader;

    .line 11
    .line 12
    new-instance v6, Ljava/io/FileInputStream;

    .line 13
    .line 14
    new-instance v7, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v8, "/proc/"

    .line 20
    .line 21
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, "/stat"

    .line 28
    .line 29
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 40
    .line 41
    .line 42
    const/16 v3, 0x3e8

    .line 43
    .line 44
    invoke-direct {v4, v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    .line 46
    .line 47
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 52
    .line 53
    .line 54
    const-string v3, " "

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v3

    .line 65
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    :goto_0
    const/16 v3, 0xd

    .line 69
    .line 70
    :try_start_3
    aget-object v3, v2, v3

    .line 71
    .line 72
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    const/16 v5, 0xe

    .line 77
    .line 78
    aget-object v5, v2, v5

    .line 79
    .line 80
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v5

    .line 84
    add-long/2addr v3, v5

    .line 85
    const/16 v5, 0xf

    .line 86
    .line 87
    aget-object v5, v2, v5

    .line 88
    .line 89
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v5

    .line 93
    add-long/2addr v3, v5

    .line 94
    const/16 v5, 0x10

    .line 95
    .line 96
    aget-object v2, v2, v5

    .line 97
    .line 98
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v0
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 102
    add-long/2addr v3, v0

    .line 103
    return-wide v3

    .line 104
    :catch_1
    return-wide v0

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    move-object v2, v4

    .line 107
    goto :goto_1

    .line 108
    :catch_2
    move-object v2, v4

    .line 109
    goto :goto_3

    .line 110
    :catchall_1
    move-exception v0

    .line 111
    :goto_1
    if-eqz v2, :cond_0

    .line 112
    .line 113
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :catch_3
    move-exception v1

    .line 118
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    :cond_0
    :goto_2
    throw v0

    .line 122
    :catch_4
    :goto_3
    if-eqz v2, :cond_1

    .line 123
    .line 124
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :catch_5
    move-exception v2

    .line 129
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    .line 131
    .line 132
    :cond_1
    :goto_4
    return-wide v0
.end method

.method public static getSDCardSize(Landroid/content/Context;)[J
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "mounted"

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Lcom/ss/ttm/utils/HardWareInfo;->getAvailableStorageSize(Landroid/content/Context;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-static {p0}, Lcom/ss/ttm/utils/HardWareInfo;->getTotalStorageSize(Landroid/content/Context;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    const/4 p0, 0x0

    .line 25
    aput-wide v3, v0, p0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    aput-wide v1, v0, p0

    .line 29
    .line 30
    :cond_0
    return-object v0
.end method

.method private static getTotalStorageSize(Landroid/content/Context;)J
    .locals 3

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lcom/ss/ttm/utils/HardWareInfo;->getDirectoryTotalSize(Ljava/lang/String;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    :cond_1
    return-wide v0
.end method

.method private static isAndroidJB2()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
