.class public final Lfk/b;
.super Ljava/lang/Object;
.source "AppOpenAdUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lfk/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfk/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lfk/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lfk/b;->a:Lfk/b;

    .line 7
    .line 8
    const-string v0, "AppOpenAdUtil"

    .line 9
    .line 10
    sput-object v0, Lfk/b;->b:Ljava/lang/String;

    .line 11
    .line 12
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

.method private final a()V
    .locals 4

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lud/b;->Q2(I)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 8
    .line 9
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/utils/TimeUtil;->q(J)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Lud/b;->R2(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->b0()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lud/b;->a:Lud/b;

    .line 8
    .line 9
    invoke-virtual {v1}, Lud/b;->C()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 14
    .line 15
    sget-object v3, Lfk/b;->b:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v5, " appOpenGap:"

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v5, "  appColdBootCount:"

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v5, 0x20

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v2, v3, v4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    if-gtz v0, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    if-gt v1, v2, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    sub-int/2addr v1, v2

    .line 58
    add-int/2addr v0, v2

    .line 59
    rem-int/2addr v1, v0

    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 v2, 0x0

    .line 64
    :goto_0
    return v2
.end method

.method public final c()Z
    .locals 8

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c0()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lud/b;->a:Lud/b;

    .line 8
    .line 9
    invoke-virtual {v1}, Lud/b;->H()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sget-object v3, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 14
    .line 15
    sget-object v4, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 16
    .line 17
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    invoke-virtual {v3, v4, v5}, Lcom/startshorts/androidplayer/utils/TimeUtil;->q(J)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v1}, Lud/b;->G()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 30
    .line 31
    sget-object v5, Lfk/b;->b:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v7, " appOpenShowMax:"

    .line 39
    .line 40
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v7, "  appOpenAdShowTime:"

    .line 47
    .line 48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v7, " todayTime:"

    .line 55
    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v7, " appOpenAdShowCount:"

    .line 63
    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v4, v5, v6}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    if-eq v3, v2, :cond_0

    .line 79
    .line 80
    invoke-direct {p0}, Lfk/b;->a()V

    .line 81
    .line 82
    .line 83
    move v1, v4

    .line 84
    :cond_0
    const/4 v2, 0x1

    .line 85
    if-gtz v0, :cond_1

    .line 86
    .line 87
    :goto_0
    move v4, v2

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    if-ge v1, v0, :cond_2

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    :goto_1
    return v4
.end method

.method public final d()V
    .locals 4

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->G()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lud/b;->Q2(I)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 13
    .line 14
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/utils/TimeUtil;->q(J)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Lud/b;->R2(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
