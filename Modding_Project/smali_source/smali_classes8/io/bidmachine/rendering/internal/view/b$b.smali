.class Lio/bidmachine/rendering/internal/view/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltp/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/rendering/internal/view/b;


# direct methods
.method private constructor <init>(Lio/bidmachine/rendering/internal/view/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/b$b;->a:Lio/bidmachine/rendering/internal/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/rendering/internal/view/b;Lio/bidmachine/rendering/internal/view/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/view/b$b;-><init>(Lio/bidmachine/rendering/internal/view/b;)V

    return-void
.end method


# virtual methods
.method public s()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b$b;->a:Lio/bidmachine/rendering/internal/view/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/b;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b$b;->a:Lio/bidmachine/rendering/internal/view/b;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/b$b;->a:Lio/bidmachine/rendering/internal/view/b;

    .line 24
    .line 25
    invoke-static {v1}, Lio/bidmachine/rendering/internal/view/b;->c(Lio/bidmachine/rendering/internal/view/b;)Lio/bidmachine/rendering/internal/view/b$c;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/view/b$c;->k()V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/b$b;->a:Lio/bidmachine/rendering/internal/view/b;

    .line 34
    .line 35
    invoke-static {v1}, Lio/bidmachine/rendering/internal/view/b;->c(Lio/bidmachine/rendering/internal/view/b;)Lio/bidmachine/rendering/internal/view/b$c;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/view/b$c;->j()V

    .line 40
    .line 41
    .line 42
    :goto_2
    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/b$b;->a:Lio/bidmachine/rendering/internal/view/b;

    .line 43
    .line 44
    invoke-static {v1}, Lio/bidmachine/rendering/internal/view/b;->c(Lio/bidmachine/rendering/internal/view/b;)Lio/bidmachine/rendering/internal/view/b$c;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/view/b$c;->c()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    iget-object v3, p0, Lio/bidmachine/rendering/internal/view/b$b;->a:Lio/bidmachine/rendering/internal/view/b;

    .line 53
    .line 54
    invoke-static {v3}, Lio/bidmachine/rendering/internal/view/b;->c(Lio/bidmachine/rendering/internal/view/b;)Lio/bidmachine/rendering/internal/view/b$c;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lio/bidmachine/rendering/internal/view/b$c;->d()J

    .line 59
    .line 60
    .line 61
    move-result-wide v3

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    long-to-float v0, v3

    .line 65
    const/high16 v5, 0x42c80000    # 100.0f

    .line 66
    .line 67
    mul-float/2addr v0, v5

    .line 68
    long-to-float v5, v1

    .line 69
    div-float/2addr v0, v5

    .line 70
    sub-long/2addr v1, v3

    .line 71
    long-to-double v1, v1

    .line 72
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    div-double/2addr v1, v3

    .line 78
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 79
    .line 80
    .line 81
    move-result-wide v1

    .line 82
    double-to-int v1, v1

    .line 83
    iget-object v2, p0, Lio/bidmachine/rendering/internal/view/b$b;->a:Lio/bidmachine/rendering/internal/view/b;

    .line 84
    .line 85
    invoke-virtual {v2, v0, v1}, Lio/bidmachine/rendering/internal/view/b;->e(FI)V

    .line 86
    .line 87
    .line 88
    :cond_3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b$b;->a:Lio/bidmachine/rendering/internal/view/b;

    .line 89
    .line 90
    invoke-static {v0}, Lio/bidmachine/rendering/internal/view/b;->c(Lio/bidmachine/rendering/internal/view/b;)Lio/bidmachine/rendering/internal/view/b$c;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/b$c;->f()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/b$b;->a:Lio/bidmachine/rendering/internal/view/b;

    .line 101
    .line 102
    invoke-static {v0}, Lio/bidmachine/rendering/internal/view/b;->j(Lio/bidmachine/rendering/internal/view/b;)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    const-wide/16 v0, 0x10

    .line 107
    .line 108
    invoke-static {p0, v0, v1}, Lsq/j;->l(Ljava/lang/Runnable;J)V

    .line 109
    .line 110
    .line 111
    :goto_3
    return-void
.end method
