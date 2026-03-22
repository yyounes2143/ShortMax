.class final Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadEpisodeManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->d0(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;Ljava/util/List;ILkotlin/jvm/functions/Function0;)V
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
    c = "com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager$startDownloadItemList$1"
    f = "DownloadEpisodeManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDownloadEpisodeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,923:1\n1863#2,2:924\n*S KotlinDebug\n*F\n+ 1 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1\n*L\n891#1:924,2\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

.field final synthetic j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic k:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic l:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;Ljava/util/List;Lkotlin/jvm/functions/Function0;ILrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;I",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;->i:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;->j:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;->k:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iput p4, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;->l:I

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 6
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
    new-instance p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;->i:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;->j:Ljava/util/List;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;->k:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    iget v4, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;->l:I

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;-><init>(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;Ljava/util/List;Lkotlin/jvm/functions/Function0;ILrs/c;)V

    .line 14
    .line 15
    .line 16
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->l()Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;->i:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getShortPlayId()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;->i:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 39
    .line 40
    invoke-static {}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->l()Ljava/util/HashMap;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;->i:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getShortPlayId()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;->j:Ljava/util/List;

    .line 58
    .line 59
    check-cast v1, Ljava/lang/Iterable;

    .line 60
    .line 61
    iget v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;->l:I

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const/4 v4, 0x0

    .line 72
    const/4 v5, 0x0

    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->isSelectAble()Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_1

    .line 86
    .line 87
    :try_start_0
    invoke-virtual {v3, v2}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->generalTaskInfo(I)Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    sget-object v7, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 92
    .line 93
    invoke-static {v7, v6}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->f(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v6}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->setDownloadInfo(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v5}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->setSelect(Z)V

    .line 100
    .line 101
    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v8, "\u65b0\u5efa\u4e0b\u8f7d\u4efb\u52a1:"

    .line 108
    .line 109
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-static {v3}, Luh/s;->b(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const/4 v3, 0x2

    .line 123
    invoke-static {v7, v6, v5, v3, v4}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->F(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;ZILjava/lang/Object;)Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 124
    .line 125
    .line 126
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :catch_0
    move-exception v3

    .line 131
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_3

    .line 140
    .line 141
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 142
    .line 143
    return-object p1

    .line 144
    :cond_3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getAddTaskTime()J

    .line 145
    .line 146
    .line 147
    move-result-wide v1

    .line 148
    const-wide/16 v6, 0x0

    .line 149
    .line 150
    cmp-long v1, v1, v6

    .line 151
    .line 152
    if-nez v1, :cond_4

    .line 153
    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 155
    .line 156
    .line 157
    move-result-wide v1

    .line 158
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->setAddTaskTime(J)V

    .line 159
    .line 160
    .line 161
    :cond_4
    const/4 v1, 0x1

    .line 162
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->setHasUnfinishedJob(Z)V

    .line 163
    .line 164
    .line 165
    sget-object v2, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB;->a:Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB;

    .line 166
    .line 167
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/ui/activity/download/data/ShortDB;->c(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;)V

    .line 168
    .line 169
    .line 170
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;->a:Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;

    .line 171
    .line 172
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadDB;->f(Ljava/util/List;)V

    .line 173
    .line 174
    .line 175
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    new-instance v2, Lcom/startshorts/androidplayer/ui/activity/download/b$a;

    .line 180
    .line 181
    invoke-direct {v2, p1}, Lcom/startshorts/androidplayer/ui/activity/download/b$a;-><init>(Ljava/util/List;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v2, "\u63d2\u5165\u6570\u636e\u5e93"

    .line 193
    .line 194
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$startDownloadItemList$1;->k:Lkotlin/jvm/functions/Function0;

    .line 208
    .line 209
    if-eqz p1, :cond_5

    .line 210
    .line 211
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    :cond_5
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 215
    .line 216
    invoke-static {p1, v5, v1, v4}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->b0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;ZILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 220
    .line 221
    return-object p1

    .line 222
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 223
    .line 224
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 225
    .line 226
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw p1
.end method
