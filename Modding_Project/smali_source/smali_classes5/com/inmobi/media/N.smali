.class public final Lcom/inmobi/media/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ljava/lang/String;

.field public f:Lcom/inmobi/media/z5;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const-string v0, "adUnitEventListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adtype"

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
    iput-object p1, p0, Lcom/inmobi/media/N;->a:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/inmobi/media/N;->b:Ljava/lang/String;

    .line 17
    .line 18
    iput-boolean p3, p0, Lcom/inmobi/media/N;->c:Z

    .line 19
    .line 20
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/inmobi/media/N;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    const-class p1, Lcom/inmobi/media/N;

    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/inmobi/media/N;->e:Ljava/lang/String;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/Yd;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/N;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/inmobi/media/N;->f:Lcom/inmobi/media/z5;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/inmobi/media/N;->e:Ljava/lang/String;

    .line 15
    .line 16
    check-cast v0, Lcom/inmobi/media/A5;

    .line 17
    .line 18
    const-string v3, "skipping as Impression is already Called"

    .line 19
    .line 20
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object v0, p1, Lcom/inmobi/media/Yd;->a:Lcom/inmobi/media/U0;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, v0, Lcom/inmobi/media/U0;->b:Lcom/inmobi/media/Zd;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, v0, Lcom/inmobi/media/Zd;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-ne v0, v1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/media/Yd;->a()Ljava/util/LinkedHashMap;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {}, Lcom/inmobi/media/L3;->q()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, "networkType"

    .line 53
    .line 54
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/inmobi/media/Yd;->a()Ljava/util/LinkedHashMap;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const/16 v1, 0x883

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "errorCode"

    .line 68
    .line 69
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/inmobi/media/Yd;->a()Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    sget-object v0, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 77
    .line 78
    sget-object v0, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 79
    .line 80
    const-string v1, "AdImpressionSuccessful"

    .line 81
    .line 82
    invoke-static {v1, p1, v0}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_0
    return-void

    .line 86
    :cond_3
    sget-object v0, Lcom/inmobi/media/Zc;->a:Lcom/inmobi/media/Zc;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/inmobi/media/N;->b:Ljava/lang/String;

    .line 89
    .line 90
    iget-boolean v2, p0, Lcom/inmobi/media/N;->c:Z

    .line 91
    .line 92
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v2}, Lcom/inmobi/media/Zc;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/inmobi/media/N;->a:Ljava/lang/ref/WeakReference;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lcom/inmobi/media/F0;

    .line 109
    .line 110
    if-nez v0, :cond_4

    .line 111
    .line 112
    if-eqz p1, :cond_5

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/inmobi/media/Yd;->c()V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    invoke-virtual {v0, p1}, Lcom/inmobi/media/F0;->a(Lcom/inmobi/media/Yd;)V

    .line 119
    .line 120
    .line 121
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/inmobi/media/N;->f:Lcom/inmobi/media/z5;

    .line 122
    .line 123
    if-eqz p1, :cond_6

    .line 124
    .line 125
    iget-object v0, p0, Lcom/inmobi/media/N;->e:Ljava/lang/String;

    .line 126
    .line 127
    check-cast p1, Lcom/inmobi/media/A5;

    .line 128
    .line 129
    const-string v1, "==== CHECKPOINT REACHED - IMPRESSION FIRED ===="

    .line 130
    .line 131
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    iget-object p1, p0, Lcom/inmobi/media/N;->f:Lcom/inmobi/media/z5;

    .line 135
    .line 136
    if-eqz p1, :cond_7

    .line 137
    .line 138
    check-cast p1, Lcom/inmobi/media/A5;

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/inmobi/media/A5;->b()V

    .line 141
    .line 142
    .line 143
    :cond_7
    return-void
.end method
