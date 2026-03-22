.class public final Lcom/startshorts/androidplayer/manager/shorts/feature/f;
.super Ljava/lang/Object;
.source "PlaySpeedFeature.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/shorts/feature/f$a;,
        Lcom/startshorts/androidplayer/manager/shorts/feature/f$b;,
        Lcom/startshorts/androidplayer/manager/shorts/feature/f$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final e:Lcom/startshorts/androidplayer/manager/shorts/feature/f$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/startshorts/androidplayer/manager/shorts/feature/f$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/shorts/feature/f$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/shorts/feature/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->e:Lcom/startshorts/androidplayer/manager/shorts/feature/f$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_1()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->b:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/manager/shorts/feature/f;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->g(Lcom/startshorts/androidplayer/manager/shorts/feature/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/startshorts/androidplayer/manager/shorts/feature/f;ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->l(Lcom/startshorts/androidplayer/manager/shorts/feature/f;ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/startshorts/androidplayer/manager/shorts/feature/f;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->f(Lcom/startshorts/androidplayer/manager/shorts/feature/f;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final f(Lcom/startshorts/androidplayer/manager/shorts/feature/f;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->d:Lcom/startshorts/androidplayer/manager/shorts/feature/f$b;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/f$b;->c(Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static final g(Lcom/startshorts/androidplayer/manager/shorts/feature/f;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->d:Lcom/startshorts/androidplayer/manager/shorts/feature/f$b;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/startshorts/androidplayer/manager/shorts/feature/f$b;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final h()V
    .locals 6

    .line 1
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->a:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 2
    .line 3
    if-eqz v2, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "restorePlaySpeed -> target("

    .line 13
    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 v3, 0x29

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v3, "PlaySpeedFeature"

    .line 34
    .line 35
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x5

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    move-object v0, p0

    .line 43
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->k(Lcom/startshorts/androidplayer/manager/shorts/feature/f;ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;ZILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method private final j(ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->b:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    cmpg-float v0, v0, v1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->b:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->a:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->b:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 21
    .line 22
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v2, "updatePlaySpeed -> old("

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->a:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v2, 0x0

    .line 49
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, ") new("

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ") fromUser("

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const/16 v2, 0x29

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v2, "PlaySpeedFeature"

    .line 82
    .line 83
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 87
    .line 88
    new-instance v1, Lxf/f;

    .line 89
    .line 90
    invoke-direct {v1, p0, p1, p2, p3}, Lxf/f;-><init>(Lcom/startshorts/androidplayer/manager/shorts/feature/f;ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Z)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    return-void
.end method

.method static synthetic k(Lcom/startshorts/androidplayer/manager/shorts/feature/f;ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;ZILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    move p1, v0

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move p3, v0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->j(ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static final l(Lcom/startshorts/androidplayer/manager/shorts/feature/f;ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->d:Lcom/startshorts/androidplayer/manager/shorts/feature/f$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->a:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 6
    .line 7
    invoke-interface {v0, p1, p0, p2, p3}, Lcom/startshorts/androidplayer/manager/shorts/feature/f$b;->b(ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/manager/shorts/feature/i;)V
    .locals 10
    .param p1    # Lcom/startshorts/androidplayer/manager/shorts/feature/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->b()Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v0, Lcom/startshorts/androidplayer/manager/shorts/feature/f$c;->$EnumSwitchMapping$0:[I

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    aget p1, v0, p1

    .line 17
    .line 18
    const/16 v0, 0x29

    .line 19
    .line 20
    const-string v1, "PlaySpeedFeature"

    .line 21
    .line 22
    packed-switch p1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :pswitch_0
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "cancelLongClickPlaySpeed -> longClickPlaySpeed("

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->c:Z

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object p1, Lfk/h0;->a:Lfk/h0;

    .line 55
    .line 56
    new-instance v0, Lxf/e;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Lxf/e;-><init>(Lcom/startshorts/androidplayer/manager/shorts/feature/f;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->c:Z

    .line 65
    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->c:Z

    .line 70
    .line 71
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->h()V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_2

    .line 75
    .line 76
    :pswitch_1
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->c:Z

    .line 77
    .line 78
    if-eqz p1, :cond_0

    .line 79
    .line 80
    return-void

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->b:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 82
    .line 83
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 84
    .line 85
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    sget-object v4, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;

    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_3()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    cmpg-float v3, v3, v5

    .line 103
    .line 104
    if-gez v3, :cond_1

    .line 105
    .line 106
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_3()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_3()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    cmpl-float v3, v3, v5

    .line 126
    .line 127
    if-ltz v3, :cond_2

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_4()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    cmpg-float v3, v3, v5

    .line 142
    .line 143
    if-gez v3, :cond_2

    .line 144
    .line 145
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_4()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 150
    .line 151
    :cond_2
    :goto_0
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 152
    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string/jumbo v5, "startLongClickPlaySpeed -> currentPlaySpeed("

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string p1, ") targetPlaySpeed("

    .line 172
    .line 173
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 179
    .line 180
    if-eqz p1, :cond_3

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    goto :goto_1

    .line 191
    :cond_3
    const/4 p1, 0x0

    .line 192
    :goto_1
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {v3, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 206
    .line 207
    if-eqz p1, :cond_4

    .line 208
    .line 209
    const/4 p1, 0x1

    .line 210
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->c:Z

    .line 211
    .line 212
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 213
    .line 214
    new-instance v5, Landroid/os/Bundle;

    .line 215
    .line 216
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 217
    .line 218
    .line 219
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    const-string v0, "level"

    .line 232
    .line 233
    invoke-virtual {v5, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 237
    .line 238
    const/4 v8, 0x4

    .line 239
    const/4 v9, 0x0

    .line 240
    const-string/jumbo v4, "speed_press"

    .line 241
    .line 242
    .line 243
    const-wide/16 v6, 0x0

    .line 244
    .line 245
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 249
    .line 250
    move-object v5, p1

    .line 251
    check-cast v5, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 252
    .line 253
    const/4 v7, 0x1

    .line 254
    const/4 v8, 0x0

    .line 255
    const/4 v4, 0x0

    .line 256
    const/4 v6, 0x1

    .line 257
    move-object v3, p0

    .line 258
    invoke-static/range {v3 .. v8}, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->k(Lcom/startshorts/androidplayer/manager/shorts/feature/f;ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;ZILjava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    sget-object p1, Lfk/h0;->a:Lfk/h0;

    .line 262
    .line 263
    new-instance v0, Lxf/d;

    .line 264
    .line 265
    invoke-direct {v0, p0, v2}, Lxf/d;-><init>(Lcom/startshorts/androidplayer/manager/shorts/feature/f;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, v0}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 269
    .line 270
    .line 271
    sget-object p1, Lcom/startshorts/androidplayer/utils/VibratorUtil;->a:Lcom/startshorts/androidplayer/utils/VibratorUtil;

    .line 272
    .line 273
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/VibratorUtil;->d()Lkotlinx/coroutines/r;

    .line 274
    .line 275
    .line 276
    goto :goto_2

    .line 277
    :pswitch_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->b:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 278
    .line 279
    sget-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;

    .line 280
    .line 281
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_1()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    if-nez p1, :cond_4

    .line 290
    .line 291
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_1()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    const/4 v5, 0x4

    .line 296
    const/4 v6, 0x0

    .line 297
    const/4 v2, 0x1

    .line 298
    const/4 v4, 0x0

    .line 299
    move-object v1, p0

    .line 300
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->k(Lcom/startshorts/androidplayer/manager/shorts/feature/f;ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;ZILjava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    :cond_4
    :goto_2
    return-void

    .line 304
    nop

    .line 305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->b:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i(Lcom/startshorts/androidplayer/manager/shorts/feature/f$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/shorts/feature/f$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->d:Lcom/startshorts/androidplayer/manager/shorts/feature/f$b;

    .line 2
    .line 3
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/f;->d:Lcom/startshorts/androidplayer/manager/shorts/feature/f$b;

    .line 3
    .line 4
    return-void
.end method

.method public type()Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$FeatureType;->PLAY_SPEED:Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
