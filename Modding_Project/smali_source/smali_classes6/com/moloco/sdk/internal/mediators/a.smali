.class public final Lcom/moloco/sdk/internal/mediators/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;)J
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p0, :cond_6

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x12944

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    if-eq v0, v1, :cond_4

    .line 13
    .line 14
    const v1, 0x3c29bbd

    .line 15
    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    const v1, 0x14b858b8

    .line 20
    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v0, "LevelPlay"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget-object p0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 35
    .line 36
    invoke-static {v2, p0}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const-string v0, "AdMob"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    sget-object p0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 51
    .line 52
    invoke-static {v2, p0}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    const-string v0, "MAX"

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-nez p0, :cond_5

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_5
    sget-object p0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 67
    .line 68
    invoke-static {v2, p0}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    goto :goto_1

    .line 73
    :cond_6
    :goto_0
    sget-object p0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 74
    .line 75
    const/16 v0, 0x3c

    .line 76
    .line 77
    invoke-static {v0, p0}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    :goto_1
    return-wide v0
.end method

.method public static final b(Ljava/lang/String;)J
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p0, :cond_6

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x12944

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x1a

    .line 11
    .line 12
    if-eq v0, v1, :cond_4

    .line 13
    .line 14
    const v1, 0x3c29bbd

    .line 15
    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    const v1, 0x14b858b8

    .line 20
    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v0, "LevelPlay"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget-object p0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 35
    .line 36
    invoke-static {v2, p0}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const-string v0, "AdMob"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    sget-object p0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 51
    .line 52
    invoke-static {v2, p0}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    const-string v0, "MAX"

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-nez p0, :cond_5

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_5
    sget-object p0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 67
    .line 68
    invoke-static {v2, p0}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    goto :goto_1

    .line 73
    :cond_6
    :goto_0
    sget-object p0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 74
    .line 75
    const/16 v0, 0x3c

    .line 76
    .line 77
    invoke-static {v0, p0}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    :goto_1
    return-wide v0
.end method

.method public static final c(Ljava/lang/String;)J
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "MAX"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    invoke-static {v0, p0}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "AdMob"

    .line 19
    .line 20
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    sget-object p0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 27
    .line 28
    const/16 v0, 0x3a

    .line 29
    .line 30
    invoke-static {v0, p0}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget-object p0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 36
    .line 37
    const/16 v0, 0x3c

    .line 38
    .line 39
    invoke-static {v0, p0}, Lkotlin/time/c;->s(ILkotlin/time/DurationUnit;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    :goto_0
    return-wide v0
.end method
