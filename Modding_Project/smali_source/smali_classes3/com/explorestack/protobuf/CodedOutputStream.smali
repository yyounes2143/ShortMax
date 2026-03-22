.class public abstract Lcom/explorestack/protobuf/CodedOutputStream;
.super Lcom/explorestack/protobuf/l;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/CodedOutputStream$d;,
        Lcom/explorestack/protobuf/CodedOutputStream$b;,
        Lcom/explorestack/protobuf/CodedOutputStream$c;,
        Lcom/explorestack/protobuf/CodedOutputStream$OutOfSpaceException;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/logging/Logger;

.field private static final d:Z


# instance fields
.field a:Lcom/explorestack/protobuf/p;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/explorestack/protobuf/CodedOutputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/explorestack/protobuf/CodedOutputStream;->c:Ljava/util/logging/Logger;

    .line 12
    .line 13
    invoke-static {}, Lcom/explorestack/protobuf/o2;->J()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput-boolean v0, Lcom/explorestack/protobuf/CodedOutputStream;->d:Z

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/explorestack/protobuf/l;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedOutputStream$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/CodedOutputStream;-><init>()V

    return-void
.end method

.method public static A(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->b0(J)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static B(ILcom/explorestack/protobuf/l0;)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x2

    .line 7
    mul-int/2addr v0, v1

    .line 8
    invoke-static {v1, p0}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    add-int/2addr v0, p0

    .line 13
    const/4 p0, 0x3

    .line 14
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->C(ILcom/explorestack/protobuf/l0;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    add-int/2addr v0, p0

    .line 19
    return v0
.end method

.method public static C(ILcom/explorestack/protobuf/l0;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->D(Lcom/explorestack/protobuf/l0;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static D(Lcom/explorestack/protobuf/l0;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/l0;->c()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->E(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method static E(I)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->Z(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, p0

    .line 6
    return v0
.end method

.method public static F(ILcom/explorestack/protobuf/MessageLite;)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x2

    .line 7
    mul-int/2addr v0, v1

    .line 8
    invoke-static {v1, p0}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    add-int/2addr v0, p0

    .line 13
    const/4 p0, 0x3

    .line 14
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    add-int/2addr v0, p0

    .line 19
    return v0
.end method

.method public static G(ILcom/explorestack/protobuf/MessageLite;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->I(Lcom/explorestack/protobuf/MessageLite;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method static H(ILcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/q1;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->J(Lcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/q1;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static I(Lcom/explorestack/protobuf/MessageLite;)I
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/explorestack/protobuf/MessageLite;->getSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->E(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method static J(Lcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/q1;)I
    .locals 0

    .line 1
    check-cast p0, Lcom/explorestack/protobuf/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/a;->getSerializedSize(Lcom/explorestack/protobuf/q1;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->E(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method static K(I)I
    .locals 1

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    if-le p0, v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    return p0
.end method

.method public static L(ILcom/explorestack/protobuf/ByteString;)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x2

    .line 7
    mul-int/2addr v0, v1

    .line 8
    invoke-static {v1, p0}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    add-int/2addr v0, p0

    .line 13
    const/4 p0, 0x3

    .line 14
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->h(ILcom/explorestack/protobuf/ByteString;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    add-int/2addr v0, p0

    .line 19
    return v0
.end method

.method public static M(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->Z(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static N(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->O(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static O(I)I
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    return p0
.end method

.method public static P(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->Q(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static Q(J)I
    .locals 0

    .line 1
    const/16 p0, 0x8

    .line 2
    .line 3
    return p0
.end method

.method public static R(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->S(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static S(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->c0(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->Z(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static T(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->U(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static U(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->d0(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->b0(J)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static V(ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->W(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static W(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/explorestack/protobuf/Utf8;->j(Ljava/lang/CharSequence;)I

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Lcom/explorestack/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    sget-object v0, Lcom/explorestack/protobuf/i0;->a:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    array-length p0, p0

    .line 13
    :goto_0
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->E(I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static X(I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/explorestack/protobuf/WireFormat;->c(II)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->Z(I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static Y(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->Z(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static Z(I)I
    .locals 1

    .line 1
    and-int/lit8 v0, p0, -0x80

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    return p0

    .line 13
    :cond_1
    const/high16 v0, -0x200000

    .line 14
    .line 15
    and-int/2addr v0, p0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    const/4 p0, 0x3

    .line 19
    return p0

    .line 20
    :cond_2
    const/high16 v0, -0x10000000

    .line 21
    .line 22
    and-int/2addr p0, v0

    .line 23
    if-nez p0, :cond_3

    .line 24
    .line 25
    const/4 p0, 0x4

    .line 26
    return p0

    .line 27
    :cond_3
    const/4 p0, 0x5

    .line 28
    return p0
.end method

.method public static a0(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->b0(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static b0(J)I
    .locals 6

    .line 1
    const-wide/16 v0, -0x80

    .line 2
    .line 3
    and-long/2addr v0, p0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    cmp-long v0, p0, v2

    .line 13
    .line 14
    if-gez v0, :cond_1

    .line 15
    .line 16
    const/16 p0, 0xa

    .line 17
    .line 18
    return p0

    .line 19
    :cond_1
    const-wide v0, -0x800000000L

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr v0, p0

    .line 25
    cmp-long v0, v0, v2

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/16 v0, 0x1c

    .line 30
    .line 31
    ushr-long/2addr p0, v0

    .line 32
    const/4 v0, 0x6

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x2

    .line 35
    :goto_0
    const-wide/32 v4, -0x200000

    .line 36
    .line 37
    .line 38
    and-long/2addr v4, p0

    .line 39
    cmp-long v1, v4, v2

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x2

    .line 44
    .line 45
    const/16 v1, 0xe

    .line 46
    .line 47
    ushr-long/2addr p0, v1

    .line 48
    :cond_3
    const-wide/16 v4, -0x4000

    .line 49
    .line 50
    and-long/2addr p0, v4

    .line 51
    cmp-long p0, p0, v2

    .line 52
    .line 53
    if-eqz p0, :cond_4

    .line 54
    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    :cond_4
    return v0
.end method

.method static synthetic c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/CodedOutputStream;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public static c0(I)I
    .locals 1

    .line 1
    shl-int/lit8 v0, p0, 0x1

    .line 2
    .line 3
    shr-int/lit8 p0, p0, 0x1f

    .line 4
    .line 5
    xor-int/2addr p0, v0

    .line 6
    return p0
.end method

.method public static d0(J)J
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-long v0, p0, v0

    .line 3
    .line 4
    const/16 v2, 0x3f

    .line 5
    .line 6
    shr-long/2addr p0, v2

    .line 7
    xor-long/2addr p0, v0

    .line 8
    return-wide p0
.end method

.method public static e(IZ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->f(Z)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static f(Z)I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public static g([B)I
    .locals 0

    .line 1
    array-length p0, p0

    .line 2
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->E(I)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static h(ILcom/explorestack/protobuf/ByteString;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->i(Lcom/explorestack/protobuf/ByteString;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static h0(Ljava/io/OutputStream;)Lcom/explorestack/protobuf/CodedOutputStream;
    .locals 1

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->i0(Ljava/io/OutputStream;I)Lcom/explorestack/protobuf/CodedOutputStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static i(Lcom/explorestack/protobuf/ByteString;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->E(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static i0(Ljava/io/OutputStream;I)Lcom/explorestack/protobuf/CodedOutputStream;
    .locals 1

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/CodedOutputStream$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream$d;-><init>(Ljava/io/OutputStream;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static j(ID)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->k(D)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static j0([B)Lcom/explorestack/protobuf/CodedOutputStream;
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->k0([BII)Lcom/explorestack/protobuf/CodedOutputStream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static k(D)I
    .locals 0

    .line 1
    const/16 p0, 0x8

    .line 2
    .line 3
    return p0
.end method

.method public static k0([BII)Lcom/explorestack/protobuf/CodedOutputStream;
    .locals 1

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/CodedOutputStream$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream$c;-><init>([BII)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static l(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->m(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static m(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->y(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static n(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->o(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static o(I)I
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    return p0
.end method

.method public static p(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->q(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static q(J)I
    .locals 0

    .line 1
    const/16 p0, 0x8

    .line 2
    .line 3
    return p0
.end method

.method public static r(IF)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->s(F)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static s(F)I
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    return p0
.end method

.method public static t(ILcom/explorestack/protobuf/MessageLite;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    mul-int/lit8 p0, p0, 0x2

    .line 6
    .line 7
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->v(Lcom/explorestack/protobuf/MessageLite;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    add-int/2addr p0, p1

    .line 12
    return p0
.end method

.method static u(ILcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/q1;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    mul-int/lit8 p0, p0, 0x2

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->w(Lcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/q1;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    add-int/2addr p0, p1

    .line 12
    return p0
.end method

.method public static v(Lcom/explorestack/protobuf/MessageLite;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/explorestack/protobuf/MessageLite;->getSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static w(Lcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/q1;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    check-cast p0, Lcom/explorestack/protobuf/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/a;->getSerializedSize(Lcom/explorestack/protobuf/q1;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static x(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->y(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method

.method public static y(I)I
    .locals 0

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->Z(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    const/16 p0, 0xa

    .line 9
    .line 10
    return p0
.end method

.method public static z(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->X(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->A(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    return p0
.end method


# virtual methods
.method public abstract A0(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final B0(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->x0(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final C0(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->y0(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final D0(ILcom/explorestack/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->b1(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->F0(Lcom/explorestack/protobuf/MessageLite;)V

    .line 6
    .line 7
    .line 8
    const/4 p2, 0x4

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->b1(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method final E0(ILcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/q1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->b1(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->G0(Lcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/q1;)V

    .line 6
    .line 7
    .line 8
    const/4 p2, 0x4

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->b1(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final F0(Lcom/explorestack/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lcom/explorestack/protobuf/MessageLite;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method final G0(Lcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/q1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/CodedOutputStream;->a:Lcom/explorestack/protobuf/p;

    .line 2
    .line 3
    invoke-interface {p2, p1, v0}, Lcom/explorestack/protobuf/q1;->b(Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public abstract H0(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract I0(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final J0(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->e1(IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final K0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->f1(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public abstract L0(ILcom/explorestack/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract M0(ILcom/explorestack/protobuf/MessageLite;Lcom/explorestack/protobuf/q1;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract N0(Lcom/explorestack/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract O0(ILcom/explorestack/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract P0(ILcom/explorestack/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final Q0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final R0(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->x0(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final S0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->y0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final T0(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->z0(IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final U0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->A0(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final V0(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/explorestack/protobuf/CodedOutputStream;->c0(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final W0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->c0(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final X0(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->d0(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->e1(IJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final Y0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->d0(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->f1(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public abstract Z0(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a1(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b1(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c1(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/CodedOutputStream;->l0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "Did not write as much data as expected."

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public abstract d1(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract e0()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract e1(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final f0(Ljava/lang/String;Lcom/explorestack/protobuf/Utf8$UnpairedSurrogateException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/CodedOutputStream;->c:Ljava/util/logging/Logger;

    .line 2
    .line 3
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 4
    .line 5
    const-string v2, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    sget-object p2, Lcom/explorestack/protobuf/i0;->a:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :try_start_0
    array-length p2, p1

    .line 17
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->d1(I)V

    .line 18
    .line 19
    .line 20
    array-length p2, p1

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, v0, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->b([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/explorestack/protobuf/CodedOutputStream$OutOfSpaceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_0

    .line 28
    :catch_1
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :goto_0
    throw p1

    .line 31
    :goto_1
    new-instance p2, Lcom/explorestack/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 32
    .line 33
    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw p2
.end method

.method public abstract f1(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method g0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/CodedOutputStream;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract l0()I
.end method

.method public abstract m0(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract n0(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final o0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    int-to-byte p1, p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->m0(B)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final p0([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->q0([BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method abstract q0([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract r0(ILcom/explorestack/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract s0(Lcom/explorestack/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final t0(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/CodedOutputStream;->z0(IJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final u0(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->A0(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final v0(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/CodedOutputStream;->H0(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final w0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/CodedOutputStream;->I0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public abstract x0(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract y0(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract z0(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
