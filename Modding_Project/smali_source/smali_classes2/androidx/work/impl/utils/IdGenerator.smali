.class public final Landroidx/work/impl/utils/IdGenerator;
.super Ljava/lang/Object;
.source "IdGenerator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final workDatabase:Landroidx/work/impl/WorkDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .locals 1
    .param p1    # Landroidx/work/impl/WorkDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "workDatabase"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/work/impl/utils/IdGenerator;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Landroidx/work/impl/utils/IdGenerator;II)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/work/impl/utils/IdGenerator;->nextJobSchedulerIdWithRange$lambda$0(Landroidx/work/impl/utils/IdGenerator;II)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Landroidx/work/impl/utils/IdGenerator;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/work/impl/utils/IdGenerator;->nextAlarmManagerId$lambda$1(Landroidx/work/impl/utils/IdGenerator;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final nextAlarmManagerId$lambda$1(Landroidx/work/impl/utils/IdGenerator;)Ljava/lang/Integer;
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/work/impl/utils/IdGenerator;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 7
    .line 8
    const-string v0, "next_alarm_manager_id"

    .line 9
    .line 10
    invoke-static {p0, v0}, Landroidx/work/impl/utils/IdGeneratorKt;->access$nextId(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private static final nextJobSchedulerIdWithRange$lambda$0(Landroidx/work/impl/utils/IdGenerator;II)Ljava/lang/Integer;
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/work/impl/utils/IdGenerator;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 7
    .line 8
    const-string v1, "next_job_scheduler_id"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroidx/work/impl/utils/IdGeneratorKt;->access$nextId(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-gt p1, v0, :cond_0

    .line 15
    .line 16
    if-gt v0, p2, :cond_0

    .line 17
    .line 18
    move p1, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p0, p0, Landroidx/work/impl/utils/IdGenerator;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 21
    .line 22
    add-int/lit8 p2, p1, 0x1

    .line 23
    .line 24
    invoke-static {p0, v1, p2}, Landroidx/work/impl/utils/IdGeneratorKt;->access$updatePreference(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method


# virtual methods
.method public final nextAlarmManagerId()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/IdGenerator;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 2
    .line 3
    new-instance v1, Landroidx/work/impl/utils/e;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroidx/work/impl/utils/e;-><init>(Landroidx/work/impl/utils/IdGenerator;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v1, "workDatabase.runInTransa\u2026ANAGER_ID_KEY)\n        })"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Ljava/lang/Number;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public final nextJobSchedulerIdWithRange(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/utils/IdGenerator;->workDatabase:Landroidx/work/impl/WorkDatabase;

    .line 2
    .line 3
    new-instance v1, Landroidx/work/impl/utils/f;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Landroidx/work/impl/utils/f;-><init>(Landroidx/work/impl/utils/IdGenerator;II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string/jumbo p2, "workDatabase.runInTransa\u2026            id\n        })"

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast p1, Ljava/lang/Number;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method
