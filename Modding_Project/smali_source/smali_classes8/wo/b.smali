.class final Lwo/b;
.super Lwo/i;
.source "FlacReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwo/b$a;
    }
.end annotation


# instance fields
.field private n:Lao/y;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Lwo/b$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lwo/i;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private n(Lcn/b0;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcn/b0;->e()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    and-int/lit16 v0, v0, 0xff

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    shr-int/2addr v0, v1

    .line 12
    const/4 v2, 0x6

    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x7

    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1, v1}, Lcn/b0;->X(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcn/b0;->Q()J

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-static {p1, v0}, Lao/v;->j(Lcn/b0;I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v1}, Lcn/b0;->W(I)V

    .line 30
    .line 31
    .line 32
    return v0
.end method

.method private static o([B)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte p0, p0, v0

    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    if-ne p0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    :cond_0
    return v0
.end method

.method public static p(Lcn/b0;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/b0;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcn/b0;->H()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x7f

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcn/b0;->J()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide/32 v2, 0x464c4143

    .line 21
    .line 22
    .line 23
    cmp-long p0, v0, v2

    .line 24
    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method


# virtual methods
.method protected f(Lcn/b0;)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcn/b0;->e()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lwo/b;->o([B)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    return-wide v0

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Lwo/b;->n(Lcn/b0;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    int-to-long v0, p1

    .line 19
    return-wide v0
.end method

.method protected i(Lcn/b0;JLwo/i$b;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcn/b0;->e()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lwo/b;->n:Lao/y;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance p2, Lao/y;

    .line 11
    .line 12
    const/16 p3, 0x11

    .line 13
    .line 14
    invoke-direct {p2, v0, p3}, Lao/y;-><init>([BI)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lwo/b;->n:Lao/y;

    .line 18
    .line 19
    const/16 p3, 0x9

    .line 20
    .line 21
    invoke-virtual {p1}, Lcn/b0;->g()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {v0, p3, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 p3, 0x0

    .line 30
    invoke-virtual {p2, p1, p3}, Lao/y;->g([BLzm/t;)Lio/bidmachine/media3/common/a;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lio/bidmachine/media3/common/a;->b()Lio/bidmachine/media3/common/a$b;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string p2, "audio/ogg"

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/a$b;->U(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p4, Lwo/i$b;->a:Lio/bidmachine/media3/common/a;

    .line 49
    .line 50
    return v2

    .line 51
    :cond_0
    const/4 v3, 0x0

    .line 52
    aget-byte v4, v0, v3

    .line 53
    .line 54
    and-int/lit8 v4, v4, 0x7f

    .line 55
    .line 56
    const/4 v5, 0x3

    .line 57
    if-ne v4, v5, :cond_1

    .line 58
    .line 59
    invoke-static {p1}, Lao/w;->g(Lcn/b0;)Lao/y$a;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v1, p1}, Lao/y;->b(Lao/y$a;)Lao/y;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    iput-object p2, p0, Lwo/b;->n:Lao/y;

    .line 68
    .line 69
    new-instance p3, Lwo/b$a;

    .line 70
    .line 71
    invoke-direct {p3, p2, p1}, Lwo/b$a;-><init>(Lao/y;Lao/y$a;)V

    .line 72
    .line 73
    .line 74
    iput-object p3, p0, Lwo/b;->o:Lwo/b$a;

    .line 75
    .line 76
    return v2

    .line 77
    :cond_1
    invoke-static {v0}, Lwo/b;->o([B)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    iget-object p1, p0, Lwo/b;->o:Lwo/b$a;

    .line 84
    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    invoke-virtual {p1, p2, p3}, Lwo/b$a;->b(J)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lwo/b;->o:Lwo/b$a;

    .line 91
    .line 92
    iput-object p1, p4, Lwo/i$b;->b:Lwo/g;

    .line 93
    .line 94
    :cond_2
    iget-object p1, p4, Lwo/i$b;->a:Lio/bidmachine/media3/common/a;

    .line 95
    .line 96
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    return v3

    .line 100
    :cond_3
    return v2
.end method

.method protected l(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lwo/i;->l(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lwo/b;->n:Lao/y;

    .line 8
    .line 9
    iput-object p1, p0, Lwo/b;->o:Lwo/b$a;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
