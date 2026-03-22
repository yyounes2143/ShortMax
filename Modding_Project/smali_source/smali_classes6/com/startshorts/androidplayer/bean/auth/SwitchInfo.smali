.class public final Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;
.super Ljava/lang/Object;
.source "SwitchInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/auth/SwitchInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final BIND_EMAIL:I = 0x32

.field public static final BIND_FACEBOOK:I = 0x14

.field public static final BIND_GOOGLE:I = 0xa

.field public static final BIND_HUAWEI:I = 0x64

.field public static final BIND_PHONE:I = 0x3c

.field public static final Companion:Lcom/startshorts/androidplayer/bean/auth/SwitchInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final bindType:I

.field private final buttonStatus:I

.field private final buttonType:I

.field private final coins:I

.field private final hintMsg:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final providerId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private select:Z

.field private final subscriptionEndTime:J

.field private final subscriptionType:I

.field private final userCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->Companion:Lcom/startshorts/androidplayer/bean/auth/SwitchInfo$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JIIIILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "userCode"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "providerId"

    .line 8
    .line 9
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "hintMsg"

    .line 13
    .line 14
    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->userCode:Ljava/lang/String;

    .line 21
    .line 22
    iput-wide p2, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->subscriptionEndTime:J

    .line 23
    .line 24
    iput p4, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->subscriptionType:I

    .line 25
    .line 26
    iput p5, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->coins:I

    .line 27
    .line 28
    iput p6, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->bindType:I

    .line 29
    .line 30
    iput p7, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->buttonType:I

    .line 31
    .line 32
    iput-object p8, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->providerId:Ljava/lang/String;

    .line 33
    .line 34
    iput p9, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->buttonStatus:I

    .line 35
    .line 36
    iput-object p10, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->hintMsg:Ljava/lang/String;

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;Ljava/lang/String;JIIIILjava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p11

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, v0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->userCode:Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, p1

    .line 12
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-wide v3, v0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->subscriptionEndTime:J

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-wide v3, p2

    .line 20
    :goto_1
    and-int/lit8 v5, v1, 0x4

    .line 21
    .line 22
    if-eqz v5, :cond_2

    .line 23
    .line 24
    iget v5, v0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->subscriptionType:I

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move v5, p4

    .line 28
    :goto_2
    and-int/lit8 v6, v1, 0x8

    .line 29
    .line 30
    if-eqz v6, :cond_3

    .line 31
    .line 32
    iget v6, v0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->coins:I

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move/from16 v6, p5

    .line 36
    .line 37
    :goto_3
    and-int/lit8 v7, v1, 0x10

    .line 38
    .line 39
    if-eqz v7, :cond_4

    .line 40
    .line 41
    iget v7, v0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->bindType:I

    .line 42
    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move/from16 v7, p6

    .line 45
    .line 46
    :goto_4
    and-int/lit8 v8, v1, 0x20

    .line 47
    .line 48
    if-eqz v8, :cond_5

    .line 49
    .line 50
    iget v8, v0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->buttonType:I

    .line 51
    .line 52
    goto :goto_5

    .line 53
    :cond_5
    move/from16 v8, p7

    .line 54
    .line 55
    :goto_5
    and-int/lit8 v9, v1, 0x40

    .line 56
    .line 57
    if-eqz v9, :cond_6

    .line 58
    .line 59
    iget-object v9, v0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->providerId:Ljava/lang/String;

    .line 60
    .line 61
    goto :goto_6

    .line 62
    :cond_6
    move-object/from16 v9, p8

    .line 63
    .line 64
    :goto_6
    and-int/lit16 v10, v1, 0x80

    .line 65
    .line 66
    if-eqz v10, :cond_7

    .line 67
    .line 68
    iget v10, v0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->buttonStatus:I

    .line 69
    .line 70
    goto :goto_7

    .line 71
    :cond_7
    move/from16 v10, p9

    .line 72
    .line 73
    :goto_7
    and-int/lit16 v1, v1, 0x100

    .line 74
    .line 75
    if-eqz v1, :cond_8

    .line 76
    .line 77
    iget-object v1, v0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->hintMsg:Ljava/lang/String;

    .line 78
    .line 79
    goto :goto_8

    .line 80
    :cond_8
    move-object/from16 v1, p10

    .line 81
    .line 82
    :goto_8
    move-object p1, v2

    .line 83
    move-wide p2, v3

    .line 84
    move p4, v5

    .line 85
    move/from16 p5, v6

    .line 86
    .line 87
    move/from16 p6, v7

    .line 88
    .line 89
    move/from16 p7, v8

    .line 90
    .line 91
    move-object/from16 p8, v9

    .line 92
    .line 93
    move/from16 p9, v10

    .line 94
    .line 95
    move-object/from16 p10, v1

    .line 96
    .line 97
    invoke-virtual/range {p0 .. p10}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->copy(Ljava/lang/String;JIIIILjava/lang/String;ILjava/lang/String;)Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->userCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->subscriptionEndTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->subscriptionType:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->coins:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->bindType:I

    .line 2
    .line 3
    return v0
.end method

