.class public final Lcom/inmobi/media/c5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/hf;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/g5;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/g5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/c5;->a:Lcom/inmobi/media/g5;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    const-string v0, "visibleViews"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "invisibleViews"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/inmobi/media/c5;->a:Lcom/inmobi/media/g5;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/inmobi/media/g5;->d:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "access$getTAG$p(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/view/View;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/inmobi/media/c5;->a:Lcom/inmobi/media/g5;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/inmobi/media/g5;->a:Ljava/util/WeakHashMap;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/inmobi/media/e5;

    .line 51
    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    iget-object v1, p0, Lcom/inmobi/media/c5;->a:Lcom/inmobi/media/g5;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Lcom/inmobi/media/g5;->a(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/inmobi/media/c5;->a:Lcom/inmobi/media/g5;

    .line 61
    .line 62
    iget-object v2, v2, Lcom/inmobi/media/g5;->b:Ljava/util/WeakHashMap;

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/inmobi/media/e5;

    .line 69
    .line 70
    iget-object v3, v1, Lcom/inmobi/media/e5;->a:Ljava/lang/Object;

    .line 71
    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    iget-object v2, v2, Lcom/inmobi/media/e5;->a:Ljava/lang/Object;

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    const/4 v2, 0x0

    .line 78
    :goto_1
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    iput-wide v2, v1, Lcom/inmobi/media/e5;->d:J

    .line 90
    .line 91
    iget-object v2, p0, Lcom/inmobi/media/c5;->a:Lcom/inmobi/media/g5;

    .line 92
    .line 93
    iget-object v2, v2, Lcom/inmobi/media/g5;->b:Ljava/util/WeakHashMap;

    .line 94
    .line 95
    invoke-virtual {v2, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_4

    .line 108
    .line 109
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    check-cast p2, Landroid/view/View;

    .line 114
    .line 115
    iget-object v0, p0, Lcom/inmobi/media/c5;->a:Lcom/inmobi/media/g5;

    .line 116
    .line 117
    iget-object v0, v0, Lcom/inmobi/media/g5;->b:Ljava/util/WeakHashMap;

    .line 118
    .line 119
    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    iget-object p1, p0, Lcom/inmobi/media/c5;->a:Lcom/inmobi/media/g5;

    .line 124
    .line 125
    iget-object p2, p1, Lcom/inmobi/media/g5;->e:Landroid/os/Handler;

    .line 126
    .line 127
    const/4 v0, 0x0

    .line 128
    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-eqz p2, :cond_5

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_5
    iget-object p2, p1, Lcom/inmobi/media/g5;->e:Landroid/os/Handler;

    .line 136
    .line 137
    iget-object v0, p1, Lcom/inmobi/media/g5;->f:Lcom/inmobi/media/f5;

    .line 138
    .line 139
    iget-wide v1, p1, Lcom/inmobi/media/g5;->g:J

    .line 140
    .line 141
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    .line 143
    .line 144
    :goto_3
    return-void
.end method
