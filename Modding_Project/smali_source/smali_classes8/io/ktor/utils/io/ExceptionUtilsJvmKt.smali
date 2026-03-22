.class public final Lio/ktor/utils/io/ExceptionUtilsJvmKt;
.super Ljava/lang/Object;
.source "ExceptionUtilsJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nExceptionUtilsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionUtilsJvm.kt\nio/ktor/utils/io/ExceptionUtilsJvmKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,101:1\n90#1:104\n90#1:105\n90#1:106\n90#1:107\n1#2:102\n6523#3:103\n12904#3,3:108\n*S KotlinDebug\n*F\n+ 1 ExceptionUtilsJvm.kt\nio/ktor/utils/io/ExceptionUtilsJvmKt\n*L\n74#1:104\n79#1:105\n81#1:106\n84#1:107\n59#1:103\n96#1:108,3\n*E\n"
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Ljava/lang/Throwable;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-static {v0, v1}, Lio/ktor/utils/io/ExceptionUtilsJvmKt;->d(Ljava/lang/Class;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput v0, Lio/ktor/utils/io/ExceptionUtilsJvmKt;->a:I

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lio/ktor/utils/io/ExceptionUtilsJvmKt;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 16
    .line 17
    new-instance v0, Ljava/util/WeakHashMap;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lio/ktor/utils/io/ExceptionUtilsJvmKt;->c:Ljava/util/WeakHashMap;

    .line 23
    .line 24
    return-void
.end method

.method private static final a(Ljava/lang/reflect/Constructor;)Lkotlin/jvm/functions/Function1;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    const-class v2, Ljava/lang/Throwable;

    .line 9
    .line 10
    const-class v3, Ljava/lang/String;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    if-eq v1, v5, :cond_1

    .line 16
    .line 17
    const/4 v7, 0x2

    .line 18
    if-eq v1, v7, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    aget-object v1, v0, v4

    .line 22
    .line 23
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    aget-object v0, v0, v5

    .line 30
    .line 31
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    new-instance v6, Lio/ktor/utils/io/ExceptionUtilsJvmKt$createConstructor$$inlined$safeCtor$1;

    .line 38
    .line 39
    invoke-direct {v6, p0}, Lio/ktor/utils/io/ExceptionUtilsJvmKt$createConstructor$$inlined$safeCtor$1;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    aget-object v0, v0, v4

    .line 44
    .line 45
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    new-instance v6, Lio/ktor/utils/io/ExceptionUtilsJvmKt$createConstructor$$inlined$safeCtor$2;

    .line 52
    .line 53
    invoke-direct {v6, p0}, Lio/ktor/utils/io/ExceptionUtilsJvmKt$createConstructor$$inlined$safeCtor$2;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    new-instance v6, Lio/ktor/utils/io/ExceptionUtilsJvmKt$createConstructor$$inlined$safeCtor$3;

    .line 64
    .line 65
    invoke-direct {v6, p0}, Lio/ktor/utils/io/ExceptionUtilsJvmKt$createConstructor$$inlined$safeCtor$3;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    new-instance v6, Lio/ktor/utils/io/ExceptionUtilsJvmKt$createConstructor$$inlined$safeCtor$4;

    .line 70
    .line 71
    invoke-direct {v6, p0}, Lio/ktor/utils/io/ExceptionUtilsJvmKt$createConstructor$$inlined$safeCtor$4;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    :goto_0
    return-object v6
.end method

.method private static final b(Ljava/lang/Class;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "declaredFields"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v2, v1, :cond_2

    .line 14
    .line 15
    aget-object v4, v0, v2

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_1

    .line 26
    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    add-int/2addr p1, v3

    .line 33
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-nez p0, :cond_0

    .line 38
    .line 39
    return p1
.end method

.method static synthetic c(Ljava/lang/Class;IILjava/lang/Object;)I
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lio/ktor/utils/io/ExceptionUtilsJvmKt;->b(Ljava/lang/Class;I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private static final d(Ljava/lang/Class;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lzs/a;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p0, v2, v0, v1}, Lio/ktor/utils/io/ExceptionUtilsJvmKt;->c(Ljava/lang/Class;IILjava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 24
    .line 25
    invoke-static {p0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p0}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    move-object p0, p1

    .line 44
    :cond_0
    check-cast p0, Ljava/lang/Number;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0
.end method

.method public static final e(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 8
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;",
            "Ljava/lang/Throwable;",
            ")TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "exception"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "cause"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p0, Lgt/w;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :try_start_0
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 17
    .line 18
    check-cast p0, Lgt/w;

    .line 19
    .line 20
    invoke-interface {p0}, Lgt/w;->b()Ljava/lang/Throwable;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 31
    .line 32
    invoke-static {p0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    move-object v1, p0

    .line 48
    :goto_1
    check-cast v1, Ljava/lang/Throwable;

    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_1
    sget-object v0, Lio/ktor/utils/io/ExceptionUtilsJvmKt;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 58
    .line 59
    .line 60
    :try_start_1
    sget-object v3, Lio/ktor/utils/io/ExceptionUtilsJvmKt;->c:Ljava/util/WeakHashMap;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Lkotlin/jvm/functions/Function1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 73
    .line 74
    .line 75
    if-eqz v3, :cond_2

    .line 76
    .line 77
    invoke-interface {v3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Ljava/lang/Throwable;

    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_2
    sget v2, Lio/ktor/utils/io/ExceptionUtilsJvmKt;->a:I

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    const/4 v4, 0x0

    .line 91
    invoke-static {v3, v4}, Lio/ktor/utils/io/ExceptionUtilsJvmKt;->d(Ljava/lang/Class;I)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eq v2, v3, :cond_7

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-nez v2, :cond_3

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    goto :goto_2

    .line 112
    :cond_3
    move v2, v4

    .line 113
    :goto_2
    move v3, v4

    .line 114
    :goto_3
    if-ge v3, v2, :cond_4

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 117
    .line 118
    .line 119
    add-int/lit8 v3, v3, 0x1

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 127
    .line 128
    .line 129
    :try_start_2
    sget-object v3, Lio/ktor/utils/io/ExceptionUtilsJvmKt;->c:Ljava/util/WeakHashMap;

    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    sget-object v5, Lio/ktor/utils/io/ExceptionUtilsJvmKt$tryCopyException$4$1;->d:Lio/ktor/utils/io/ExceptionUtilsJvmKt$tryCopyException$4$1;

    .line 136
    .line 137
    invoke-interface {v3, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    .line 142
    :goto_4
    if-ge v4, v2, :cond_5

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 145
    .line 146
    .line 147
    add-int/lit8 v4, v4, 0x1

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 151
    .line 152
    .line 153
    return-object v1

    .line 154
    :catchall_1
    move-exception p0

    .line 155
    :goto_5
    if-ge v4, v2, :cond_6

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 158
    .line 159
    .line 160
    add-int/lit8 v4, v4, 0x1

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 164
    .line 165
    .line 166
    throw p0

    .line 167
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const-string v2, "exception.javaClass.constructors"

    .line 176
    .line 177
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    new-instance v2, Lio/ktor/utils/io/ExceptionUtilsJvmKt$a;

    .line 181
    .line 182
    invoke-direct {v2}, Lio/ktor/utils/io/ExceptionUtilsJvmKt$a;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-static {v0, v2}, Lkotlin/collections/n;->o1([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    move-object v2, v1

    .line 194
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_9

    .line 199
    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 205
    .line 206
    const-string v3, "constructor"

    .line 207
    .line 208
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-static {v2}, Lio/ktor/utils/io/ExceptionUtilsJvmKt;->a(Ljava/lang/reflect/Constructor;)Lkotlin/jvm/functions/Function1;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    if-eqz v2, :cond_8

    .line 216
    .line 217
    :cond_9
    sget-object v0, Lio/ktor/utils/io/ExceptionUtilsJvmKt;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    if-nez v5, :cond_a

    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    goto :goto_6

    .line 234
    :cond_a
    move v5, v4

    .line 235
    :goto_6
    move v6, v4

    .line 236
    :goto_7
    if-ge v6, v5, :cond_b

    .line 237
    .line 238
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 239
    .line 240
    .line 241
    add-int/lit8 v6, v6, 0x1

    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_b
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 249
    .line 250
    .line 251
    :try_start_3
    sget-object v6, Lio/ktor/utils/io/ExceptionUtilsJvmKt;->c:Ljava/util/WeakHashMap;

    .line 252
    .line 253
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    if-nez v2, :cond_c

    .line 258
    .line 259
    sget-object v7, Lio/ktor/utils/io/ExceptionUtilsJvmKt$tryCopyException$5$1;->d:Lio/ktor/utils/io/ExceptionUtilsJvmKt$tryCopyException$5$1;

    .line 260
    .line 261
    goto :goto_8

    .line 262
    :catchall_2
    move-exception p0

    .line 263
    goto :goto_a

    .line 264
    :cond_c
    move-object v7, v2

    .line 265
    :goto_8
    invoke-interface {v6, p0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 269
    .line 270
    :goto_9
    if-ge v4, v5, :cond_d

    .line 271
    .line 272
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 273
    .line 274
    .line 275
    add-int/lit8 v4, v4, 0x1

    .line 276
    .line 277
    goto :goto_9

    .line 278
    :cond_d
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 279
    .line 280
    .line 281
    if-eqz v2, :cond_e

    .line 282
    .line 283
    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    move-object v1, p0

    .line 288
    check-cast v1, Ljava/lang/Throwable;

    .line 289
    .line 290
    :cond_e
    return-object v1

    .line 291
    :goto_a
    if-ge v4, v5, :cond_f

    .line 292
    .line 293
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 294
    .line 295
    .line 296
    add-int/lit8 v4, v4, 0x1

    .line 297
    .line 298
    goto :goto_a

    .line 299
    :cond_f
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 300
    .line 301
    .line 302
    throw p0

    .line 303
    :catchall_3
    move-exception p0

    .line 304
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 305
    .line 306
    .line 307
    throw p0
.end method
