.class public abstract Lkotlin/time/AbstractLongTimeSource;
.super Ljava/lang/Object;
.source "TimeSources.kt"

# interfaces
.implements Let/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/AbstractLongTimeSource$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lkotlin/time/DurationUnit;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static final synthetic b(Lkotlin/time/AbstractLongTimeSource;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lkotlin/time/AbstractLongTimeSource;->c()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method private final c()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlin/time/AbstractLongTimeSource;->f()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-direct {p0}, Lkotlin/time/AbstractLongTimeSource;->e()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    sub-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method private final e()J
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/time/AbstractLongTimeSource;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method


# virtual methods
.method public a()Lkotlin/time/a;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lkotlin/time/AbstractLongTimeSource$a;

    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/time/AbstractLongTimeSource;->c()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    sget-object v0, Lkotlin/time/b;->b:Lkotlin/time/b$a;

    .line 8
    .line 9
    invoke-virtual {v0}, Lkotlin/time/b$a;->c()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v0, v7

    .line 15
    move-object v3, p0

    .line 16
    invoke-direct/range {v0 .. v6}, Lkotlin/time/AbstractLongTimeSource$a;-><init>(JLkotlin/time/AbstractLongTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    .line 18
    .line 19
    return-object v7
.end method

.method protected final d()Lkotlin/time/DurationUnit;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/time/AbstractLongTimeSource;->a:Lkotlin/time/DurationUnit;

    .line 2
    .line 3
    return-object v0
.end method

.method protected abstract f()J
.end method
