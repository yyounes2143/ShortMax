.class final synthetic Landroidx/compose/runtime/ActualJvm_jvmKt__OldSynchronization_jvmKt;
.super Ljava/lang/Object;
.source "OldSynchronization.jvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOldSynchronization.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OldSynchronization.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt__OldSynchronization_jvmKt\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n*L\n1#1,32:1\n33#2:33\n*S KotlinDebug\n*F\n+ 1 OldSynchronization.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt__OldSynchronization_jvmKt\n*L\n31#1:33\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic synchronized(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    .annotation runtime Lms/c;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method
