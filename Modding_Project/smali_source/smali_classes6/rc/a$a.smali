.class Lrc/a$a;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrc/a;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrc/a$c;

.field final synthetic b:Lrc/a;


# direct methods
.method constructor <init>(Lrc/a;Lrc/a$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrc/a$a;->b:Lrc/a;

    .line 2
    .line 3
    iput-object p2, p0, Lrc/a$a;->a:Lrc/a$c;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9

    .line 1
    iget-object p2, p0, Lrc/a$a;->b:Lrc/a;

    .line 2
    .line 3
    iget-boolean v0, p2, Lrc/a;->i:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lrc/a$a;->a:Lrc/a$c;

    .line 8
    .line 9
    invoke-virtual {p2, p1, v0}, Lrc/a;->a(FLrc/a$c;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lrc/a$a;->a:Lrc/a$c;

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Lrc/a;->c(Lrc/a$c;)F

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iget-object v0, p0, Lrc/a$a;->a:Lrc/a$c;

    .line 20
    .line 21
    iget v1, v0, Lrc/a$c;->l:F

    .line 22
    .line 23
    iget v2, v0, Lrc/a$c;->k:F

    .line 24
    .line 25
    iget v3, v0, Lrc/a$c;->m:F

    .line 26
    .line 27
    iget-object v4, p0, Lrc/a$a;->b:Lrc/a;

    .line 28
    .line 29
    invoke-virtual {v4, p1, v0}, Lrc/a;->l(FLrc/a$c;)V

    .line 30
    .line 31
    .line 32
    const/high16 v0, 0x3f000000    # 0.5f

    .line 33
    .line 34
    cmpg-float v4, p1, v0

    .line 35
    .line 36
    const v5, 0x3f4ccccd    # 0.8f

    .line 37
    .line 38
    .line 39
    if-gtz v4, :cond_1

    .line 40
    .line 41
    div-float v4, p1, v0

    .line 42
    .line 43
    iget-object v6, p0, Lrc/a$a;->a:Lrc/a$c;

    .line 44
    .line 45
    sub-float v7, v5, p2

    .line 46
    .line 47
    sget-object v8, Lrc/a;->l:Landroid/view/animation/Interpolator;

    .line 48
    .line 49
    invoke-interface {v8, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    mul-float/2addr v7, v4

    .line 54
    add-float/2addr v2, v7

    .line 55
    iput v2, v6, Lrc/a$c;->d:F

    .line 56
    .line 57
    :cond_1
    cmpl-float v2, p1, v0

    .line 58
    .line 59
    if-lez v2, :cond_2

    .line 60
    .line 61
    sub-float/2addr v5, p2

    .line 62
    sub-float p2, p1, v0

    .line 63
    .line 64
    div-float/2addr p2, v0

    .line 65
    iget-object v0, p0, Lrc/a$a;->a:Lrc/a$c;

    .line 66
    .line 67
    sget-object v2, Lrc/a;->l:Landroid/view/animation/Interpolator;

    .line 68
    .line 69
    invoke-interface {v2, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    mul-float/2addr v5, p2

    .line 74
    add-float/2addr v1, v5

    .line 75
    iput v1, v0, Lrc/a$c;->e:F

    .line 76
    .line 77
    :cond_2
    iget-object p2, p0, Lrc/a$a;->b:Lrc/a;

    .line 78
    .line 79
    const/high16 v0, 0x3e800000    # 0.25f

    .line 80
    .line 81
    mul-float/2addr v0, p1

    .line 82
    add-float/2addr v3, v0

    .line 83
    invoke-virtual {p2, v3}, Lrc/a;->f(F)V

    .line 84
    .line 85
    .line 86
    const/high16 p2, 0x43580000    # 216.0f

    .line 87
    .line 88
    mul-float/2addr p1, p2

    .line 89
    iget-object p2, p0, Lrc/a$a;->b:Lrc/a;

    .line 90
    .line 91
    iget v0, p2, Lrc/a;->f:F

    .line 92
    .line 93
    const/high16 v1, 0x40a00000    # 5.0f

    .line 94
    .line 95
    div-float/2addr v0, v1

    .line 96
    const/high16 v1, 0x44870000    # 1080.0f

    .line 97
    .line 98
    mul-float/2addr v0, v1

    .line 99
    add-float/2addr p1, v0

    .line 100
    invoke-virtual {p2, p1}, Lrc/a;->g(F)V

    .line 101
    .line 102
    .line 103
    :goto_0
    return-void
.end method
