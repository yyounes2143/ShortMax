.class public final Lcom/inmobi/media/Od;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final a:Lcom/inmobi/media/Od;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/Od;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/Od;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/Od;->a:Lcom/inmobi/media/Od;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/inmobi/media/d2;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v0, p1, Lcom/inmobi/media/d2;->a:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_6

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq v0, v3, :cond_6

    .line 16
    .line 17
    const-string v2, "data"

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    sget-object p1, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :pswitch_0
    sget-object v0, Lcom/inmobi/media/Pd;->i:Lcom/inmobi/media/Xd;

    .line 27
    .line 28
    if-eqz v0, :cond_9

    .line 29
    .line 30
    iget-object p1, p1, Lcom/inmobi/media/d2;->c:Ljava/util/Map;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object p1, v1

    .line 40
    :goto_0
    instance-of v2, p1, Lcom/inmobi/media/d1;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    move-object v1, p1

    .line 45
    check-cast v1, Lcom/inmobi/media/d1;

    .line 46
    .line 47
    :cond_1
    invoke-virtual {v0, v1}, Lcom/inmobi/media/Xd;->a(Lcom/inmobi/media/d1;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :pswitch_1
    sget-object v0, Lcom/inmobi/media/Pd;->i:Lcom/inmobi/media/Xd;

    .line 53
    .line 54
    if-eqz v0, :cond_9

    .line 55
    .line 56
    iget-object p1, p1, Lcom/inmobi/media/d2;->c:Ljava/util/Map;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move-object p1, v1

    .line 66
    :goto_1
    instance-of v2, p1, Lcom/inmobi/media/mf;

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    move-object v1, p1

    .line 71
    check-cast v1, Lcom/inmobi/media/mf;

    .line 72
    .line 73
    :cond_3
    if-eqz v1, :cond_9

    .line 74
    .line 75
    invoke-static {v1}, Lcom/inmobi/media/Ie;->a(Lcom/inmobi/media/T5;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_9

    .line 80
    .line 81
    sget-object p1, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/inmobi/media/L3;->z()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_9

    .line 88
    .line 89
    const-string p1, "MainThreadBlockedEvent"

    .line 90
    .line 91
    invoke-virtual {v0, p1, v1}, Lcom/inmobi/media/Xd;->a(Ljava/lang/String;Lcom/inmobi/media/T5;)V

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :pswitch_2
    sget-object v0, Lcom/inmobi/media/Pd;->i:Lcom/inmobi/media/Xd;

    .line 96
    .line 97
    if-eqz v0, :cond_9

    .line 98
    .line 99
    iget-object p1, p1, Lcom/inmobi/media/d2;->c:Ljava/util/Map;

    .line 100
    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    move-object p1, v1

    .line 109
    :goto_2
    instance-of v2, p1, Lcom/inmobi/media/m3;

    .line 110
    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    move-object v1, p1

    .line 114
    check-cast v1, Lcom/inmobi/media/m3;

    .line 115
    .line 116
    :cond_5
    const-string p1, "CrashEventOccurred"

    .line 117
    .line 118
    invoke-virtual {v0, p1, v1}, Lcom/inmobi/media/Xd;->a(Ljava/lang/String;Lcom/inmobi/media/T5;)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_6
    sget-object p1, Lcom/inmobi/media/Pd;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 123
    .line 124
    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 126
    .line 127
    .line 128
    sget-object p1, Lcom/inmobi/media/Pd;->f:Lcom/inmobi/media/t4;

    .line 129
    .line 130
    if-eqz p1, :cond_8

    .line 131
    .line 132
    iget-object v3, p1, Lcom/inmobi/media/t4;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 133
    .line 134
    if-eqz v3, :cond_7

    .line 135
    .line 136
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 137
    .line 138
    .line 139
    :cond_7
    iput-object v1, p1, Lcom/inmobi/media/t4;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 140
    .line 141
    iget-object v3, p1, Lcom/inmobi/media/t4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 142
    .line 143
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p1, Lcom/inmobi/media/t4;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p1, Lcom/inmobi/media/t4;->g:Ljava/util/LinkedList;

    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 154
    .line 155
    .line 156
    iput-object v1, p1, Lcom/inmobi/media/t4;->i:Lcom/inmobi/media/q4;

    .line 157
    .line 158
    :cond_8
    sput-object v1, Lcom/inmobi/media/Pd;->f:Lcom/inmobi/media/t4;

    .line 159
    .line 160
    sput-object v1, Lcom/inmobi/media/Pd;->i:Lcom/inmobi/media/Xd;

    .line 161
    .line 162
    invoke-static {}, Lcom/inmobi/media/Uc;->f()Lcom/inmobi/media/H7;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    sget-object v0, Lcom/inmobi/media/Pd;->h:Lcom/inmobi/media/Od;

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Lcom/inmobi/media/H7;->a(Lkotlin/jvm/functions/Function1;)V

    .line 169
    .line 170
    .line 171
    :cond_9
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 172
    .line 173
    return-object p1

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x96
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
