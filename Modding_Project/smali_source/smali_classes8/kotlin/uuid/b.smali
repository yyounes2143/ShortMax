.class Lkotlin/uuid/b;
.super Lkotlin/uuid/a;
.source "Uuid.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUuid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Uuid.kt\nkotlin/uuid/UuidKt__UuidKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,452:1\n1#2:453\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic b(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/uuid/b;->d(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(J[BII)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/uuid/b;->e(J[BII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final d(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x2d

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "Expected \'-\' (hyphen) at index "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", but was \'"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 p0, 0x27

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method private static final e(J[BII)V
    .locals 4

    .line 1
    mul-int/lit8 v0, p4, 0x2

    .line 2
    .line 3
    add-int/2addr p3, v0

    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    if-ge v0, p4, :cond_0

    .line 6
    .line 7
    const-wide/16 v1, 0xff

    .line 8
    .line 9
    and-long/2addr v1, p0

    .line 10
    long-to-int v1, v1

    .line 11
    invoke-static {}, Lkotlin/text/c;->d()[I

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    aget v1, v2, v1

    .line 16
    .line 17
    add-int/lit8 v2, p3, -0x1

    .line 18
    .line 19
    int-to-byte v3, v1

    .line 20
    aput-byte v3, p2, v2

    .line 21
    .line 22
    add-int/lit8 p3, p3, -0x2

    .line 23
    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    shr-int/2addr v1, v2

    .line 27
    int-to-byte v1, v1

    .line 28
    aput-byte v1, p2, p3

    .line 29
    .line 30
    shr-long/2addr p0, v2

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method
