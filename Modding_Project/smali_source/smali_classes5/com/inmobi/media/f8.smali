.class public final Lcom/inmobi/media/f8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/inmobi/media/l9;

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final e:Landroid/media/AudioAttributes;

.field public f:Landroid/media/AudioFocusRequest;

.field public g:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/media/l9;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "audioFocusListener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/inmobi/media/f8;->a:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/inmobi/media/f8;->b:Lcom/inmobi/media/l9;

    .line 17
    .line 18
    new-instance p1, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/inmobi/media/f8;->d:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 p2, 0x1

    .line 31
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 p2, 0x2

    .line 36
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 p2, 0x3

    .line 41
    invoke-virtual {p1, p2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string p2, "build(...)"

    .line 50
    .line 51
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/inmobi/media/f8;->e:Landroid/media/AudioAttributes;

    .line 55
    .line 56
    return-void
.end method

.method public static final a(Lcom/inmobi/media/f8;I)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, -0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_0

    goto/16 :goto_2

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/f8;->d:Ljava/lang/Object;

    monitor-enter p1

    .line 9
    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/media/f8;->c:Z

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/inmobi/media/f8;->b:Lcom/inmobi/media/l9;

    .line 11
    invoke-virtual {v0}, Lcom/inmobi/media/l9;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/inmobi/media/l9;->i()V

    .line 13
    iget-object v0, v0, Lcom/inmobi/media/l9;->n:Lcom/inmobi/media/e9;

    if-eqz v0, :cond_1

    .line 14
    iget-object v1, v0, Lcom/inmobi/media/e9;->d:Lcom/inmobi/media/l9;

    if-eqz v1, :cond_1

    .line 15
    iput-boolean v2, v0, Lcom/inmobi/media/e9;->j:Z

    .line 16
    iget-object v1, v0, Lcom/inmobi/media/e9;->i:Landroid/widget/RelativeLayout;

    iget-object v3, v0, Lcom/inmobi/media/e9;->g:Lcom/inmobi/media/y3;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    iget-object v1, v0, Lcom/inmobi/media/e9;->i:Landroid/widget/RelativeLayout;

    iget-object v3, v0, Lcom/inmobi/media/e9;->f:Lcom/inmobi/media/y3;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    invoke-virtual {v0}, Lcom/inmobi/media/e9;->a()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/inmobi/media/f8;->c:Z

    .line 20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1

    throw p0

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/f8;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iput-boolean v2, p0, Lcom/inmobi/media/f8;->c:Z

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    .line 23
    iget-object p0, p0, Lcom/inmobi/media/f8;->b:Lcom/inmobi/media/l9;

    .line 24
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->h()V

    .line 25
    iget-object p0, p0, Lcom/inmobi/media/l9;->n:Lcom/inmobi/media/e9;

    if-eqz p0, :cond_4

    .line 26
    iget-object p1, p0, Lcom/inmobi/media/e9;->d:Lcom/inmobi/media/l9;

    if-eqz p1, :cond_4

    .line 27
    iput-boolean v1, p0, Lcom/inmobi/media/e9;->j:Z

    .line 28
    iget-object p1, p0, Lcom/inmobi/media/e9;->i:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/inmobi/media/e9;->f:Lcom/inmobi/media/y3;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 29
    iget-object p1, p0, Lcom/inmobi/media/e9;->i:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/inmobi/media/e9;->g:Lcom/inmobi/media/y3;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 30
    invoke-virtual {p0}, Lcom/inmobi/media/e9;->b()V

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 31
    monitor-exit p1

    throw p0

    .line 32
    :cond_3
    iget-object p1, p0, Lcom/inmobi/media/f8;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iput-boolean v1, p0, Lcom/inmobi/media/f8;->c:Z

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p1

    .line 33
    iget-object p0, p0, Lcom/inmobi/media/f8;->b:Lcom/inmobi/media/l9;

    .line 34
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->h()V

    .line 35
    iget-object p0, p0, Lcom/inmobi/media/l9;->n:Lcom/inmobi/media/e9;

    if-eqz p0, :cond_4

    .line 36
    iget-object p1, p0, Lcom/inmobi/media/e9;->d:Lcom/inmobi/media/l9;

    if-eqz p1, :cond_4

    .line 37
    iput-boolean v1, p0, Lcom/inmobi/media/e9;->j:Z

    .line 38
    iget-object p1, p0, Lcom/inmobi/media/e9;->i:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/inmobi/media/e9;->f:Lcom/inmobi/media/y3;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 39
    iget-object p1, p0, Lcom/inmobi/media/e9;->i:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/inmobi/media/e9;->g:Lcom/inmobi/media/y3;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Lcom/inmobi/media/e9;->b()V

    :cond_4
    :goto_2
    return-void

    :catchall_2
    move-exception p0

    .line 41
    monitor-exit p1

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/f8;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/f8;->a:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/media/AudioManager;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/media/AudioManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 4
    iget-object v2, p0, Lcom/inmobi/media/f8;->f:Landroid/media/AudioFocusRequest;

    if-eqz v2, :cond_2

    invoke-static {v1, v2}, Lo5/d;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    goto :goto_1

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/inmobi/media/f8;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 6
    :cond_2
    :goto_1
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw v1
.end method

.method public final b()Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    .line 1
    new-instance v0, Lub/j4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lub/j4;-><init>(Lcom/inmobi/media/f8;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/f8;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/f8;->a:Landroid/content/Context;

    .line 5
    .line 6
    const-string v2, "audio"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    instance-of v2, v1, Landroid/media/AudioManager;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    check-cast v1, Landroid/media/AudioManager;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_4

    .line 25
    .line 26
    iget-object v3, p0, Lcom/inmobi/media/f8;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 27
    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/inmobi/media/f8;->b()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iput-object v3, p0, Lcom/inmobi/media/f8;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 35
    .line 36
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    const/16 v4, 0x1a

    .line 39
    .line 40
    const/4 v5, 0x2

    .line 41
    if-lt v3, v4, :cond_3

    .line 42
    .line 43
    iget-object v3, p0, Lcom/inmobi/media/f8;->f:Landroid/media/AudioFocusRequest;

    .line 44
    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    invoke-static {}, Lo5/c;->a()V

    .line 48
    .line 49
    .line 50
    invoke-static {v5}, Lo5/a;->a(I)Landroid/media/AudioFocusRequest$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iget-object v4, p0, Lcom/inmobi/media/f8;->e:Landroid/media/AudioAttributes;

    .line 55
    .line 56
    invoke-static {v3, v4}, Lo5/e;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iget-object v4, p0, Lcom/inmobi/media/f8;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 61
    .line 62
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance v5, Landroid/os/Handler;

    .line 66
    .line 67
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/h;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v3}, Lo5/h;->a(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const-string v4, "build(...)"

    .line 83
    .line 84
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iput-object v3, p0, Lcom/inmobi/media/f8;->f:Landroid/media/AudioFocusRequest;

    .line 88
    .line 89
    :cond_2
    iget-object v3, p0, Lcom/inmobi/media/f8;->f:Landroid/media/AudioFocusRequest;

    .line 90
    .line 91
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v3}, Lo5/i;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    iget-object v3, p0, Lcom/inmobi/media/f8;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 100
    .line 101
    const/4 v4, 0x3

    .line 102
    invoke-virtual {v1, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    goto :goto_1

    .line 107
    :cond_4
    move v1, v2

    .line 108
    :goto_1
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    monitor-exit v0

    .line 111
    const/4 v0, 0x1

    .line 112
    if-ne v1, v0, :cond_5

    .line 113
    .line 114
    iget-object v0, p0, Lcom/inmobi/media/f8;->b:Lcom/inmobi/media/l9;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/inmobi/media/l9;->i()V

    .line 117
    .line 118
    .line 119
    iget-object v0, v0, Lcom/inmobi/media/l9;->n:Lcom/inmobi/media/e9;

    .line 120
    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    iget-object v1, v0, Lcom/inmobi/media/e9;->d:Lcom/inmobi/media/l9;

    .line 124
    .line 125
    if-eqz v1, :cond_6

    .line 126
    .line 127
    iput-boolean v2, v0, Lcom/inmobi/media/e9;->j:Z

    .line 128
    .line 129
    iget-object v1, v0, Lcom/inmobi/media/e9;->i:Landroid/widget/RelativeLayout;

    .line 130
    .line 131
    iget-object v2, v0, Lcom/inmobi/media/e9;->g:Lcom/inmobi/media/y3;

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, v0, Lcom/inmobi/media/e9;->i:Landroid/widget/RelativeLayout;

    .line 137
    .line 138
    iget-object v2, v0, Lcom/inmobi/media/e9;->f:Lcom/inmobi/media/y3;

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/inmobi/media/e9;->a()V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_5
    iget-object v1, p0, Lcom/inmobi/media/f8;->b:Lcom/inmobi/media/l9;

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/inmobi/media/l9;->h()V

    .line 150
    .line 151
    .line 152
    iget-object v1, v1, Lcom/inmobi/media/l9;->n:Lcom/inmobi/media/e9;

    .line 153
    .line 154
    if-eqz v1, :cond_6

    .line 155
    .line 156
    iget-object v2, v1, Lcom/inmobi/media/e9;->d:Lcom/inmobi/media/l9;

    .line 157
    .line 158
    if-eqz v2, :cond_6

    .line 159
    .line 160
    iput-boolean v0, v1, Lcom/inmobi/media/e9;->j:Z

    .line 161
    .line 162
    iget-object v0, v1, Lcom/inmobi/media/e9;->i:Landroid/widget/RelativeLayout;

    .line 163
    .line 164
    iget-object v2, v1, Lcom/inmobi/media/e9;->f:Lcom/inmobi/media/y3;

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, v1, Lcom/inmobi/media/e9;->i:Landroid/widget/RelativeLayout;

    .line 170
    .line 171
    iget-object v2, v1, Lcom/inmobi/media/e9;->g:Lcom/inmobi/media/y3;

    .line 172
    .line 173
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Lcom/inmobi/media/e9;->b()V

    .line 177
    .line 178
    .line 179
    :cond_6
    :goto_2
    return-void

    .line 180
    :goto_3
    monitor-exit v0

    .line 181
    throw v1
.end method
