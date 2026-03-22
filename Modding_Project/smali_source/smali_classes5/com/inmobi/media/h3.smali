.class public final Lcom/inmobi/media/h3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/inmobi/media/h3;

.field public static b:Ljava/util/LinkedList;

.field public static c:Ljava/util/LinkedList;

.field public static d:Lcom/inmobi/commons/core/configs/SignalsConfig;

.field public static e:Lcom/inmobi/commons/core/configs/AdConfig;

.field public static f:[B

.field public static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/inmobi/media/h3;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/h3;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/h3;->a:Lcom/inmobi/media/h3;

    .line 7
    .line 8
    new-instance v1, Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/inmobi/media/h3;->b:Ljava/util/LinkedList;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "null cannot be cast to non-null type java.util.LinkedList<com.inmobi.signals.contextualdata.EncryptedContextualData>"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast v1, Ljava/util/LinkedList;

    .line 25
    .line 26
    sput-object v1, Lcom/inmobi/media/h3;->c:Ljava/util/LinkedList;

    .line 27
    .line 28
    new-instance v1, Lcom/inmobi/media/g3;

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/inmobi/media/g3;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v2, Lcom/inmobi/media/f3;

    .line 34
    .line 35
    invoke-direct {v2}, Lcom/inmobi/media/f3;-><init>()V

    .line 36
    .line 37
    .line 38
    sget-object v3, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "signals"

    .line 45
    .line 46
    invoke-static {v4, v3, v1}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    instance-of v3, v1, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    check-cast v1, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move-object v1, v4

    .line 59
    :goto_0
    sput-object v1, Lcom/inmobi/media/h3;->d:Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 60
    .line 61
    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v3, "ads"

    .line 66
    .line 67
    invoke-static {v3, v1, v2}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    instance-of v2, v1, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 72
    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    check-cast v1, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    move-object v1, v4

    .line 79
    :goto_1
    sput-object v1, Lcom/inmobi/media/h3;->e:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 80
    .line 81
    sget-object v1, Lcom/inmobi/media/h3;->d:Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 82
    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getAK()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    :cond_2
    invoke-static {v4}, Lcom/inmobi/media/j4;->a(Ljava/lang/String;)[B

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    sput-object v1, Lcom/inmobi/media/h3;->f:[B

    .line 94
    .line 95
    sget-object v1, Lcom/inmobi/media/h3;->e:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 96
    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig;->getContextualData()Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_3

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;->getSkipFields()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-nez v1, :cond_4

    .line 110
    .line 111
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    sget-object v3, Lcom/inmobi/media/i3;->j:Ljava/util/List;

    .line 121
    .line 122
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 126
    .line 127
    .line 128
    const/16 v9, 0x3e

    .line 129
    .line 130
    const/4 v10, 0x0

    .line 131
    const-string v3, ","

    .line 132
    .line 133
    const/4 v4, 0x0

    .line 134
    const/4 v5, 0x0

    .line 135
    const/4 v6, 0x0

    .line 136
    const/4 v7, 0x0

    .line 137
    const/4 v8, 0x0

    .line 138
    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    sput-object v1, Lcom/inmobi/media/h3;->g:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/inmobi/media/h3;->b()V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a()V
    .locals 9

    .line 1
    const-string v0, "h3"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    sget-object v3, Lcom/inmobi/media/h3;->e:Lcom/inmobi/commons/core/configs/AdConfig;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig;->getContextualData()Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;->getExpiryTime()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    int-to-long v5, v3

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    sub-long/2addr v1, v5

    .line 4
    sget-object v3, Lcom/inmobi/media/h3;->e:Lcom/inmobi/commons/core/configs/AdConfig;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig;->getContextualData()Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;->getMaxAdRecords()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v4

    .line 5
    :goto_1
    invoke-static {v1, v2, v3}, Lcom/inmobi/media/h3;->a(JI)V

    .line 6
    sget-object v3, Lcom/inmobi/media/h3;->b:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type java.util.LinkedList<com.inmobi.signals.contextualdata.EncryptedContextualData>"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/LinkedList;

    .line 7
    sput-object v3, Lcom/inmobi/media/h3;->c:Ljava/util/LinkedList;

    .line 8
    sget-object v3, Lcom/inmobi/media/h3;->e:Lcom/inmobi/commons/core/configs/AdConfig;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig;->getContextualData()Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;->getMaxAdRecords()I

    move-result v4

    .line 9
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    sget-object v0, Lcom/inmobi/media/Nc;->d:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/d3;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "id NOT IN (SELECT id FROM ( SELECT id FROM c_data WHERE timestamp > "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ORDER BY timestamp DESC LIMIT "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") foo);"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/T1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static a(JI)V
    .locals 3

    .line 14
    const-string v0, "h3"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    sget-object v1, Lcom/inmobi/media/h3;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    :goto_0
    if-le v1, p2, :cond_0

    .line 16
    sget-object v2, Lcom/inmobi/media/h3;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    sget-object p2, Lcom/inmobi/media/h3;->b:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-string v0, "iterator(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "next(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/i4;

    .line 21
    iget-wide v0, v0, Lcom/inmobi/media/i4;->b:J

    cmp-long v0, v0, p0

    if-gez v0, :cond_1

    .line 22
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "h3"

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/inmobi/media/h3;->g:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    .line 18
    .line 19
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    sget-object v3, Lcom/inmobi/media/h3;->e:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig;->getContextualData()Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;->getExpiryTime()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v3, 0x0

    .line 42
    :goto_0
    int-to-long v3, v3

    .line 43
    const-wide/16 v5, 0x3e8

    .line 44
    .line 45
    mul-long/2addr v3, v5

    .line 46
    sub-long/2addr v1, v3

    .line 47
    sget-object v3, Lcom/inmobi/media/h3;->c:Ljava/util/LinkedList;

    .line 48
    .line 49
    new-instance v4, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_3

    .line 63
    .line 64
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    move-object v6, v5

    .line 69
    check-cast v6, Lcom/inmobi/media/i4;

    .line 70
    .line 71
    iget-wide v6, v6, Lcom/inmobi/media/i4;->b:J

    .line 72
    .line 73
    cmp-long v6, v6, v1

    .line 74
    .line 75
    if-ltz v6, :cond_2

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Lcom/inmobi/media/i4;

    .line 96
    .line 97
    iget-object v2, v2, Lcom/inmobi/media/i4;->a:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v2}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v1, "toString(...)"

    .line 116
    .line 117
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-object v0
.end method

.method public static d()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v2, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    const-string v2, "c_data_store"

    .line 11
    .line 12
    invoke-static {v0, v2}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "key"

    .line 17
    .line 18
    const-string v3, "isEnabled"

    .line 19
    .line 20
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v1

    .line 31
    :goto_0
    const/4 v2, 0x0

    .line 32
    const-string v3, "h3"

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_1
    sget-object v0, Lcom/inmobi/media/h3;->e:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getContextualData()Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;->getMaxAdRecords()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v0, v1

    .line 56
    :goto_1
    if-lez v0, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    move v1, v2

    .line 60
    :goto_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return v1
.end method


# virtual methods
.method public final b()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    const-string v1, "h3"

    .line 8
    .line 9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    const-string v2, "c_data_store"

    .line 15
    .line 16
    invoke-static {v0, v2}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v4, 0x1

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-static {v0, v2}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v2, "key"

    .line 32
    .line 33
    const-string v5, "akv"

    .line 34
    .line 35
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    .line 39
    .line 40
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    :cond_0
    sget-object v0, Lcom/inmobi/media/h3;->d:Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getAKV()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-ne v0, v4, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Lcom/inmobi/media/h3;->d:Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getAKV()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    move v5, v0

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    move v5, v4

    .line 69
    :goto_0
    const/4 v7, 0x4

    .line 70
    const/4 v8, 0x0

    .line 71
    const-string v4, "akv"

    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    invoke-static/range {v3 .. v8}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/inmobi/media/h3;->e()V

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_1
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "h3"

    .line 3
    .line 4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/inmobi/media/Nc;->d:Lms/i;

    .line 8
    .line 9
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/inmobi/media/d3;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    :try_start_1
    iget-object v0, v0, Lcom/inmobi/media/T1;->a:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1, v1}, Lcom/inmobi/media/A3;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    :goto_0
    :try_start_2
    new-instance v0, Ljava/util/LinkedList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/inmobi/media/h3;->b:Ljava/util/LinkedList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "null cannot be cast to non-null type java.util.LinkedList<com.inmobi.signals.contextualdata.EncryptedContextualData>"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    check-cast v0, Ljava/util/LinkedList;

    .line 44
    .line 45
    sput-object v0, Lcom/inmobi/media/h3;->c:Ljava/util/LinkedList;

    .line 46
    .line 47
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit p0

    .line 52
    throw v0
.end method
