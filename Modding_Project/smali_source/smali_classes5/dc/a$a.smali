.class Ldc/a$a;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/a;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldc/a$d;

.field final synthetic b:Ldc/a;


# direct methods
.method constructor <init>(Ldc/a;Ldc/a$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldc/a$a;->b:Ldc/a;

    .line 2
    .line 3
    iput-object p2, p0, Ldc/a$a;->a:Ldc/a$d;

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
    .locals 8

    .line 1
    iget-object p2, p0, Ldc/a$a;->b:Ldc/a;

    .line 2
    .line 3
    iget-boolean v0, p2, Ldc/a;->k:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Ldc/a$a;->a:Ldc/a$d;

    .line 8
    .line 9
    invoke-static {p2, p1, v0}, Ldc/a;->a(Ldc/a;FLdc/a$d;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Ldc/a$a;->a:Ldc/a$d;

    .line 14
    .line 15
    invoke-static {p2, v0}, Ldc/a;->b(Ldc/a;Ldc/a$d;)F

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iget-object v0, p0, Ldc/a$a;->a:Ldc/a$d;

    .line 20
    .line 21
    invoke-virtual {v0}, Ldc/a$d;->j()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Ldc/a$a;->a:Ldc/a$d;

    .line 26
    .line 27
    invoke-virtual {v1}, Ldc/a$d;->l()F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Ldc/a$a;->a:Ldc/a$d;

    .line 32
    .line 33
    invoke-virtual {v2}, Ldc/a$d;->k()F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget-object v3, p0, Ldc/a$a;->b:Ldc/a;

    .line 38
    .line 39
    iget-object v4, p0, Ldc/a$a;->a:Ldc/a$d;

    .line 40
    .line 41
    invoke-static {v3, p1, v4}, Ldc/a;->c(Ldc/a;FLdc/a$d;)V

    .line 42
    .line 43
    .line 44
    const/high16 v3, 0x3f000000    # 0.5f

    .line 45
    .line 46
    cmpg-float v4, p1, v3

    .line 47
    .line 48
    const v5, 0x3f4ccccd    # 0.8f

    .line 49
    .line 50
    .line 51
    if-gtz v4, :cond_1

    .line 52
    .line 53
    div-float v4, p1, v3

    .line 54
    .line 55
    sub-float v6, v5, p2

    .line 56
    .line 57
    invoke-static {}, Ldc/a;->d()Landroid/view/animation/Interpolator;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-interface {v7, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    mul-float/2addr v6, v4

    .line 66
    add-float/2addr v1, v6

    .line 67
    iget-object v4, p0, Ldc/a$a;->a:Ldc/a$d;

    .line 68
    .line 69
    invoke-virtual {v4, v1}, Ldc/a$d;->D(F)V

    .line 70
    .line 71
    .line 72
    :cond_1
    cmpl-float v1, p1, v3

    .line 73
    .line 74
    if-lez v1, :cond_2

    .line 75
    .line 76
    sub-float/2addr v5, p2

    .line 77
    sub-float p2, p1, v3

    .line 78
    .line 79
    div-float/2addr p2, v3

    .line 80
    invoke-static {}, Ldc/a;->d()Landroid/view/animation/Interpolator;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-interface {v1, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    mul-float/2addr v5, p2

    .line 89
    add-float/2addr v0, v5

    .line 90
    iget-object p2, p0, Ldc/a$a;->a:Ldc/a$d;

    .line 91
    .line 92
    invoke-virtual {p2, v0}, Ldc/a$d;->z(F)V

    .line 93
    .line 94
    .line 95
    :cond_2
    const/high16 p2, 0x3e800000    # 0.25f

    .line 96
    .line 97
    mul-float/2addr p2, p1

    .line 98
    add-float/2addr v2, p2

    .line 99
    iget-object p2, p0, Ldc/a$a;->a:Ldc/a$d;

    .line 100
    .line 101
    invoke-virtual {p2, v2}, Ldc/a$d;->B(F)V

    .line 102
    .line 103
    .line 104
    const/high16 p2, 0x43580000    # 216.0f

    .line 105
    .line 106
    mul-float/2addr p1, p2

    .line 107
    iget-object p2, p0, Ldc/a$a;->b:Ldc/a;

    .line 108
    .line 109
    invoke-static {p2}, Ldc/a;->e(Ldc/a;)F

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    const/high16 v0, 0x40a00000    # 5.0f

    .line 114
    .line 115
    div-float/2addr p2, v0

    .line 116
    const/high16 v0, 0x44870000    # 1080.0f

    .line 117
    .line 118
    mul-float/2addr p2, v0

    .line 119
    add-float/2addr p1, p2

    .line 120
    iget-object p2, p0, Ldc/a$a;->b:Ldc/a;

    .line 121
    .line 122
    invoke-virtual {p2, p1}, Ldc/a;->n(F)V

    .line 123
    .line 124
    .line 125
    :goto_0
    return-void
.end method
