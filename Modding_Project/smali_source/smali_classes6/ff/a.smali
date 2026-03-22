.class public final Lff/a;
.super Ljava/lang/Object;
.source "TopSlideTouchHandler.kt"

# interfaces
.implements Lef/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ldf/e;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Ldf/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "manager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "view"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "event"

    .line 13
    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-eqz v0, :cond_5

    .line 23
    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    if-eq v0, v2, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    float-to-int v0, v0

    .line 35
    iget v2, p0, Lff/a;->a:I

    .line 36
    .line 37
    sub-int/2addr v0, v2

    .line 38
    invoke-virtual {p1}, Ldf/e;->l()Ldf/e$b;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Ldf/e$b;->d()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    add-int/2addr v0, v2

    .line 47
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    float-to-int p3, p3

    .line 52
    iget v2, p0, Lff/a;->a:I

    .line 53
    .line 54
    sub-int/2addr p3, v2

    .line 55
    if-lez p3, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1}, Ldf/e;->l()Ldf/e$b;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ldf/e$b;->d()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    int-to-float p1, p1

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    int-to-float p1, v0

    .line 68
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setY(F)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    float-to-int p3, p3

    .line 77
    iget v0, p0, Lff/a;->a:I

    .line 78
    .line 79
    sub-int/2addr p3, v0

    .line 80
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    div-int/lit8 v0, v0, 0x3

    .line 85
    .line 86
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-lt v2, v0, :cond_3

    .line 91
    .line 92
    invoke-virtual {p1}, Ldf/e;->k()V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {p1}, Ldf/e;->l()Ldf/e$b;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ldf/e$b;->d()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    int-to-float v0, v0

    .line 105
    invoke-virtual {p2, v0}, Landroid/view/View;->setY(F)V

    .line 106
    .line 107
    .line 108
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    const/16 p3, 0xa

    .line 113
    .line 114
    if-gt p2, p3, :cond_4

    .line 115
    .line 116
    invoke-virtual {p1}, Ldf/e;->k()V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    invoke-virtual {p1}, Ldf/e;->p()V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_5
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    float-to-int p2, p2

    .line 129
    iput p2, p0, Lff/a;->a:I

    .line 130
    .line 131
    invoke-virtual {p1}, Ldf/e;->m()V

    .line 132
    .line 133
    .line 134
    :goto_1
    return v1
.end method

.method public final b(Lff/a$a;)V
    .locals 0
    .param p1    # Lff/a$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method
