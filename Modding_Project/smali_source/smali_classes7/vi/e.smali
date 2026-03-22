.class public final Lvi/e;
.super Ljava/lang/Object;
.source "RewardsDoubleUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRewardsDoubleUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsDoubleUtils.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsDoubleUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,92:1\n1863#2,2:93\n1010#2,2:95\n1010#2,2:97\n543#2,6:99\n774#2:105\n865#2,2:106\n*S KotlinDebug\n*F\n+ 1 RewardsDoubleUtils.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsDoubleUtils\n*L\n39#1:93,2\n52#1:95,2\n59#1:97,2\n63#1:99,6\n84#1:105\n84#1:106,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lvi/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lvi/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lvi/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lvi/e;->a:Lvi/e;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->l0()Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->isInvalid()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-object v0
.end method

.method public final b()I
    .locals 9

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->X1()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0}, Lud/b;->l0()Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->getList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Iterable;

    .line 19
    .line 20
    new-instance v4, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    move-object v6, v5

    .line 40
    check-cast v6, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 41
    .line 42
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getPayTime()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    mul-int/lit16 v7, v7, 0x3e8

    .line 47
    .line 48
    int-to-long v7, v7

    .line 49
    cmp-long v7, v1, v7

    .line 50
    .line 51
    if-ltz v7, :cond_0

    .line 52
    .line 53
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->isReceive()Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-nez v6, :cond_0

    .line 58
    .line 59
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getBonus()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    add-int/2addr v3, v1

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    return v3
.end method

.method public final c(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;)Z
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lud/b;->a:Lud/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lud/b;->X1()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->getList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->getList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->p(Ljava/util/List;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getPayTime()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    mul-int/lit16 p1, p1, 0x3e8

    .line 35
    .line 36
    int-to-long v2, p1

    .line 37
    cmp-long p1, v0, v2

    .line 38
    .line 39
    if-lez p1, :cond_0

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    :goto_0
    return p1
.end method

.method public final d()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lvi/e;->a()Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->isInvalid()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lvi/e;->c(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public final e(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;)Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;
    .locals 7
    .param p1    # Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lud/b;->a:Lud/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lud/b;->l0()Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->getDay()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->getDay()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->getList()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-le v3, v2, :cond_0

    .line 38
    .line 39
    new-instance v3, Lvi/e$b;

    .line 40
    .line 41
    invoke-direct {v3}, Lvi/e$b;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->D(Ljava/util/List;Ljava/util/Comparator;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {v0, p1}, Lud/b;->w3(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;)V

    .line 48
    .line 49
    .line 50
    const-wide/16 v3, 0x0

    .line 51
    .line 52
    invoke-virtual {v0, v3, v4}, Lud/b;->k5(J)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->getList()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-le v1, v2, :cond_2

    .line 64
    .line 65
    new-instance v1, Lvi/e$a;

    .line 66
    .line 67
    invoke-direct {v1}, Lvi/e$a;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->D(Ljava/util/List;Ljava/util/Comparator;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->getList()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :cond_3
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    move-object v3, v1

    .line 96
    check-cast v3, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->isReceive()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_3

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    const/4 v1, 0x0

    .line 106
    :goto_0
    check-cast v1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 107
    .line 108
    if-eqz v1, :cond_5

    .line 109
    .line 110
    sget-object v0, Lud/b;->a:Lud/b;

    .line 111
    .line 112
    invoke-virtual {v0}, Lud/b;->X1()J

    .line 113
    .line 114
    .line 115
    move-result-wide v3

    .line 116
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getPayTime()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    mul-int/lit16 v1, v1, 0x3e8

    .line 121
    .line 122
    int-to-long v5, v1

    .line 123
    cmp-long v1, v3, v5

    .line 124
    .line 125
    if-gez v1, :cond_5

    .line 126
    .line 127
    invoke-virtual {v0, v5, v6}, Lud/b;->k5(J)V

    .line 128
    .line 129
    .line 130
    :cond_5
    invoke-virtual {p1, v2}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->setDaily(Z)V

    .line 131
    .line 132
    .line 133
    sget-object v0, Lud/b;->a:Lud/b;

    .line 134
    .line 135
    invoke-virtual {v0, p1}, Lud/b;->w3(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;)V

    .line 136
    .line 137
    .line 138
    return-object p1
.end method

.method public final f(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "taskIds"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lud/b;->a:Lud/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lud/b;->l0()Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->getList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Iterable;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getTaskId()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->setReceive(Z)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    sget-object p1, Lud/b;->a:Lud/b;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lud/b;->w3(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
