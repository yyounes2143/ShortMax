.class public final Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "CollectionViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCollectionViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionViewModel.kt\ncom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,298:1\n1863#2:299\n1863#2,2:304\n1864#2:306\n216#3,2:300\n216#3,2:302\n*S KotlinDebug\n*F\n+ 1 CollectionViewModel.kt\ncom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel\n*L\n247#1:299\n279#1:304,2\n247#1:306\n261#1:300,2\n270#1:302,2\n*E\n"
    }
.end annotation


# static fields
.field public static final g:Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private e:Z

.field private final f:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->g:Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lxk/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lxk/a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->f:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic A(Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->T(Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->R(Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->N()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic D(Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->M(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->O(Ljava/util/List;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->U()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method private final J(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lkotlinx/coroutines/r;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lkotlinx/coroutines/r;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p0

    .line 8
    move-object v4, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Ljava/util/List;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    const-string v1, "cancelCollections"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    move-object v0, p0

    .line 17
    move-object v3, v6

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private final K(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/startshorts/androidplayer/bean/mylist/CancelCollectBatchRequest;)Lkotlinx/coroutines/r;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/mylist/CancelCollectBatchRequest;",
            ")",
            "Lkotlinx/coroutines/r;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections2$1;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v0, v7

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p4

    .line 7
    move-object v3, p0

    .line 8
    move-object v4, p3

    .line 9
    move-object v5, p2

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections2$1;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/mylist/CancelCollectBatchRequest;Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Ljava/util/List;Ljava/util/List;Lrs/c;)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x0

    .line 15
    const-string v1, "cancelCollections2"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    move-object v0, p0

    .line 19
    move-object v3, v7

    .line 20
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method private final M(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->e:Z

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->x(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 8
    .line 9
    const-string v1, "collections"

    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->m0(Lcom/startshorts/androidplayer/bean/exception/ResponseException;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final N()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final O(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Number;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sget-object v1, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->a:Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->f()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_4

    .line 30
    .line 31
    monitor-enter v1

    .line 32
    :try_start_0
    move-object v2, v1

    .line 33
    check-cast v2, Ljava/lang/Iterable;

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    move-object v4, v3

    .line 50
    check-cast v4, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-ne v4, v0, :cond_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_3

    .line 61
    :cond_1
    const/4 v3, 0x0

    .line 62
    :goto_1
    check-cast v3, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 63
    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setCollected()V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->cancelCollected()V

    .line 73
    .line 74
    .line 75
    :goto_2
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    :cond_3
    monitor-exit v1

    .line 78
    goto :goto_4

    .line 79
    :goto_3
    monitor-exit v1

    .line 80
    throw p1

    .line 81
    :cond_4
    :goto_4
    sget-object v1, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->a:Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->l()Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_7

    .line 88
    .line 89
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_7

    .line 102
    .line 103
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Ljava/util/Map$Entry;

    .line 108
    .line 109
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 114
    .line 115
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-ne v3, v0, :cond_5

    .line 120
    .line 121
    if-eqz p2, :cond_6

    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setCollected()V

    .line 124
    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_6
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->cancelCollected()V

    .line 128
    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_7
    sget-object v1, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->a:Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRepo;->n()Ljava/util/concurrent/ConcurrentHashMap;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    if-eqz v1, :cond_a

    .line 138
    .line 139
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    :cond_8
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_a

    .line 152
    .line 153
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    check-cast v2, Ljava/util/Map$Entry;

    .line 158
    .line 159
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    check-cast v2, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 164
    .line 165
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-ne v3, v0, :cond_8

    .line 170
    .line 171
    if-eqz p2, :cond_9

    .line 172
    .line 173
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setCollected()V

    .line 174
    .line 175
    .line 176
    goto :goto_6

    .line 177
    :cond_9
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->cancelCollected()V

    .line 178
    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_a
    sget-object v1, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;

    .line 182
    .line 183
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/repo/immersion/EpisodeRepo;->j(I)Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    if-eqz v1, :cond_c

    .line 188
    .line 189
    check-cast v1, Ljava/lang/Iterable;

    .line 190
    .line 191
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-eqz v2, :cond_c

    .line 200
    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    check-cast v2, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 206
    .line 207
    if-eqz p2, :cond_b

    .line 208
    .line 209
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setCollected()V

    .line 210
    .line 211
    .line 212
    goto :goto_7

    .line 213
    :cond_b
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->cancelCollected()V

    .line 214
    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_c
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    new-instance v2, Lcom/startshorts/androidplayer/bean/eventbus/RefreshShortsCollectEvent;

    .line 222
    .line 223
    invoke-direct {v2, v0, p2}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshShortsCollectEvent;-><init>(IZ)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_d
    return-void
.end method

.method private final Q(JIILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->e:Z

    .line 8
    .line 9
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollections$1;

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    move-object v1, v0

    .line 13
    move-wide v2, p1

    .line 14
    move v4, p3

    .line 15
    move v5, p4

    .line 16
    move-object v6, p5

    .line 17
    move-object v7, p0

    .line 18
    invoke-direct/range {v1 .. v8}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollections$1;-><init>(JIILjava/util/List;Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Lrs/c;)V

    .line 19
    .line 20
    .line 21
    new-instance v5, Lxk/c;

    .line 22
    .line 23
    invoke-direct {v5, p0}, Lxk/c;-><init>(Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;)V

    .line 24
    .line 25
    .line 26
    const/4 v6, 0x2

    .line 27
    const/4 v7, 0x0

    .line 28
    const-string v2, "queryCollections"

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    move-object v1, p0

    .line 32
    move-object v4, v0

    .line 33
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->j(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private static final R(Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->M(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private final S(JIILjava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1
    move-object v9, p0

    .line 2
    iget-boolean v0, v9, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->e:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, v9, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->e:Z

    .line 9
    .line 10
    new-instance v10, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;

    .line 11
    .line 12
    const/4 v8, 0x0

    .line 13
    move-object v0, v10

    .line 14
    move-wide v1, p1

    .line 15
    move v3, p3

    .line 16
    move v4, p4

    .line 17
    move-object/from16 v5, p5

    .line 18
    .line 19
    move/from16 v6, p6

    .line 20
    .line 21
    move-object v7, p0

    .line 22
    invoke-direct/range {v0 .. v8}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;-><init>(JIILjava/util/List;ILcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    new-instance v4, Lxk/b;

    .line 26
    .line 27
    invoke-direct {v4, p0}, Lxk/b;-><init>(Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;)V

    .line 28
    .line 29
    .line 30
    const/4 v5, 0x2

    .line 31
    const/4 v6, 0x0

    .line 32
    const-string v1, "queryCollections"

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    move-object v0, p0

    .line 36
    move-object v3, v10

    .line 37
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->j(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private static final T(Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->M(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private final U()V
    .locals 4

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->U1()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;->a:Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "collect"

    .line 17
    .line 18
    const-string v3, "1"

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    const-string v2, "tbo_favorite"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public final H(Landroid/content/Context;IIII)Lkotlinx/coroutines/r;
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v8, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    move-object v0, v8

    .line 5
    move-object v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move v5, p5

    .line 10
    move-object v6, p0

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;-><init>(Landroid/content/Context;IIIILcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    const/4 v5, 0x0

    .line 16
    const-string v1, "addCollection"

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    move-object v0, p0

    .line 20
    move-object v3, v8

    .line 21
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public final I(Landroid/content/Context;III)Lkotlinx/coroutines/r;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollection$1;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v0, v7

    .line 5
    move-object v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move-object v5, p0

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollection$1;-><init>(Landroid/content/Context;IIILcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Lrs/c;)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x0

    .line 15
    const-string v1, "cancelCollection"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    move-object v0, p0

    .line 19
    move-object v3, v7

    .line 20
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final L()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/mylist/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->f:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final P(Lcom/startshorts/androidplayer/viewmodel/mylist/a;)V
    .locals 23
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/mylist/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v1, "intent"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    instance-of v1, v0, Lcom/startshorts/androidplayer/viewmodel/mylist/a$f;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/mylist/a$f;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$f;->b()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$f;->c()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$f;->e()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$f;->d()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$f;->a()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    move-object/from16 v0, p0

    .line 37
    .line 38
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->S(JIILjava/util/List;I)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_0
    instance-of v1, v0, Lcom/startshorts/androidplayer/viewmodel/mylist/a$e;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/mylist/a$e;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$e;->a()J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$e;->b()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$e;->d()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$e;->c()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    move-object/from16 v0, p0

    .line 66
    .line 67
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->Q(JIILjava/util/List;)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_2

    .line 71
    .line 72
    :cond_1
    instance-of v1, v0, Lcom/startshorts/androidplayer/viewmodel/mylist/a$a;

    .line 73
    .line 74
    const-string v6, "is_auto"

    .line 75
    .line 76
    const-string v8, "positive"

    .line 77
    .line 78
    const-string v9, "trailer"

    .line 79
    .line 80
    const-string v10, "scene"

    .line 81
    .line 82
    const-string v11, "type"

    .line 83
    .line 84
    const-string v12, "0"

    .line 85
    .line 86
    const-string v13, "1"

    .line 87
    .line 88
    const-string v14, "ep_type"

    .line 89
    .line 90
    if-eqz v1, :cond_4

    .line 91
    .line 92
    move-object v15, v0

    .line 93
    check-cast v15, Lcom/startshorts/androidplayer/viewmodel/mylist/a$a;

    .line 94
    .line 95
    invoke-virtual {v15}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$a;->a()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v15}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$a;->e()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-virtual {v15}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$a;->d()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-virtual {v15}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$a;->b()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-virtual {v15}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$a;->b()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    move-object/from16 v0, p0

    .line 124
    .line 125
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->H(Landroid/content/Context;IIII)Lkotlinx/coroutines/r;

    .line 126
    .line 127
    .line 128
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 129
    .line 130
    invoke-virtual {v15}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$a;->b()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v15}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$a;->c()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v1, v10, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v15}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$a;->b()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_2

    .line 157
    .line 158
    invoke-virtual {v1, v14, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {v1, v14, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :goto_0
    invoke-virtual {v15}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$a;->f()Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-eqz v2, :cond_3

    .line 170
    .line 171
    move-object v12, v13

    .line 172
    :cond_3
    invoke-virtual {v1, v6, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 176
    .line 177
    const/16 v21, 0x4

    .line 178
    .line 179
    const/16 v22, 0x0

    .line 180
    .line 181
    const-string v17, "favorite_click"

    .line 182
    .line 183
    const-wide/16 v19, 0x0

    .line 184
    .line 185
    move-object/from16 v16, v0

    .line 186
    .line 187
    move-object/from16 v18, v1

    .line 188
    .line 189
    invoke-static/range {v16 .. v22}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_2

    .line 193
    .line 194
    :cond_4
    instance-of v1, v0, Lcom/startshorts/androidplayer/viewmodel/mylist/a$b;

    .line 195
    .line 196
    if-eqz v1, :cond_7

    .line 197
    .line 198
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/mylist/a$b;

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$b;->a()Landroid/content/Context;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$b;->e()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$b;->d()I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$b;->b()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    invoke-virtual {v7, v1, v2, v3, v4}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->I(Landroid/content/Context;III)Lkotlinx/coroutines/r;

    .line 221
    .line 222
    .line 223
    sget-object v15, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$b;->b()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v15, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v1, v11, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$b;->c()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v1, v10, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$b;->b()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-eqz v2, :cond_5

    .line 252
    .line 253
    invoke-virtual {v1, v14, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_5
    invoke-virtual {v1, v14, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    :goto_1
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$b;->f()Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_6

    .line 265
    .line 266
    move-object v12, v13

    .line 267
    :cond_6
    invoke-virtual {v1, v6, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 271
    .line 272
    const/16 v20, 0x4

    .line 273
    .line 274
    const/16 v21, 0x0

    .line 275
    .line 276
    const-string v16, "favorite_click"

    .line 277
    .line 278
    const-wide/16 v18, 0x0

    .line 279
    .line 280
    move-object/from16 v17, v1

    .line 281
    .line 282
    invoke-static/range {v15 .. v21}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    goto :goto_2

    .line 286
    :cond_7
    instance-of v1, v0, Lcom/startshorts/androidplayer/viewmodel/mylist/a$c;

    .line 287
    .line 288
    if-eqz v1, :cond_8

    .line 289
    .line 290
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/mylist/a$c;

    .line 291
    .line 292
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$c;->b()Landroid/content/Context;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$c;->a()Ljava/util/List;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$c;->c()Ljava/util/List;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-direct {v7, v1, v2, v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->J(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lkotlinx/coroutines/r;

    .line 305
    .line 306
    .line 307
    goto :goto_2

    .line 308
    :cond_8
    instance-of v1, v0, Lcom/startshorts/androidplayer/viewmodel/mylist/a$d;

    .line 309
    .line 310
    if-eqz v1, :cond_9

    .line 311
    .line 312
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/mylist/a$d;

    .line 313
    .line 314
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$d;->c()Landroid/content/Context;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$d;->b()Ljava/util/List;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$d;->d()Ljava/util/List;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$d;->a()Lcom/startshorts/androidplayer/bean/mylist/CancelCollectBatchRequest;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-direct {v7, v1, v2, v3, v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->K(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/startshorts/androidplayer/bean/mylist/CancelCollectBatchRequest;)Lkotlinx/coroutines/r;

    .line 331
    .line 332
    .line 333
    goto :goto_2

    .line 334
    :cond_9
    instance-of v1, v0, Lcom/startshorts/androidplayer/viewmodel/mylist/a$g;

    .line 335
    .line 336
    if-eqz v1, :cond_a

    .line 337
    .line 338
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/mylist/a$g;

    .line 339
    .line 340
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$g;->b()I

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    filled-new-array {v1}, [Ljava/lang/Integer;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$g;->a()Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    invoke-direct {v7, v1, v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->O(Ljava/util/List;Z)V

    .line 361
    .line 362
    .line 363
    :goto_2
    return-void

    .line 364
    :cond_a
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 365
    .line 366
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 367
    .line 368
    .line 369
    throw v0
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "CollectionViewModel"

    .line 2
    .line 3
    return-object v0
.end method

.method public w()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->e:Z

    .line 3
    .line 4
    invoke-super {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->w()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
