.class public final Lfk/e0;
.super Ljava/lang/Object;
.source "StunHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lfk/e0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfk/e0;

    .line 2
    .line 3
    invoke-direct {v0}, Lfk/e0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lfk/e0;->a:Lfk/e0;

    .line 7
    .line 8
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

.method private final b([BI[B)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI[B)",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    return-object v2

    .line 8
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    and-int/lit16 v0, v0, 0xff

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    if-eq v0, v3, :cond_1

    .line 32
    .line 33
    return-object v2

    .line 34
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const v4, 0xffff

    .line 39
    .line 40
    .line 41
    and-int/2addr v3, v4

    .line 42
    ushr-int/lit8 v4, p2, 0x10

    .line 43
    .line 44
    xor-int/2addr v3, v4

    .line 45
    if-ne v0, v1, :cond_2

    .line 46
    .line 47
    const/4 p3, 0x4

    .line 48
    new-array p3, p3, [B

    .line 49
    .line 50
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    .line 53
    sget-object p1, Lfk/e0;->a:Lfk/e0;

    .line 54
    .line 55
    invoke-direct {p1, p3, p2}, Lfk/e0;->c([BI)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/16 v0, 0x10

    .line 60
    .line 61
    new-array v0, v0, [B

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    .line 66
    sget-object p1, Lfk/e0;->a:Lfk/e0;

    .line 67
    .line 68
    invoke-direct {p1, v0, p2, p3}, Lfk/e0;->d([BI[B)V

    .line 69
    .line 70
    .line 71
    move-object p3, v0

    .line 72
    :goto_0
    :try_start_0
    new-instance p1, Lkotlin/Pair;

    .line 73
    .line 74
    invoke-static {p3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-direct {p1, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    return-object p1

    .line 90
    :catch_0
    return-object v2
.end method

.method private final c([BI)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v1, p1, v0

    .line 3
    .line 4
    ushr-int/lit8 v2, p2, 0x18

    .line 5
    .line 6
    and-int/lit16 v2, v2, 0xff

    .line 7
    .line 8
    int-to-byte v2, v2

    .line 9
    xor-int/2addr v1, v2

    .line 10
    int-to-byte v1, v1

    .line 11
    aput-byte v1, p1, v0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    aget-byte v1, p1, v0

    .line 15
    .line 16
    ushr-int/lit8 v2, p2, 0x10

    .line 17
    .line 18
    and-int/lit16 v2, v2, 0xff

    .line 19
    .line 20
    int-to-byte v2, v2

    .line 21
    xor-int/2addr v1, v2

    .line 22
    int-to-byte v1, v1

    .line 23
    aput-byte v1, p1, v0

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    aget-byte v1, p1, v0

    .line 27
    .line 28
    ushr-int/lit8 v2, p2, 0x8

    .line 29
    .line 30
    and-int/lit16 v2, v2, 0xff

    .line 31
    .line 32
    int-to-byte v2, v2

    .line 33
    xor-int/2addr v1, v2

    .line 34
    int-to-byte v1, v1

    .line 35
    aput-byte v1, p1, v0

    .line 36
    .line 37
    const/4 v0, 0x3

    .line 38
    aget-byte v1, p1, v0

    .line 39
    .line 40
    and-int/lit16 p2, p2, 0xff

    .line 41
    .line 42
    int-to-byte p2, p2

    .line 43
    xor-int/2addr p2, v1

    .line 44
    int-to-byte p2, p2

    .line 45
    aput-byte p2, p1, v0

    .line 46
    .line 47
    return-void
.end method

.method private final d([BI[B)V
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const/16 v1, 0xc

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p2, p3, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    sget-object p3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 19
    .line 20
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    :goto_0
    if-ge v2, v0, :cond_0

    .line 29
    .line 30
    aget-byte p3, p1, v2

    .line 31
    .line 32
    aget-byte v1, p2, v2

    .line 33
    .line 34
    xor-int/2addr p3, v1

    .line 35
    int-to-byte p3, p3

    .line 36
    aput-byte p3, p1, v2

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public final a([B)Ljava/util/List;
    .locals 7
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/16 v4, 0xc

    .line 33
    .line 34
    new-array v4, v4, [B

    .line 35
    .line 36
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    const/16 v1, 0x101

    .line 40
    .line 41
    if-ne v2, v1, :cond_2

    .line 42
    .line 43
    const v1, 0x2112a442

    .line 44
    .line 45
    .line 46
    if-eq v3, v1, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const/16 v1, 0x14

    .line 50
    .line 51
    :goto_0
    array-length v2, p1

    .line 52
    if-ge v1, v2, :cond_2

    .line 53
    .line 54
    add-int/lit8 v2, v1, 0x4

    .line 55
    .line 56
    array-length v5, p1

    .line 57
    if-gt v2, v5, :cond_2

    .line 58
    .line 59
    aget-byte v5, p1, v1

    .line 60
    .line 61
    shl-int/lit8 v5, v5, 0x8

    .line 62
    .line 63
    add-int/lit8 v6, v1, 0x1

    .line 64
    .line 65
    aget-byte v6, p1, v6

    .line 66
    .line 67
    and-int/lit16 v6, v6, 0xff

    .line 68
    .line 69
    or-int/2addr v5, v6

    .line 70
    int-to-short v5, v5

    .line 71
    add-int/lit8 v6, v1, 0x2

    .line 72
    .line 73
    aget-byte v6, p1, v6

    .line 74
    .line 75
    and-int/lit16 v6, v6, 0xff

    .line 76
    .line 77
    shl-int/lit8 v6, v6, 0x8

    .line 78
    .line 79
    add-int/lit8 v1, v1, 0x3

    .line 80
    .line 81
    aget-byte v1, p1, v1

    .line 82
    .line 83
    and-int/lit16 v1, v1, 0xff

    .line 84
    .line 85
    or-int/2addr v1, v6

    .line 86
    const/16 v6, 0x20

    .line 87
    .line 88
    if-ne v5, v6, :cond_1

    .line 89
    .line 90
    add-int/2addr v1, v2

    .line 91
    invoke-static {p1, v2, v1}, Lkotlin/collections/n;->w([BII)[B

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {p0, p1, v3, v4}, Lfk/e0;->b([BI[B)Lkotlin/Pair;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    add-int/2addr v2, v1

    .line 106
    rem-int/lit8 v1, v1, 0x4

    .line 107
    .line 108
    rsub-int/lit8 v1, v1, 0x4

    .line 109
    .line 110
    rem-int/lit8 v1, v1, 0x4

    .line 111
    .line 112
    add-int/2addr v1, v2

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    :goto_1
    return-object v0
.end method
