.class final Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager$saveShowCountInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AdShowCountManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->k(Ljava/lang/String;)Lkotlinx/coroutines/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.manager.configure.ad.AdShowCountManager$saveShowCountInfo$1"
    f = "AdShowCountManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAdShowCountManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdShowCountManager.kt\ncom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager$saveShowCountInfo$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n774#2:147\n865#2,2:148\n1#3:150\n*S KotlinDebug\n*F\n+ 1 AdShowCountManager.kt\ncom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager$saveShowCountInfo$1\n*L\n86#1:147\n86#1:148,2\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager$saveShowCountInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager$saveShowCountInfo$1;->i:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager$saveShowCountInfo$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager$saveShowCountInfo$1;->i:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager$saveShowCountInfo$1;-><init>(Ljava/lang/String;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager$saveShowCountInfo$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager$saveShowCountInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager$saveShowCountInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager$saveShowCountInfo$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager$saveShowCountInfo$1;->h:I

    .line 6
    .line 7
    if-nez v1, :cond_6

    .line 8
    .line 9
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 13
    .line 14
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-virtual {p1, v1, v2}, Lcom/startshorts/androidplayer/utils/TimeUtil;->q(J)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    sget-object v2, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->c(Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/Iterable;

    .line 36
    .line 37
    new-instance v3, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    move-object v5, v4

    .line 57
    check-cast v5, Lcom/startshorts/androidplayer/bean/ad/AdShowCount;

    .line 58
    .line 59
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/ad/AdShowCount;->getDay()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-ne v5, p1, :cond_0

    .line 64
    .line 65
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager$saveShowCountInfo$1;->i:Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    move-object v5, v4

    .line 89
    check-cast v5, Lcom/startshorts/androidplayer/bean/ad/AdShowCount;

    .line 90
    .line 91
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/ad/AdShowCount;->getAdUnitId()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_2

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    const/4 v4, 0x0

    .line 103
    :goto_1
    check-cast v4, Lcom/startshorts/androidplayer/bean/ad/AdShowCount;

    .line 104
    .line 105
    if-nez v4, :cond_4

    .line 106
    .line 107
    new-instance v2, Lcom/startshorts/androidplayer/bean/ad/AdShowCount;

    .line 108
    .line 109
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager$saveShowCountInfo$1;->i:Ljava/lang/String;

    .line 110
    .line 111
    sget-object v4, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;

    .line 112
    .line 113
    invoke-static {v4, v3}, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->b(Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    invoke-direct {v2, v3, p1, v0, v4}, Lcom/startshorts/androidplayer/bean/ad/AdShowCount;-><init>(Ljava/lang/String;III)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/ad/AdShowCount;->getDay()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eq v2, p1, :cond_5

    .line 133
    .line 134
    invoke-virtual {v4, p1}, Lcom/startshorts/androidplayer/bean/ad/AdShowCount;->setDay(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4, v0}, Lcom/startshorts/androidplayer/bean/ad/AdShowCount;->setTodayShowCount(I)V

    .line 138
    .line 139
    .line 140
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_5
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/ad/AdShowCount;->getTodayShowCount()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    add-int/2addr v0, p1

    .line 148
    invoke-virtual {v4, v0}, Lcom/startshorts/androidplayer/bean/ad/AdShowCount;->setTodayShowCount(I)V

    .line 149
    .line 150
    .line 151
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    :goto_2
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;

    .line 155
    .line 156
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->c(Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;)Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    monitor-enter v0

    .line 161
    :try_start_0
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->c(Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 166
    .line 167
    .line 168
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->c(Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .line 174
    .line 175
    monitor-exit v0

    .line 176
    sget-object v0, Lud/b;->a:Lud/b;

    .line 177
    .line 178
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;->c(Lcom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager;)Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {v0, p1}, Lud/b;->i5(Ljava/util/List;)V

    .line 183
    .line 184
    .line 185
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 186
    .line 187
    const-string v0, "AdShowCountManager"

    .line 188
    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v3, "saveShowCountInfo -> "

    .line 195
    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 210
    .line 211
    return-object p1

    .line 212
    :catchall_0
    move-exception p1

    .line 213
    monitor-exit v0

    .line 214
    throw p1

    .line 215
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 216
    .line 217
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 218
    .line 219
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw p1
.end method
