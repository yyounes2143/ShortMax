.class public final Lcom/inmobi/media/z6;
.super Lcom/inmobi/media/P;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Lcom/inmobi/media/x;

.field public final g:Landroid/widget/RelativeLayout;

.field public h:Z

.field public i:Z

.field public j:Lcom/inmobi/media/l9;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/inmobi/media/x;Landroid/widget/RelativeLayout;)V
    .locals 1

    .line 1
    const-string v0, "activityRef"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adContainer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adBackgroundView"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p3}, Lcom/inmobi/media/P;-><init>(Landroid/widget/RelativeLayout;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/inmobi/media/z6;->e:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/inmobi/media/z6;->f:Lcom/inmobi/media/x;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/inmobi/media/z6;->g:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    return-void
.end method

.method public static final a(Lcom/inmobi/media/z6;Lcom/inmobi/media/c9;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/z6;->f:Lcom/inmobi/media/x;

    invoke-interface {v0}, Lcom/inmobi/media/x;->getPlacementType()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 3
    const-string v0, "didCompleteQ4"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/inmobi/media/z6;->j:Lcom/inmobi/media/l9;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/inmobi/media/l9;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/z6;->f:Lcom/inmobi/media/x;

    invoke-interface {v0}, Lcom/inmobi/media/x;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/z6;->f:Lcom/inmobi/media/x;

    .line 7
    instance-of v1, v0, Lcom/inmobi/media/a9;

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 8
    move-object v1, v0

    check-cast v1, Lcom/inmobi/media/a9;

    .line 9
    iget-object v1, v1, Lcom/inmobi/media/T7;->b:Lcom/inmobi/media/p8;

    .line 10
    iget-boolean v1, v1, Lcom/inmobi/media/p8;->c:Z

    if-ne v1, v2, :cond_1

    return-void

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/inmobi/media/z6;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 12
    instance-of v3, v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    if-nez v3, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    check-cast v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    .line 14
    iput-boolean v2, v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;->e:Z

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/inmobi/media/z6;->j:Lcom/inmobi/media/l9;

    if-nez v1, :cond_4

    .line 16
    iget-object v0, p0, Lcom/inmobi/media/z6;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    .line 18
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/inmobi/media/c9;

    if-eqz v4, :cond_5

    check-cast v3, Lcom/inmobi/media/c9;

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_b

    .line 19
    move-object v4, v0

    check-cast v4, Lcom/inmobi/media/T7;

    .line 20
    iget-byte v4, v4, Lcom/inmobi/media/T7;->a:B

    if-ne v2, v4, :cond_6

    .line 21
    invoke-virtual {v1}, Lcom/inmobi/media/l9;->f()V

    .line 22
    :cond_6
    :try_start_0
    iget-object v2, v3, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 23
    const-string v4, "isFullScreen"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 24
    iget-object v2, v3, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 25
    const-string v4, "seekPosition"

    .line 26
    invoke-virtual {v1}, Lcom/inmobi/media/l9;->getCurrentPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    check-cast v0, Lcom/inmobi/media/a9;

    invoke-virtual {v0, v3}, Lcom/inmobi/media/a9;->b(Lcom/inmobi/media/c9;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 28
    const-string v1, "InMobi"

    const-string v2, "SDK encountered unexpected error in closing video"

    const/4 v3, 0x2

    invoke-static {v3, v1, v2}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 30
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object v0

    .line 31
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    goto :goto_3

    .line 32
    :cond_7
    instance-of v1, v0, Lcom/inmobi/media/T7;

    if-eqz v1, :cond_9

    .line 33
    check-cast v0, Lcom/inmobi/media/T7;

    .line 34
    iget-object v1, v0, Lcom/inmobi/media/T7;->b:Lcom/inmobi/media/p8;

    .line 35
    iget-boolean v1, v1, Lcom/inmobi/media/p8;->c:Z

    if-ne v1, v2, :cond_8

    return-void

    .line 36
    :cond_8
    invoke-virtual {v0}, Lcom/inmobi/media/T7;->a()V

    goto :goto_3

    .line 37
    :cond_9
    iget-object v0, p0, Lcom/inmobi/media/z6;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_a

    goto :goto_3

    .line 38
    :cond_a
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_b
    :goto_3
    return-void
.end method

.method public final a(Lcom/inmobi/media/c9;)V
    .locals 3

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/z6;->f:Lcom/inmobi/media/x;

    invoke-interface {v0}, Lcom/inmobi/media/x;->getFullScreenEventsListener()Lcom/inmobi/media/w;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/inmobi/media/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40
    const-string v0, "InMobi"

    const-string v1, "SDK encountered unexpected error while finishing fullscreen view"

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 42
    const-string v0, "event"

    invoke-static {p1, v0}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p1

    .line 43
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/z6;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/Activity;

    .line 8
    .line 9
    instance-of v1, v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    check-cast v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    .line 16
    .line 17
    iget-boolean v0, v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->e:Z

    .line 18
    .line 19
    :goto_0
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Lcom/inmobi/media/z6;->f:Lcom/inmobi/media/x;

    .line 23
    .line 24
    instance-of v2, v0, Lcom/inmobi/media/a9;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    check-cast v0, Lcom/inmobi/media/a9;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/inmobi/media/a9;->getVideoContainerView()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    instance-of v2, v0, Lcom/inmobi/media/m9;

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    move-object v1, v0

    .line 39
    check-cast v1, Lcom/inmobi/media/m9;

    .line 40
    .line 41
    :cond_1
    if-eqz v1, :cond_9

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/inmobi/media/m9;->getVideoView()Lcom/inmobi/media/l9;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeVideoAsset"

    .line 52
    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    check-cast v0, Lcom/inmobi/media/c9;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/inmobi/media/z6;->a(Lcom/inmobi/media/c9;)V

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_2
    instance-of v0, v0, Lcom/inmobi/media/T7;

    .line 63
    .line 64
    if-eqz v0, :cond_9

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lcom/inmobi/media/z6;->a(Lcom/inmobi/media/c9;)V

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/z6;->f:Lcom/inmobi/media/x;

    .line 71
    .line 72
    instance-of v2, v0, Lcom/inmobi/media/a9;

    .line 73
    .line 74
    if-eqz v2, :cond_7

    .line 75
    .line 76
    iget-object v2, p0, Lcom/inmobi/media/z6;->j:Lcom/inmobi/media/l9;

    .line 77
    .line 78
    if-eqz v2, :cond_4

    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    goto :goto_1

    .line 85
    :cond_4
    move-object v2, v1

    .line 86
    :goto_1
    instance-of v3, v2, Lcom/inmobi/media/c9;

    .line 87
    .line 88
    if-eqz v3, :cond_5

    .line 89
    .line 90
    move-object v1, v2

    .line 91
    check-cast v1, Lcom/inmobi/media/c9;

    .line 92
    .line 93
    :cond_5
    if-eqz v1, :cond_8

    .line 94
    .line 95
    check-cast v0, Lcom/inmobi/media/T7;

    .line 96
    .line 97
    iget-byte v0, v0, Lcom/inmobi/media/T7;->a:B

    .line 98
    .line 99
    const/4 v2, 0x1

    .line 100
    if-ne v2, v0, :cond_6

    .line 101
    .line 102
    iget-object v0, p0, Lcom/inmobi/media/z6;->j:Lcom/inmobi/media/l9;

    .line 103
    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/inmobi/media/l9;->f()V

    .line 107
    .line 108
    .line 109
    :cond_6
    invoke-virtual {p0, v1}, Lcom/inmobi/media/z6;->a(Lcom/inmobi/media/c9;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_7
    instance-of v0, v0, Lcom/inmobi/media/T7;

    .line 114
    .line 115
    if-eqz v0, :cond_8

    .line 116
    .line 117
    invoke-virtual {p0, v1}, Lcom/inmobi/media/z6;->a(Lcom/inmobi/media/c9;)V

    .line 118
    .line 119
    .line 120
    :cond_8
    :goto_2
    sget-object v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 121
    .line 122
    iget-object v0, p0, Lcom/inmobi/media/z6;->f:Lcom/inmobi/media/x;

    .line 123
    .line 124
    const-string v1, "container"

    .line 125
    .line 126
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    sget-object v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 136
    .line 137
    .line 138
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/inmobi/media/z6;->f:Lcom/inmobi/media/x;

    .line 139
    .line 140
    invoke-interface {v0}, Lcom/inmobi/media/x;->b()V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/z6;->f:Lcom/inmobi/media/x;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/inmobi/media/a9;

    .line 4
    .line 5
    const-string v2, "event"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Lcom/inmobi/media/z6;->j:Lcom/inmobi/media/l9;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v0, v4

    .line 21
    :goto_0
    instance-of v1, v0, Lcom/inmobi/media/c9;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    move-object v4, v0

    .line 26
    check-cast v4, Lcom/inmobi/media/c9;

    .line 27
    .line 28
    :cond_1
    if-eqz v4, :cond_2

    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/inmobi/media/z6;->h:Z

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    new-instance v0, Landroid/os/Handler;

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lub/p8;

    .line 44
    .line 45
    invoke-direct {v1, p0, v4}, Lub/p8;-><init>(Lcom/inmobi/media/z6;Lcom/inmobi/media/c9;)V

    .line 46
    .line 47
    .line 48
    const-wide/16 v5, 0x32

    .line 49
    .line 50
    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    .line 52
    .line 53
    :cond_2
    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/media/z6;->i:Z

    .line 54
    .line 55
    if-nez v0, :cond_4

    .line 56
    .line 57
    iput-boolean v3, p0, Lcom/inmobi/media/z6;->i:Z

    .line 58
    .line 59
    iget-object v0, p0, Lcom/inmobi/media/z6;->f:Lcom/inmobi/media/x;

    .line 60
    .line 61
    invoke-interface {v0}, Lcom/inmobi/media/x;->getFullScreenEventsListener()Lcom/inmobi/media/w;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-interface {v0, v4}, Lcom/inmobi/media/w;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 73
    .line 74
    invoke-static {v0, v2}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    instance-of v1, v0, Lcom/inmobi/media/T7;

    .line 85
    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    :try_start_1
    iget-boolean v1, p0, Lcom/inmobi/media/z6;->i:Z

    .line 89
    .line 90
    if-nez v1, :cond_4

    .line 91
    .line 92
    iput-boolean v3, p0, Lcom/inmobi/media/z6;->i:Z

    .line 93
    .line 94
    invoke-interface {v0}, Lcom/inmobi/media/x;->getFullScreenEventsListener()Lcom/inmobi/media/w;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    invoke-interface {v0, v4}, Lcom/inmobi/media/w;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catch_1
    move-exception v0

    .line 105
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 106
    .line 107
    invoke-static {v0, v2}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/inmobi/media/z6;->h:Z

    .line 118
    .line 119
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/inmobi/media/z6;->h:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/inmobi/media/z6;->j:Lcom/inmobi/media/l9;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/inmobi/media/l9;->pause()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/z6;->f:Lcom/inmobi/media/x;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/inmobi/media/x;->getPlacementType()B

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/inmobi/media/z6;->g:Landroid/widget/RelativeLayout;

    .line 8
    .line 9
    const/high16 v2, -0x1000000

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/inmobi/media/z6;->f:Lcom/inmobi/media/x;

    .line 15
    .line 16
    invoke-interface {v1}, Lcom/inmobi/media/x;->getDataModel()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    instance-of v2, v1, Lcom/inmobi/media/p8;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    check-cast v1, Lcom/inmobi/media/p8;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v1, v3

    .line 29
    :goto_0
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v2, v1, Lcom/inmobi/media/p8;->e:Lcom/inmobi/media/h8;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget-object v2, v2, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/e8;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget-object v2, v2, Lcom/inmobi/media/e8;->a:Landroid/graphics/Point;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move-object v2, v3

    .line 43
    :goto_1
    iget-object v4, p0, Lcom/inmobi/media/z6;->f:Lcom/inmobi/media/x;

    .line 44
    .line 45
    invoke-interface {v4}, Lcom/inmobi/media/x;->getViewableAd()Lcom/inmobi/media/Xe;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const/4 v5, 0x0

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    iget-object v6, p0, Lcom/inmobi/media/z6;->g:Landroid/widget/RelativeLayout;

    .line 53
    .line 54
    invoke-virtual {v4, v3, v6, v5}, Lcom/inmobi/media/Xe;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move-object v4, v3

    .line 60
    :goto_2
    iget-object v6, p0, Lcom/inmobi/media/z6;->f:Lcom/inmobi/media/x;

    .line 61
    .line 62
    instance-of v7, v6, Lcom/inmobi/media/a9;

    .line 63
    .line 64
    const/4 v8, 0x1

    .line 65
    if-eqz v7, :cond_8

    .line 66
    .line 67
    check-cast v6, Lcom/inmobi/media/a9;

    .line 68
    .line 69
    invoke-virtual {v6}, Lcom/inmobi/media/a9;->getVideoContainerView()Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    instance-of v7, v6, Lcom/inmobi/media/m9;

    .line 74
    .line 75
    if-eqz v7, :cond_3

    .line 76
    .line 77
    check-cast v6, Lcom/inmobi/media/m9;

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_3
    move-object v6, v3

    .line 81
    :goto_3
    if-eqz v6, :cond_8

    .line 82
    .line 83
    invoke-virtual {v6}, Lcom/inmobi/media/m9;->getVideoView()Lcom/inmobi/media/l9;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    iput-object v6, p0, Lcom/inmobi/media/z6;->j:Lcom/inmobi/media/l9;

    .line 88
    .line 89
    if-eqz v6, :cond_4

    .line 90
    .line 91
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 92
    .line 93
    .line 94
    :cond_4
    iget-object v6, p0, Lcom/inmobi/media/z6;->j:Lcom/inmobi/media/l9;

    .line 95
    .line 96
    if-eqz v6, :cond_5

    .line 97
    .line 98
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    goto :goto_4

    .line 103
    :cond_5
    move-object v6, v3

    .line 104
    :goto_4
    const-string v7, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeVideoAsset"

    .line 105
    .line 106
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    check-cast v6, Lcom/inmobi/media/c9;

    .line 110
    .line 111
    iget-object v9, v6, Lcom/inmobi/media/d8;->w:Lcom/inmobi/media/d8;

    .line 112
    .line 113
    if-eqz v9, :cond_6

    .line 114
    .line 115
    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    check-cast v9, Lcom/inmobi/media/c9;

    .line 119
    .line 120
    invoke-virtual {v6, v9}, Lcom/inmobi/media/c9;->a(Lcom/inmobi/media/c9;)V

    .line 121
    .line 122
    .line 123
    :cond_6
    const-string v7, "placementType"

    .line 124
    .line 125
    if-nez v0, :cond_7

    .line 126
    .line 127
    iget-object v0, v6, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_7
    iget-object v0, v6, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 138
    .line 139
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    :cond_8
    :goto_5
    if-eqz v4, :cond_9

    .line 147
    .line 148
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 149
    .line 150
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    iget v6, v2, Landroid/graphics/Point;->x:I

    .line 154
    .line 155
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 156
    .line 157
    invoke-direct {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 158
    .line 159
    .line 160
    iget-object v2, p0, Lcom/inmobi/media/z6;->g:Landroid/widget/RelativeLayout;

    .line 161
    .line 162
    invoke-virtual {v2, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .line 164
    .line 165
    :cond_9
    iget-object v0, p0, Lcom/inmobi/media/z6;->e:Ljava/lang/ref/WeakReference;

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Landroid/app/Activity;

    .line 172
    .line 173
    if-nez v0, :cond_a

    .line 174
    .line 175
    goto :goto_8

    .line 176
    :cond_a
    if-nez v1, :cond_b

    .line 177
    .line 178
    goto :goto_8

    .line 179
    :cond_b
    iget-byte v1, v1, Lcom/inmobi/media/p8;->b:B

    .line 180
    .line 181
    if-ne v1, v8, :cond_c

    .line 182
    .line 183
    move v5, v8

    .line 184
    goto :goto_6

    .line 185
    :cond_c
    const/4 v2, 0x2

    .line 186
    if-ne v1, v2, :cond_d

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_d
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    :goto_6
    instance-of v1, v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    .line 194
    .line 195
    if-eqz v1, :cond_f

    .line 196
    .line 197
    check-cast v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    .line 198
    .line 199
    iget-object v0, v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a:Lcom/inmobi/media/l5;

    .line 200
    .line 201
    if-nez v0, :cond_e

    .line 202
    .line 203
    const-string v0, "orientationHandler"

    .line 204
    .line 205
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    goto :goto_7

    .line 209
    :cond_e
    move-object v3, v0

    .line 210
    :goto_7
    iget-object v0, v3, Lcom/inmobi/media/l5;->a:Lcom/inmobi/ads/rendering/InMobiAdActivity;

    .line 211
    .line 212
    invoke-virtual {v0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 213
    .line 214
    .line 215
    :cond_f
    :goto_8
    return-void
.end method

.method public final g()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/z6;->f:Lcom/inmobi/media/x;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/inmobi/media/x;->getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/inmobi/media/z6;->f:Lcom/inmobi/media/x;

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/inmobi/media/x;->getViewableAd()Lcom/inmobi/media/Xe;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/inmobi/media/Xe;->b()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    goto :goto_4

    .line 23
    :cond_0
    move-object v3, v2

    .line 24
    :goto_0
    if-eqz v3, :cond_7

    .line 25
    .line 26
    iget-object v3, p0, Lcom/inmobi/media/z6;->f:Lcom/inmobi/media/x;

    .line 27
    .line 28
    instance-of v4, v3, Lcom/inmobi/media/a9;

    .line 29
    .line 30
    if-eqz v4, :cond_5

    .line 31
    .line 32
    iget-object v3, p0, Lcom/inmobi/media/z6;->j:Lcom/inmobi/media/l9;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object v3, v2

    .line 42
    :goto_1
    instance-of v4, v3, Lcom/inmobi/media/c9;

    .line 43
    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    check-cast v3, Lcom/inmobi/media/c9;

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move-object v3, v2

    .line 50
    :goto_2
    if-eqz v3, :cond_7

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getViewability()Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getVideoImpressionMinTimeViewed()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    iget-object v3, v3, Lcom/inmobi/media/c9;->F:Ljava/util/HashMap;

    .line 61
    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    const-string v5, "time"

    .line 65
    .line 66
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    move-object v3, v2

    .line 72
    :goto_3
    instance-of v5, v3, Ljava/lang/Integer;

    .line 73
    .line 74
    if-eqz v5, :cond_4

    .line 75
    .line 76
    check-cast v3, Ljava/lang/Number;

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    :cond_4
    invoke-virtual {v0, v4}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->setVideoImpressionMinTimeViewed(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Lcom/inmobi/media/Xe;->a(Ljava/util/Map;)V

    .line 86
    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_5
    instance-of v0, v3, Lcom/inmobi/media/T7;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/inmobi/media/Xe;->a(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    .line 95
    .line 96
    goto :goto_5

    .line 97
    :catch_1
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/media/z6;->f:Lcom/inmobi/media/x;

    .line 98
    .line 99
    invoke-interface {v0}, Lcom/inmobi/media/x;->getFullScreenEventsListener()Lcom/inmobi/media/w;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_7

    .line 104
    .line 105
    invoke-interface {v0}, Lcom/inmobi/media/w;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_5

    .line 109
    :goto_4
    iget-object v1, p0, Lcom/inmobi/media/z6;->f:Lcom/inmobi/media/x;

    .line 110
    .line 111
    invoke-interface {v1}, Lcom/inmobi/media/x;->getFullScreenEventsListener()Lcom/inmobi/media/w;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-eqz v1, :cond_6

    .line 116
    .line 117
    invoke-interface {v1}, Lcom/inmobi/media/w;->a()V

    .line 118
    .line 119
    .line 120
    :cond_6
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 121
    .line 122
    const-string v1, "event"

    .line 123
    .line 124
    invoke-static {v0, v1}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 129
    .line 130
    invoke-virtual {v1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 131
    .line 132
    .line 133
    :cond_7
    :goto_5
    return-void
.end method
