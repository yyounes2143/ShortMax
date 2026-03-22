.class public final Lcom/startshorts/androidplayer/db/repository/EventRepository;
.super Lcom/startshorts/androidplayer/db/repository/base/BaseRepository;
.source "EventRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEventRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventRepository.kt\ncom/startshorts/androidplayer/db/repository/EventRepository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,165:1\n1863#2,2:166\n1872#2,3:168\n774#2:171\n865#2,2:172\n1863#2,2:174\n*S KotlinDebug\n*F\n+ 1 EventRepository.kt\ncom/startshorts/androidplayer/db/repository/EventRepository\n*L\n43#1:166,2\n81#1:168,3\n116#1:171\n116#1:172,2\n118#1:174,2\n*E\n"
    }
.end annotation


# static fields
.field public static final b:Lcom/startshorts/androidplayer/db/repository/EventRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/db/repository/EventRepository;->b:Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 7
    .line 8
    new-instance v0, Lwd/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lwd/a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/db/repository/EventRepository;->c:Lms/i;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/db/repository/base/BaseRepository;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic A(Lcom/startshorts/androidplayer/db/repository/EventRepository;Lcom/startshorts/androidplayer/db/model/DbEvent;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->U(Lcom/startshorts/androidplayer/db/model/DbEvent;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic B(Lcom/startshorts/androidplayer/db/repository/EventRepository;Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->V(Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final D(Ljava/util/List;Lcom/startshorts/androidplayer/db/model/DbEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getLocalId()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final G(Lrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lvd/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/db/DbManager;->a:Lcom/startshorts/androidplayer/db/DbManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/db/DbManager;->b(Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method private static final K(Lcom/startshorts/androidplayer/db/model/DbEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getStatus()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method private static final L(Lcom/startshorts/androidplayer/db/model/DbEvent;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setStatus(I)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final M([Ljava/lang/String;Lcom/startshorts/androidplayer/db/model/DbEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getStatus()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getEventName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Lkotlin/collections/n;->f0([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method private static final N(Lcom/startshorts/androidplayer/db/model/DbEvent;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setStatus(I)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0
.end method

.method private final O()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/db/model/DbEvent;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/db/repository/EventRepository;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final S()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method private final U(Lcom/startshorts/androidplayer/db/model/DbEvent;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/db/model/DbEvent;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvent$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvent$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvent$1;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvent$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvent$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvent$1;-><init>(Lcom/startshorts/androidplayer/db/repository/EventRepository;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvent$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvent$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvent$1;->i:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lcom/startshorts/androidplayer/db/model/DbEvent;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvent$1;->h:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 46
    .line 47
    :try_start_0
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception p2

    .line 52
    goto :goto_4

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :try_start_1
    iput-object p0, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvent$1;->h:Ljava/lang/Object;

    .line 65
    .line 66
    iput-object p1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvent$1;->i:Ljava/lang/Object;

    .line 67
    .line 68
    iput v3, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvent$1;->l:I

    .line 69
    .line 70
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->G(Lrs/c;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    if-ne p2, v1, :cond_3

    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_3
    move-object v0, p0

    .line 78
    :goto_1
    :try_start_2
    check-cast p2, Lvd/a;

    .line 79
    .line 80
    if-eqz p2, :cond_4

    .line 81
    .line 82
    invoke-interface {p2, p1}, Lvd/a;->c(Lcom/startshorts/androidplayer/db/model/DbEvent;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v1

    .line 86
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    move-object p2, v4

    .line 92
    :goto_2
    if-nez p2, :cond_5

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    const-wide/16 v2, -0x1

    .line 100
    .line 101
    cmp-long p1, v0, v2

    .line 102
    .line 103
    if-nez p1, :cond_6

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_6
    :goto_3
    move-object v4, p2

    .line 107
    goto :goto_5

    .line 108
    :catch_1
    move-exception p2

    .line 109
    move-object v0, p0

    .line 110
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v2, "safeSaveEvent("

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getEventName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string p1, ") exception -> "

    .line 128
    .line 129
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/db/repository/base/BaseRepository;->b(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :goto_5
    return-object v4
.end method

.method private final V(Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/db/model/DbEvent;",
            ">;",
            "Lrs/c<",
            "-[J>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvents$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvents$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvents$1;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvents$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvents$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvents$1;-><init>(Lcom/startshorts/androidplayer/db/repository/EventRepository;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvents$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvents$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvents$1;->i:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Ljava/util/List;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvents$1;->h:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 46
    .line 47
    :try_start_0
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception p2

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :try_start_1
    iput-object p0, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvents$1;->h:Ljava/lang/Object;

    .line 65
    .line 66
    iput-object p1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvents$1;->i:Ljava/lang/Object;

    .line 67
    .line 68
    iput v4, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$safeSaveEvents$1;->l:I

    .line 69
    .line 70
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->G(Lrs/c;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    if-ne p2, v1, :cond_3

    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_3
    move-object v0, p0

    .line 78
    :goto_1
    :try_start_2
    check-cast p2, Lvd/a;

    .line 79
    .line 80
    if-eqz p2, :cond_4

    .line 81
    .line 82
    invoke-interface {p2, p1}, Lvd/a;->d(Ljava/util/List;)[J

    .line 83
    .line 84
    .line 85
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    goto :goto_3

    .line 87
    :catch_1
    move-exception p2

    .line 88
    move-object v0, p0

    .line 89
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v2, "safeSaveEvents("

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Lcom/startshorts/androidplayer/db/model/DbEvent;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getEventName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p1, " exception -> "

    .line 114
    .line 115
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/db/repository/base/BaseRepository;->b(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    :goto_3
    return-object v3
.end method

.method public static synthetic f()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->S()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g(Lcom/startshorts/androidplayer/db/model/DbEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->N(Lcom/startshorts/androidplayer/db/model/DbEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Ljava/util/List;Lcom/startshorts/androidplayer/db/model/DbEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->D(Ljava/util/List;Lcom/startshorts/androidplayer/db/model/DbEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic j(Lcom/startshorts/androidplayer/db/model/DbEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->K(Lcom/startshorts/androidplayer/db/model/DbEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic k([Ljava/lang/String;Lcom/startshorts/androidplayer/db/model/DbEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->M([Ljava/lang/String;Lcom/startshorts/androidplayer/db/model/DbEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic n(Lcom/startshorts/androidplayer/db/model/DbEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->L(Lcom/startshorts/androidplayer/db/model/DbEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic y(Lcom/startshorts/androidplayer/db/repository/EventRepository;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->G(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic z(Lcom/startshorts/androidplayer/db/repository/EventRepository;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->O()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final C(Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/db/repository/EventRepository$deleteEventList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$deleteEventList$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$deleteEventList$1;->n:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$deleteEventList$1;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$deleteEventList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/db/repository/EventRepository$deleteEventList$1;-><init>(Lcom/startshorts/androidplayer/db/repository/EventRepository;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$deleteEventList$1;->l:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$deleteEventList$1;->n:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$deleteEventList$1;->k:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 41
    .line 42
    iget-object v1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$deleteEventList$1;->j:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 45
    .line 46
    iget-object v2, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$deleteEventList$1;->i:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Ljava/util/List;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$deleteEventList$1;->h:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 53
    .line 54
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    move-object v8, v2

    .line 58
    move-object v2, p1

    .line 59
    move-object p1, v8

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_3

    .line 77
    .line 78
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_3
    new-instance p2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 82
    .line 83
    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 87
    .line 88
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->O()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    const-string v5, "<get-mEventList>(...)"

    .line 96
    .line 97
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    monitor-enter v4

    .line 101
    :try_start_0
    sget-object v5, Lcom/startshorts/androidplayer/db/repository/EventRepository;->b:Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 102
    .line 103
    invoke-direct {v5}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->O()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    iput v6, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 112
    .line 113
    invoke-direct {v5}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->O()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    const-string v7, "<get-mEventList>(...)"

    .line 118
    .line 119
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance v7, Lwd/b;

    .line 123
    .line 124
    invoke-direct {v7, p1}, Lwd/b;-><init>(Ljava/util/List;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->O(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 128
    .line 129
    .line 130
    invoke-direct {v5}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->O()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    iput v5, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 139
    .line 140
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .line 142
    monitor-exit v4

    .line 143
    iput-object p0, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$deleteEventList$1;->h:Ljava/lang/Object;

    .line 144
    .line 145
    iput-object p1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$deleteEventList$1;->i:Ljava/lang/Object;

    .line 146
    .line 147
    iput-object p2, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$deleteEventList$1;->j:Ljava/lang/Object;

    .line 148
    .line 149
    iput-object v2, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$deleteEventList$1;->k:Ljava/lang/Object;

    .line 150
    .line 151
    iput v3, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$deleteEventList$1;->n:I

    .line 152
    .line 153
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->G(Lrs/c;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-ne v0, v1, :cond_4

    .line 158
    .line 159
    return-object v1

    .line 160
    :cond_4
    move-object v1, p2

    .line 161
    move-object p2, v0

    .line 162
    move-object v0, p0

    .line 163
    :goto_1
    check-cast p2, Lvd/a;

    .line 164
    .line 165
    if-eqz p2, :cond_5

    .line 166
    .line 167
    invoke-interface {p2, p1}, Lvd/a;->a(Ljava/util/List;)I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    goto :goto_2

    .line 176
    :cond_5
    const/4 p2, 0x0

    .line 177
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v4, "deleteEventList -> ids("

    .line 183
    .line 184
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string p1, ") sizeBeforeDelete("

    .line 191
    .line 192
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    iget p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 196
    .line 197
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string p1, ") sizeAfterDelete("

    .line 201
    .line 202
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget p1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 206
    .line 207
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string p1, ") sizeDeleteFromDao("

    .line 211
    .line 212
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const/16 p1, 0x29

    .line 219
    .line 220
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/db/repository/base/BaseRepository;->e(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 231
    .line 232
    return-object p1

    .line 233
    :catchall_0
    move-exception p1

    .line 234
    monitor-exit v4

    .line 235
    throw p1
.end method

.method public final E()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->O()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->H()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final H()I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->O()Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "<get-mEventList>(...)"

    .line 7
    .line 8
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    sget-object v2, Lcom/startshorts/androidplayer/db/repository/EventRepository;->b:Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 13
    .line 14
    invoke-direct {v2}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->O()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "<get-mEventList>(...)"

    .line 19
    .line 20
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    check-cast v2, Ljava/lang/Iterable;

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x0

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/startshorts/androidplayer/db/model/DbEvent;

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getStatus()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eq v4, v0, :cond_0

    .line 47
    .line 48
    add-int/2addr v3, v0

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    monitor-exit v1

    .line 55
    return v3

    .line 56
    :goto_1
    monitor-exit v1

    .line 57
    throw v0
.end method

.method public final I(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/db/model/DbEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->O()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "<get-mEventList>(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/startshorts/androidplayer/db/repository/EventRepository;->b:Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->O()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "<get-mEventList>(...)"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast v1, Ljava/lang/Iterable;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e0(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lwd/e;

    .line 29
    .line 30
    invoke-direct {v2}, Lwd/e;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Lkotlin/sequences/j;->t(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1, p1}, Lkotlin/sequences/j;->M(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v1, Lwd/f;

    .line 42
    .line 43
    invoke-direct {v1}, Lwd/f;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v1}, Lkotlin/sequences/j;->I(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lkotlin/sequences/j;->P(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v0

    .line 55
    return-object p1

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    monitor-exit v0

    .line 58
    throw p1
.end method

.method public final J([Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/db/model/DbEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "eventNames"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->O()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "<get-mEventList>(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/startshorts/androidplayer/db/repository/EventRepository;->b:Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 17
    .line 18
    invoke-direct {v1}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->O()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "<get-mEventList>(...)"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    check-cast v1, Ljava/lang/Iterable;

    .line 28
    .line 29
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e0(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Lwd/c;

    .line 34
    .line 35
    invoke-direct {v2, p1}, Lwd/c;-><init>([Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Lkotlin/sequences/j;->t(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1, p2}, Lkotlin/sequences/j;->M(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance p2, Lwd/d;

    .line 47
    .line 48
    invoke-direct {p2}, Lwd/d;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p2}, Lkotlin/sequences/j;->I(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lkotlin/sequences/j;->P(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v0

    .line 60
    return-object p1

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    monitor-exit v0

    .line 63
    throw p1
.end method

.method public final Q()Lkotlinx/coroutines/r;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->o()Lgt/g0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v4, Lcom/startshorts/androidplayer/db/repository/EventRepository$loadEventListFromDb$1;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v4, v2}, Lcom/startshorts/androidplayer/db/repository/EventRepository$loadEventListFromDb$1;-><init>(Lrs/c;)V

    .line 11
    .line 12
    .line 13
    const/16 v6, 0x14

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const-string v2, "loadEventListFromDb"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public final X(Lcom/startshorts/androidplayer/db/model/DbEvent;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/db/model/DbEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/db/model/DbEvent;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvent$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvent$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvent$1;->m:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvent$1;->m:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvent$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvent$1;-><init>(Lcom/startshorts/androidplayer/db/repository/EventRepository;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvent$1;->k:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvent$1;->m:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvent$1;->j:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lcom/startshorts/androidplayer/db/model/DbEvent;

    .line 41
    .line 42
    iget-object v1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvent$1;->i:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Lcom/startshorts/androidplayer/db/model/DbEvent;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvent$1;->h:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 49
    .line 50
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iput-object p0, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvent$1;->h:Ljava/lang/Object;

    .line 66
    .line 67
    iput-object p1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvent$1;->i:Ljava/lang/Object;

    .line 68
    .line 69
    iput-object p1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvent$1;->j:Ljava/lang/Object;

    .line 70
    .line 71
    iput v3, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvent$1;->m:I

    .line 72
    .line 73
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->U(Lcom/startshorts/androidplayer/db/model/DbEvent;Lrs/c;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    if-ne p2, v1, :cond_3

    .line 78
    .line 79
    return-object v1

    .line 80
    :cond_3
    move-object v0, p0

    .line 81
    move-object v1, p1

    .line 82
    :goto_1
    check-cast p2, Ljava/lang/Long;

    .line 83
    .line 84
    if-eqz p2, :cond_4

    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    :goto_2
    invoke-virtual {p1, v2, v3}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setLocalId(J)V

    .line 96
    .line 97
    .line 98
    invoke-direct {v0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->O()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getEventName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string p2, "reel_show"

    .line 110
    .line 111
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_5

    .line 116
    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string p2, "saveEvent -> localId("

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getLocalId()J

    .line 128
    .line 129
    .line 130
    move-result-wide v2

    .line 131
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string p2, ") eventName("

    .line 135
    .line 136
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getEventName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string p2, ") eventExtra("

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getEventExtra()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string p2, ") eventId("

    .line 159
    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getEventId()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const/16 p2, 0x29

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/db/repository/base/BaseRepository;->e(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 183
    .line 184
    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "EventRepository"

    .line 2
    .line 3
    return-object v0
.end method

.method public final k0(Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/db/model/DbEvent;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvents$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvents$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvents$1;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvents$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvents$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvents$1;-><init>(Lcom/startshorts/androidplayer/db/repository/EventRepository;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvents$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvents$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvents$1;->i:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Ljava/util/List;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvents$1;->h:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 45
    .line 46
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iput-object p0, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvents$1;->h:Ljava/lang/Object;

    .line 62
    .line 63
    iput-object p1, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvents$1;->i:Ljava/lang/Object;

    .line 64
    .line 65
    iput v3, v0, Lcom/startshorts/androidplayer/db/repository/EventRepository$saveEvents$1;->l:I

    .line 66
    .line 67
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->V(Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    if-ne p2, v1, :cond_3

    .line 72
    .line 73
    return-object v1

    .line 74
    :cond_3
    move-object v0, p0

    .line 75
    :goto_1
    move-object v1, p2

    .line 76
    check-cast v1, [J

    .line 77
    .line 78
    move-object p2, p1

    .line 79
    check-cast p2, Ljava/lang/Iterable;

    .line 80
    .line 81
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    const/4 v2, 0x0

    .line 86
    move v3, v2

    .line 87
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_6

    .line 92
    .line 93
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    add-int/lit8 v5, v3, 0x1

    .line 98
    .line 99
    if-gez v3, :cond_4

    .line 100
    .line 101
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 102
    .line 103
    .line 104
    :cond_4
    check-cast v4, Lcom/startshorts/androidplayer/db/model/DbEvent;

    .line 105
    .line 106
    if-eqz v1, :cond_5

    .line 107
    .line 108
    invoke-static {v1, v3}, Lkotlin/collections/n;->s0([JI)Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    if-eqz v3, :cond_5

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 115
    .line 116
    .line 117
    move-result-wide v6

    .line 118
    goto :goto_3

    .line 119
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 120
    .line 121
    .line 122
    move-result-wide v6

    .line 123
    :goto_3
    invoke-virtual {v4, v6, v7}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setLocalId(J)V

    .line 124
    .line 125
    .line 126
    move v3, v5

    .line 127
    goto :goto_2

    .line 128
    :cond_6
    invoke-direct {v0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->O()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    move-object v3, p1

    .line 133
    check-cast v3, Ljava/util/Collection;

    .line 134
    .line 135
    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    .line 137
    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v3, "saveEvents -> eventName("

    .line 144
    .line 145
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    check-cast v2, Lcom/startshorts/androidplayer/db/model/DbEvent;

    .line 153
    .line 154
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getEventName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v2, ") size("

    .line 162
    .line 163
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string p1, ") localIdArray("

    .line 174
    .line 175
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    if-eqz v1, :cond_7

    .line 179
    .line 180
    const/16 v8, 0x3e

    .line 181
    .line 182
    const/4 v9, 0x0

    .line 183
    const-string v2, ","

    .line 184
    .line 185
    const/4 v3, 0x0

    .line 186
    const/4 v4, 0x0

    .line 187
    const/4 v5, 0x0

    .line 188
    const/4 v6, 0x0

    .line 189
    const/4 v7, 0x0

    .line 190
    invoke-static/range {v1 .. v9}, Lkotlin/collections/n;->T0([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    goto :goto_4

    .line 195
    :cond_7
    const/4 p1, 0x0

    .line 196
    :goto_4
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const/16 p1, 0x29

    .line 200
    .line 201
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/db/repository/base/BaseRepository;->e(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 212
    .line 213
    return-object p1
.end method

.method public final o0(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "ids"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_4

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->O()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->O()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "<get-mEventList>(...)"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/startshorts/androidplayer/db/repository/EventRepository;->b:Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->O()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "<get-mEventList>(...)"

    .line 40
    .line 41
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    check-cast v1, Ljava/lang/Iterable;

    .line 45
    .line 46
    new-instance v2, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    move-object v4, v3

    .line 66
    check-cast v4, Lcom/startshorts/androidplayer/db/model/DbEvent;

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getLocalId()J

    .line 69
    .line 70
    .line 71
    move-result-wide v4

    .line 72
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_1

    .line 81
    .line 82
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Lcom/startshorts/androidplayer/db/model/DbEvent;

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->setStatus(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    monitor-exit v0

    .line 112
    return-void

    .line 113
    :goto_2
    monitor-exit v0

    .line 114
    throw p1

    .line 115
    :cond_4
    :goto_3
    return-void
.end method
