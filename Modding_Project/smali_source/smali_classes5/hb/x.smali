.class public Lhb/x;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:[B

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lhb/x;->a:[B

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lhb/x;->b:I

    .line 9
    .line 10
    new-array p1, p1, [B

    .line 11
    .line 12
    iput-object p1, p0, Lhb/x;->a:[B

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a([BI)V
    .locals 4

    .line 1
    if-gtz p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lhb/x;->a:[B

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    iget v2, p0, Lhb/x;->b:I

    .line 8
    .line 9
    sub-int/2addr v1, v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-lt v1, p2, :cond_1

    .line 12
    .line 13
    invoke-static {p1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    array-length v1, v0

    .line 18
    add-int/2addr v1, p2

    .line 19
    shl-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    new-array v1, v1, [B

    .line 22
    .line 23
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Lhb/x;->b:I

    .line 27
    .line 28
    invoke-static {p1, v3, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lhb/x;->a:[B

    .line 32
    .line 33
    :goto_0
    iget p1, p0, Lhb/x;->b:I

    .line 34
    .line 35
    add-int/2addr p1, p2

    .line 36
    iput p1, p0, Lhb/x;->b:I

    .line 37
    .line 38
    return-void
.end method

.method public b()[B
    .locals 4

    .line 1
    iget v0, p0, Lhb/x;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-gtz v0, :cond_0

    .line 5
    .line 6
    new-array v0, v1, [B

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-array v2, v0, [B

    .line 10
    .line 11
    iget-object v3, p0, Lhb/x;->a:[B

    .line 12
    .line 13
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    return-object v2
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lhb/x;->b:I

    .line 2
    .line 3
    return v0
.end method
