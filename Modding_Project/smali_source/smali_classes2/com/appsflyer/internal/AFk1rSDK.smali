.class public final Lcom/appsflyer/internal/AFk1rSDK;
.super Ljava/io/FilterInputStream;
.source ""


# static fields
.field private static final getMediationNetwork:S


# instance fields
.field private AFAdRevenueData:I

.field private areAllFieldsValid:I

.field private component1:I

.field private component2:I

.field private component3:I

.field private component4:I

.field private copy:I

.field private final copydefault:I

.field private final equals:I

.field private getCurrencyIso4217Code:[B

.field private getMonetizationNetwork:[B

.field private getRevenue:[B

.field private hashCode:I

.field private registerClient:I

.field private toString:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 8
    .line 9
    sub-double/2addr v0, v2

    .line 10
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 11
    .line 12
    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    .line 13
    .line 14
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    mul-double/2addr v0, v2

    .line 19
    double-to-int v0, v0

    .line 20
    int-to-short v0, v0

    .line 21
    sput-short v0, Lcom/appsflyer/internal/AFk1rSDK;->getMediationNetwork:S

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[II[BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/appsflyer/internal/AFk1rSDK;-><init>(Ljava/io/InputStream;[II[BIIB)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;[II[BIIB)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance p7, Ljava/io/BufferedInputStream;

    const/16 v0, 0x1000

    invoke-direct {p7, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, p7}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const p1, 0x7fffffff

    .line 3
    iput p1, p0, Lcom/appsflyer/internal/AFk1rSDK;->component1:I

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/appsflyer/internal/AFk1rSDK;->registerClient:I

    const/16 p7, 0x8

    .line 5
    new-array v0, p7, [B

    iput-object v0, p0, Lcom/appsflyer/internal/AFk1rSDK;->getMonetizationNetwork:[B

    .line 6
    new-array v0, p7, [B

    iput-object v0, p0, Lcom/appsflyer/internal/AFk1rSDK;->getRevenue:[B

    .line 7
    new-array v0, p7, [B

    iput-object v0, p0, Lcom/appsflyer/internal/AFk1rSDK;->getCurrencyIso4217Code:[B

    .line 8
    iput p7, p0, Lcom/appsflyer/internal/AFk1rSDK;->AFAdRevenueData:I

    .line 9
    iput p7, p0, Lcom/appsflyer/internal/AFk1rSDK;->component4:I

    const/4 v0, 0x5

    .line 10
    invoke-static {p5, v0}, Ljava/lang/Math;->max(II)I

    move-result p5

    const/16 v0, 0x10

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    iput p5, p0, Lcom/appsflyer/internal/AFk1rSDK;->areAllFieldsValid:I

    .line 11
    iput p6, p0, Lcom/appsflyer/internal/AFk1rSDK;->component3:I

    const/4 p5, 0x0

    const/4 v0, 0x3

    if-ne p6, v0, :cond_0

    .line 12
    iget-object p6, p0, Lcom/appsflyer/internal/AFk1rSDK;->getRevenue:[B

    invoke-static {p4, p5, p6, p5, p7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    :cond_0
    aget p4, p2, p5

    int-to-long p4, p4

    const-wide p6, 0xffffffffL

    and-long/2addr p4, p6

    const/16 v1, 0x20

    shl-long/2addr p4, v1

    aget p1, p2, p1

    int-to-long p1, p1

    and-long/2addr p1, p6

    or-long/2addr p1, p4

    if-nez p3, :cond_1

    long-to-int p3, p1

    .line 14
    iput p3, p0, Lcom/appsflyer/internal/AFk1rSDK;->component2:I

    shr-long p3, p1, v0

    .line 15
    sget-short p5, Lcom/appsflyer/internal/AFk1rSDK;->getMediationNetwork:S

    int-to-long p6, p5

    mul-long/2addr p6, p3

    shr-long/2addr p6, v1

    long-to-int p6, p6

    iput p6, p0, Lcom/appsflyer/internal/AFk1rSDK;->hashCode:I

    shr-long/2addr p1, v1

    long-to-int p1, p1

    .line 16
    iput p1, p0, Lcom/appsflyer/internal/AFk1rSDK;->copy:I

    int-to-long p1, p5

    add-long/2addr p3, p1

    long-to-int p1, p3

    .line 17
    iput p1, p0, Lcom/appsflyer/internal/AFk1rSDK;->toString:I

    goto :goto_0

    :cond_1
    long-to-int p4, p1

    .line 18
    iput p4, p0, Lcom/appsflyer/internal/AFk1rSDK;->component2:I

    mul-int p5, p4, p3

    .line 19
    iput p5, p0, Lcom/appsflyer/internal/AFk1rSDK;->hashCode:I

    xor-int/2addr p3, p4

    .line 20
    iput p3, p0, Lcom/appsflyer/internal/AFk1rSDK;->copy:I

    shr-long/2addr p1, v1

    long-to-int p1, p1

    .line 21
    iput p1, p0, Lcom/appsflyer/internal/AFk1rSDK;->toString:I

    :goto_0
    const/16 p1, 0x64

    .line 22
    iput p1, p0, Lcom/appsflyer/internal/AFk1rSDK;->equals:I

    .line 23
    iput p1, p0, Lcom/appsflyer/internal/AFk1rSDK;->copydefault:I

    return-void
.end method

.method private AFAdRevenueData()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/appsflyer/internal/AFk1rSDK;->component1:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/appsflyer/internal/AFk1rSDK;->component1:I

    .line 15
    .line 16
    :cond_0
    iget v0, p0, Lcom/appsflyer/internal/AFk1rSDK;->AFAdRevenueData:I

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    if-ne v0, v1, :cond_9

    .line 21
    .line 22
    iget-object v0, p0, Lcom/appsflyer/internal/AFk1rSDK;->getMonetizationNetwork:[B

    .line 23
    .line 24
    iget v2, p0, Lcom/appsflyer/internal/AFk1rSDK;->component1:I

    .line 25
    .line 26
    int-to-byte v3, v2

    .line 27
    const/4 v4, 0x0

    .line 28
    aput-byte v3, v0, v4

    .line 29
    .line 30
    const-string/jumbo v0, "unexpected block size"

    .line 31
    .line 32
    .line 33
    if-ltz v2, :cond_8

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    move v3, v2

    .line 37
    :cond_1
    iget-object v5, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 38
    .line 39
    iget-object v6, p0, Lcom/appsflyer/internal/AFk1rSDK;->getMonetizationNetwork:[B

    .line 40
    .line 41
    rsub-int/lit8 v7, v3, 0x8

    .line 42
    .line 43
    invoke-virtual {v5, v6, v3, v7}, Ljava/io/InputStream;->read([BII)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-lez v5, :cond_2

    .line 48
    .line 49
    add-int/2addr v3, v5

    .line 50
    if-lt v3, v1, :cond_1

    .line 51
    .line 52
    :cond_2
    if-lt v3, v1, :cond_7

    .line 53
    .line 54
    iget v0, p0, Lcom/appsflyer/internal/AFk1rSDK;->equals:I

    .line 55
    .line 56
    iget v3, p0, Lcom/appsflyer/internal/AFk1rSDK;->copydefault:I

    .line 57
    .line 58
    if-ne v0, v3, :cond_3

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/appsflyer/internal/AFk1rSDK;->getCurrencyIso4217Code()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget v3, p0, Lcom/appsflyer/internal/AFk1rSDK;->registerClient:I

    .line 65
    .line 66
    if-gt v3, v0, :cond_4

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/appsflyer/internal/AFk1rSDK;->getCurrencyIso4217Code()V

    .line 69
    .line 70
    .line 71
    :cond_4
    iget v0, p0, Lcom/appsflyer/internal/AFk1rSDK;->registerClient:I

    .line 72
    .line 73
    iget v3, p0, Lcom/appsflyer/internal/AFk1rSDK;->copydefault:I

    .line 74
    .line 75
    if-ge v0, v3, :cond_5

    .line 76
    .line 77
    add-int/2addr v0, v2

    .line 78
    iput v0, p0, Lcom/appsflyer/internal/AFk1rSDK;->registerClient:I

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    iput v2, p0, Lcom/appsflyer/internal/AFk1rSDK;->registerClient:I

    .line 82
    .line 83
    :goto_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iput v0, p0, Lcom/appsflyer/internal/AFk1rSDK;->component1:I

    .line 90
    .line 91
    iput v4, p0, Lcom/appsflyer/internal/AFk1rSDK;->AFAdRevenueData:I

    .line 92
    .line 93
    if-gez v0, :cond_6

    .line 94
    .line 95
    iget-object v0, p0, Lcom/appsflyer/internal/AFk1rSDK;->getMonetizationNetwork:[B

    .line 96
    .line 97
    const/4 v2, 0x7

    .line 98
    aget-byte v0, v0, v2

    .line 99
    .line 100
    and-int/lit16 v0, v0, 0xff

    .line 101
    .line 102
    sub-int/2addr v1, v0

    .line 103
    :cond_6
    iput v1, p0, Lcom/appsflyer/internal/AFk1rSDK;->component4:I

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v1

    .line 112
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 113
    .line 114
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v1

    .line 118
    :cond_9
    :goto_1
    iget v0, p0, Lcom/appsflyer/internal/AFk1rSDK;->component4:I

    .line 119
    .line 120
    return v0
.end method

.method private getCurrencyIso4217Code()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/appsflyer/internal/AFk1rSDK;->component3:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x3

    .line 7
    if-ne v1, v3, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lcom/appsflyer/internal/AFk1rSDK;->getMonetizationNetwork:[B

    .line 10
    .line 11
    iget-object v4, v0, Lcom/appsflyer/internal/AFk1rSDK;->getCurrencyIso4217Code:[B

    .line 12
    .line 13
    array-length v5, v1

    .line 14
    invoke-static {v1, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, v0, Lcom/appsflyer/internal/AFk1rSDK;->getMonetizationNetwork:[B

    .line 18
    .line 19
    aget-byte v4, v1, v2

    .line 20
    .line 21
    shl-int/lit8 v4, v4, 0x18

    .line 22
    .line 23
    const/high16 v5, -0x1000000

    .line 24
    .line 25
    and-int/2addr v4, v5

    .line 26
    const/4 v6, 0x1

    .line 27
    aget-byte v7, v1, v6

    .line 28
    .line 29
    shl-int/lit8 v7, v7, 0x10

    .line 30
    .line 31
    const/high16 v8, 0xff0000

    .line 32
    .line 33
    and-int/2addr v7, v8

    .line 34
    add-int/2addr v4, v7

    .line 35
    const/4 v7, 0x2

    .line 36
    aget-byte v9, v1, v7

    .line 37
    .line 38
    const/16 v10, 0x8

    .line 39
    .line 40
    shl-int/2addr v9, v10

    .line 41
    const v11, 0xff00

    .line 42
    .line 43
    .line 44
    and-int/2addr v9, v11

    .line 45
    add-int/2addr v4, v9

    .line 46
    aget-byte v9, v1, v3

    .line 47
    .line 48
    and-int/lit16 v9, v9, 0xff

    .line 49
    .line 50
    add-int/2addr v4, v9

    .line 51
    const/4 v9, 0x4

    .line 52
    aget-byte v12, v1, v9

    .line 53
    .line 54
    shl-int/lit8 v12, v12, 0x18

    .line 55
    .line 56
    and-int/2addr v5, v12

    .line 57
    const/4 v12, 0x5

    .line 58
    aget-byte v13, v1, v12

    .line 59
    .line 60
    shl-int/lit8 v13, v13, 0x10

    .line 61
    .line 62
    and-int/2addr v8, v13

    .line 63
    add-int/2addr v5, v8

    .line 64
    const/4 v8, 0x6

    .line 65
    aget-byte v13, v1, v8

    .line 66
    .line 67
    shl-int/2addr v13, v10

    .line 68
    and-int/2addr v11, v13

    .line 69
    add-int/2addr v5, v11

    .line 70
    const/4 v11, 0x7

    .line 71
    aget-byte v1, v1, v11

    .line 72
    .line 73
    and-int/lit16 v1, v1, 0xff

    .line 74
    .line 75
    add-int/2addr v5, v1

    .line 76
    move v1, v2

    .line 77
    :goto_0
    iget v13, v0, Lcom/appsflyer/internal/AFk1rSDK;->areAllFieldsValid:I

    .line 78
    .line 79
    if-ge v1, v13, :cond_1

    .line 80
    .line 81
    sget-short v14, Lcom/appsflyer/internal/AFk1rSDK;->getMediationNetwork:S

    .line 82
    .line 83
    sub-int v15, v13, v1

    .line 84
    .line 85
    mul-int/2addr v15, v14

    .line 86
    add-int/2addr v15, v4

    .line 87
    shl-int/lit8 v16, v4, 0x4

    .line 88
    .line 89
    iget v10, v0, Lcom/appsflyer/internal/AFk1rSDK;->copy:I

    .line 90
    .line 91
    add-int v16, v16, v10

    .line 92
    .line 93
    xor-int v10, v15, v16

    .line 94
    .line 95
    ushr-int/lit8 v15, v4, 0x5

    .line 96
    .line 97
    iget v11, v0, Lcom/appsflyer/internal/AFk1rSDK;->toString:I

    .line 98
    .line 99
    add-int/2addr v15, v11

    .line 100
    xor-int/2addr v10, v15

    .line 101
    sub-int/2addr v5, v10

    .line 102
    sub-int/2addr v13, v1

    .line 103
    mul-int/2addr v14, v13

    .line 104
    add-int/2addr v14, v5

    .line 105
    shl-int/lit8 v10, v5, 0x4

    .line 106
    .line 107
    iget v11, v0, Lcom/appsflyer/internal/AFk1rSDK;->component2:I

    .line 108
    .line 109
    add-int/2addr v10, v11

    .line 110
    xor-int/2addr v10, v14

    .line 111
    ushr-int/lit8 v11, v5, 0x5

    .line 112
    .line 113
    iget v13, v0, Lcom/appsflyer/internal/AFk1rSDK;->hashCode:I

    .line 114
    .line 115
    add-int/2addr v11, v13

    .line 116
    xor-int/2addr v10, v11

    .line 117
    sub-int/2addr v4, v10

    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    const/16 v10, 0x8

    .line 121
    .line 122
    const/4 v11, 0x7

    .line 123
    goto :goto_0

    .line 124
    :cond_1
    iget-object v1, v0, Lcom/appsflyer/internal/AFk1rSDK;->getMonetizationNetwork:[B

    .line 125
    .line 126
    shr-int/lit8 v10, v4, 0x18

    .line 127
    .line 128
    int-to-byte v10, v10

    .line 129
    aput-byte v10, v1, v2

    .line 130
    .line 131
    shr-int/lit8 v10, v4, 0x10

    .line 132
    .line 133
    int-to-byte v10, v10

    .line 134
    aput-byte v10, v1, v6

    .line 135
    .line 136
    shr-int/lit8 v6, v4, 0x8

    .line 137
    .line 138
    int-to-byte v6, v6

    .line 139
    aput-byte v6, v1, v7

    .line 140
    .line 141
    int-to-byte v4, v4

    .line 142
    aput-byte v4, v1, v3

    .line 143
    .line 144
    shr-int/lit8 v4, v5, 0x18

    .line 145
    .line 146
    int-to-byte v4, v4

    .line 147
    aput-byte v4, v1, v9

    .line 148
    .line 149
    shr-int/lit8 v4, v5, 0x10

    .line 150
    .line 151
    int-to-byte v4, v4

    .line 152
    aput-byte v4, v1, v12

    .line 153
    .line 154
    shr-int/lit8 v4, v5, 0x8

    .line 155
    .line 156
    int-to-byte v4, v4

    .line 157
    aput-byte v4, v1, v8

    .line 158
    .line 159
    int-to-byte v4, v5

    .line 160
    const/4 v5, 0x7

    .line 161
    aput-byte v4, v1, v5

    .line 162
    .line 163
    iget v1, v0, Lcom/appsflyer/internal/AFk1rSDK;->component3:I

    .line 164
    .line 165
    if-ne v1, v3, :cond_3

    .line 166
    .line 167
    move v3, v2

    .line 168
    const/16 v1, 0x8

    .line 169
    .line 170
    :goto_1
    if-ge v3, v1, :cond_2

    .line 171
    .line 172
    iget-object v4, v0, Lcom/appsflyer/internal/AFk1rSDK;->getMonetizationNetwork:[B

    .line 173
    .line 174
    aget-byte v5, v4, v3

    .line 175
    .line 176
    iget-object v6, v0, Lcom/appsflyer/internal/AFk1rSDK;->getRevenue:[B

    .line 177
    .line 178
    aget-byte v6, v6, v3

    .line 179
    .line 180
    xor-int/2addr v5, v6

    .line 181
    int-to-byte v5, v5

    .line 182
    aput-byte v5, v4, v3

    .line 183
    .line 184
    add-int/lit8 v3, v3, 0x1

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_2
    iget-object v1, v0, Lcom/appsflyer/internal/AFk1rSDK;->getCurrencyIso4217Code:[B

    .line 188
    .line 189
    iget-object v3, v0, Lcom/appsflyer/internal/AFk1rSDK;->getRevenue:[B

    .line 190
    .line 191
    array-length v4, v1

    .line 192
    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    .line 194
    .line 195
    :cond_3
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/appsflyer/internal/AFk1rSDK;->AFAdRevenueData()I

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/appsflyer/internal/AFk1rSDK;->component4:I

    .line 5
    .line 6
    iget v1, p0, Lcom/appsflyer/internal/AFk1rSDK;->AFAdRevenueData:I

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    return v0
.end method

.method public final markSupported()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/appsflyer/internal/AFk1rSDK;->AFAdRevenueData()I

    .line 2
    iget v0, p0, Lcom/appsflyer/internal/AFk1rSDK;->AFAdRevenueData:I

    iget v1, p0, Lcom/appsflyer/internal/AFk1rSDK;->component4:I

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFk1rSDK;->getMonetizationNetwork:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/appsflyer/internal/AFk1rSDK;->AFAdRevenueData:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/appsflyer/internal/AFk1rSDK;->AFAdRevenueData()I

    .line 5
    iget v2, p0, Lcom/appsflyer/internal/AFk1rSDK;->AFAdRevenueData:I

    iget v3, p0, Lcom/appsflyer/internal/AFk1rSDK;->component4:I

    if-lt v2, v3, :cond_1

    if-ne v1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sub-int/2addr v0, v1

    sub-int/2addr p3, v0

    return p3

    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 6
    iget-object v4, p0, Lcom/appsflyer/internal/AFk1rSDK;->getMonetizationNetwork:[B

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/appsflyer/internal/AFk1rSDK;->AFAdRevenueData:I

    aget-byte v2, v4, v2

    aput-byte v2, p1, v1

    move v1, v3

    goto :goto_0

    :cond_2
    return p3
.end method

.method public final skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :goto_0
    cmp-long v2, v0, p1

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, -0x1

    .line 12
    if-eq v2, v3, :cond_0

    .line 13
    .line 14
    const-wide/16 v2, 0x1

    .line 15
    .line 16
    add-long/2addr v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-wide v0
.end method
