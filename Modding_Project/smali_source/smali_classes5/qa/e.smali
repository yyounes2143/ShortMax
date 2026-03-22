.class public Lqa/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lqa/e;->g:I

    .line 6
    .line 7
    iput-object p1, p0, Lqa/e;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lqa/e;->b:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lqa/e;->c:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, Lqa/e;->d:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p5, p0, Lqa/e;->e:Ljava/lang/String;

    .line 16
    .line 17
    iput p6, p0, Lqa/e;->f:I

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    div-int/lit8 p1, p1, 0x2

    .line 26
    .line 27
    iput p1, p0, Lqa/e;->g:I

    .line 28
    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lqa/e;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    iget-object v0, p0, Lqa/e;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_4

    .line 17
    .line 18
    iget-object v0, p0, Lqa/e;->c:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_4

    .line 25
    .line 26
    iget-object v0, p0, Lqa/e;->d:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lqa/e;->a:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object v2, p0, Lqa/e;->b:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-ne v0, v2, :cond_4

    .line 48
    .line 49
    iget-object v0, p0, Lqa/e;->b:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iget-object v2, p0, Lqa/e;->c:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-ne v0, v2, :cond_4

    .line 62
    .line 63
    iget-object v0, p0, Lqa/e;->c:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iget v2, p0, Lqa/e;->g:I

    .line 70
    .line 71
    mul-int/lit8 v2, v2, 0x2

    .line 72
    .line 73
    if-eq v0, v2, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget v0, p0, Lqa/e;->f:I

    .line 77
    .line 78
    if-gez v0, :cond_2

    .line 79
    .line 80
    return v1

    .line 81
    :cond_2
    iget-object v0, p0, Lqa/e;->e:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    return v1

    .line 90
    :cond_3
    const/4 v0, 0x1

    .line 91
    return v0

    .line 92
    :cond_4
    :goto_0
    return v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lqa/e;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lqa/e;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lqa/e;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lqa/e;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lqa/e;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lqa/e;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lqa/e;->g:I

    .line 2
    .line 3
    return v0
.end method
