.class public abstract Lkotlin/time/AbstractDoubleTimeSource;
.super Ljava/lang/Object;
.source "TimeSources.kt"

# interfaces
.implements Let/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/AbstractDoubleTimeSource$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lms/c;
.end annotation


# instance fields
.field private final a:Lkotlin/time/DurationUnit;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# virtual methods
.method public a()Lkotlin/time/a;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lkotlin/time/AbstractDoubleTimeSource$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/time/AbstractDoubleTimeSource;->c()D

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
    invoke-direct/range {v0 .. v6}, Lkotlin/time/AbstractDoubleTimeSource$a;-><init>(DLkotlin/time/AbstractDoubleTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    .line 18
    .line 19
    return-object v7
.end method

.method protected final b()Lkotlin/time/DurationUnit;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/time/AbstractDoubleTimeSource;->a:Lkotlin/time/DurationUnit;

    .line 2
    .line 3
    return-object v0
.end method

.method protected abstract c()D
.end method