.method public final component6()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->buttonType:I

    .line 2
    .line 3
    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->providerId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->buttonStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->hintMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;JIIIILjava/lang/String;ILjava/lang/String;)Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string/jumbo v0, "userCode"

    .line 2
    .line 3
    .line 4
    move-object v2, p1

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "providerId"

    .line 9
    .line 10
    move-object/from16 v9, p8

    .line 11
    .line 12
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "hintMsg"

    .line 16
    .line 17
    move-object/from16 v11, p10

    .line 18
    .line 19
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;

    .line 23
    .line 24
    move-object v1, v0

    .line 25
    move-wide v3, p2

    .line 26
    move/from16 v5, p4

    .line 27
    .line 28
    move/from16 v6, p5

    .line 29
    .line 30
    move/from16 v7, p6

    .line 31
    .line 32
    move/from16 v8, p7

    .line 33
    .line 34
    move/from16 v10, p9

    .line 35
    .line 36
    invoke-direct/range {v1 .. v11}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;-><init>(Ljava/lang/String;JIIIILjava/lang/String;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v0
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->userCode:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->userCode:Ljava/lang/String;

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
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->subscriptionEndTime:J

    .line 25
    .line 26
    iget-wide v5, p1, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->subscriptionEndTime:J

    .line 27
    .line 28
    cmp-long v1, v3, v5

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    iget v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->subscriptionType:I

    .line 34
    .line 35
    iget v3, p1, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->subscriptionType:I

    .line 36
    .line 37
    if-eq v1, v3, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->coins:I

    .line 41
    .line 42
    iget v3, p1, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->coins:I

    .line 43
    .line 44
    if-eq v1, v3, :cond_5

    .line 45
    .line 46
    return v2

    .line 47
    :cond_5
    iget v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->bindType:I

    .line 48
    .line 49
    iget v3, p1, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->bindType:I

    .line 50
    .line 51
    if-eq v1, v3, :cond_6

    .line 52
    .line 53
    return v2

    .line 54
    :cond_6
    iget v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->buttonType:I

    .line 55
    .line 56
    iget v3, p1, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->buttonType:I

    .line 57
    .line 58
    if-eq v1, v3, :cond_7

    .line 59
    .line 60
    return v2

    .line 61
    :cond_7
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->providerId:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->providerId:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_8

    .line 70
    .line 71
    return v2

    .line 72
    :cond_8
    iget v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->buttonStatus:I

    .line 73
    .line 74
    iget v3, p1, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->buttonStatus:I

    .line 75
    .line 76
    if-eq v1, v3, :cond_9

    .line 77
    .line 78
    return v2

    .line 79
    :cond_9
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->hintMsg:Ljava/lang/String;

    .line 80
    .line 81
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->hintMsg:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_a

    .line 88
    .line 89
    return v2

    .line 90
    :cond_a
    return v0
.end method

.method public final getBindName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->bindType:I

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    const/16 v1, 0x14

    .line 13
    .line 14
    if-eq v0, v1, :cond_3

    .line 15
    .line 16
    const/16 v1, 0x32

    .line 17
    .line 18
    const-string v2, "getString(...)"

    .line 19
    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    const/16 v1, 0x3c

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    const/16 p1, 0x64

    .line 27
    .line 28
    if-eq v0, p1, :cond_0

    .line 29
    .line 30
    const-string p1, "Visitor"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p1, "HuaWei"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sget v0, Lcom/startshorts/androidplayer/R$string;->bind_info_fragment_phone:I

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    sget v0, Lcom/startshorts/androidplayer/R$string;->bind_info_fragment_email:I

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const-string p1, "Facebook"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    const-string p1, "Google"

    .line 60
    .line 61
    :goto_0
    return-object p1
.end method

.method public final getBindType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->bindType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getButtonStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->buttonStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getButtonType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->buttonType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCoins()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->coins:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCoinsStr()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->coins:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getHintMsg()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->hintMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProviderId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->providerId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSelect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->select:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getSubscriptionEndTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->subscriptionEndTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSubscriptionTime()Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 2
    .line 3
    sget v1, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_expire_time:I

    .line 4
    .line 5
    sget-object v2, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->subscriptionEndTime:J

    .line 8
    .line 9
    sget-object v5, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 10
    .line 11
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->e()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const/4 v7, 0x4

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/utils/TimeUtil;->e(Lcom/startshorts/androidplayer/utils/TimeUtil;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public final getSubscriptionType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->subscriptionType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSubscriptionTypeStr()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->subscriptionType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x5

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x6

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x7

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    sget v0, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_weekly_pro_card:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget v0, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_annual_pro_card:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget v0, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_monthly_pro_card:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    sget v0, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_weekly_pro_card:I

    .line 31
    .line 32
    :goto_0
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lfk/u;->d(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public final getUserCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->userCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUserCodeStr(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 7
    .line 8
    sget v0, Lcom/startshorts/androidplayer/R$string;->profile_uid_text:I

    .line 9
    .line 10
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->userCode:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1, v0, v1}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final hasCoin()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->coins:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final hasSelect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->select:Z

    .line 2
    .line 3
    return v0
.end method

.method public final hasSubscription()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->subscriptionType:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    if-gt v1, v0, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    :cond_0
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->userCode:Ljava/lang/String;

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
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->subscriptionEndTime:J

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

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
    iget v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->subscriptionType:I

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

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
    iget v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->coins:I

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->bindType:I

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->buttonType:I

    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->providerId:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->buttonStatus:I

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->hintMsg:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    return v0
.end method

.method public final setSelect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->select:Z

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
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
    const-string v1, "SwitchInfo(userCode="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->userCode:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", subscriptionEndTime="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->subscriptionEndTime:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", subscriptionType="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->subscriptionType:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", coins="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->coins:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", bindType="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->bindType:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", buttonType="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->buttonType:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", providerId="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->providerId:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", buttonStatus="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->buttonStatus:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", hintMsg="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->hintMsg:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const/16 v1, 0x29

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    return-object v0
.end method
