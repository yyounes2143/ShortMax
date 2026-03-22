.class Lio/bidmachine/iab/vast/activity/VastView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/vast/activity/VastView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IIF)V
    .locals 6

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    iget-object p3, p1, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$B;

    .line 4
    .line 5
    iget-boolean v0, p3, Lio/bidmachine/iab/vast/activity/VastView$B;->i:Z

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget p3, p3, Lio/bidmachine/iab/vast/activity/VastView$B;->b:F

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    cmpl-float p3, p3, v0

    .line 13
    .line 14
    if-eqz p3, :cond_2

    .line 15
    .line 16
    iget-object p3, p1, Lio/bidmachine/iab/vast/activity/VastView;->t:Lio/bidmachine/iab/vast/a;

    .line 17
    .line 18
    invoke-static {p1, p3}, Lio/bidmachine/iab/vast/activity/VastView;->F(Lio/bidmachine/iab/vast/activity/VastView;Lio/bidmachine/iab/vast/a;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 26
    .line 27
    iget-object p3, p1, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$B;

    .line 28
    .line 29
    iget p3, p3, Lio/bidmachine/iab/vast/activity/VastView$B;->b:F

    .line 30
    .line 31
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 32
    .line 33
    mul-float/2addr p3, v1

    .line 34
    int-to-float p2, p2

    .line 35
    sub-float v1, p3, p2

    .line 36
    .line 37
    const/high16 v2, 0x42c80000    # 100.0f

    .line 38
    .line 39
    mul-float/2addr p2, v2

    .line 40
    div-float/2addr p2, p3

    .line 41
    float-to-int p2, p2

    .line 42
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->k0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    const-string v2, "Skip percent: %s"

    .line 55
    .line 56
    invoke-static {p1, v2, p3}, Ltm/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const/16 p1, 0x64

    .line 60
    .line 61
    if-ge p2, p1, :cond_1

    .line 62
    .line 63
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 64
    .line 65
    iget-object p1, p1, Lio/bidmachine/iab/vast/activity/VastView;->h:Lsm/f;

    .line 66
    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    float-to-double v2, v1

    .line 70
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    div-double/2addr v2, v4

    .line 76
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    double-to-int p3, v2

    .line 81
    invoke-virtual {p1, p2, p3}, Lsm/f;->r(II)V

    .line 82
    .line 83
    .line 84
    :cond_1
    cmpg-float p1, v1, v0

    .line 85
    .line 86
    if-gtz p1, :cond_2

    .line 87
    .line 88
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$e;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 89
    .line 90
    iget-object p2, p1, Lio/bidmachine/iab/vast/activity/VastView;->u:Lio/bidmachine/iab/vast/activity/VastView$B;

    .line 91
    .line 92
    iput v0, p2, Lio/bidmachine/iab/vast/activity/VastView$B;->b:F

    .line 93
    .line 94
    const/4 p3, 0x1

    .line 95
    iput-boolean p3, p2, Lio/bidmachine/iab/vast/activity/VastView$B;->i:Z

    .line 96
    .line 97
    invoke-static {p1, p3}, Lio/bidmachine/iab/vast/activity/VastView;->u(Lio/bidmachine/iab/vast/activity/VastView;Z)V

    .line 98
    .line 99
    .line 100
    :cond_2
    :goto_0
    return-void
.end method
