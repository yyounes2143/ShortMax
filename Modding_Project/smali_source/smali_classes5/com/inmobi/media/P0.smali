.class public final Lcom/inmobi/media/P0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/inmobi/media/S0;

.field public final synthetic b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/S0;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/inmobi/media/P0;->b:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final a(Lcom/inmobi/media/S0;Ljava/lang/ref/WeakReference;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listenerWeakReference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inmobi/media/F0;

    invoke-virtual {p0, p1}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/F0;)V

    return-void
.end method

.method public static final b(Lcom/inmobi/media/S0;Ljava/lang/ref/WeakReference;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listenerWeakReference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, "<get-TAG>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "callback- onAdDisplayed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inmobi/media/F0;

    invoke-virtual {p0, p1}, Lcom/inmobi/media/S0;->b(Lcom/inmobi/media/F0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    const-string v1, "<get-TAG>(...)"

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v2

    .line 4
    const-string v3, "Ad interaction for placement id: "

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    invoke-virtual {v4}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    invoke-virtual {v0}, Lcom/inmobi/media/S0;->Z()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 9
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1

    .line 10
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "ad unit is destroyed"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/P0;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/F0;

    if-eqz v0, :cond_4

    .line 13
    iget-object v2, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 14
    iget-object v2, v2, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_3

    .line 15
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/A5;

    const-string v1, "callback - onAdInteraction"

    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/inmobi/media/F0;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 19
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_5

    .line 20
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "Listener was garbage collected.Unable to give callback"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 6
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v1

    .line 8
    const-string v2, "<get-TAG>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "onAdDismissed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    invoke-virtual {v0}, Lcom/inmobi/media/S0;->Z()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 11
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_2

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad dismissed for placement id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    invoke-virtual {v2}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "InMobi"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    invoke-virtual {v0}, Lcom/inmobi/media/S0;->D()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    iget-object v2, p0, Lcom/inmobi/media/P0;->b:Ljava/lang/ref/WeakReference;

    new-instance v3, Lub/n1;

    invoke-direct {v3, v1, v2}, Lub/n1;-><init>(Lcom/inmobi/media/S0;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 4
    .line 5
    const-string v1, "<get-TAG>(...)"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Lcom/inmobi/media/A5;

    .line 17
    .line 18
    const-string v3, "onAdDisplayFailed native interaction callback"

    .line 19
    .line 20
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->Z()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    check-cast v0, Lcom/inmobi/media/A5;

    .line 45
    .line 46
    const-string v1, "callback onAdDisplayFailed failed. already destroyed."

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/P0;->b:Ljava/lang/ref/WeakReference;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/inmobi/media/F0;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    iget-object v2, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 63
    .line 64
    iget-object v2, v2, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    check-cast v2, Lcom/inmobi/media/A5;

    .line 76
    .line 77
    const-string v1, "callback - onAdShowFailed"

    .line 78
    .line 79
    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    iget-object v1, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 83
    .line 84
    const/16 v2, 0x5b

    .line 85
    .line 86
    invoke-virtual {v1, v0, v2}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/F0;S)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 93
    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    check-cast v0, Lcom/inmobi/media/A5;

    .line 104
    .line 105
    const-string v1, "Listener was garbage collected.Unable to give callback"

    .line 106
    .line 107
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 4
    .line 5
    const-string v1, "<get-TAG>(...)"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Lcom/inmobi/media/A5;

    .line 17
    .line 18
    const-string v3, "onAdDisplay "

    .line 19
    .line 20
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 24
    .line 25
    const/4 v2, 0x4

    .line 26
    invoke-virtual {v0, v2}, Lcom/inmobi/media/S0;->b(B)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->Z()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    check-cast v0, Lcom/inmobi/media/A5;

    .line 51
    .line 52
    const-string v1, "onAdDisplay callback failed. adunit destroyed."

    .line 53
    .line 54
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->D()Landroid/os/Handler;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-object v1, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/inmobi/media/P0;->b:Ljava/lang/ref/WeakReference;

    .line 69
    .line 70
    new-instance v3, Lub/o1;

    .line 71
    .line 72
    invoke-direct {v3, v1, v2}, Lub/o1;-><init>(Lcom/inmobi/media/S0;Ljava/lang/ref/WeakReference;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    :cond_3
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 4
    .line 5
    const-string v1, "<get-TAG>(...)"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Lcom/inmobi/media/A5;

    .line 17
    .line 18
    const-string v3, "onAdFullScreenWillDisplay"

    .line 19
    .line 20
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->Z()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    check-cast v0, Lcom/inmobi/media/A5;

    .line 45
    .line 46
    const-string v1, "onAdFullScreenWillDisplay callback failed. adunit destroyed"

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/P0;->b:Ljava/lang/ref/WeakReference;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/inmobi/media/F0;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    iget-object v2, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 63
    .line 64
    iget-object v2, v2, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    check-cast v2, Lcom/inmobi/media/A5;

    .line 76
    .line 77
    const-string v1, "callback - onAdScreenWillDisplay"

    .line 78
    .line 79
    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/media/F0;->e()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    check-cast v0, Lcom/inmobi/media/A5;

    .line 100
    .line 101
    const-string v1, "Listener was garbage collected.Unable to give callback"

    .line 102
    .line 103
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 4
    .line 5
    const-string v1, "<get-TAG>(...)"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "Successfully impressed ad for placement id: "

    .line 14
    .line 15
    invoke-static {v2, v1, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v4, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 20
    .line 21
    invoke-virtual {v4}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v0, Lcom/inmobi/media/A5;

    .line 33
    .line 34
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->Z()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    check-cast v0, Lcom/inmobi/media/A5;

    .line 59
    .line 60
    const-string v1, "ad unit is destroyed"

    .line 61
    .line 62
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/P0;->b:Ljava/lang/ref/WeakReference;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/inmobi/media/F0;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    iget-object v2, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 77
    .line 78
    iget-object v2, v2, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 79
    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    check-cast v2, Lcom/inmobi/media/A5;

    .line 90
    .line 91
    const-string v1, "callback - onAdImpressed"

    .line 92
    .line 93
    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/media/F0;->c()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 103
    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    check-cast v0, Lcom/inmobi/media/A5;

    .line 114
    .line 115
    const-string v1, "Listener was garbage collected.Unable to give callback"

    .line 116
    .line 117
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_5
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "<get-TAG>(...)"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Lcom/inmobi/media/A5;

    .line 17
    .line 18
    const-string v2, "onUserLeftApplication"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->Z()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/P0;->b:Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/inmobi/media/F0;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/inmobi/media/F0;->h()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    check-cast v0, Lcom/inmobi/media/A5;

    .line 53
    .line 54
    const-string v1, "InMobi"

    .line 55
    .line 56
    const-string v2, "Listener was garbage collected.Unable to give callback"

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "<get-TAG>(...)"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Lcom/inmobi/media/A5;

    .line 17
    .line 18
    const-string v2, "onUserSkippedMedia"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->Z()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/P0;->b:Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/inmobi/media/F0;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/inmobi/media/F0;->i()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    check-cast v0, Lcom/inmobi/media/A5;

    .line 53
    .line 54
    const-string v1, "InMobi"

    .line 55
    .line 56
    const-string v2, "Listener was garbage collected.Unable to give callback"

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_0
    return-void
.end method
