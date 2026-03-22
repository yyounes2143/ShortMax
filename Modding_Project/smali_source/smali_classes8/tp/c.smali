.class public Ltp/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltp/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltp/c$b;,
        Ltp/c$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lrq/q0;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Ltp/b$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Ljava/lang/Object;
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


# direct methods
.method public constructor <init>(Landroid/view/View;Lrq/q0;Ltp/b$a;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lrq/q0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ltp/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ltp/c;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Ltp/c;->b:Lrq/q0;

    .line 12
    .line 13
    iput-object p3, p0, Ltp/c;->c:Ltp/b$a;

    .line 14
    .line 15
    new-instance p1, Ltp/c$b;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-direct {p1, p0, p2}, Ltp/c$b;-><init>(Ltp/c;Ltp/c$a;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Ltp/c;->d:Ljava/lang/Runnable;

    .line 22
    .line 23
    new-instance p1, Ltp/c$c;

    .line 24
    .line 25
    invoke-direct {p1, p0, p2}, Ltp/c$c;-><init>(Ltp/c;Ltp/c$a;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Ltp/c;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 29
    .line 30
    new-instance p1, Ljava/lang/Object;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Ltp/c;->f:Ljava/lang/Object;

    .line 36
    .line 37
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Ltp/c;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Ltp/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Ltp/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    return-void
.end method

.method private a(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    :goto_0
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 5
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method static synthetic b(Ltp/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltp/c;->k()V

    return-void
.end method

.method private c(Landroid/view/View;FZZ)Z
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 3
    .line 4
    .line 5
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    const-string v2, "VisibilityTracker"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    :try_start_1
    const-string p2, "Show wasn\'t tracked: view visibility verification failed - %s"

    .line 12
    .line 13
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {v2, p2, p1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return v3

    .line 21
    :catch_0
    move-exception p1

    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    invoke-static {p1}, Lsq/j;->i(Landroid/view/View;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    const-string p2, "Show wasn\'t tracked: view transparent verification failed - %s"

    .line 31
    .line 32
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {v2, p2, p1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return v3

    .line 40
    :cond_1
    if-nez p3, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    if-nez p3, :cond_2

    .line 47
    .line 48
    const-string p2, "Show wasn\'t tracked: window focus verification failed - %s"

    .line 49
    .line 50
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {v2, p2, p1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return v3

    .line 58
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    mul-int/2addr p3, v1

    .line 67
    int-to-float p3, p3

    .line 68
    const/4 v1, 0x0

    .line 69
    cmpl-float v1, p3, v1

    .line 70
    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    const-string p2, "Show wasn\'t tracked: view size verification failed - %s"

    .line 74
    .line 75
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {v2, p2, p1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return v3

    .line 83
    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    .line 84
    .line 85
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_4

    .line 93
    .line 94
    const-string p2, "Show wasn\'t tracked: global visibility verification failed - %s"

    .line 95
    .line 96
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {v2, p2, p1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    return v3

    .line 104
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    mul-int/2addr v4, v5

    .line 113
    int-to-float v4, v4

    .line 114
    div-float/2addr v4, p3

    .line 115
    cmpg-float p3, v4, p2

    .line 116
    .line 117
    if-gez p3, :cond_5

    .line 118
    .line 119
    const-string p3, "Show wasn\'t tracked: ad view not completely visible (%s / %s) - %s"

    .line 120
    .line 121
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 122
    .line 123
    .line 124
    move-result-object p4

    .line 125
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    filled-new-array {p4, p2, p1}, [Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {v2, p3, p1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    return v3

    .line 137
    :cond_5
    invoke-direct {p0, p1}, Ltp/c;->a(Landroid/view/View;)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    if-nez p3, :cond_6

    .line 142
    .line 143
    const-string p2, "Show wasn\'t tracked: content or root layout not found - %s"

    .line 144
    .line 145
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {v2, p2, p1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    return v3

    .line 153
    :cond_6
    new-instance v4, Landroid/graphics/Rect;

    .line 154
    .line 155
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 159
    .line 160
    .line 161
    invoke-static {v1, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 162
    .line 163
    .line 164
    move-result p3

    .line 165
    if-nez p3, :cond_7

    .line 166
    .line 167
    const-string p2, "Show wasn\'t tracked: ad view is out of current window - %s"

    .line 168
    .line 169
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-static {v2, p2, p1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    return v3

    .line 177
    :cond_7
    if-nez p4, :cond_c

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object p3

    .line 183
    check-cast p3, Landroid/view/ViewGroup;

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 186
    .line 187
    .line 188
    move-result-object p4

    .line 189
    check-cast p4, Landroid/view/ViewGroup;

    .line 190
    .line 191
    move v4, v3

    .line 192
    :goto_0
    move-object v9, p4

    .line 193
    move-object p4, p1

    .line 194
    move-object p1, v9

    .line 195
    :goto_1
    if-eqz p1, :cond_c

    .line 196
    .line 197
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    add-int/2addr v5, v0

    .line 202
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    if-ge v5, v6, :cond_a

    .line 207
    .line 208
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-static {v6}, Lyq/t;->f(Landroid/view/View;)Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    if-eqz v7, :cond_9

    .line 217
    .line 218
    invoke-static {v6}, Lsq/j;->g(Landroid/view/View;)Landroid/graphics/Rect;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    invoke-static {v1, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    if-eqz v8, :cond_9

    .line 227
    .line 228
    invoke-static {v1, v7}, Lsq/j;->h(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    cmpg-float v8, v7, p2

    .line 233
    .line 234
    if-gez v8, :cond_8

    .line 235
    .line 236
    const-string p1, "Show wasn\'t tracked: ad view is covered by another view (visible percent - %s / %s, ad view - %s, overlapping view - %s)"

    .line 237
    .line 238
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 239
    .line 240
    .line 241
    move-result-object p3

    .line 242
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    filled-new-array {p3, p2, p4, v6}, [Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    invoke-static {v2, p1, p2}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    return v3

    .line 254
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 255
    .line 256
    const/4 v6, 0x3

    .line 257
    if-lt v4, v6, :cond_9

    .line 258
    .line 259
    const-string p1, "Show wasn\'t tracked: ad view is covered by too many views (overlapping views count - %s, ad view - %s)"

    .line 260
    .line 261
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    filled-new-array {p2, p4}, [Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    invoke-static {v2, p1, p2}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    return v3

    .line 273
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_a
    if-eq p1, p3, :cond_b

    .line 277
    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 279
    .line 280
    .line 281
    move-result-object p4

    .line 282
    check-cast p4, Landroid/view/ViewGroup;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 283
    .line 284
    goto :goto_0

    .line 285
    :cond_b
    const/4 p1, 0x0

    .line 286
    goto :goto_1

    .line 287
    :goto_3
    invoke-static {p1}, Ltp/s;->h(Ljava/lang/Throwable;)V

    .line 288
    .line 289
    .line 290
    :cond_c
    return v0
.end method

.method static synthetic d(Ltp/c;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Ltp/c;->f()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic e(Ltp/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltp/c;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ltp/c;->h()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ltp/c;->stop()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    iget-object v1, p0, Ltp/c;->b:Lrq/q0;

    .line 13
    .line 14
    invoke-virtual {v1}, Lrq/q0;->a()F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Ltp/c;->b:Lrq/q0;

    .line 19
    .line 20
    invoke-virtual {v2}, Lrq/q0;->c()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iget-object v3, p0, Ltp/c;->b:Lrq/q0;

    .line 25
    .line 26
    invoke-virtual {v3}, Lrq/q0;->b()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-direct {p0, v0, v1, v2, v3}, Ltp/c;->c(Landroid/view/View;FZZ)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-direct {p0}, Ltp/c;->i()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-direct {p0}, Ltp/c;->j()V

    .line 41
    .line 42
    .line 43
    :goto_0
    const/4 v0, 0x0

    .line 44
    return v0
.end method

.method private g()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltp/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ltp/c;->k()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private i()V
    .locals 3

    .line 1
    iget-object v0, p0, Ltp/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-object v0, p0, Ltp/c;->c:Ltp/b$a;

    .line 13
    .line 14
    invoke-interface {v0}, Ltp/b$a;->a()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private j()V
    .locals 3

    .line 1
    iget-object v0, p0, Ltp/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

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
    iget-object v0, p0, Ltp/c;->c:Ltp/b$a;

    .line 13
    .line 14
    invoke-interface {v0}, Ltp/b$a;->b()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    iget-object v0, p0, Ltp/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-object v0, p0, Ltp/c;->d:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-static {v0}, Lsq/j;->d(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Ltp/c;->d:Ljava/lang/Runnable;

    .line 18
    .line 19
    const-wide/16 v1, 0x64

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lsq/j;->l(Ljava/lang/Runnable;J)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ltp/c;->stop()V

    .line 2
    iget-object v0, p0, Ltp/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 2
    iget-object v0, p0, Ltp/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public h()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ltp/c;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    return-object v0
.end method

.method public start()V
    .locals 5

    .line 1
    iget-object v0, p0, Ltp/c;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ltp/c;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Ltp/c;->h()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Ltp/c;->stop()V

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :cond_1
    const-string v2, "VisibilityTracker"

    .line 30
    .line 31
    const-string v3, "Start tracking - %s"

    .line 32
    .line 33
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {v2, v3, v4}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iget-object v2, p0, Ltp/c;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw v1
.end method

.method public stop()V
    .locals 6

    .line 1
    iget-object v0, p0, Ltp/c;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ltp/c;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ltp/c;->h()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v3, "VisibilityTracker"

    .line 17
    .line 18
    const-string v4, "Stop tracking - %s"

    .line 19
    .line 20
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-static {v3, v4, v5}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    iget-object v3, p0, Ltp/c;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    iget-object v1, p0, Ltp/c;->d:Ljava/lang/Runnable;

    .line 46
    .line 47
    invoke-static {v1}, Lsq/j;->d(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Ltp/c;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Ltp/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 58
    .line 59
    .line 60
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw v1
.end method
