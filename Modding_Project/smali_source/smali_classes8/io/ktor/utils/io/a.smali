.class public final Lio/ktor/utils/io/a;
.super Ljava/lang/Object;
.source "ByteBufferChannel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final synthetic a(Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/ktor/utils/io/a;->b(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final b(Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0, p0}, Lio/ktor/utils/io/ExceptionUtilsJvmKt;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    goto :goto_0

    .line 6
    :catchall_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    move-object p0, v0

    .line 11
    :goto_1
    throw p0
.end method
