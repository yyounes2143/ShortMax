.class public final Lcom/inmobi/media/F5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/inmobi/media/ye;

.field public final b:Lcom/inmobi/media/Be;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/ye;Lcom/inmobi/media/Be;)V
    .locals 1

    .line 1
    const-string v0, "request"

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
    iput-object p1, p0, Lcom/inmobi/media/F5;->a:Lcom/inmobi/media/ye;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/inmobi/media/F5;->b:Lcom/inmobi/media/Be;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    const-class v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/inmobi/media/F5;->b:Lcom/inmobi/media/Be;

    .line 5
    .line 6
    iget v3, v2, Lcom/inmobi/media/Ac;->y:I

    .line 7
    .line 8
    if-gt v1, v3, :cond_6

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/inmobi/media/N9;->b()Lcom/inmobi/media/P9;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/inmobi/media/F5;->b:Lcom/inmobi/media/Be;

    .line 15
    .line 16
    iget-object v3, v3, Lcom/inmobi/media/Ac;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {v2}, Lcom/inmobi/media/P9;->b()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const-string v4, "TAG"

    .line 30
    .line 31
    const-string v5, "F5"

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, v2, Lcom/inmobi/media/P9;->d:Lcom/inmobi/media/I9;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/inmobi/media/F5;->b:Lcom/inmobi/media/Be;

    .line 41
    .line 42
    iget v3, v3, Lcom/inmobi/media/Ac;->y:I

    .line 43
    .line 44
    if-ne v1, v3, :cond_4

    .line 45
    .line 46
    iget-object v0, p0, Lcom/inmobi/media/F5;->a:Lcom/inmobi/media/ye;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lcom/inmobi/media/ye;->a(Lcom/inmobi/media/I9;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lcom/inmobi/media/P9;->a()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    new-instance v3, Lorg/json/JSONObject;

    .line 57
    .line 58
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    iget-object v2, p0, Lcom/inmobi/media/F5;->a:Lcom/inmobi/media/ye;

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Lcom/inmobi/media/ye;->a(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception v2

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    new-instance v2, Lcom/inmobi/media/q6;

    .line 76
    .line 77
    invoke-direct {v2}, Lcom/inmobi/media/q6;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3, v0}, Lcom/inmobi/media/q6;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iget-object v3, p0, Lcom/inmobi/media/F5;->a:Lcom/inmobi/media/ye;

    .line 85
    .line 86
    invoke-virtual {v3, v2}, Lcom/inmobi/media/ye;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    :goto_1
    return-void

    .line 90
    :goto_2
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Lcom/inmobi/media/F5;->b:Lcom/inmobi/media/Be;

    .line 94
    .line 95
    iget v3, v3, Lcom/inmobi/media/Ac;->y:I

    .line 96
    .line 97
    if-ne v1, v3, :cond_4

    .line 98
    .line 99
    iget-object v0, p0, Lcom/inmobi/media/F5;->a:Lcom/inmobi/media/ye;

    .line 100
    .line 101
    new-instance v1, Lcom/inmobi/media/I9;

    .line 102
    .line 103
    sget-object v3, Lcom/inmobi/media/o4;->l:Lcom/inmobi/media/o4;

    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    if-nez v2, :cond_3

    .line 110
    .line 111
    const-string v2, "Exception while parsing the response"

    .line 112
    .line 113
    :cond_3
    invoke-direct {v1, v3, v2}, Lcom/inmobi/media/I9;-><init>(Lcom/inmobi/media/o4;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/inmobi/media/ye;->a(Lcom/inmobi/media/I9;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/inmobi/media/F5;->b:Lcom/inmobi/media/Be;

    .line 121
    .line 122
    iget v2, v2, Lcom/inmobi/media/Ac;->z:I

    .line 123
    .line 124
    mul-int/lit16 v2, v2, 0x3e8

    .line 125
    .line 126
    int-to-long v2, v2

    .line 127
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :catch_1
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :goto_3
    iget-object v2, p0, Lcom/inmobi/media/F5;->b:Lcom/inmobi/media/Be;

    .line 135
    .line 136
    iget-object v2, v2, Lcom/inmobi/media/Ac;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_5

    .line 143
    .line 144
    return-void

    .line 145
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_6
    return-void
.end method
