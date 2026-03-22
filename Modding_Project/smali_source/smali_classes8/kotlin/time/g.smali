.class public final Lkotlin/time/g;
.super Ljava/lang/Object;
.source "MonoTimeSource.kt"

# interfaces
.implements Let/b;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lkotlin/time/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/time/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/time/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlin/time/g;->a:Lkotlin/time/g;

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    sput-wide v0, Lkotlin/time/g;->b:J

    .line 13
    .line 14
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

.method private final e()J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lkotlin/time/g;->b:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    return-wide v0
.end method


# virtual methods
.method public bridge synthetic a()Lkotlin/time/a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlin/time/g;->d()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lkotlin/time/h$a;->b(J)Lkotlin/time/h$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final b(JJ)J
    .locals 1

    .line 1
    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    .line 2
    .line 3
    invoke-static {p1, p2, p3, p4, v0}, Lkotlin/time/f;->d(JJLkotlin/time/DurationUnit;)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public final c(J)J
    .locals 3

    .line 1
    invoke-direct {p0}, Lkotlin/time/g;->e()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    .line 6
    .line 7
    invoke-static {v0, v1, p1, p2, v2}, Lkotlin/time/f;->b(JJLkotlin/time/DurationUnit;)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    return-wide p1
.end method

.method public d()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lkotlin/time/g;->e()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lkotlin/time/h$a;->e(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "TimeSource(System.nanoTime())"

    .line 2
    .line 3
    return-object v0
.end method
