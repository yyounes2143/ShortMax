.class Lsm/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsm/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsm/n;


# direct methods
.method constructor <init>(Lsm/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsm/n$c;->a:Lsm/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lsm/n$c;->a:Lsm/n;

    .line 2
    .line 3
    invoke-static {v0}, Lsm/n;->e(Lsm/n;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lsm/n$c;->a:Lsm/n;

    .line 8
    .line 9
    invoke-static {v2}, Lsm/n;->f(Lsm/n;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const-wide/16 v3, 0x10

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lsm/n$c;->a:Lsm/n;

    .line 22
    .line 23
    invoke-static {v2}, Lsm/n;->g(Lsm/n;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    add-long/2addr v0, v3

    .line 28
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iget-object v2, p0, Lsm/n$c;->a:Lsm/n;

    .line 33
    .line 34
    invoke-static {v2, v0, v1}, Lsm/n;->d(Lsm/n;J)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lsm/n$c;->a:Lsm/n;

    .line 38
    .line 39
    invoke-static {v2}, Lsm/n;->e(Lsm/n;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    long-to-float v2, v5

    .line 44
    const/high16 v5, 0x42c80000    # 100.0f

    .line 45
    .line 46
    mul-float/2addr v2, v5

    .line 47
    iget-object v5, p0, Lsm/n$c;->a:Lsm/n;

    .line 48
    .line 49
    invoke-static {v5}, Lsm/n;->g(Lsm/n;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    long-to-float v5, v5

    .line 54
    div-float v7, v2, v5

    .line 55
    .line 56
    iget-object v2, p0, Lsm/n$c;->a:Lsm/n;

    .line 57
    .line 58
    invoke-static {v2}, Lsm/n;->i(Lsm/n;)Lsm/n$a;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    iget-object v2, p0, Lsm/n$c;->a:Lsm/n;

    .line 63
    .line 64
    invoke-static {v2}, Lsm/n;->e(Lsm/n;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v8

    .line 68
    iget-object v2, p0, Lsm/n$c;->a:Lsm/n;

    .line 69
    .line 70
    invoke-static {v2}, Lsm/n;->g(Lsm/n;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v10

    .line 74
    invoke-interface/range {v6 .. v11}, Lsm/n$a;->a(FJJ)V

    .line 75
    .line 76
    .line 77
    :cond_0
    iget-object v2, p0, Lsm/n$c;->a:Lsm/n;

    .line 78
    .line 79
    invoke-static {v2}, Lsm/n;->g(Lsm/n;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    cmp-long v0, v0, v5

    .line 84
    .line 85
    if-ltz v0, :cond_1

    .line 86
    .line 87
    iget-object v0, p0, Lsm/n$c;->a:Lsm/n;

    .line 88
    .line 89
    invoke-static {v0}, Lsm/n;->i(Lsm/n;)Lsm/n$a;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0}, Lsm/n$a;->b()V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lsm/n$c;->a:Lsm/n;

    .line 98
    .line 99
    invoke-static {v0}, Lsm/n;->f(Lsm/n;)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0, p0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    .line 105
    .line 106
    :goto_0
    return-void
.end method
