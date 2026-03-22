.class public Lio/bidmachine/iab/mraid/MraidAdView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/mraid/MraidAdView$e;,
        Lio/bidmachine/iab/mraid/MraidAdView$d;,
        Lio/bidmachine/iab/mraid/MraidAdView$g;,
        Lio/bidmachine/iab/mraid/MraidAdView$f;,
        Lio/bidmachine/iab/mraid/MraidAdView$c;
    }
.end annotation


# instance fields
.field private final a:Lio/bidmachine/iab/mraid/MraidPlacementType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final l:Landroid/view/GestureDetector;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final m:Lio/bidmachine/iab/mraid/n;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final n:Lio/bidmachine/iab/mraid/t;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final o:Lio/bidmachine/iab/mraid/j;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final p:Lio/bidmachine/iab/mraid/k;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final q:Lio/bidmachine/iab/mraid/w;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final r:Lio/bidmachine/iab/mraid/s;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final s:Lio/bidmachine/iab/mraid/MraidAdView$e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private t:Lio/bidmachine/iab/mraid/s;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:Lio/bidmachine/iab/mraid/MraidViewState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private v:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidPlacementType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lio/bidmachine/iab/mraid/MraidAdView$e;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/mraid/MraidPlacementType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lio/bidmachine/iab/mraid/MraidAdView$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/bidmachine/iab/mraid/MraidPlacementType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lio/bidmachine/iab/mraid/MraidAdView$e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/bidmachine/iab/mraid/w;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/bidmachine/iab/mraid/w;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->q:Lio/bidmachine/iab/mraid/w;

    .line 10
    .line 11
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->a:Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 12
    .line 13
    iput-object p3, p0, Lio/bidmachine/iab/mraid/MraidAdView;->b:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p4, p0, Lio/bidmachine/iab/mraid/MraidAdView;->d:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p6, p0, Lio/bidmachine/iab/mraid/MraidAdView;->c:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p7, p0, Lio/bidmachine/iab/mraid/MraidAdView;->s:Lio/bidmachine/iab/mraid/MraidAdView$e;

    .line 20
    .line 21
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    const/4 p3, 0x0

    .line 24
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 25
    .line 26
    .line 27
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 46
    .line 47
    .line 48
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    .line 50
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 53
    .line 54
    .line 55
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 60
    .line 61
    .line 62
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    .line 66
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 67
    .line 68
    .line 69
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    .line 71
    new-instance p2, Landroid/view/GestureDetector;

    .line 72
    .line 73
    new-instance p3, Lio/bidmachine/iab/mraid/MraidAdView$d;

    .line 74
    .line 75
    const/4 p4, 0x0

    .line 76
    invoke-direct {p3, p4}, Lio/bidmachine/iab/mraid/MraidAdView$d;-><init>(Lio/bidmachine/iab/mraid/MraidAdView$a;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 80
    .line 81
    .line 82
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->l:Landroid/view/GestureDetector;

    .line 83
    .line 84
    new-instance p2, Lio/bidmachine/iab/mraid/n;

    .line 85
    .line 86
    invoke-direct {p2, p1}, Lio/bidmachine/iab/mraid/n;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->m:Lio/bidmachine/iab/mraid/n;

    .line 90
    .line 91
    new-instance p2, Lio/bidmachine/iab/mraid/t;

    .line 92
    .line 93
    invoke-direct {p2}, Lio/bidmachine/iab/mraid/t;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->n:Lio/bidmachine/iab/mraid/t;

    .line 97
    .line 98
    new-instance p2, Lio/bidmachine/iab/mraid/j;

    .line 99
    .line 100
    invoke-direct {p2, p1, p5}, Lio/bidmachine/iab/mraid/j;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->o:Lio/bidmachine/iab/mraid/j;

    .line 104
    .line 105
    new-instance p3, Lio/bidmachine/iab/mraid/k;

    .line 106
    .line 107
    invoke-direct {p3, p2}, Lio/bidmachine/iab/mraid/k;-><init>(Lio/bidmachine/iab/mraid/j;)V

    .line 108
    .line 109
    .line 110
    iput-object p3, p0, Lio/bidmachine/iab/mraid/MraidAdView;->p:Lio/bidmachine/iab/mraid/k;

    .line 111
    .line 112
    new-instance p2, Lio/bidmachine/iab/mraid/s;

    .line 113
    .line 114
    new-instance p3, Lio/bidmachine/iab/mraid/MraidAdView$g;

    .line 115
    .line 116
    invoke-direct {p3, p0, p4}, Lio/bidmachine/iab/mraid/MraidAdView$g;-><init>(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/iab/mraid/MraidAdView$a;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p2, p1, p3}, Lio/bidmachine/iab/mraid/s;-><init>(Landroid/content/Context;Lio/bidmachine/iab/mraid/s$a;)V

    .line 120
    .line 121
    .line 122
    iput-object p2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 123
    .line 124
    invoke-virtual {p2}, Lio/bidmachine/iab/mraid/s;->u()Lio/bidmachine/iab/mraid/MraidWebView;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 129
    .line 130
    const/4 p3, -0x1

    .line 131
    const/16 p4, 0x11

    .line 132
    .line 133
    invoke-direct {p2, p3, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    .line 138
    .line 139
    sget-object p1, Lio/bidmachine/iab/mraid/MraidViewState;->LOADING:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 140
    .line 141
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 142
    .line 143
    return-void
.end method

.method static synthetic A(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->B(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private B(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/iab/mraid/MraidViewState;->LOADING:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 20
    .line 21
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->o:Lio/bidmachine/iab/mraid/j;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/s;->l(Lio/bidmachine/iab/mraid/j;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->a:Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lio/bidmachine/iab/mraid/s;->i(Lio/bidmachine/iab/mraid/MraidPlacementType;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 36
    .line 37
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/s;->x()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/s;->m(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 45
    .line 46
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->c:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/s;->p(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 52
    .line 53
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/s;->u()Lio/bidmachine/iab/mraid/MraidWebView;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Lio/bidmachine/iab/mraid/MraidAdView;->e(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lio/bidmachine/iab/mraid/MraidViewState;->DEFAULT:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidAdView;->setViewState(Lio/bidmachine/iab/mraid/MraidViewState;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->G()V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->s:Lio/bidmachine/iab/mraid/MraidAdView$e;

    .line 69
    .line 70
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 71
    .line 72
    invoke-virtual {v1}, Lio/bidmachine/iab/mraid/s;->u()Lio/bidmachine/iab/mraid/MraidWebView;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 77
    .line 78
    invoke-virtual {v2}, Lio/bidmachine/iab/mraid/s;->w()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-interface {v0, p0, p1, v1, v2}, Lio/bidmachine/iab/mraid/MraidAdView$e;->m(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;Landroid/webkit/WebView;Z)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method static synthetic D(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidAdView$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->s:Lio/bidmachine/iab/mraid/MraidAdView$e;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic E(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->s:Lio/bidmachine/iab/mraid/MraidAdView$e;

    .line 2
    .line 3
    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$e;->e(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private F()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/s;->z()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method static synthetic H(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic I(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/w;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->q:Lio/bidmachine/iab/mraid/w;

    .line 2
    .line 3
    return-object p0
.end method

.method private J()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->s:Lio/bidmachine/iab/mraid/MraidAdView$e;

    .line 13
    .line 14
    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/MraidAdView$e;->b(Lio/bidmachine/iab/mraid/MraidAdView;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method static synthetic K(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic O(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->G()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic V(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->J()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->E(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Lio/bidmachine/iab/mraid/MraidAdView;)Lio/bidmachine/iab/mraid/MraidViewState;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 2
    .line 3
    return-object p0
.end method

.method private c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->s:Lio/bidmachine/iab/mraid/MraidAdView$e;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/MraidAdView$e;->c(Lio/bidmachine/iab/mraid/MraidAdView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private d(IILio/bidmachine/iab/mraid/s;Ljava/lang/Runnable;)V
    .locals 1
    .param p3    # Lio/bidmachine/iab/mraid/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->T()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3}, Lio/bidmachine/iab/mraid/s;->u()Lio/bidmachine/iab/mraid/MraidWebView;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-direct {p0, p3, p1, p2}, Lio/bidmachine/iab/mraid/MraidAdView;->k(Lio/bidmachine/iab/mraid/MraidWebView;II)V

    .line 12
    .line 13
    .line 14
    iput-object p4, p0, Lio/bidmachine/iab/mraid/MraidAdView;->v:Ljava/lang/Runnable;

    .line 15
    .line 16
    const-wide/16 p1, 0x96

    .line 17
    .line 18
    invoke-virtual {p0, p4, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->m:Lio/bidmachine/iab/mraid/n;

    .line 14
    .line 15
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 16
    .line 17
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 18
    .line 19
    invoke-virtual {v2, v3, v1}, Lio/bidmachine/iab/mraid/n;->c(II)Z

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    new-array v1, v1, [I

    .line 24
    .line 25
    invoke-static {v0, p0}, Lio/bidmachine/iab/mraid/o;->o(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lio/bidmachine/iab/mraid/MraidAdView;->m:Lio/bidmachine/iab/mraid/n;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    aget v4, v1, v3

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    aget v6, v1, v5

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {v2, v4, v6, v7, v0}, Lio/bidmachine/iab/mraid/n;->h(IIII)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->m:Lio/bidmachine/iab/mraid/n;

    .line 55
    .line 56
    aget v2, v1, v3

    .line 57
    .line 58
    aget v4, v1, v5

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    invoke-virtual {v0, v2, v4, v6, v7}, Lio/bidmachine/iab/mraid/n;->f(IIII)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->m:Lio/bidmachine/iab/mraid/n;

    .line 75
    .line 76
    aget v2, v1, v3

    .line 77
    .line 78
    aget v1, v1, v5

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-virtual {v0, v2, v1, v3, p1}, Lio/bidmachine/iab/mraid/n;->d(IIII)Z

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 92
    .line 93
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->m:Lio/bidmachine/iab/mraid/n;

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lio/bidmachine/iab/mraid/s;->j(Lio/bidmachine/iab/mraid/n;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->t:Lio/bidmachine/iab/mraid/s;

    .line 99
    .line 100
    if-eqz p1, :cond_0

    .line 101
    .line 102
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->m:Lio/bidmachine/iab/mraid/n;

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Lio/bidmachine/iab/mraid/s;->j(Lio/bidmachine/iab/mraid/n;)V

    .line 105
    .line 106
    .line 107
    :cond_0
    return-void
.end method

.method static synthetic f(Lio/bidmachine/iab/mraid/MraidAdView;IILio/bidmachine/iab/mraid/s;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/iab/mraid/MraidAdView;->p(IILio/bidmachine/iab/mraid/s;Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lio/bidmachine/iab/mraid/MraidAdView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->e(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getCurrentMraidWebViewController()Lio/bidmachine/iab/mraid/s;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->t:Lio/bidmachine/iab/mraid/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 7
    .line 8
    :goto_0
    return-object v0
.end method

.method static synthetic h(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->v(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;Lyq/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/iab/mraid/MraidAdView;->m(Ljava/lang/String;Lyq/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j(Lio/bidmachine/iab/mraid/MraidAdView;Lqm/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->n(Lqm/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private k(Lio/bidmachine/iab/mraid/MraidWebView;II)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/mraid/MraidWebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p2, p3}, Lsm/q;->C(III)Landroid/view/MotionEvent;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-static {v0, p2, p3}, Lsm/q;->C(III)Landroid/view/MotionEvent;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private l(Lio/bidmachine/iab/mraid/s;IIII)V
    .locals 10
    .param p1    # Lio/bidmachine/iab/mraid/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lio/bidmachine/iab/mraid/MraidAdView$a;

    .line 18
    .line 19
    move-object v3, v0

    .line 20
    move-object v4, p0

    .line 21
    move v5, p2

    .line 22
    move v6, p3

    .line 23
    move v7, p4

    .line 24
    move v8, p5

    .line 25
    move-object v9, p1

    .line 26
    invoke-direct/range {v3 .. v9}, Lio/bidmachine/iab/mraid/MraidAdView$a;-><init>(Lio/bidmachine/iab/mraid/MraidAdView;IIIILio/bidmachine/iab/mraid/s;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p2, p3}, Lsm/q;->u(II)Landroid/graphics/Point;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget p3, p2, Landroid/graphics/Point;->x:I

    .line 34
    .line 35
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 36
    .line 37
    invoke-direct {p0, p3, p2, p1, v0}, Lio/bidmachine/iab/mraid/MraidAdView;->d(IILio/bidmachine/iab/mraid/s;Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private m(Ljava/lang/String;Lyq/d;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lyq/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lyq/d<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->v:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->p:Lio/bidmachine/iab/mraid/k;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/k;->a(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-interface {p2, p1}, Lyq/d;->execute(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private n(Lqm/a;)V
    .locals 1
    .param p1    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->Q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->F()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->s:Lio/bidmachine/iab/mraid/MraidAdView$e;

    .line 14
    .line 15
    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$e;->k(Lio/bidmachine/iab/mraid/MraidAdView;Lqm/a;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->s:Lio/bidmachine/iab/mraid/MraidAdView$e;

    .line 20
    .line 21
    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$e;->l(Lio/bidmachine/iab/mraid/MraidAdView;Lqm/a;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->s:Lio/bidmachine/iab/mraid/MraidAdView$e;

    .line 26
    .line 27
    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$e;->d(Lio/bidmachine/iab/mraid/MraidAdView;Lqm/a;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method private o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->s:Lio/bidmachine/iab/mraid/MraidAdView$e;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/MraidAdView$e;->i(Lio/bidmachine/iab/mraid/MraidAdView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private p(IILio/bidmachine/iab/mraid/s;Ljava/lang/Runnable;)V
    .locals 1
    .param p3    # Lio/bidmachine/iab/mraid/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->T()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3, p1, p2}, Lio/bidmachine/iab/mraid/s;->g(II)V

    .line 8
    .line 9
    .line 10
    iput-object p4, p0, Lio/bidmachine/iab/mraid/MraidAdView;->v:Ljava/lang/Runnable;

    .line 11
    .line 12
    const-wide/16 p1, 0x96

    .line 13
    .line 14
    invoke-virtual {p0, p4, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method static synthetic q(Lio/bidmachine/iab/mraid/MraidAdView;IILio/bidmachine/iab/mraid/s;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/iab/mraid/MraidAdView;->d(IILio/bidmachine/iab/mraid/s;Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r(Lio/bidmachine/iab/mraid/MraidAdView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->s(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private s(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lsq/g;->c(Ljava/lang/String;)Lio/bidmachine/rendering/model/PrivacySheetParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v0, "MraidAdView"

    .line 11
    .line 12
    const-string v1, "Callback - can\'t parse privacy sheet"

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/h;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->s:Lio/bidmachine/iab/mraid/MraidAdView$e;

    .line 19
    .line 20
    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$e;->g(Lio/bidmachine/iab/mraid/MraidAdView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method private t()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->T()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->d:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lio/bidmachine/iab/mraid/MraidAdView;->v(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method static synthetic u(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->o()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private v(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/iab/mraid/a;-><init>(Lio/bidmachine/iab/mraid/MraidAdView;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lio/bidmachine/iab/mraid/MraidAdView;->m(Ljava/lang/String;Lyq/d;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method static synthetic z(Lio/bidmachine/iab/mraid/MraidAdView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->n:Lio/bidmachine/iab/mraid/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/t;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/s;->s()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->t:Lio/bidmachine/iab/mraid/s;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/s;->s()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public L(IIII)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->getCurrentMraidWebViewController()Lio/bidmachine/iab/mraid/s;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    move-object v0, p0

    .line 6
    move v2, p1

    .line 7
    move v3, p2

    .line 8
    move v4, p3

    .line 9
    move v5, p4

    .line 10
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/iab/mraid/MraidAdView;->l(Lio/bidmachine/iab/mraid/s;IIII)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public M(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->m:Lio/bidmachine/iab/mraid/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/n;->j()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, v1, v0, p1, p2}, Lio/bidmachine/iab/mraid/MraidAdView;->L(IIII)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public N()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->getCurrentMraidWebViewController()Lio/bidmachine/iab/mraid/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/s;->u()Lio/bidmachine/iab/mraid/MraidWebView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v2, 0x11

    .line 18
    .line 19
    invoke-virtual {p0, v1, v0, v2, v2}, Lio/bidmachine/iab/mraid/MraidAdView;->L(IIII)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public P()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->a:Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/iab/mraid/MraidPlacementType;->INTERSTITIAL:Lio/bidmachine/iab/mraid/MraidPlacementType;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public Q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public R()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public S()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/s;->v()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public T()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public U()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/s;->w()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public W(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "Html data are null"

    .line 4
    .line 5
    invoke-static {p1}, Lqm/a;->h(Ljava/lang/String;)Lqm/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->n(Lqm/a;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 14
    .line 15
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {}, Lio/bidmachine/iab/mraid/o;->h()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {}, Lrm/b;->e()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-static {p1}, Lio/bidmachine/iab/mraid/o;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    filled-new-array {v2, v3, p1}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v2, "<script type=\'application/javascript\'>%s</script>%s%s"

    .line 34
    .line 35
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v2, "text/html"

    .line 40
    .line 41
    const-string v3, "UTF-8"

    .line 42
    .line 43
    invoke-virtual {v0, v1, p1, v2, v3}, Lio/bidmachine/iab/mraid/s;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 47
    .line 48
    invoke-static {}, Lio/bidmachine/iab/mraid/h;->f()Lio/bidmachine/iab/utils/Logger$LogLevel;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Lio/bidmachine/iab/mraid/s;->h(Lio/bidmachine/iab/utils/Logger$LogLevel;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public X()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->Q()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidAdView;->G()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public Y(Ljava/lang/Runnable;)V
    .locals 4
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->t:Lio/bidmachine/iab/mraid/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/s;->u()Lio/bidmachine/iab/mraid/MraidWebView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/s;->u()Lio/bidmachine/iab/mraid/MraidWebView;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->n:Lio/bidmachine/iab/mraid/t;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    new-array v2, v2, [Landroid/view/View;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object p0, v2, v3

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    aput-object v0, v2, v3

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/mraid/t;->b([Landroid/view/View;)Lio/bidmachine/iab/mraid/t$a;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lio/bidmachine/iab/mraid/MraidAdView$b;

    .line 32
    .line 33
    invoke-direct {v2, p0, v0, p1}, Lio/bidmachine/iab/mraid/MraidAdView$b;-><init>(Lio/bidmachine/iab/mraid/MraidAdView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/mraid/t$a;->d(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLastOrientationProperties()Lio/bidmachine/iab/mraid/m;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/s;->t()Lio/bidmachine/iab/mraid/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMraidViewState()Lio/bidmachine/iab/mraid/MraidViewState;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/s;->u()Lio/bidmachine/iab/mraid/MraidWebView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->l:Landroid/view/GestureDetector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method setViewState(Lio/bidmachine/iab/mraid/MraidViewState;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/mraid/MraidViewState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidAdView;->u:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/s;->k(Lio/bidmachine/iab/mraid/MraidViewState;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->t:Lio/bidmachine/iab/mraid/s;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/s;->k(Lio/bidmachine/iab/mraid/MraidViewState;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object v0, Lio/bidmachine/iab/mraid/MraidViewState;->HIDDEN:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 16
    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidAdView;->Y(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public w()V
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidViewState;->HIDDEN:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidAdView;->setViewState(Lio/bidmachine/iab/mraid/MraidViewState;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->t:Lio/bidmachine/iab/mraid/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/s;->s()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->t:Lio/bidmachine/iab/mraid/s;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/s;->u()Lio/bidmachine/iab/mraid/MraidWebView;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    sget-object v0, Lio/bidmachine/iab/mraid/MraidViewState;->DEFAULT:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidAdView;->setViewState(Lio/bidmachine/iab/mraid/MraidViewState;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidAdView;->r:Lio/bidmachine/iab/mraid/s;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/s;->u()Lio/bidmachine/iab/mraid/MraidWebView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lio/bidmachine/iab/mraid/MraidViewState;->DEFAULT:Lio/bidmachine/iab/mraid/MraidViewState;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidAdView;->setViewState(Lio/bidmachine/iab/mraid/MraidViewState;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
