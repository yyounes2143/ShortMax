.class public final Lcom/unity3d/ads/core/extensions/TimeExtensionsKt;
.super Ljava/lang/Object;
.source "TimeExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final elapsedMillis(Lkotlin/time/TimeMark;)D
    .locals 2
    .param p0    # Lkotlin/time/TimeMark;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lkotlin/time/TimeMark;->a()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    sget-object p0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Lkotlin/time/b;->H(JLkotlin/time/DurationUnit;)D

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method
