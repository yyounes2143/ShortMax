.class public Lio/bidmachine/iab/vast/activity/VastActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lio/bidmachine/iab/vast/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Ltm/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lio/bidmachine/iab/vast/activity/VastView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Lio/bidmachine/iab/vast/VastPlaybackListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lio/bidmachine/iab/measurer/VastAdMeasurer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lio/bidmachine/iab/measurer/MraidAdMeasurer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


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
.method a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/iab/vast/activity/VastActivity;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    instance-of p1, p1, Landroid/app/Activity;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/high16 p1, 0x10000000

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object v0
.end method

.method public b(Landroid/content/Context;)Lqm/a;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity$a;->a:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    const-string v1, "VastActivity"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v0, "VastRequest is null"

    .line 11
    .line 12
    invoke-static {v1, v0, p1}, Ltm/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lqm/a;->f(Ljava/lang/String;)Lqm/a;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :try_start_0
    invoke-static {v0}, Ltm/f;->b(Lio/bidmachine/iab/vast/a;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastActivity$a;->a(Landroid/content/Context;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v3, "vast_request_id"

    .line 29
    .line 30
    iget-object v4, p0, Lio/bidmachine/iab/vast/activity/VastActivity$a;->a:Lio/bidmachine/iab/vast/a;

    .line 31
    .line 32
    invoke-virtual {v4}, Lio/bidmachine/iab/vast/a;->H()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastActivity$a;->b:Ltm/a;

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    iget-object v4, p0, Lio/bidmachine/iab/vast/activity/VastActivity$a;->a:Lio/bidmachine/iab/vast/a;

    .line 44
    .line 45
    invoke-static {v4, v3}, Lio/bidmachine/iab/vast/activity/VastActivity;->k(Lio/bidmachine/iab/vast/a;Ltm/a;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_4

    .line 51
    :cond_1
    :goto_0
    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastActivity$a;->c:Lio/bidmachine/iab/vast/activity/VastView;

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    iget-object v4, p0, Lio/bidmachine/iab/vast/activity/VastActivity$a;->a:Lio/bidmachine/iab/vast/a;

    .line 56
    .line 57
    invoke-static {v4, v3}, Lio/bidmachine/iab/vast/activity/VastActivity;->i(Lio/bidmachine/iab/vast/a;Lio/bidmachine/iab/vast/activity/VastView;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastActivity$a;->d:Lio/bidmachine/iab/vast/VastPlaybackListener;

    .line 61
    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 65
    .line 66
    iget-object v4, p0, Lio/bidmachine/iab/vast/activity/VastActivity$a;->d:Lio/bidmachine/iab/vast/VastPlaybackListener;

    .line 67
    .line 68
    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v3}, Lio/bidmachine/iab/vast/activity/VastActivity;->e(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    invoke-static {v2}, Lio/bidmachine/iab/vast/activity/VastActivity;->e(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 76
    .line 77
    .line 78
    :goto_1
    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastActivity$a;->e:Lio/bidmachine/iab/measurer/VastAdMeasurer;

    .line 79
    .line 80
    if-eqz v3, :cond_4

    .line 81
    .line 82
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 83
    .line 84
    iget-object v4, p0, Lio/bidmachine/iab/vast/activity/VastActivity$a;->e:Lio/bidmachine/iab/measurer/VastAdMeasurer;

    .line 85
    .line 86
    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v3}, Lio/bidmachine/iab/vast/activity/VastActivity;->q(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    invoke-static {v2}, Lio/bidmachine/iab/vast/activity/VastActivity;->q(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 94
    .line 95
    .line 96
    :goto_2
    iget-object v3, p0, Lio/bidmachine/iab/vast/activity/VastActivity$a;->f:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 97
    .line 98
    if-eqz v3, :cond_5

    .line 99
    .line 100
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 101
    .line 102
    iget-object v4, p0, Lio/bidmachine/iab/vast/activity/VastActivity$a;->f:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 103
    .line 104
    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v3}, Lio/bidmachine/iab/vast/activity/VastActivity;->v(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    invoke-static {v2}, Lio/bidmachine/iab/vast/activity/VastActivity;->v(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 112
    .line 113
    .line 114
    :goto_3
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    return-object v2

    .line 118
    :goto_4
    invoke-static {v1, p1}, Ltm/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity$a;->a:Lio/bidmachine/iab/vast/a;

    .line 122
    .line 123
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastActivity;->h(Lio/bidmachine/iab/vast/a;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastActivity$a;->a:Lio/bidmachine/iab/vast/a;

    .line 127
    .line 128
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastActivity;->r(Lio/bidmachine/iab/vast/a;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v2}, Lio/bidmachine/iab/vast/activity/VastActivity;->e(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 132
    .line 133
    .line 134
    invoke-static {v2}, Lio/bidmachine/iab/vast/activity/VastActivity;->q(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 135
    .line 136
    .line 137
    invoke-static {v2}, Lio/bidmachine/iab/vast/activity/VastActivity;->v(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 138
    .line 139
    .line 140
    const-string v0, "Exception during displaying VastActivity"

    .line 141
    .line 142
    invoke-static {v0, p1}, Lqm/a;->j(Ljava/lang/String;Ljava/lang/Throwable;)Lqm/a;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    return-object p1
.end method

.method public c(Lio/bidmachine/iab/measurer/VastAdMeasurer;)Lio/bidmachine/iab/vast/activity/VastActivity$a;
    .locals 0
    .param p1    # Lio/bidmachine/iab/measurer/VastAdMeasurer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$a;->e:Lio/bidmachine/iab/measurer/VastAdMeasurer;

    .line 2
    .line 3
    return-object p0
.end method

.method public d(Ltm/a;)Lio/bidmachine/iab/vast/activity/VastActivity$a;
    .locals 0
    .param p1    # Ltm/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$a;->b:Ltm/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public e(Lio/bidmachine/iab/vast/VastPlaybackListener;)Lio/bidmachine/iab/vast/activity/VastActivity$a;
    .locals 0
    .param p1    # Lio/bidmachine/iab/vast/VastPlaybackListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$a;->d:Lio/bidmachine/iab/vast/VastPlaybackListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public f(Lio/bidmachine/iab/measurer/MraidAdMeasurer;)Lio/bidmachine/iab/vast/activity/VastActivity$a;
    .locals 0
    .param p1    # Lio/bidmachine/iab/measurer/MraidAdMeasurer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$a;->f:Lio/bidmachine/iab/measurer/MraidAdMeasurer;

    .line 2
    .line 3
    return-object p0
.end method

.method public g(Lio/bidmachine/iab/vast/a;)Lio/bidmachine/iab/vast/activity/VastActivity$a;
    .locals 0
    .param p1    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$a;->a:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public h(Lio/bidmachine/iab/vast/activity/VastView;)Lio/bidmachine/iab/vast/activity/VastActivity$a;
    .locals 0
    .param p1    # Lio/bidmachine/iab/vast/activity/VastView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastActivity$a;->c:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    return-object p0
.end method
