.class public Lcom/bytedance/bdtracker/e0$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/e0;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/bytedance/bdtracker/e0;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/e0;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/e0$c;->b:Lcom/bytedance/bdtracker/e0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/bdtracker/e0$c;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0$c;->a:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_4

    .line 10
    .line 11
    new-instance v0, Lcom/bytedance/bdtracker/d4;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/bytedance/bdtracker/d4;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/bytedance/bdtracker/e0$c;->b:Lcom/bytedance/bdtracker/e0;

    .line 17
    .line 18
    iget-object v2, v1, Lcom/bytedance/bdtracker/e0;->l:Lcom/bytedance/bdtracker/i0;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/r1;->e()Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, v2, Lcom/bytedance/bdtracker/c0;->f:Lcom/bytedance/bdtracker/d;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/d;->getHeaderCustomCallback()Lcom/bytedance/applog/IHeaderCustomTimelyCallback;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-interface {v2, v1}, Lcom/bytedance/applog/IHeaderCustomTimelyCallback;->updateHeader(Lorg/json/JSONObject;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iput-object v1, v0, Lcom/bytedance/bdtracker/d4;->y:Lorg/json/JSONObject;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/bytedance/bdtracker/e0$c;->b:Lcom/bytedance/bdtracker/e0;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v1, v0, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/bytedance/bdtracker/e0$c;->a:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Lcom/bytedance/bdtracker/u3;

    .line 73
    .line 74
    instance-of v4, v3, Lcom/bytedance/bdtracker/b4;

    .line 75
    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    check-cast v3, Lcom/bytedance/bdtracker/b4;

    .line 79
    .line 80
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    iput-object v1, v0, Lcom/bytedance/bdtracker/d4;->s:Ljava/util/List;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d4;->m()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d4;->n()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d4;->o()[B

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iput-object v1, v0, Lcom/bytedance/bdtracker/d4;->z:[B

    .line 97
    .line 98
    iget-object v1, p0, Lcom/bytedance/bdtracker/e0$c;->b:Lcom/bytedance/bdtracker/e0;

    .line 99
    .line 100
    iget-object v1, v1, Lcom/bytedance/bdtracker/e0;->l:Lcom/bytedance/bdtracker/i0;

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Lcom/bytedance/bdtracker/i0;->a(Lcom/bytedance/bdtracker/d4;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0$c;->b:Lcom/bytedance/bdtracker/e0;

    .line 109
    .line 110
    const-wide/16 v1, 0x0

    .line 111
    .line 112
    iput-wide v1, v0, Lcom/bytedance/bdtracker/e0;->D:J

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/e0;->c()Lcom/bytedance/bdtracker/a4;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/bytedance/bdtracker/e0$c;->a:Ljava/util/List;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/bytedance/bdtracker/a4;->c:Lcom/bytedance/bdtracker/z3;

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/z3;->a(Ljava/util/List;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0$c;->b:Lcom/bytedance/bdtracker/e0;

    .line 127
    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 129
    .line 130
    .line 131
    move-result-wide v1

    .line 132
    iput-wide v1, v0, Lcom/bytedance/bdtracker/e0;->D:J

    .line 133
    .line 134
    iget-object v0, p0, Lcom/bytedance/bdtracker/e0$c;->b:Lcom/bytedance/bdtracker/e0;

    .line 135
    .line 136
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->p:Landroid/os/Handler;

    .line 137
    .line 138
    iget-object v1, p0, Lcom/bytedance/bdtracker/e0$c;->a:Ljava/util/List;

    .line 139
    .line 140
    const/16 v2, 0x8

    .line 141
    .line 142
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 147
    .line 148
    .line 149
    :cond_4
    :goto_1
    return-void
.end method
