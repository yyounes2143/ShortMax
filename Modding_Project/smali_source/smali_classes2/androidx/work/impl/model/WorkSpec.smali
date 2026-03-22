.class public final Landroidx/work/impl/model/WorkSpec;
.super Ljava/lang/Object;
.source "WorkSpec.kt"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation build Landroidx/room/Entity;
    indices = {
        .subannotation Landroidx/room/Index;
            value = {
                "schedule_requested_at"
            }
        .end subannotation,
        .subannotation Landroidx/room/Index;
            value = {
                "last_enqueue_time"
            }
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/model/WorkSpec$IdAndState;,
        Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;,
        Landroidx/work/impl/model/WorkSpec$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/work/impl/model/WorkSpec$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCHEDULE_NOT_REQUESTED_YET:J = -0x1L

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final WORK_INFO_MAPPER:Landroidx/arch/core/util/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/util/Function<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public backoffDelayDuration:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "backoff_delay_duration"
    .end annotation
.end field

.field public backoffPolicy:Landroidx/work/BackoffPolicy;
    .annotation build Landroidx/room/ColumnInfo;
        name = "backoff_policy"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public constraints:Landroidx/work/Constraints;
    .annotation build Landroidx/room/Embedded;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public expedited:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "run_in_foreground"
    .end annotation
.end field

.field public flexDuration:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "flex_duration"
    .end annotation
.end field

.field private final generation:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public initialDelay:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "initial_delay"
    .end annotation
.end field

.field public input:Landroidx/work/Data;
    .annotation build Landroidx/room/ColumnInfo;
        name = "input"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public inputMergerClassName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "input_merger_class_name"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public intervalDuration:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "interval_duration"
    .end annotation
.end field

.field public lastEnqueueTime:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "last_enqueue_time"
    .end annotation
.end field

.field public minimumRetentionDuration:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "minimum_retention_duration"
    .end annotation
.end field

.field public outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;
    .annotation build Landroidx/room/ColumnInfo;
        name = "out_of_quota_policy"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public output:Landroidx/work/Data;
    .annotation build Landroidx/room/ColumnInfo;
        name = "output"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private periodCount:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "0"
        name = "period_count"
    .end annotation
.end field

.field public runAttemptCount:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "run_attempt_count"
    .end annotation
.end field

.field public scheduleRequestedAt:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "schedule_requested_at"
    .end annotation
.end field

.field public state:Landroidx/work/WorkInfo$State;
    .annotation build Landroidx/room/ColumnInfo;
        name = "state"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public workerClassName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "worker_class_name"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/work/impl/model/WorkSpec$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/work/impl/model/WorkSpec$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/work/impl/model/WorkSpec;->Companion:Landroidx/work/impl/model/WorkSpec$Companion;

    .line 8
    .line 9
    const-string v0, "WorkSpec"

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "tagWithPrefix(\"WorkSpec\")"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Landroidx/work/impl/model/a;

    .line 23
    .line 24
    invoke-direct {v0}, Landroidx/work/impl/model/a;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Landroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Landroidx/arch/core/util/Function;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkInfo$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/work/Data;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/work/Data;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroidx/work/Constraints;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p15    # Landroidx/work/BackoffPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p25    # Landroidx/work/OutOfQuotaPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p13

    move-object/from16 v7, p15

    move-object/from16 v8, p25

    const-string v9, "id"

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "state"

    invoke-static {p2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v9, "workerClassName"

    invoke-static {p3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "input"

    invoke-static {p5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "output"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "constraints"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "backoffPolicy"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "outOfQuotaPolicy"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 3
    iput-object v2, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 4
    iput-object v3, v0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 6
    iput-object v4, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 7
    iput-object v5, v0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    move-wide/from16 v1, p7

    .line 8
    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    move-wide/from16 v1, p9

    .line 9
    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move-wide/from16 v1, p11

    .line 10
    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 11
    iput-object v6, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    move/from16 v1, p14

    .line 12
    iput v1, v0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 13
    iput-object v7, v0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    move-wide/from16 v1, p16

    .line 14
    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move-wide/from16 v1, p18

    .line 15
    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    move-wide/from16 v1, p20

    .line 16
    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move-wide/from16 v1, p22

    .line 17
    iput-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move/from16 v1, p24

    .line 18
    iput-boolean v1, v0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 19
    iput-object v8, v0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    move/from16 v1, p26

    .line 20
    iput v1, v0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    move/from16 v1, p27

    .line 21
    iput v1, v0, Landroidx/work/impl/model/WorkSpec;->generation:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 30

    move/from16 v0, p28

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 22
    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    .line 23
    const-string v2, "EMPTY"

    if-eqz v1, :cond_2

    .line 24
    sget-object v1, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 25
    sget-object v1, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_4

    move-wide v9, v2

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-wide v11, v2

    goto :goto_5

    :cond_5
    move-wide/from16 v11, p9

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-wide v13, v2

    goto :goto_6

    :cond_6
    move-wide/from16 v13, p11

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    .line 26
    sget-object v1, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    move-object v15, v1

    goto :goto_7

    :cond_7
    move-object/from16 v15, p13

    :goto_7
    and-int/lit16 v1, v0, 0x400

    const/4 v5, 0x0

    if-eqz v1, :cond_8

    move/from16 v16, v5

    goto :goto_8

    :cond_8
    move/from16 v16, p14

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    .line 27
    sget-object v1, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    move-object/from16 v17, v1

    goto :goto_9

    :cond_9
    move-object/from16 v17, p15

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    const-wide/16 v18, 0x7530

    goto :goto_a

    :cond_a
    move-wide/from16 v18, p16

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move-wide/from16 v20, v2

    goto :goto_b

    :cond_b
    move-wide/from16 v20, p18

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    move-wide/from16 v22, v2

    goto :goto_c

    :cond_c
    move-wide/from16 v22, p20

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    const-wide/16 v1, -0x1

    move-wide/from16 v24, v1

    goto :goto_d

    :cond_d
    move-wide/from16 v24, p22

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move/from16 v26, v5

    goto :goto_e

    :cond_e
    move/from16 v26, p24

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    .line 28
    sget-object v1, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    move-object/from16 v27, v1

    goto :goto_f

    :cond_f
    move-object/from16 v27, p25

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move/from16 v28, v5

    goto :goto_10

    :cond_10
    move/from16 v28, p26

    :goto_10
    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    move/from16 v29, v5

    goto :goto_11

    :cond_11
    move/from16 v29, p27

    :goto_11
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    .line 29
    invoke-direct/range {v2 .. v29}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/work/impl/model/WorkSpec;)V
    .locals 33
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/impl/model/WorkSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "newId"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "other"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v4, v0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 32
    iget-object v3, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 33
    iget-object v5, v0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 34
    new-instance v7, Landroidx/work/Data;

    move-object v6, v7

    iget-object v8, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-direct {v7, v8}, Landroidx/work/Data;-><init>(Landroidx/work/Data;)V

    .line 35
    new-instance v8, Landroidx/work/Data;

    move-object v7, v8

    iget-object v9, v0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-direct {v8, v9}, Landroidx/work/Data;-><init>(Landroidx/work/Data;)V

    .line 36
    iget-wide v8, v0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 37
    iget-wide v10, v0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 38
    iget-wide v12, v0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 39
    new-instance v15, Landroidx/work/Constraints;

    move-object v14, v15

    move-object/from16 v31, v1

    iget-object v1, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-direct {v15, v1}, Landroidx/work/Constraints;-><init>(Landroidx/work/Constraints;)V

    .line 40
    iget v15, v0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 41
    iget-object v1, v0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    move-object/from16 v16, v1

    move-object/from16 v32, v2

    .line 42
    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move-wide/from16 v17, v1

    .line 43
    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    move-wide/from16 v19, v1

    .line 44
    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move-wide/from16 v21, v1

    .line 45
    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move-wide/from16 v23, v1

    .line 46
    iget-boolean v1, v0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    move/from16 v25, v1

    .line 47
    iget-object v1, v0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    move-object/from16 v26, v1

    .line 48
    iget v0, v0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    move/from16 v27, v0

    const/high16 v29, 0x80000

    const/16 v30, 0x0

    const/16 v28, 0x0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    .line 49
    invoke-direct/range {v1 .. v30}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 30
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    const-string v2, "id"

    move-object/from16 v4, p1

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "workerClassName_"

    move-object/from16 v4, p2

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v28, 0xffffa

    const/16 v29, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 30
    invoke-direct/range {v0 .. v29}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private static final WORK_INFO_MAPPER$lambda$1(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Iterable;

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->toWorkInfo()Landroidx/work/WorkInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :cond_1
    return-object v0
.end method

.method public static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER$lambda$1(Ljava/util/List;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic copy$default(Landroidx/work/impl/model/WorkSpec;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIILjava/lang/Object;)Landroidx/work/impl/model/WorkSpec;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p28

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-wide v8, v0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    goto :goto_6

    :cond_6
    move-wide/from16 v8, p7

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-wide v10, v0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    goto :goto_7

    :cond_7
    move-wide/from16 v10, p9

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-wide v12, v0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    goto :goto_8

    :cond_8
    move-wide/from16 v12, p11

    :goto_8
    and-int/lit16 v14, v1, 0x200

    if-eqz v14, :cond_9

    iget-object v14, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    goto :goto_9

    :cond_9
    move-object/from16 v14, p13

    :goto_9
    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_a

    iget v15, v0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    goto :goto_a

    :cond_a
    move/from16 v15, p14

    :goto_a
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget-object v15, v0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    goto :goto_b

    :cond_b
    move-object/from16 v15, p15

    :goto_b
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x1000

    move-object/from16 p13, v14

    if-eqz v15, :cond_c

    iget-wide v14, v0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    goto :goto_c

    :cond_c
    move-wide/from16 v14, p16

    :goto_c
    move-wide/from16 p16, v14

    and-int/lit16 v14, v1, 0x2000

    if-eqz v14, :cond_d

    iget-wide v14, v0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    goto :goto_d

    :cond_d
    move-wide/from16 v14, p18

    :goto_d
    move-wide/from16 p18, v14

    and-int/lit16 v14, v1, 0x4000

    if-eqz v14, :cond_e

    iget-wide v14, v0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    goto :goto_e

    :cond_e
    move-wide/from16 v14, p20

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-wide/from16 p20, v14

    if-eqz v16, :cond_f

    iget-wide v14, v0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    goto :goto_f

    :cond_f
    move-wide/from16 v14, p22

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-wide/from16 p22, v14

    if-eqz v16, :cond_10

    iget-boolean v14, v0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    goto :goto_10

    :cond_10
    move/from16 v14, p24

    :goto_10
    const/high16 v15, 0x20000

    and-int/2addr v15, v1

    if-eqz v15, :cond_11

    iget-object v15, v0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p25

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_12

    iget v15, v0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    goto :goto_12

    :cond_12
    move/from16 v15, p26

    :goto_12
    const/high16 v16, 0x80000

    and-int v1, v1, v16

    if-eqz v1, :cond_13

    iget v1, v0, Landroidx/work/impl/model/WorkSpec;->generation:I

    goto :goto_13

    :cond_13
    move/from16 v1, p27

    :goto_13
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-wide/from16 p7, v8

    move-wide/from16 p9, v10

    move-wide/from16 p11, v12

    move/from16 p24, v14

    move/from16 p26, v15

    move/from16 p27, v1

    invoke-virtual/range {p0 .. p27}, Landroidx/work/impl/model/WorkSpec;->copy(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)Landroidx/work/impl/model/WorkSpec;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final calculateNextRunTime()J
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/work/impl/model/WorkSpec;->isBackedOff()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 8
    .line 9
    sget-object v1, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 14
    .line 15
    iget v2, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 16
    .line 17
    int-to-long v2, v2

    .line 18
    mul-long/2addr v0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 21
    .line 22
    long-to-float v0, v0

    .line 23
    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 24
    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    float-to-long v0, v0

    .line 32
    :goto_0
    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 33
    .line 34
    const-wide/32 v4, 0x112a880

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1, v4, v5}, Lkotlin/ranges/e;->k(JJ)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    add-long/2addr v2, v0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    invoke-virtual {p0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const-wide/16 v1, 0x0

    .line 48
    .line 49
    if-eqz v0, :cond_6

    .line 50
    .line 51
    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    .line 52
    .line 53
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    iget-wide v5, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 58
    .line 59
    add-long/2addr v3, v5

    .line 60
    :cond_2
    iget-wide v5, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 61
    .line 62
    iget-wide v7, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 63
    .line 64
    cmp-long v9, v5, v7

    .line 65
    .line 66
    if-eqz v9, :cond_4

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    const/4 v0, -0x1

    .line 71
    int-to-long v0, v0

    .line 72
    mul-long v1, v0, v5

    .line 73
    .line 74
    :cond_3
    add-long/2addr v3, v7

    .line 75
    :goto_1
    add-long v2, v3, v1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    if-nez v0, :cond_5

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    move-wide v1, v7

    .line 82
    goto :goto_1

    .line 83
    :cond_6
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 84
    .line 85
    cmp-long v0, v3, v1

    .line 86
    .line 87
    if-nez v0, :cond_7

    .line 88
    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v3

    .line 93
    :cond_7
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 94
    .line 95
    add-long v2, v3, v0

    .line 96
    .line 97
    :goto_2
    return-wide v2
.end method

.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Landroidx/work/Constraints;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final component12()Landroidx/work/BackoffPolicy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component14()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component15()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component16()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component17()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component18()Landroidx/work/OutOfQuotaPolicy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component19()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Landroidx/work/WorkInfo$State;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component20()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->generation:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Landroidx/work/Data;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Landroidx/work/Data;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component8()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component9()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)Landroidx/work/impl/model/WorkSpec;
    .locals 30
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkInfo$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/work/Data;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/work/Data;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroidx/work/Constraints;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p15    # Landroidx/work/BackoffPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p25    # Landroidx/work/OutOfQuotaPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-wide/from16 v16, p16

    move-wide/from16 v18, p18

    move-wide/from16 v20, p20

    move-wide/from16 v22, p22

    move/from16 v24, p24

    move-object/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    const-string v0, "id"

    move-object/from16 v28, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workerClassName"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constraints"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backoffPolicy"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outOfQuotaPolicy"

    move-object/from16 v1, p25

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v29, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct/range {v0 .. v27}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;II)V

    return-object v29
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/work/impl/model/WorkSpec;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/work/impl/model/WorkSpec;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 25
    .line 26
    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 54
    .line 55
    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 65
    .line 66
    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 76
    .line 77
    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 78
    .line 79
    cmp-long v1, v3, v5

    .line 80
    .line 81
    if-eqz v1, :cond_8

    .line 82
    .line 83
    return v2

    .line 84
    :cond_8
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 85
    .line 86
    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 87
    .line 88
    cmp-long v1, v3, v5

    .line 89
    .line 90
    if-eqz v1, :cond_9

    .line 91
    .line 92
    return v2

    .line 93
    :cond_9
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 94
    .line 95
    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 96
    .line 97
    cmp-long v1, v3, v5

    .line 98
    .line 99
    if-eqz v1, :cond_a

    .line 100
    .line 101
    return v2

    .line 102
    :cond_a
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 103
    .line 104
    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 105
    .line 106
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_b

    .line 111
    .line 112
    return v2

    .line 113
    :cond_b
    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 114
    .line 115
    iget v3, p1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 116
    .line 117
    if-eq v1, v3, :cond_c

    .line 118
    .line 119
    return v2

    .line 120
    :cond_c
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 121
    .line 122
    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 123
    .line 124
    if-eq v1, v3, :cond_d

    .line 125
    .line 126
    return v2

    .line 127
    :cond_d
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 128
    .line 129
    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 130
    .line 131
    cmp-long v1, v3, v5

    .line 132
    .line 133
    if-eqz v1, :cond_e

    .line 134
    .line 135
    return v2

    .line 136
    :cond_e
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 137
    .line 138
    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 139
    .line 140
    cmp-long v1, v3, v5

    .line 141
    .line 142
    if-eqz v1, :cond_f

    .line 143
    .line 144
    return v2

    .line 145
    :cond_f
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 146
    .line 147
    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 148
    .line 149
    cmp-long v1, v3, v5

    .line 150
    .line 151
    if-eqz v1, :cond_10

    .line 152
    .line 153
    return v2

    .line 154
    :cond_10
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 155
    .line 156
    iget-wide v5, p1, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 157
    .line 158
    cmp-long v1, v3, v5

    .line 159
    .line 160
    if-eqz v1, :cond_11

    .line 161
    .line 162
    return v2

    .line 163
    :cond_11
    iget-boolean v1, p0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 164
    .line 165
    iget-boolean v3, p1, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 166
    .line 167
    if-eq v1, v3, :cond_12

    .line 168
    .line 169
    return v2

    .line 170
    :cond_12
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    .line 171
    .line 172
    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    .line 173
    .line 174
    if-eq v1, v3, :cond_13

    .line 175
    .line 176
    return v2

    .line 177
    :cond_13
    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    .line 178
    .line 179
    iget v3, p1, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    .line 180
    .line 181
    if-eq v1, v3, :cond_14

    .line 182
    .line 183
    return v2

    .line 184
    :cond_14
    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->generation:I

    .line 185
    .line 186
    iget p1, p1, Landroidx/work/impl/model/WorkSpec;->generation:I

    .line 187
    .line 188
    if-eq v1, p1, :cond_15

    .line 189
    .line 190
    return v2

    .line 191
    :cond_15
    return v0
.end method

.method public final getGeneration()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->generation:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPeriodCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final hasConstraints()Z
    .locals 2

    .line 1
    sget-object v0, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    :goto_0
    add-int/2addr v0, v1

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/work/Data;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/2addr v0, v1

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/work/Data;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    add-int/2addr v0, v1

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    .line 57
    .line 58
    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 59
    .line 60
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/2addr v0, v1

    .line 65
    mul-int/lit8 v0, v0, 0x1f

    .line 66
    .line 67
    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 68
    .line 69
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    add-int/2addr v0, v1

    .line 74
    mul-int/lit8 v0, v0, 0x1f

    .line 75
    .line 76
    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 77
    .line 78
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    add-int/2addr v0, v1

    .line 83
    mul-int/lit8 v0, v0, 0x1f

    .line 84
    .line 85
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroidx/work/Constraints;->hashCode()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    add-int/2addr v0, v1

    .line 92
    mul-int/lit8 v0, v0, 0x1f

    .line 93
    .line 94
    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 95
    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    add-int/2addr v0, v1

    .line 101
    mul-int/lit8 v0, v0, 0x1f

    .line 102
    .line 103
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    add-int/2addr v0, v1

    .line 110
    mul-int/lit8 v0, v0, 0x1f

    .line 111
    .line 112
    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 113
    .line 114
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    add-int/2addr v0, v1

    .line 119
    mul-int/lit8 v0, v0, 0x1f

    .line 120
    .line 121
    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    .line 122
    .line 123
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    add-int/2addr v0, v1

    .line 128
    mul-int/lit8 v0, v0, 0x1f

    .line 129
    .line 130
    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 131
    .line 132
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    add-int/2addr v0, v1

    .line 137
    mul-int/lit8 v0, v0, 0x1f

    .line 138
    .line 139
    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 140
    .line 141
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    add-int/2addr v0, v1

    .line 146
    mul-int/lit8 v0, v0, 0x1f

    .line 147
    .line 148
    iget-boolean v1, p0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 149
    .line 150
    if-eqz v1, :cond_1

    .line 151
    .line 152
    const/4 v1, 0x1

    .line 153
    :cond_1
    add-int/2addr v0, v1

    .line 154
    mul-int/lit8 v0, v0, 0x1f

    .line 155
    .line 156
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:Landroidx/work/OutOfQuotaPolicy;

    .line 157
    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    add-int/2addr v0, v1

    .line 163
    mul-int/lit8 v0, v0, 0x1f

    .line 164
    .line 165
    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    .line 166
    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    add-int/2addr v0, v1

    .line 172
    mul-int/lit8 v0, v0, 0x1f

    .line 173
    .line 174
    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->generation:I

    .line 175
    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    add-int/2addr v0, v1

    .line 181
    return v0
.end method

.method public final isBackedOff()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 2
    .line 3
    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final isPeriodic()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final setBackoffDelayDuration(J)V
    .locals 9

    .line 1
    const-wide/32 v0, 0x112a880

    .line 2
    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v2, "Backoff delay duration exceeds maximum value"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const-wide/16 v0, 0x2710

    .line 20
    .line 21
    cmp-long v0, p1, v0

    .line 22
    .line 23
    if-gez v0, :cond_1

    .line 24
    .line 25
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "Backoff delay duration less than minimum value"

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    const-wide/16 v5, 0x2710

    .line 37
    .line 38
    const-wide/32 v7, 0x112a880

    .line 39
    .line 40
    .line 41
    move-wide v3, p1

    .line 42
    invoke-static/range {v3 .. v8}, Lkotlin/ranges/e;->p(JJJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    iput-wide p1, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 47
    .line 48
    return-void
.end method

.method public final setPeriodCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPeriodic(J)V
    .locals 5

    const-wide/32 v0, 0xdbba0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 1
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    .line 2
    sget-object v3, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    .line 3
    const-string v4, "Interval duration lesser than minimum allowed value; Changed to 900000"

    .line 4
    invoke-virtual {v2, v3, v4}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {p1, p2, v0, v1}, Lkotlin/ranges/e;->f(JJ)J

    move-result-wide v2

    .line 6
    invoke-static {p1, p2, v0, v1}, Lkotlin/ranges/e;->f(JJ)J

    move-result-wide p1

    .line 7
    invoke-virtual {p0, v2, v3, p1, p2}, Landroidx/work/impl/model/WorkSpec;->setPeriodic(JJ)V

    return-void
.end method

.method public final setPeriodic(JJ)V
    .locals 8

    const-wide/32 v0, 0xdbba0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 8
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    .line 9
    sget-object v3, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    .line 10
    const-string v4, "Interval duration lesser than minimum allowed value; Changed to 900000"

    .line 11
    invoke-virtual {v2, v3, v4}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_0
    invoke-static {p1, p2, v0, v1}, Lkotlin/ranges/e;->f(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    const-wide/32 v0, 0x493e0

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    .line 13
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    .line 14
    sget-object v1, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    .line 15
    const-string v2, "Flex duration lesser than minimum allowed value; Changed to 300000"

    .line 16
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_1
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_2

    .line 18
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    .line 19
    sget-object v1, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flex duration greater than interval duration; Changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {v0, v1, p1}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-wide/32 v4, 0x493e0

    .line 22
    iget-wide v6, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move-wide v2, p3

    invoke-static/range {v2 .. v7}, Lkotlin/ranges/e;->p(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "{WorkSpec: "

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x7d

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
