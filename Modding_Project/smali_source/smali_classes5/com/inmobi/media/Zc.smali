.class public final Lcom/inmobi/media/Zc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/inmobi/media/Zc;

.field public static final synthetic b:[Lkotlin/reflect/KProperty;

.field public static final c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Z

.field public static f:J

.field public static final g:Ljava/util/List;

.field public static final h:Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;

.field public static final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final j:Lcom/inmobi/media/C6;

.field public static final k:Lcom/inmobi/media/x1;

.field public static final l:Lcom/inmobi/media/x1;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-class v1, Lcom/inmobi/media/Zc;

    .line 4
    .line 5
    const-string v2, "sessionCnt"

    .line 6
    .line 7
    const-string v3, "getSessionCnt()I"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 22
    .line 23
    const-string v3, "userRetention"

    .line 24
    .line 25
    const-string v6, "getUserRetention()I"

    .line 26
    .line 27
    invoke-direct {v2, v1, v3, v6, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x2

    .line 35
    new-array v3, v3, [Lkotlin/reflect/KProperty;

    .line 36
    .line 37
    aput-object v0, v3, v4

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    aput-object v2, v3, v0

    .line 41
    .line 42
    sput-object v3, Lcom/inmobi/media/Zc;->b:[Lkotlin/reflect/KProperty;

    .line 43
    .line 44
    new-instance v0, Lcom/inmobi/media/Zc;

    .line 45
    .line 46
    invoke-direct {v0}, Lcom/inmobi/media/Zc;-><init>()V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/inmobi/media/Zc;->a:Lcom/inmobi/media/Zc;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/inmobi/media/Zc;->c:Ljava/lang/String;

    .line 56
    .line 57
    filled-new-array {v5, v5, v5, v5}, [Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/inmobi/media/Zc;->g:Ljava/util/List;

    .line 66
    .line 67
    sget-object v0, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    const-string v0, "signals"

    .line 70
    .line 71
    const-string v1, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-static {v0, v1, v2}, Lcom/inmobi/media/p5;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getSessionConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sput-object v0, Lcom/inmobi/media/Zc;->h:Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;

    .line 85
    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 89
    .line 90
    .line 91
    sput-object v0, Lcom/inmobi/media/Zc;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    .line 93
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    .line 99
    sget-object v1, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    .line 101
    const-string v1, "session_pref_file"

    .line 102
    .line 103
    invoke-static {v0, v1}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    :cond_0
    sput-object v2, Lcom/inmobi/media/Zc;->j:Lcom/inmobi/media/C6;

    .line 108
    .line 109
    new-instance v0, Lcom/inmobi/media/x1;

    .line 110
    .line 111
    const/4 v1, -0x1

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    sget-object v3, Lcom/inmobi/media/Xc;->a:Lcom/inmobi/media/Xc;

    .line 117
    .line 118
    const/16 v5, 0xc

    .line 119
    .line 120
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/inmobi/media/x1;-><init>(Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;ZI)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lcom/inmobi/media/Zc;->k:Lcom/inmobi/media/x1;

    .line 124
    .line 125
    new-instance v0, Lcom/inmobi/media/x1;

    .line 126
    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    sget-object v2, Lcom/inmobi/media/Yc;->a:Lcom/inmobi/media/Yc;

    .line 132
    .line 133
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/inmobi/media/x1;-><init>(Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;ZI)V

    .line 134
    .line 135
    .line 136
    sput-object v0, Lcom/inmobi/media/Zc;->l:Lcom/inmobi/media/x1;

    .line 137
    .line 138
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

.method public static a()I
    .locals 5

    .line 1
    sget-object v0, Lcom/inmobi/media/Zc;->j:Lcom/inmobi/media/C6;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    const-string v3, "key"

    const-string v4, "u-ret"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, v0, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    .line 5
    div-long/2addr v1, v3

    long-to-int v0, v1

    const v1, 0x7fffffff

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Integer;->min(II)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 5

    const-string v0, "adtype"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const-string v0, "banner"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lcom/inmobi/media/Zc;->h:Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;->getSigControlList()Ljava/util/List;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/inmobi/media/Zc;->g:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4, v1}, Ljava/lang/Integer;->min(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    const-string v0, "int"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    sget-object v0, Lcom/inmobi/media/Zc;->h:Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;->getSigControlList()Ljava/util/List;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    sget-object v0, Lcom/inmobi/media/Zc;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4, v1}, Ljava/lang/Integer;->min(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_1
    const-string v0, "native"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x3

    if-eqz p0, :cond_2

    .line 14
    sget-object p0, Lcom/inmobi/media/Zc;->h:Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;

    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;->getSigControlList()Ljava/util/List;

    move-result-object p0

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 15
    sget-object p0, Lcom/inmobi/media/Zc;->g:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4, v1}, Ljava/lang/Integer;->min(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 17
    sget-object p0, Lcom/inmobi/media/Zc;->h:Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;

    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;->getSigControlList()Ljava/util/List;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 18
    sget-object p0, Lcom/inmobi/media/Zc;->g:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr p1, v2

    invoke-static {p1, v1}, Ljava/lang/Integer;->min(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public static c()V
    .locals 11

    .line 1
    sget-object v0, Lcom/inmobi/media/Zc;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-object v0, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    const-string v0, "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const-string v3, "signals"

    .line 17
    .line 18
    invoke-static {v3, v0, v2}, Lcom/inmobi/media/p5;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getIceConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;->isSessionEnabled()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v2, "toString(...)"

    .line 43
    .line 44
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/inmobi/media/Zc;->d:Ljava/lang/String;

    .line 48
    .line 49
    sget-object v0, Lcom/inmobi/media/Zc;->c:Ljava/lang/String;

    .line 50
    .line 51
    const-string v2, "TAG"

    .line 52
    .line 53
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    sub-long/2addr v2, v4

    .line 65
    sput-wide v2, Lcom/inmobi/media/Zc;->f:J

    .line 66
    .line 67
    sget-object v0, Lcom/inmobi/media/Zc;->h:Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;->getSigControlList()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const/4 v3, 0x5

    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    const-string v3, "key"

    .line 83
    .line 84
    if-eqz v2, :cond_3

    .line 85
    .line 86
    sget-object v4, Lcom/inmobi/media/Zc;->j:Lcom/inmobi/media/C6;

    .line 87
    .line 88
    if-nez v4, :cond_2

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    const-string v2, "cnt"

    .line 92
    .line 93
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v5, v4, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    .line 97
    .line 98
    const/4 v6, 0x0

    .line 99
    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    add-int/2addr v2, v1

    .line 104
    const v1, 0x7fffffff

    .line 105
    .line 106
    .line 107
    invoke-static {v2, v1}, Ljava/lang/Integer;->min(II)I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    const/4 v8, 0x4

    .line 112
    const/4 v9, 0x0

    .line 113
    const-string v5, "cnt"

    .line 114
    .line 115
    const/4 v7, 0x0

    .line 116
    invoke-static/range {v4 .. v9}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :goto_0
    sget-object v1, Lcom/inmobi/media/Zc;->k:Lcom/inmobi/media/x1;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/inmobi/media/x1;->a()V

    .line 122
    .line 123
    .line 124
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;->getSigControlList()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const/4 v1, 0x6

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_6

    .line 138
    .line 139
    sget-object v4, Lcom/inmobi/media/Zc;->j:Lcom/inmobi/media/C6;

    .line 140
    .line 141
    if-nez v4, :cond_4

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_4
    const-string v0, "u-ret"

    .line 145
    .line 146
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object v1, v4, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    .line 150
    .line 151
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_5

    .line 156
    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 158
    .line 159
    .line 160
    move-result-wide v6

    .line 161
    const/4 v9, 0x4

    .line 162
    const/4 v10, 0x0

    .line 163
    const-string v5, "u-ret"

    .line 164
    .line 165
    const/4 v8, 0x0

    .line 166
    invoke-static/range {v4 .. v10}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;JZILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_5
    :goto_1
    sget-object v0, Lcom/inmobi/media/Zc;->l:Lcom/inmobi/media/x1;

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/inmobi/media/x1;->a()V

    .line 172
    .line 173
    .line 174
    :cond_6
    return-void
.end method


# virtual methods
.method public final b()Lorg/json/JSONObject;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/inmobi/media/Zc;->h:Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;->getSigControlList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    sget-wide v4, Lcom/inmobi/media/Zc;->f:J

    .line 24
    .line 25
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v4, "st"

    .line 30
    .line 31
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;->getSigControlList()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v4, 0x5

    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v4, -0x1

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    sget-object v2, Lcom/inmobi/media/Zc;->k:Lcom/inmobi/media/x1;

    .line 51
    .line 52
    sget-object v5, Lcom/inmobi/media/Zc;->b:[Lkotlin/reflect/KProperty;

    .line 53
    .line 54
    aget-object v6, v5, v3

    .line 55
    .line 56
    invoke-virtual {v2, p0, v6}, Lcom/inmobi/media/x1;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    check-cast v6, Ljava/lang/Number;

    .line 61
    .line 62
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eq v6, v4, :cond_1

    .line 67
    .line 68
    aget-object v5, v5, v3

    .line 69
    .line 70
    invoke-virtual {v2, p0, v5}, Lcom/inmobi/media/x1;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Ljava/lang/Number;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-string v5, "cnt"

    .line 85
    .line 86
    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    :cond_1
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;->getSigControlList()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const/4 v5, 0x6

    .line 94
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    const/4 v5, 0x1

    .line 103
    if-eqz v2, :cond_2

    .line 104
    .line 105
    sget-object v2, Lcom/inmobi/media/Zc;->l:Lcom/inmobi/media/x1;

    .line 106
    .line 107
    sget-object v6, Lcom/inmobi/media/Zc;->b:[Lkotlin/reflect/KProperty;

    .line 108
    .line 109
    aget-object v7, v6, v5

    .line 110
    .line 111
    invoke-virtual {v2, p0, v7}, Lcom/inmobi/media/x1;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    check-cast v7, Ljava/lang/Number;

    .line 116
    .line 117
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-eq v7, v4, :cond_2

    .line 122
    .line 123
    aget-object v6, v6, v5

    .line 124
    .line 125
    invoke-virtual {v2, p0, v6}, Lcom/inmobi/media/x1;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Ljava/lang/Number;

    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    const-string v6, "u-ret"

    .line 140
    .line 141
    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    :cond_2
    sget-object v2, Lcom/inmobi/media/Zc;->g:Ljava/util/List;

    .line 145
    .line 146
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;->getSigControlList()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    if-nez v6, :cond_3

    .line 163
    .line 164
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-interface {v2, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    :cond_3
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;->getSigControlList()Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    const/4 v6, 0x2

    .line 176
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-nez v3, :cond_4

    .line 185
    .line 186
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-interface {v2, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    :cond_4
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;->getSigControlList()Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    const/4 v5, 0x3

    .line 198
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-nez v3, :cond_5

    .line 207
    .line 208
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-interface {v2, v6, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    :cond_5
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;->getSigControlList()Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    const/4 v3, 0x4

    .line 220
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-nez v1, :cond_6

    .line 229
    .line 230
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-interface {v2, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    :cond_6
    instance-of v1, v2, Ljava/util/Collection;

    .line 238
    .line 239
    if-eqz v1, :cond_7

    .line 240
    .line 241
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_7

    .line 246
    .line 247
    goto :goto_1

    .line 248
    :cond_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    if-eqz v3, :cond_9

    .line 257
    .line 258
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    check-cast v3, Ljava/lang/Number;

    .line 263
    .line 264
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    if-ne v3, v4, :cond_8

    .line 269
    .line 270
    goto :goto_0

    .line 271
    :cond_8
    const-string v1, "dep"

    .line 272
    .line 273
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    :cond_9
    :goto_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 277
    .line 278
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .line 280
    .line 281
    goto :goto_2

    .line 282
    :catch_0
    new-instance v1, Lorg/json/JSONObject;

    .line 283
    .line 284
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 285
    .line 286
    .line 287
    :goto_2
    return-object v1
.end method
