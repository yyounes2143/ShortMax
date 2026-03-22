.class Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB$1;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB$1;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB$1;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;->oJ(Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;Z)Z

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB$1;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;->ZYk:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB$1;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;->ZYk(Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;Z)Z

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB$1;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;->oJ(Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB$1;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;->ZYk:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;

    .line 56
    .line 57
    iget-object v4, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB$1;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;

    .line 58
    .line 59
    invoke-static {v4}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;->ZYk(Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v1, 0x0

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB$1;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;

    .line 72
    .line 73
    iget-object v3, v3, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;->ZYk:Ljava/util/List;

    .line 74
    .line 75
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    iget-object v3, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB$1;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;

    .line 79
    .line 80
    iget-object v3, v3, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;->ZYk:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB$1;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;

    .line 86
    .line 87
    invoke-static {v3, v2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;->ZYk(Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;Z)Z

    .line 88
    .line 89
    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB$1;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;->ex(Ljava/util/List;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB$1;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;->ZYk(Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;->ex(Ljava/util/List;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB$1;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;->ZYk(Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :goto_2
    monitor-exit v0

    .line 119
    throw v1
.end method
