.class public Lsm/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsm/r$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lsm/r$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:F

.field private final e:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private h:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Landroid/view/View$OnAttachStateChangeListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lsm/r$a;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lsm/r$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x3dcccccd    # 0.1f

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lsm/r;-><init>(Landroid/content/Context;Landroid/view/View;Lsm/r$a;F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lsm/r$a;F)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lsm/r$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lsm/r;->j:Z

    .line 4
    iput-boolean v0, p0, Lsm/r;->k:Z

    .line 5
    iput-boolean v0, p0, Lsm/r;->l:Z

    .line 6
    iput-boolean v0, p0, Lsm/r;->m:Z

    .line 7
    iput-boolean v0, p0, Lsm/r;->n:Z

    .line 8
    iput-object p1, p0, Lsm/r;->a:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lsm/r;->b:Landroid/view/View;

    .line 10
    iput-object p3, p0, Lsm/r;->c:Lsm/r$a;

    .line 11
    iput p4, p0, Lsm/r;->d:F

    .line 12
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lsm/r;->e:Landroid/graphics/Rect;

    .line 13
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lsm/r;->f:Landroid/graphics/Rect;

    .line 14
    new-instance p1, Lsm/r$b;

    invoke-direct {p1, p0}, Lsm/r$b;-><init>(Lsm/r;)V

    iput-object p1, p0, Lsm/r;->g:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lsm/r;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lsm/r;->b:Landroid/view/View;

    .line 10
    .line 11
    const-string v1, "Visibility != View.VISIBLE"

    .line 12
    .line 13
    invoke-direct {p0, v0, v1}, Lsm/r;->c(Landroid/view/View;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lsm/r;->b:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lsm/r;->b:Landroid/view/View;

    .line 29
    .line 30
    const-string v1, "No parent"

    .line 31
    .line 32
    invoke-direct {p0, v0, v1}, Lsm/r;->c(Landroid/view/View;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lsm/r;->b:Landroid/view/View;

    .line 37
    .line 38
    iget-object v1, p0, Lsm/r;->e:Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lsm/r;->b:Landroid/view/View;

    .line 47
    .line 48
    const-string v1, "Can\'t get global visible rect"

    .line 49
    .line 50
    invoke-direct {p0, v0, v1}, Lsm/r;->c(Landroid/view/View;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    iget-object v0, p0, Lsm/r;->b:Landroid/view/View;

    .line 55
    .line 56
    invoke-static {v0}, Lsm/q;->z(Landroid/view/View;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget-object v0, p0, Lsm/r;->b:Landroid/view/View;

    .line 63
    .line 64
    const-string v1, "View is transparent (alpha = 0)"

    .line 65
    .line 66
    invoke-direct {p0, v0, v1}, Lsm/r;->c(Landroid/view/View;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    iget-object v0, p0, Lsm/r;->b:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iget-object v1, p0, Lsm/r;->b:Landroid/view/View;

    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    mul-int/2addr v0, v1

    .line 83
    int-to-float v0, v0

    .line 84
    const/4 v1, 0x0

    .line 85
    cmpg-float v1, v0, v1

    .line 86
    .line 87
    if-gtz v1, :cond_4

    .line 88
    .line 89
    iget-object v0, p0, Lsm/r;->b:Landroid/view/View;

    .line 90
    .line 91
    const-string v1, "Ad View width or height is zero, show wasn\'t tracked"

    .line 92
    .line 93
    invoke-direct {p0, v0, v1}, Lsm/r;->c(Landroid/view/View;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_4
    iget-object v1, p0, Lsm/r;->e:Landroid/graphics/Rect;

    .line 98
    .line 99
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    iget-object v2, p0, Lsm/r;->e:Landroid/graphics/Rect;

    .line 104
    .line 105
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    mul-int/2addr v1, v2

    .line 110
    int-to-float v1, v1

    .line 111
    div-float/2addr v1, v0

    .line 112
    iget v0, p0, Lsm/r;->d:F

    .line 113
    .line 114
    cmpg-float v0, v1, v0

    .line 115
    .line 116
    if-gez v0, :cond_5

    .line 117
    .line 118
    iget-object v0, p0, Lsm/r;->b:Landroid/view/View;

    .line 119
    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v3, "Ad View is not completely visible ("

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, "), show wasn\'t tracked"

    .line 134
    .line 135
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-direct {p0, v0, v1}, Lsm/r;->c(Landroid/view/View;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_5
    iget-object v0, p0, Lsm/r;->a:Landroid/content/Context;

    .line 147
    .line 148
    iget-object v1, p0, Lsm/r;->b:Landroid/view/View;

    .line 149
    .line 150
    invoke-static {v0, v1}, Lio/bidmachine/iab/mraid/o;->n(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    if-nez v0, :cond_6

    .line 155
    .line 156
    iget-object v0, p0, Lsm/r;->b:Landroid/view/View;

    .line 157
    .line 158
    const-string v1, "Can\'t obtain root view"

    .line 159
    .line 160
    invoke-direct {p0, v0, v1}, Lsm/r;->c(Landroid/view/View;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_6
    iget-object v1, p0, Lsm/r;->f:Landroid/graphics/Rect;

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lsm/r;->e:Landroid/graphics/Rect;

    .line 170
    .line 171
    iget-object v1, p0, Lsm/r;->f:Landroid/graphics/Rect;

    .line 172
    .line 173
    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-nez v0, :cond_7

    .line 178
    .line 179
    iget-object v0, p0, Lsm/r;->b:Landroid/view/View;

    .line 180
    .line 181
    const-string v1, "Ad View is out of current window, show wasn\'t tracked"

    .line 182
    .line 183
    invoke-direct {p0, v0, v1}, Lsm/r;->c(Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 188
    .line 189
    .line 190
    :cond_7
    iget-object v0, p0, Lsm/r;->b:Landroid/view/View;

    .line 191
    .line 192
    invoke-direct {p0, v0}, Lsm/r;->b(Landroid/view/View;)V

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lsm/r;->k:Z

    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Lsm/r;->e(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private c(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Lsm/r;->k:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lsm/r;->k:Z

    .line 8
    .line 9
    new-array p1, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v1, "VisibilityTracker"

    .line 12
    .line 13
    invoke-static {v1, p2, p1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0, v0}, Lsm/r;->e(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method static synthetic d(Lsm/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsm/r;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsm/r;->j:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lsm/r;->j:Z

    .line 6
    .line 7
    iget-object v0, p0, Lsm/r;->c:Lsm/r$a;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lsm/r$a;->a(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method static synthetic f(Lsm/r;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsm/r;->l:Z

    .line 2
    .line 3
    return p1
.end method

.method private g()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lsm/r;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lsm/r;->l:Z

    .line 8
    .line 9
    iget-object v0, p0, Lsm/r;->g:Ljava/lang/Runnable;

    .line 10
    .line 11
    const-wide/16 v1, 0x64

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lsm/q;->E(Ljava/lang/Runnable;J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static synthetic h(Lsm/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsm/r;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsm/r;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public j()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lsm/r;->n:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lsm/r;->m:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lsm/r;->l:Z

    .line 8
    .line 9
    iget-object v0, p0, Lsm/r;->b:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lsm/r;->h:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lsm/r;->b:Landroid/view/View;

    .line 21
    .line 22
    iget-object v1, p0, Lsm/r;->i:Landroid/view/View$OnAttachStateChangeListener;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lsm/r;->g:Ljava/lang/Runnable;

    .line 28
    .line 29
    invoke-static {v0}, Lsm/q;->n(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsm/r;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lsm/r;->m:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lsm/r;->m:Z

    .line 13
    .line 14
    iget-object v0, p0, Lsm/r;->h:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    new-instance v0, Lsm/r$c;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lsm/r$c;-><init>(Lsm/r;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lsm/r;->h:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lsm/r;->i:Landroid/view/View$OnAttachStateChangeListener;

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    new-instance v0, Lsm/r$d;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lsm/r$d;-><init>(Lsm/r;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lsm/r;->i:Landroid/view/View$OnAttachStateChangeListener;

    .line 35
    .line 36
    :cond_3
    iget-object v0, p0, Lsm/r;->b:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lsm/r;->h:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lsm/r;->b:Landroid/view/View;

    .line 48
    .line 49
    iget-object v1, p0, Lsm/r;->i:Landroid/view/View$OnAttachStateChangeListener;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lsm/r;->a()V

    .line 55
    .line 56
    .line 57
    return-void
.end method
