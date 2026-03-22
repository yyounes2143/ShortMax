.class public final Lcom/startshorts/androidplayer/manager/immersion/feature/o;
.super Ljava/lang/Object;
.source "PlaySpeedFeature.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/immersion/feature/o$a;,
        Lcom/startshorts/androidplayer/manager/immersion/feature/o$b;,
        Lcom/startshorts/androidplayer/manager/immersion/feature/o$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final e:Lcom/startshorts/androidplayer/manager/immersion/feature/o$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/startshorts/androidplayer/manager/immersion/feature/o$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/feature/o$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/feature/o$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->e:Lcom/startshorts/androidplayer/manager/immersion/feature/o$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/manager/immersion/feature/o;ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->m(Lcom/startshorts/androidplayer/manager/immersion/feature/o;ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/startshorts/androidplayer/manager/immersion/feature/o;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->g(Lcom/startshorts/androidplayer/manager/immersion/feature/o;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/startshorts/androidplayer/manager/immersion/feature/o;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->h(Lcom/startshorts/androidplayer/manager/immersion/feature/o;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final g(Lcom/startshorts/androidplayer/manager/immersion/feature/o;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->d:Lcom/startshorts/androidplayer/manager/immersion/feature/o$b;

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
    invoke-interface {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/o$b;->c(Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static final h(Lcom/startshorts/androidplayer/manager/immersion/feature/o;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->d:Lcom/startshorts/androidplayer/manager/immersion/feature/o$b;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/o$b;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final i()V
    .locals 6

    .line 1
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->a:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

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
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->l(Lcom/startshorts/androidplayer/manager/immersion/feature/o;ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;ZILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method private final k(ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->b:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->b:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->a:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->b:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 31
    .line 32
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v3, "updatePlaySpeed -> old("

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->a:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ") new("

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, ") fromUser("

    .line 73
    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const/16 v1, 0x29

    .line 81
    .line 82
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-string v2, "PlaySpeedFeature"

    .line 90
    .line 91
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 95
    .line 96
    new-instance v1, Lhf/c0;

    .line 97
    .line 98
    invoke-direct {v1, p0, p1, p2, p3}, Lhf/c0;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/o;ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    return-void
.end method

.method static synthetic l(Lcom/startshorts/androidplayer/manager/immersion/feature/o;ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;ZILjava/lang/Object;)V
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
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->k(ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static final m(Lcom/startshorts/androidplayer/manager/immersion/feature/o;ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->d:Lcom/startshorts/androidplayer/manager/immersion/feature/o$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->a:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 6
    .line 7
    invoke-interface {v0, p1, p0, p2, p3}, Lcom/startshorts/androidplayer/manager/immersion/feature/o$b;->b(ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V
    .locals 10
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
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
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->b()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/o$c;->$EnumSwitchMapping$0:[I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    const/16 v1, 0x29

    .line 19
    .line 20
    const-string v2, "PlaySpeedFeature"

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :pswitch_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    const-string v0, "play_speed"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object p1, v3

    .line 42
    :goto_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    move-object v3, p1

    .line 47
    check-cast v3, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 48
    .line 49
    :cond_1
    move-object v6, v3

    .line 50
    if-nez v6, :cond_2

    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    const/4 v8, 0x1

    .line 54
    const/4 v9, 0x0

    .line 55
    const/4 v5, 0x0

    .line 56
    const/4 v7, 0x1

    .line 57
    move-object v4, p0

    .line 58
    invoke-static/range {v4 .. v9}, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->l(Lcom/startshorts/androidplayer/manager/immersion/feature/o;ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;ZILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :pswitch_1
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v3, "cancelLongClickPlaySpeed -> longClickPlaySpeed("

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->c:Z

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->c:Z

    .line 91
    .line 92
    if-eqz p1, :cond_b

    .line 93
    .line 94
    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->c:Z

    .line 96
    .line 97
    sget-object p1, Lfk/h0;->a:Lfk/h0;

    .line 98
    .line 99
    new-instance v0, Lhf/b0;

    .line 100
    .line 101
    invoke-direct {v0, p0}, Lhf/b0;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/o;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->i()V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_3

    .line 111
    .line 112
    :pswitch_2
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->c:Z

    .line 113
    .line 114
    if-eqz p1, :cond_3

    .line 115
    .line 116
    return-void

    .line 117
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->b:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 118
    .line 119
    if-nez p1, :cond_4

    .line 120
    .line 121
    return-void

    .line 122
    :cond_4
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 123
    .line 124
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    sget-object v5, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;

    .line 132
    .line 133
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_3()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    cmpg-float v4, v4, v6

    .line 142
    .line 143
    if-gez v4, :cond_5

    .line 144
    .line 145
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_3()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    iput-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_3()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    cmpl-float v4, v4, v6

    .line 165
    .line 166
    if-ltz v4, :cond_6

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_4()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    cmpg-float v4, v4, v6

    .line 181
    .line 182
    if-gez v4, :cond_6

    .line 183
    .line 184
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_4()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    iput-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 189
    .line 190
    :cond_6
    :goto_1
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 191
    .line 192
    new-instance v5, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string/jumbo v6, "startLongClickPlaySpeed -> currentPlaySpeed("

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string p1, ") targetPlaySpeed("

    .line 211
    .line 212
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 218
    .line 219
    if-eqz p1, :cond_7

    .line 220
    .line 221
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    :cond_7
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {v4, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 243
    .line 244
    if-eqz p1, :cond_b

    .line 245
    .line 246
    const/4 p1, 0x1

    .line 247
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->c:Z

    .line 248
    .line 249
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 250
    .line 251
    new-instance v3, Landroid/os/Bundle;

    .line 252
    .line 253
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 254
    .line 255
    .line 256
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 259
    .line 260
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->getValue()F

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    const-string v2, "level"

    .line 269
    .line 270
    invoke-virtual {v3, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 274
    .line 275
    const/4 v6, 0x4

    .line 276
    const/4 v7, 0x0

    .line 277
    const-string/jumbo v2, "speed_press"

    .line 278
    .line 279
    .line 280
    const-wide/16 v4, 0x0

    .line 281
    .line 282
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 286
    .line 287
    move-object v3, p1

    .line 288
    check-cast v3, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 289
    .line 290
    const/4 v5, 0x1

    .line 291
    const/4 v6, 0x0

    .line 292
    const/4 v2, 0x0

    .line 293
    const/4 v4, 0x1

    .line 294
    move-object v1, p0

    .line 295
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->l(Lcom/startshorts/androidplayer/manager/immersion/feature/o;ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;ZILjava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    sget-object p1, Lfk/h0;->a:Lfk/h0;

    .line 299
    .line 300
    new-instance v1, Lhf/a0;

    .line 301
    .line 302
    invoke-direct {v1, p0, v0}, Lhf/a0;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/o;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 306
    .line 307
    .line 308
    sget-object p1, Lcom/startshorts/androidplayer/utils/VibratorUtil;->a:Lcom/startshorts/androidplayer/utils/VibratorUtil;

    .line 309
    .line 310
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/VibratorUtil;->d()Lkotlinx/coroutines/r;

    .line 311
    .line 312
    .line 313
    goto :goto_3

    .line 314
    :pswitch_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->b:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 315
    .line 316
    if-nez v0, :cond_b

    .line 317
    .line 318
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    if-eqz p1, :cond_8

    .line 323
    .line 324
    const-string v0, "default_play_speed"

    .line 325
    .line 326
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    goto :goto_2

    .line 331
    :cond_8
    move-object p1, v3

    .line 332
    :goto_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 333
    .line 334
    if-eqz v0, :cond_9

    .line 335
    .line 336
    move-object v3, p1

    .line 337
    check-cast v3, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 338
    .line 339
    :cond_9
    if-nez v3, :cond_a

    .line 340
    .line 341
    sget-object p1, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;

    .line 342
    .line 343
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;->getPLAY_SPEED_1()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    :cond_a
    move-object v6, v3

    .line 348
    const/4 v8, 0x4

    .line 349
    const/4 v9, 0x0

    .line 350
    const/4 v5, 0x1

    .line 351
    const/4 v7, 0x0

    .line 352
    move-object v4, p0

    .line 353
    invoke-static/range {v4 .. v9}, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->l(Lcom/startshorts/androidplayer/manager/immersion/feature/o;ZLcom/startshorts/androidplayer/bean/shorts/PlaySpeed;ZILjava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    :cond_b
    :goto_3
    return-void

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->b:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final j(Lcom/startshorts/androidplayer/manager/immersion/feature/o$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/o$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->d:Lcom/startshorts/androidplayer/manager/immersion/feature/o$b;

    .line 2
    .line 3
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/o;->d:Lcom/startshorts/androidplayer/manager/immersion/feature/o$b;

    .line 3
    .line 4
    return-void
.end method

.method public type()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;->PLAY_SPEED:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
