.class public final Lr3/x;
.super Ljava/lang/Object;
.source "MemoryCacheParams.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:J


# direct methods
.method public constructor <init>(IIIIIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lr3/x;->a:I

    .line 3
    iput p2, p0, Lr3/x;->b:I

    .line 4
    iput p3, p0, Lr3/x;->c:I

    .line 5
    iput p4, p0, Lr3/x;->d:I

    .line 6
    iput p5, p0, Lr3/x;->e:I

    .line 7
    iput-wide p6, p0, Lr3/x;->f:J

    return-void
.end method

.method public synthetic constructor <init>(IIIIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    move-wide v8, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v8, p6

    :goto_0
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 9
    invoke-direct/range {v2 .. v9}, Lr3/x;-><init>(IIIIIJ)V

    return-void
.end method
