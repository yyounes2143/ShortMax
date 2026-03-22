.class Lw3/a$a;
.super Ljava/lang/Object;
.source "DefaultImageDecoder.java"

# interfaces
.implements Lw3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lw3/a;


# direct methods
.method constructor <init>(Lw3/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw3/a$a;->a:Lw3/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public decode(Ly3/k;ILy3/p;Ls3/d;)Ly3/e;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ly3/k;->q()Lcom/facebook/imageformat/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lw3/a$a;->a:Lw3/a;

    .line 6
    .line 7
    invoke-static {v1}, Lw3/a;->a(Lw3/a;)Lk2/k;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Lk2/k;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p4, Ls3/d;->k:Landroid/graphics/ColorSpace;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Ly3/k;->o()Landroid/graphics/ColorSpace;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_0
    :goto_0
    move-object v7, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v1, p4, Ls3/d;->k:Landroid/graphics/ColorSpace;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :goto_1
    sget-object v1, Lcom/facebook/imageformat/b;->b:Lcom/facebook/imageformat/c;

    .line 37
    .line 38
    if-ne v0, v1, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lw3/a$a;->a:Lw3/a;

    .line 41
    .line 42
    move-object v3, p1

    .line 43
    move v4, p2

    .line 44
    move-object v5, p3

    .line 45
    move-object v6, p4

    .line 46
    invoke-virtual/range {v2 .. v7}, Lw3/a;->e(Ly3/k;ILy3/p;Ls3/d;Landroid/graphics/ColorSpace;)Ly3/f;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_2
    sget-object v1, Lcom/facebook/imageformat/b;->d:Lcom/facebook/imageformat/c;

    .line 52
    .line 53
    if-ne v0, v1, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lw3/a$a;->a:Lw3/a;

    .line 56
    .line 57
    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/a;->d(Ly3/k;ILy3/p;Ls3/d;)Ly3/e;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :cond_3
    sget-object v1, Lcom/facebook/imageformat/b;->k:Lcom/facebook/imageformat/c;

    .line 63
    .line 64
    if-ne v0, v1, :cond_4

    .line 65
    .line 66
    iget-object v0, p0, Lw3/a$a;->a:Lw3/a;

    .line 67
    .line 68
    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/a;->c(Ly3/k;ILy3/p;Ls3/d;)Ly3/e;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    :cond_4
    sget-object v1, Lcom/facebook/imageformat/b;->n:Lcom/facebook/imageformat/c;

    .line 74
    .line 75
    if-ne v0, v1, :cond_5

    .line 76
    .line 77
    iget-object v0, p0, Lw3/a$a;->a:Lw3/a;

    .line 78
    .line 79
    invoke-static {v0, p1, p2, p3, p4}, Lw3/a;->b(Lw3/a;Ly3/k;ILy3/p;Ls3/d;)Ly3/e;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :cond_5
    sget-object p2, Lcom/facebook/imageformat/c;->d:Lcom/facebook/imageformat/c;

    .line 85
    .line 86
    if-eq v0, p2, :cond_6

    .line 87
    .line 88
    iget-object p2, p0, Lw3/a$a;->a:Lw3/a;

    .line 89
    .line 90
    invoke-virtual {p2, p1, p4}, Lw3/a;->f(Ly3/k;Ls3/d;)Ly3/f;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
    :cond_6
    new-instance p2, Lcom/facebook/imagepipeline/decoder/DecodeException;

    .line 96
    .line 97
    const-string p3, "unknown image format"

    .line 98
    .line 99
    invoke-direct {p2, p3, p1}, Lcom/facebook/imagepipeline/decoder/DecodeException;-><init>(Ljava/lang/String;Ly3/k;)V

    .line 100
    .line 101
    .line 102
    throw p2
.end method
