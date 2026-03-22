.class Lio/bidmachine/iab/view/CloseableLayout$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/view/CloseableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/view/CloseableLayout;


# direct methods
.method private constructor <init>(Lio/bidmachine/iab/view/CloseableLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->a:Lio/bidmachine/iab/view/CloseableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/iab/view/CloseableLayout;Lio/bidmachine/iab/view/CloseableLayout$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/iab/view/CloseableLayout$c;-><init>(Lio/bidmachine/iab/view/CloseableLayout;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->a:Lio/bidmachine/iab/view/CloseableLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/iab/view/CloseableLayout;->i(Lio/bidmachine/iab/view/CloseableLayout;)Lsm/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->a:Lio/bidmachine/iab/view/CloseableLayout;

    .line 11
    .line 12
    invoke-static {v0}, Lio/bidmachine/iab/view/CloseableLayout;->l(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$d;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lio/bidmachine/iab/view/CloseableLayout$d;->i(Lio/bidmachine/iab/view/CloseableLayout$d;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget-object v2, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->a:Lio/bidmachine/iab/view/CloseableLayout;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-wide/16 v3, 0x32

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    add-long/2addr v0, v3

    .line 31
    iget-object v2, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->a:Lio/bidmachine/iab/view/CloseableLayout;

    .line 32
    .line 33
    invoke-static {v2}, Lio/bidmachine/iab/view/CloseableLayout;->l(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$d;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2, v0, v1}, Lio/bidmachine/iab/view/CloseableLayout$d;->a(J)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->a:Lio/bidmachine/iab/view/CloseableLayout;

    .line 41
    .line 42
    invoke-static {v2}, Lio/bidmachine/iab/view/CloseableLayout;->i(Lio/bidmachine/iab/view/CloseableLayout;)Lsm/f;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-wide/16 v5, 0x64

    .line 47
    .line 48
    mul-long/2addr v5, v0

    .line 49
    iget-object v7, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->a:Lio/bidmachine/iab/view/CloseableLayout;

    .line 50
    .line 51
    invoke-static {v7}, Lio/bidmachine/iab/view/CloseableLayout;->l(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$d;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-static {v7}, Lio/bidmachine/iab/view/CloseableLayout$d;->k(Lio/bidmachine/iab/view/CloseableLayout$d;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v7

    .line 59
    div-long/2addr v5, v7

    .line 60
    long-to-int v5, v5

    .line 61
    iget-object v6, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->a:Lio/bidmachine/iab/view/CloseableLayout;

    .line 62
    .line 63
    invoke-static {v6}, Lio/bidmachine/iab/view/CloseableLayout;->l(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$d;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-static {v6}, Lio/bidmachine/iab/view/CloseableLayout$d;->k(Lio/bidmachine/iab/view/CloseableLayout$d;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v6

    .line 71
    sub-long/2addr v6, v0

    .line 72
    long-to-double v6, v6

    .line 73
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    div-double/2addr v6, v8

    .line 79
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 80
    .line 81
    .line 82
    move-result-wide v6

    .line 83
    double-to-int v6, v6

    .line 84
    invoke-virtual {v2, v5, v6}, Lsm/f;->r(II)V

    .line 85
    .line 86
    .line 87
    :cond_1
    iget-object v2, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->a:Lio/bidmachine/iab/view/CloseableLayout;

    .line 88
    .line 89
    invoke-static {v2}, Lio/bidmachine/iab/view/CloseableLayout;->l(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$d;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v2}, Lio/bidmachine/iab/view/CloseableLayout$d;->k(Lio/bidmachine/iab/view/CloseableLayout$d;)J

    .line 94
    .line 95
    .line 96
    move-result-wide v5

    .line 97
    cmp-long v0, v0, v5

    .line 98
    .line 99
    if-ltz v0, :cond_2

    .line 100
    .line 101
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->a:Lio/bidmachine/iab/view/CloseableLayout;

    .line 102
    .line 103
    invoke-static {v0}, Lio/bidmachine/iab/view/CloseableLayout;->f(Lio/bidmachine/iab/view/CloseableLayout;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->a:Lio/bidmachine/iab/view/CloseableLayout;

    .line 107
    .line 108
    invoke-static {v0}, Lio/bidmachine/iab/view/CloseableLayout;->l(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$d;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Lio/bidmachine/iab/view/CloseableLayout$d;->g(Lio/bidmachine/iab/view/CloseableLayout$d;)F

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    const/4 v1, 0x0

    .line 117
    cmpl-float v0, v0, v1

    .line 118
    .line 119
    if-lez v0, :cond_3

    .line 120
    .line 121
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->a:Lio/bidmachine/iab/view/CloseableLayout;

    .line 122
    .line 123
    invoke-static {v0}, Lio/bidmachine/iab/view/CloseableLayout;->g(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$a;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->a:Lio/bidmachine/iab/view/CloseableLayout;

    .line 130
    .line 131
    invoke-static {v0}, Lio/bidmachine/iab/view/CloseableLayout;->g(Lio/bidmachine/iab/view/CloseableLayout;)Lio/bidmachine/iab/view/CloseableLayout$a;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-interface {v0}, Lio/bidmachine/iab/view/CloseableLayout$a;->b()V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lio/bidmachine/iab/view/CloseableLayout$c;->a:Lio/bidmachine/iab/view/CloseableLayout;

    .line 140
    .line 141
    invoke-virtual {v0, p0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    .line 143
    .line 144
    :cond_3
    :goto_0
    return-void
.end method
