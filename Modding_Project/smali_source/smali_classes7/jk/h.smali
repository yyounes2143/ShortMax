.class public final Ljk/h;
.super Ljava/lang/Object;
.source "FloatExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(F)Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    float-to-int v2, p0

    .line 4
    int-to-float v3, v2

    .line 5
    cmpg-float v3, v3, p0

    .line 6
    .line 7
    if-nez v3, :cond_0

    .line 8
    .line 9
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v2, "%.2f"

    .line 27
    .line 28
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v2, "format(...)"

    .line 33
    .line 34
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-array v2, v1, [C

    .line 38
    .line 39
    const/16 v3, 0x30

    .line 40
    .line 41
    aput-char v3, v2, v0

    .line 42
    .line 43
    invoke-static {p0, v2}, Lkotlin/text/StringsKt;->x1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-array v1, v1, [C

    .line 48
    .line 49
    const/16 v2, 0x2e

    .line 50
    .line 51
    aput-char v2, v1, v0

    .line 52
    .line 53
    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->x1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :goto_0
    return-object p0
.end method

.method public static final b(F)I
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lbt/a;->c(F)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method
