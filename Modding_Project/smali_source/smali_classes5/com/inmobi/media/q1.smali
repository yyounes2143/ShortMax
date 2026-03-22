.class public final Lcom/inmobi/media/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final a:Ljava/util/concurrent/CountDownLatch;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "countDownLatch"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "remoteUrl"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "assetAdType"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/inmobi/media/q1;->a:Ljava/util/concurrent/CountDownLatch;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/inmobi/media/q1;->b:Ljava/lang/String;

    .line 22
    .line 23
    iput-wide p3, p0, Lcom/inmobi/media/q1;->c:J

    .line 24
    .line 25
    iput-object p5, p0, Lcom/inmobi/media/q1;->d:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-string v0, "proxy"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "args"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/inmobi/media/t1;->a:Lcom/inmobi/media/t1;

    .line 12
    .line 13
    const-string p1, "t1"

    .line 14
    .line 15
    const-string p3, "access$getTAG$p(...)"

    .line 16
    .line 17
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string p3, "onSuccess"

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-static {p3, p1, v0}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    iget-wide v0, p0, Lcom/inmobi/media/q1;->c:J

    .line 43
    .line 44
    sub-long/2addr p1, v0

    .line 45
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string p2, "latency"

    .line 50
    .line 51
    invoke-static {p2, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const/4 p2, 0x0

    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    const-string p3, "size"

    .line 61
    .line 62
    invoke-static {p3, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    const-string p3, "assetType"

    .line 67
    .line 68
    const-string v0, "image"

    .line 69
    .line 70
    invoke-static {p3, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-static {}, Lcom/inmobi/media/L3;->q()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "networkType"

    .line 79
    .line 80
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/inmobi/media/q1;->d:Ljava/lang/String;

    .line 85
    .line 86
    const-string v2, "adType"

    .line 87
    .line 88
    invoke-static {v2, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    filled-new-array {p1, p2, p3, v0, v1}, [Lkotlin/Pair;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Lkotlin/collections/p0;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    sget-object p2, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 101
    .line 102
    sget-object p2, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 103
    .line 104
    const-string p3, "AssetDownloaded"

    .line 105
    .line 106
    invoke-static {p3, p1, p2}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 107
    .line 108
    .line 109
    sget-object p1, Lcom/inmobi/media/t1;->a:Lcom/inmobi/media/t1;

    .line 110
    .line 111
    iget-object p2, p0, Lcom/inmobi/media/q1;->b:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Lcom/inmobi/media/t1;->d(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/inmobi/media/q1;->a:Ljava/util/concurrent/CountDownLatch;

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-string p2, "onError"

    .line 127
    .line 128
    invoke-static {p2, p1, v0}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_1

    .line 133
    .line 134
    sget-object p1, Lcom/inmobi/media/t1;->a:Lcom/inmobi/media/t1;

    .line 135
    .line 136
    iget-object p2, p0, Lcom/inmobi/media/q1;->b:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Lcom/inmobi/media/t1;->c(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/inmobi/media/q1;->a:Ljava/util/concurrent/CountDownLatch;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 144
    .line 145
    .line 146
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 147
    return-object p1
.end method
