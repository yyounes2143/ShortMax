.class public final Lio/bidmachine/analytics/internal/x$a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/x$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>(IIIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lio/bidmachine/analytics/internal/x$a$b;->a:I

    .line 5
    .line 6
    iput p2, p0, Lio/bidmachine/analytics/internal/x$a$b;->b:I

    .line 7
    .line 8
    iput p3, p0, Lio/bidmachine/analytics/internal/x$a$b;->c:I

    .line 9
    .line 10
    iput p4, p0, Lio/bidmachine/analytics/internal/x$a$b;->d:I

    .line 11
    .line 12
    iput p5, p0, Lio/bidmachine/analytics/internal/x$a$b;->e:I

    .line 13
    .line 14
    iput p6, p0, Lio/bidmachine/analytics/internal/x$a$b;->f:I

    .line 15
    .line 16
    iput p7, p0, Lio/bidmachine/analytics/internal/x$a$b;->g:I

    .line 17
    .line 18
    iput p8, p0, Lio/bidmachine/analytics/internal/x$a$b;->h:I

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/analytics/internal/x$a$b;IIIIIIIIILjava/lang/Object;)Lio/bidmachine/analytics/internal/x$a$b;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 2
    iget v2, v0, Lio/bidmachine/analytics/internal/x$a$b;->a:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lio/bidmachine/analytics/internal/x$a$b;->b:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lio/bidmachine/analytics/internal/x$a$b;->c:I

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lio/bidmachine/analytics/internal/x$a$b;->d:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lio/bidmachine/analytics/internal/x$a$b;->e:I

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lio/bidmachine/analytics/internal/x$a$b;->f:I

    goto :goto_5

    :cond_5
    move v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lio/bidmachine/analytics/internal/x$a$b;->g:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget v1, v0, Lio/bidmachine/analytics/internal/x$a$b;->h:I

    goto :goto_7

    :cond_7
    move/from16 v1, p8

    :goto_7
    move p1, v2

    move p2, v3

    move p3, v4

    move p4, v5

    move p5, v6

    move p6, v7

    move/from16 p7, v8

    move/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lio/bidmachine/analytics/internal/x$a$b;->a(IIIIIIII)Lio/bidmachine/analytics/internal/x$a$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 3
    iget v0, p0, Lio/bidmachine/analytics/internal/x$a$b;->d:I

    return v0
.end method

.method public final a(IIIIIIII)Lio/bidmachine/analytics/internal/x$a$b;
    .locals 10

    .line 1
    new-instance v9, Lio/bidmachine/analytics/internal/x$a$b;

    move-object v0, v9

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lio/bidmachine/analytics/internal/x$a$b;-><init>(IIIIIIII)V

    return-object v9
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/analytics/internal/x$a$b;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/analytics/internal/x$a$b;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/analytics/internal/x$a$b;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/analytics/internal/x$a$b;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lio/bidmachine/analytics/internal/x$a$b;

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
    check-cast p1, Lio/bidmachine/analytics/internal/x$a$b;

    .line 12
    .line 13
    iget v1, p0, Lio/bidmachine/analytics/internal/x$a$b;->a:I

    .line 14
    .line 15
    iget v3, p1, Lio/bidmachine/analytics/internal/x$a$b;->a:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lio/bidmachine/analytics/internal/x$a$b;->b:I

    .line 21
    .line 22
    iget v3, p1, Lio/bidmachine/analytics/internal/x$a$b;->b:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lio/bidmachine/analytics/internal/x$a$b;->c:I

    .line 28
    .line 29
    iget v3, p1, Lio/bidmachine/analytics/internal/x$a$b;->c:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget v1, p0, Lio/bidmachine/analytics/internal/x$a$b;->d:I

    .line 35
    .line 36
    iget v3, p1, Lio/bidmachine/analytics/internal/x$a$b;->d:I

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget v1, p0, Lio/bidmachine/analytics/internal/x$a$b;->e:I

    .line 42
    .line 43
    iget v3, p1, Lio/bidmachine/analytics/internal/x$a$b;->e:I

    .line 44
    .line 45
    if-eq v1, v3, :cond_6

    .line 46
    .line 47
    return v2

    .line 48
    :cond_6
    iget v1, p0, Lio/bidmachine/analytics/internal/x$a$b;->f:I

    .line 49
    .line 50
    iget v3, p1, Lio/bidmachine/analytics/internal/x$a$b;->f:I

    .line 51
    .line 52
    if-eq v1, v3, :cond_7

    .line 53
    .line 54
    return v2

    .line 55
    :cond_7
    iget v1, p0, Lio/bidmachine/analytics/internal/x$a$b;->g:I

    .line 56
    .line 57
    iget v3, p1, Lio/bidmachine/analytics/internal/x$a$b;->g:I

    .line 58
    .line 59
    if-eq v1, v3, :cond_8

    .line 60
    .line 61
    return v2

    .line 62
    :cond_8
    iget v1, p0, Lio/bidmachine/analytics/internal/x$a$b;->h:I

    .line 63
    .line 64
    iget p1, p1, Lio/bidmachine/analytics/internal/x$a$b;->h:I

    .line 65
    .line 66
    if-eq v1, p1, :cond_9

    .line 67
    .line 68
    return v2

    .line 69
    :cond_9
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/analytics/internal/x$a$b;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/analytics/internal/x$a$b;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/analytics/internal/x$a$b;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/analytics/internal/x$a$b;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lio/bidmachine/analytics/internal/x$a$b;->b:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget v1, p0, Lio/bidmachine/analytics/internal/x$a$b;->c:I

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget v1, p0, Lio/bidmachine/analytics/internal/x$a$b;->d:I

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget v1, p0, Lio/bidmachine/analytics/internal/x$a$b;->e:I

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget v1, p0, Lio/bidmachine/analytics/internal/x$a$b;->f:I

    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget v1, p0, Lio/bidmachine/analytics/internal/x$a$b;->g:I

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget v1, p0, Lio/bidmachine/analytics/internal/x$a$b;->h:I

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
