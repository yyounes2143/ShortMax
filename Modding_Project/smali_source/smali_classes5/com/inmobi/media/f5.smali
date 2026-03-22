.class public final Lcom/inmobi/media/f5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/g5;)V
    .locals 1

    .line 1
    const-string v0, "impressionTracker"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const-class v0, Lcom/inmobi/media/f5;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/inmobi/media/f5;->a:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/inmobi/media/f5;->b:Ljava/util/ArrayList;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/inmobi/media/f5;->c:Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/f5;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/f5;->c:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/inmobi/media/g5;

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    iget-object v1, v0, Lcom/inmobi/media/g5;->b:Ljava/util/WeakHashMap;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/util/Map$Entry;

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/view/View;

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/inmobi/media/e5;

    .line 49
    .line 50
    iget-object v4, p0, Lcom/inmobi/media/f5;->a:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    iget-wide v4, v2, Lcom/inmobi/media/e5;->d:J

    .line 59
    .line 60
    iget v6, v2, Lcom/inmobi/media/e5;->c:I

    .line 61
    .line 62
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v7

    .line 66
    sub-long/2addr v7, v4

    .line 67
    int-to-long v4, v6

    .line 68
    cmp-long v4, v7, v4

    .line 69
    .line 70
    if-ltz v4, :cond_0

    .line 71
    .line 72
    iget-object v4, p0, Lcom/inmobi/media/f5;->a:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v4, v0, Lcom/inmobi/media/g5;->h:Lcom/inmobi/media/d5;

    .line 78
    .line 79
    iget-object v2, v2, Lcom/inmobi/media/e5;->a:Ljava/lang/Object;

    .line 80
    .line 81
    invoke-interface {v4, v3, v2}, Lcom/inmobi/media/d5;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lcom/inmobi/media/f5;->b:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/inmobi/media/f5;->b:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_2

    .line 101
    .line 102
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    check-cast v2, Landroid/view/View;

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Lcom/inmobi/media/g5;->a(Landroid/view/View;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/inmobi/media/f5;->b:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 115
    .line 116
    .line 117
    iget-object v1, v0, Lcom/inmobi/media/g5;->b:Ljava/util/WeakHashMap;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_4

    .line 124
    .line 125
    iget-object v1, v0, Lcom/inmobi/media/g5;->e:Landroid/os/Handler;

    .line 126
    .line 127
    const/4 v2, 0x0

    .line 128
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_3

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_3
    iget-object v1, v0, Lcom/inmobi/media/g5;->e:Landroid/os/Handler;

    .line 136
    .line 137
    iget-object v2, v0, Lcom/inmobi/media/g5;->f:Lcom/inmobi/media/f5;

    .line 138
    .line 139
    iget-wide v3, v0, Lcom/inmobi/media/g5;->g:J

    .line 140
    .line 141
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    .line 143
    .line 144
    :cond_4
    :goto_2
    return-void
.end method
