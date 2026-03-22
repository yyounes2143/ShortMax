.class final Lt9/h;
.super Ljava/lang/Object;
.source "EncoderContext.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

.field private c:Lcom/google/zxing/a;

.field private d:Lcom/google/zxing/a;

.field private final e:Ljava/lang/StringBuilder;

.field f:I

.field private g:I

.field private h:Lt9/k;

.field private i:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    array-length v2, v0

    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 14
    .line 15
    .line 16
    array-length v2, v0

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-ge v3, v2, :cond_2

    .line 19
    .line 20
    aget-byte v4, v0, v3

    .line 21
    .line 22
    and-int/lit16 v4, v4, 0xff

    .line 23
    .line 24
    int-to-char v4, v4

    .line 25
    const/16 v5, 0x3f

    .line 26
    .line 27
    if-ne v4, v5, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-ne v6, v5, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string v0, "Message contains characters outside ISO-8859-1 encoding."

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_1
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lt9/h;->a:Ljava/lang/String;

    .line 55
    .line 56
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 57
    .line 58
    iput-object v0, p0, Lt9/h;->b:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lt9/h;->e:Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const/4 p1, -0x1

    .line 72
    iput p1, p0, Lt9/h;->g:I

    .line 73
    .line 74
    return-void
.end method

.method private h()I
    .locals 2

    .line 1
    iget-object v0, p0, Lt9/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lt9/h;->i:I

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lt9/h;->e:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public b()Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lt9/h;->e:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()C
    .locals 2

    .line 1
    iget-object v0, p0, Lt9/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lt9/h;->f:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lt9/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lt9/h;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public f()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lt9/h;->h()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lt9/h;->f:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public g()Lt9/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lt9/h;->h:Lt9/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Z
    .locals 2

    .line 1
    iget v0, p0, Lt9/h;->f:I

    .line 2
    .line 3
    invoke-direct {p0}, Lt9/h;->h()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public j()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lt9/h;->g:I

    .line 3
    .line 4
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lt9/h;->h:Lt9/k;

    .line 3
    .line 4
    return-void
.end method

.method public l(Lcom/google/zxing/a;Lcom/google/zxing/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt9/h;->c:Lcom/google/zxing/a;

    .line 2
    .line 3
    iput-object p2, p0, Lt9/h;->d:Lcom/google/zxing/a;

    .line 4
    .line 5
    return-void
.end method

.method public m(I)V
    .locals 0

    .line 1
    iput p1, p0, Lt9/h;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public n(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt9/h;->b:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 2
    .line 3
    return-void
.end method

.method public o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lt9/h;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lt9/h;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lt9/h;->q(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public q(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lt9/h;->h:Lt9/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lt9/k;->a()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-le p1, v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lt9/h;->b:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 12
    .line 13
    iget-object v1, p0, Lt9/h;->c:Lcom/google/zxing/a;

    .line 14
    .line 15
    iget-object v2, p0, Lt9/h;->d:Lcom/google/zxing/a;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-static {p1, v0, v1, v2, v3}, Lt9/k;->l(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/a;Lcom/google/zxing/a;Z)Lt9/k;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lt9/h;->h:Lt9/k;

    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public r(C)V
    .locals 1

    .line 1
    iget-object v0, p0, Lt9/h;->e:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lt9/h;->e:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    return-void
.end method
