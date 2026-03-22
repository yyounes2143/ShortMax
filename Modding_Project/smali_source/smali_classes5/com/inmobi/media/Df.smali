.class public final Lcom/inmobi/media/Df;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/yf;


# static fields
.field public static final g:Ljava/util/WeakHashMap;


# instance fields
.field public final a:Lcom/inmobi/media/Af;

.field public final b:Lcom/inmobi/media/z5;

.field public c:Landroid/view/View;

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;

.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Lcom/inmobi/media/pa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/Df;->g:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/inmobi/media/Af;Lcom/inmobi/media/z5;)V
    .locals 2

    .line 1
    const-string v0, "windowInsetListener"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/inmobi/media/Df;->a:Lcom/inmobi/media/Af;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/inmobi/media/Df;->b:Lcom/inmobi/media/z5;

    .line 12
    .line 13
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/inmobi/media/Df;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lcom/inmobi/media/Df;->e:Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    sget-object p1, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/inmobi/media/L3;->F()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const-string v0, "WindowInsetsHandler"

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/app/Activity;

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 p1, 0x0

    .line 57
    :goto_0
    if-eqz p1, :cond_4

    .line 58
    .line 59
    iput-object p1, p0, Lcom/inmobi/media/Df;->c:Landroid/view/View;

    .line 60
    .line 61
    if-eqz p3, :cond_1

    .line 62
    .line 63
    move-object p2, p3

    .line 64
    check-cast p2, Lcom/inmobi/media/A5;

    .line 65
    .line 66
    const-string v1, "startListeningToInsets"

    .line 67
    .line 68
    invoke-virtual {p2, v0, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    sget-object p2, Lcom/inmobi/media/Df;->g:Ljava/util/WeakHashMap;

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    new-instance v0, Lcom/inmobi/media/zf;

    .line 80
    .line 81
    invoke-direct {v0, p1}, Lcom/inmobi/media/zf;-><init>(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :cond_2
    check-cast v0, Lcom/inmobi/media/zf;

    .line 88
    .line 89
    const-string p1, "listener"

    .line 90
    .line 91
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, v0, Lcom/inmobi/media/zf;->a:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    if-eqz p3, :cond_4

    .line 100
    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v0, " created - "

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/util/WeakHashMap;->size()I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p3, Lcom/inmobi/media/A5;

    .line 126
    .line 127
    const-string p2, "WindowInsetsHandler_INSTANCE"

    .line 128
    .line 129
    invoke-virtual {p3, p2, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    if-eqz p3, :cond_4

    .line 134
    .line 135
    check-cast p3, Lcom/inmobi/media/A5;

    .line 136
    .line 137
    const-string p1, "WindowInsetsHandler is not supported for this version"

    .line 138
    .line 139
    invoke-virtual {p3, v0, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/inmobi/media/Df;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 24
    sget-object v1, Lcom/inmobi/media/Df;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/zf;

    if-nez v2, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    const-string v3, "listener"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v3, v2, Lcom/inmobi/media/zf;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    iget-object v3, v2, Lcom/inmobi/media/zf;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 28
    invoke-virtual {v2}, Lcom/inmobi/media/zf;->a()V

    .line 29
    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/Df;->b:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " destroy - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "WindowInsetsHandler_INSTANCE"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/inmobi/media/Bf;I)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/inmobi/media/U3;->g()B

    move-result v0

    invoke-static {v0}, Lcom/inmobi/media/qa;->a(B)Lcom/inmobi/media/pa;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/Df;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/Cf;

    if-nez v1, :cond_0

    new-instance v1, Lcom/inmobi/media/Cf;

    invoke-direct {v1}, Lcom/inmobi/media/Cf;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/inmobi/media/Df;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    const-string v2, "orientation"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, v1, Lcom/inmobi/media/Cf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/media/Bf;

    const-string v4, "WindowInsetsHandler"

    if-eqz v3, :cond_1

    .line 6
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    iget-object p1, p0, Lcom/inmobi/media/Df;->b:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_4

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "SafeArea - Same value, no need to update"

    invoke-virtual {p1, v4, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/inmobi/media/Df;->b:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_2

    check-cast v3, Lcom/inmobi/media/A5;

    const-string v5, "safeArea - New value, updating to KV store"

    invoke-virtual {v3, v4, v5}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_2
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "insets"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v1, v1, Lcom/inmobi/media/Cf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/inmobi/media/Df;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/p0;->e(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 13
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 15
    check-cast v2, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 17
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/media/Cf;

    invoke-virtual {v2}, Lcom/inmobi/media/Cf;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 18
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_3
    invoke-static {v1}, Lcom/inmobi/media/U3;->a(Ljava/util/LinkedHashMap;)V

    .line 20
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/inmobi/media/Df;->f:Lcom/inmobi/media/pa;

    if-eq p1, v0, :cond_5

    .line 21
    iput-object v0, p0, Lcom/inmobi/media/Df;->f:Lcom/inmobi/media/pa;

    .line 22
    iget-object p1, p0, Lcom/inmobi/media/Df;->a:Lcom/inmobi/media/Af;

    iget-object v1, p0, Lcom/inmobi/media/Df;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/inmobi/media/Cf;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/media/Af;->a(Lcom/inmobi/media/pa;Lcom/inmobi/media/Cf;)V

    :cond_5
    return-void
.end method
