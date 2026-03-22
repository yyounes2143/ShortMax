.class public final Lbm/e0;
.super Ljava/lang/Object;
.source "AdaptiveRenderingParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbm/e0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static synthetic a(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lbm/e0;->o(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lbm/e0;->q(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lbm/e0;->s(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lbm/e0;->l(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lbm/e0;->n(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lbm/e0;->u(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lbm/e0;->x(Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lbm/e0;->v(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lbm/e0;->z(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final j(Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Timing;)J
    .locals 4
    .param p0    # Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Timing;
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
    invoke-virtual {p0}, Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Timing;->getDuration()D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const/16 p0, 0x3e8

    .line 11
    .line 12
    int-to-double v2, p0

    .line 13
    mul-double/2addr v0, v2

    .line 14
    invoke-static {v0, v1}, Lbt/a;->d(D)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    return-wide v0
.end method

.method public static final k(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;)Lio/bidmachine/rendering/model/AdElementType;
    .locals 3
    .param p0    # Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-object v1, Lbm/e0$a;->$EnumSwitchMapping$2:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    new-instance v1, Lbm/y;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lbm/y;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_0
    sget-object v0, Lio/bidmachine/rendering/model/AdElementType;->Progress:Lio/bidmachine/rendering/model/AdElementType;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_1
    sget-object v0, Lio/bidmachine/rendering/model/AdElementType;->Countdown:Lio/bidmachine/rendering/model/AdElementType;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_2
    sget-object v0, Lio/bidmachine/rendering/model/AdElementType;->Label:Lio/bidmachine/rendering/model/AdElementType;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_3
    sget-object v0, Lio/bidmachine/rendering/model/AdElementType;->Image:Lio/bidmachine/rendering/model/AdElementType;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_4
    sget-object v0, Lio/bidmachine/rendering/model/AdElementType;->Video:Lio/bidmachine/rendering/model/AdElementType;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_5
    sget-object v0, Lio/bidmachine/rendering/model/AdElementType;->Mraid:Lio/bidmachine/rendering/model/AdElementType;

    .line 41
    .line 42
    :goto_0
    return-object v0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final l(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Unsupported ViewComponentType - "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static final m(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)Lio/bidmachine/rendering/model/CacheType;
    .locals 3
    .param p0    # Lio/bidmachine/protobuf/rendering/Rendering$CacheType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-object v1, Lbm/e0$a;->$EnumSwitchMapping$1:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eq v1, v2, :cond_4

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v1, v2, :cond_3

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    if-eq v1, v2, :cond_2

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x5

    .line 26
    if-eq v1, v2, :cond_1

    .line 27
    .line 28
    new-instance v1, Lbm/x;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lbm/x;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance v1, Lbm/w;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lbm/w;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    sget-object v0, Lio/bidmachine/rendering/model/CacheType;->StreamLoad:Lio/bidmachine/rendering/model/CacheType;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    sget-object v0, Lio/bidmachine/rendering/model/CacheType;->PartialLoad:Lio/bidmachine/rendering/model/CacheType;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    sget-object v0, Lio/bidmachine/rendering/model/CacheType;->FullLoad:Lio/bidmachine/rendering/model/CacheType;

    .line 53
    .line 54
    :goto_0
    return-object v0
.end method

.method private static final n(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Unsupported CacheType - "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private static final o(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Unsupported CacheType - "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static final p(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;)Lio/bidmachine/rendering/model/EventTaskType;
    .locals 3
    .param p0    # Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-object v1, Lbm/e0$a;->$EnumSwitchMapping$6:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    new-instance v1, Lbm/v;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lbm/v;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_0
    sget-object v0, Lio/bidmachine/rendering/model/EventTaskType;->ToggleStateGroups:Lio/bidmachine/rendering/model/EventTaskType;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_1
    sget-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Repeat:Lio/bidmachine/rendering/model/EventTaskType;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_2
    sget-object v0, Lio/bidmachine/rendering/model/EventTaskType;->OpenPrivacySheet:Lio/bidmachine/rendering/model/EventTaskType;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_3
    sget-object v0, Lio/bidmachine/rendering/model/EventTaskType;->SimulateClick:Lio/bidmachine/rendering/model/EventTaskType;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_4
    sget-object v0, Lio/bidmachine/rendering/model/EventTaskType;->NotifyOpen:Lio/bidmachine/rendering/model/EventTaskType;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_5
    sget-object v0, Lio/bidmachine/rendering/model/EventTaskType;->UnlockVisibility:Lio/bidmachine/rendering/model/EventTaskType;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_6
    sget-object v0, Lio/bidmachine/rendering/model/EventTaskType;->LockVisibility:Lio/bidmachine/rendering/model/EventTaskType;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_7
    sget-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Schedule:Lio/bidmachine/rendering/model/EventTaskType;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_8
    sget-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Progress:Lio/bidmachine/rendering/model/EventTaskType;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_9
    sget-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Hide:Lio/bidmachine/rendering/model/EventTaskType;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_a
    sget-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Show:Lio/bidmachine/rendering/model/EventTaskType;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_b
    sget-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Open:Lio/bidmachine/rendering/model/EventTaskType;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :pswitch_c
    sget-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Skip:Lio/bidmachine/rendering/model/EventTaskType;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :pswitch_d
    sget-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Close:Lio/bidmachine/rendering/model/EventTaskType;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_e
    sget-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Track:Lio/bidmachine/rendering/model/EventTaskType;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_f
    sget-object v0, Lio/bidmachine/rendering/model/EventTaskType;->UnMute:Lio/bidmachine/rendering/model/EventTaskType;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :pswitch_10
    sget-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Mute:Lio/bidmachine/rendering/model/EventTaskType;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :pswitch_11
    sget-object v0, Lio/bidmachine/rendering/model/EventTaskType;->Start:Lio/bidmachine/rendering/model/EventTaskType;

    .line 77
    .line 78
    :goto_0
    return-object v0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final q(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Unsupported TaskName - "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static final r(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;)Lio/bidmachine/rendering/model/EventType;
    .locals 3
    .param p0    # Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-object v1, Lbm/e0$a;->$EnumSwitchMapping$5:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    new-instance v1, Lbm/z;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lbm/z;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_0
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnScheduled:Lio/bidmachine/rendering/model/EventType;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_1
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnUseCustomClose:Lio/bidmachine/rendering/model/EventType;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_2
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnComplete:Lio/bidmachine/rendering/model/EventType;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_3
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnThirdQuartile:Lio/bidmachine/rendering/model/EventType;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_4
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnMidpoint:Lio/bidmachine/rendering/model/EventType;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_5
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnFirstQuartile:Lio/bidmachine/rendering/model/EventType;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_6
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnStart:Lio/bidmachine/rendering/model/EventType;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_7
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnClose:Lio/bidmachine/rendering/model/EventType;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_8
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnSkip:Lio/bidmachine/rendering/model/EventType;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_9
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnResume:Lio/bidmachine/rendering/model/EventType;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_a
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnPause:Lio/bidmachine/rendering/model/EventType;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_b
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnUnMute:Lio/bidmachine/rendering/model/EventType;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :pswitch_c
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnMute:Lio/bidmachine/rendering/model/EventType;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :pswitch_d
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnNavigate:Lio/bidmachine/rendering/model/EventType;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_e
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnProgress:Lio/bidmachine/rendering/model/EventType;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_f
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnClick:Lio/bidmachine/rendering/model/EventType;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :pswitch_10
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnImpression:Lio/bidmachine/rendering/model/EventType;

    .line 74
    .line 75
    :goto_0
    return-object v0

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final s(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Unsupported EventName - "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static final t(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)Lio/bidmachine/rendering/model/Orientation;
    .locals 3
    .param p0    # Lio/bidmachine/protobuf/rendering/Rendering$Orientation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-object v1, Lbm/e0$a;->$EnumSwitchMapping$0:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eq v1, v2, :cond_3

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v1, v2, :cond_2

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    if-eq v1, v2, :cond_4

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x5

    .line 26
    if-eq v1, v2, :cond_1

    .line 27
    .line 28
    new-instance v1, Lbm/b0;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lbm/b0;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance v1, Lbm/a0;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lbm/a0;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    sget-object v0, Lio/bidmachine/rendering/model/Orientation;->Landscape:Lio/bidmachine/rendering/model/Orientation;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    sget-object v0, Lio/bidmachine/rendering/model/Orientation;->Portrait:Lio/bidmachine/rendering/model/Orientation;

    .line 50
    .line 51
    :cond_4
    :goto_0
    return-object v0
.end method

.method private static final u(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Unsupported Orientation - "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private static final v(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Unsupported Orientation - "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static final w(Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;)Lio/bidmachine/rendering/model/ScaleType;
    .locals 3
    .param p0    # Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-object v1, Lbm/e0$a;->$EnumSwitchMapping$4:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eq v1, v2, :cond_4

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v1, v2, :cond_3

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    if-eq v1, v2, :cond_2

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    new-instance v1, Lbm/c0;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lbm/c0;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget-object v0, Lio/bidmachine/rendering/model/ScaleType;->AspectFit:Lio/bidmachine/rendering/model/ScaleType;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    sget-object v0, Lio/bidmachine/rendering/model/ScaleType;->AspectFill:Lio/bidmachine/rendering/model/ScaleType;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    sget-object v0, Lio/bidmachine/rendering/model/ScaleType;->ToFill:Lio/bidmachine/rendering/model/ScaleType;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    sget-object v0, Lio/bidmachine/rendering/model/ScaleType;->None:Lio/bidmachine/rendering/model/ScaleType;

    .line 44
    .line 45
    :goto_0
    return-object v0
.end method

.method private static final x(Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Unsupported ScaleType - "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static final y(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;)Lio/bidmachine/rendering/model/SideType;
    .locals 3
    .param p0    # Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-object v1, Lbm/e0$a;->$EnumSwitchMapping$3:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eq v1, v2, :cond_4

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v1, v2, :cond_3

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    if-eq v1, v2, :cond_2

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    new-instance v1, Lbm/d0;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lbm/d0;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget-object v0, Lio/bidmachine/rendering/model/SideType;->Bottom:Lio/bidmachine/rendering/model/SideType;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    sget-object v0, Lio/bidmachine/rendering/model/SideType;->Top:Lio/bidmachine/rendering/model/SideType;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    sget-object v0, Lio/bidmachine/rendering/model/SideType;->Right:Lio/bidmachine/rendering/model/SideType;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    sget-object v0, Lio/bidmachine/rendering/model/SideType;->Left:Lio/bidmachine/rendering/model/SideType;

    .line 44
    .line 45
    :goto_0
    return-object v0
.end method

.method private static final z(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Unsupported Anchor for SideType - "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
