.class public final Lkotlin/uuid/Uuid;
.super Ljava/lang/Object;
.source "Uuid.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/uuid/Uuid$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Lkotlin/uuid/Uuid$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Lkotlin/uuid/Uuid;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lkotlin/uuid/Uuid;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkotlin/uuid/Uuid$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlin/uuid/Uuid$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkotlin/uuid/Uuid;->c:Lkotlin/uuid/Uuid$a;

    .line 8
    .line 9
    new-instance v0, Lkotlin/uuid/Uuid;

    .line 10
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v1, v2}, Lkotlin/uuid/Uuid;-><init>(JJ)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lkotlin/uuid/Uuid;->d:Lkotlin/uuid/Uuid;

    .line 17
    .line 18
    new-instance v0, Lft/a;

    .line 19
    .line 20
    invoke-direct {v0}, Lft/a;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lkotlin/uuid/Uuid;->e:Ljava/util/Comparator;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lkotlin/uuid/Uuid;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, Lkotlin/uuid/Uuid;->b:J

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic b(Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/uuid/Uuid;->d(Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final d(Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;)I
    .locals 4

    .line 1
    const-string v0, "a"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "b"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->a:J

    .line 12
    .line 13
    iget-wide v2, p1, Lkotlin/uuid/Uuid;->a:J

    .line 14
    .line 15
    cmp-long v2, v0, v2

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-static {v0, v1}, Lms/p;->b(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget-wide p0, p1, Lkotlin/uuid/Uuid;->a:J

    .line 24
    .line 25
    invoke-static {p0, p1}, Lms/p;->b(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide p0

    .line 29
    invoke-static {v0, v1, p0, p1}, Landroidx/collection/a;->a(JJ)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->b:J

    .line 35
    .line 36
    invoke-static {v0, v1}, Lms/p;->b(J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iget-wide p0, p1, Lkotlin/uuid/Uuid;->b:J

    .line 41
    .line 42
    invoke-static {p0, p1}, Lms/p;->b(J)J

    .line 43
    .line 44
    .line 45
    move-result-wide p0

    .line 46
    invoke-static {v0, v1, p0, p1}, Landroidx/collection/a;->a(JJ)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    :goto_0
    return p0
.end method

.method public static final synthetic e()Lkotlin/uuid/Uuid;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/uuid/Uuid;->d:Lkotlin/uuid/Uuid;

    .line 2
    .line 3
    return-object v0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0}, Lkotlin/uuid/a;->a(Lkotlin/uuid/Uuid;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lkotlin/uuid/Uuid;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    iget-wide v3, p0, Lkotlin/uuid/Uuid;->a:J

    .line 12
    .line 13
    check-cast p1, Lkotlin/uuid/Uuid;

    .line 14
    .line 15
    iget-wide v5, p1, Lkotlin/uuid/Uuid;->a:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    iget-wide v3, p0, Lkotlin/uuid/Uuid;->b:J

    .line 22
    .line 23
    iget-wide v5, p1, Lkotlin/uuid/Uuid;->b:J

    .line 24
    .line 25
    cmp-long p1, v3, v5

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move v0, v2

    .line 31
    :goto_0
    return v0
.end method

.method public final f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->a:J

    .line 2
    .line 3
    iget-wide v2, p0, Lkotlin/uuid/Uuid;->b:J

    .line 4
    .line 5
    xor-long/2addr v0, v2

    .line 6
    const/16 v2, 0x20

    .line 7
    .line 8
    shr-long v2, v0, v2

    .line 9
    .line 10
    long-to-int v2, v2

    .line 11
    long-to-int v0, v0

    .line 12
    xor-int/2addr v0, v2

    .line 13
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->b:J

    .line 6
    .line 7
    const/16 v3, 0x18

    .line 8
    .line 9
    const/4 v4, 0x6

    .line 10
    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/uuid/b;->c(J[BII)V

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x17

    .line 14
    .line 15
    const/16 v2, 0x2d

    .line 16
    .line 17
    aput-byte v2, v0, v1

    .line 18
    .line 19
    iget-wide v3, p0, Lkotlin/uuid/Uuid;->b:J

    .line 20
    .line 21
    const/16 v1, 0x30

    .line 22
    .line 23
    ushr-long/2addr v3, v1

    .line 24
    const/16 v1, 0x13

    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    invoke-static {v3, v4, v0, v1, v5}, Lkotlin/uuid/b;->c(J[BII)V

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x12

    .line 31
    .line 32
    aput-byte v2, v0, v1

    .line 33
    .line 34
    iget-wide v3, p0, Lkotlin/uuid/Uuid;->a:J

    .line 35
    .line 36
    const/16 v1, 0xe

    .line 37
    .line 38
    invoke-static {v3, v4, v0, v1, v5}, Lkotlin/uuid/b;->c(J[BII)V

    .line 39
    .line 40
    .line 41
    const/16 v1, 0xd

    .line 42
    .line 43
    aput-byte v2, v0, v1

    .line 44
    .line 45
    iget-wide v3, p0, Lkotlin/uuid/Uuid;->a:J

    .line 46
    .line 47
    const/16 v1, 0x10

    .line 48
    .line 49
    ushr-long/2addr v3, v1

    .line 50
    const/16 v1, 0x9

    .line 51
    .line 52
    invoke-static {v3, v4, v0, v1, v5}, Lkotlin/uuid/b;->c(J[BII)V

    .line 53
    .line 54
    .line 55
    const/16 v1, 0x8

    .line 56
    .line 57
    aput-byte v2, v0, v1

    .line 58
    .line 59
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->a:J

    .line 60
    .line 61
    const/16 v3, 0x20

    .line 62
    .line 63
    ushr-long/2addr v1, v3

    .line 64
    const/4 v3, 0x0

    .line 65
    const/4 v4, 0x4

    .line 66
    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/uuid/b;->c(J[BII)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lkotlin/text/StringsKt;->C([B)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0
.end method
