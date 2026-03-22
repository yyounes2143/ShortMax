.class public final Lcom/startshorts/androidplayer/manager/immersion/feature/l;
.super Ljava/lang/Object;
.source "MiniWindowFeature.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/immersion/feature/l$a;,
        Lcom/startshorts/androidplayer/manager/immersion/feature/l$b;,
        Lcom/startshorts/androidplayer/manager/immersion/feature/l$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final j:Lcom/startshorts/androidplayer/manager/immersion/feature/l$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lcom/startshorts/androidplayer/manager/immersion/feature/l$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private h:Z

.field private i:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/feature/l$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/feature/l$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->j:Lcom/startshorts/androidplayer/manager/immersion/feature/l$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/startshorts/androidplayer/manager/immersion/feature/l$a;)V
    .locals 1
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/manager/immersion/feature/l$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/startshorts/androidplayer/manager/immersion/feature/l$a;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "actRef"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callBack"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->a:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/l$a;

    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->d:Ljava/lang/String;

    .line 21
    .line 22
    sget-object p1, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;->ACTIVITY_ON_CREATE:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->g:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/manager/immersion/feature/l;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->k(Lcom/startshorts/androidplayer/manager/immersion/feature/l;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/startshorts/androidplayer/manager/immersion/feature/l;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->h(Lcom/startshorts/androidplayer/manager/immersion/feature/l;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->i(Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method private final g()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->e:Z

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->e()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->d:Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->j(ZLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 25
    .line 26
    new-instance v1, Lhf/s;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lhf/s;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/l;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method private static final h(Lcom/startshorts/androidplayer/manager/immersion/feature/l;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/l$a;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/l$a;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final i(Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final j(ZLjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v2, "showMiniWindow -> requestPermission("

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ") from("

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/16 v2, 0x29

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "PipFeature"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->e()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v1, 0x1

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->c:Z

    .line 51
    .line 52
    sget-object p1, Lfk/h0;->a:Lfk/h0;

    .line 53
    .line 54
    new-instance v0, Lhf/q;

    .line 55
    .line 56
    invoke-direct {v0, p0, p2}, Lhf/q;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/l;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    if-eqz p1, :cond_1

    .line 64
    .line 65
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->d:Ljava/lang/String;

    .line 66
    .line 67
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->e:Z

    .line 68
    .line 69
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->e()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    sget-object p2, Lmk/c;->a:Lmk/c;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->i:Landroidx/activity/result/ActivityResultLauncher;

    .line 78
    .line 79
    invoke-virtual {p2, p1, v0}, Lmk/c;->g(Landroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;)Z

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    return-void
.end method

.method private static final k(Lcom/startshorts/androidplayer/manager/immersion/feature/l;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->b:Lcom/startshorts/androidplayer/manager/immersion/feature/l$a;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->e:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->h:Z

    .line 6
    .line 7
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->g:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 8
    .line 9
    invoke-interface {v0, p1, v1, v2, p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/l$a;->a(Ljava/lang/String;ZZLcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V
    .locals 5
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
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/l$c;->$EnumSwitchMapping$0:[I

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
    const/4 v1, 0x0

    .line 19
    const-string v2, ""

    .line 20
    .line 21
    const-string v3, "from"

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    packed-switch v0, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :pswitch_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object p1, v4

    .line 41
    :goto_0
    instance-of v0, p1, Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    move-object v4, p1

    .line 46
    check-cast v4, Ljava/lang/String;

    .line 47
    .line 48
    :cond_1
    if-nez v4, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move-object v2, v4

    .line 52
    :goto_1
    iput-object v2, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->d:Ljava/lang/String;

    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    invoke-direct {p0, p1, v2}, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->j(ZLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_5

    .line 59
    .line 60
    :pswitch_1
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->h:Z

    .line 61
    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    :pswitch_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    const-string v0, "paused_by_user"

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move-object p1, v4

    .line 78
    :goto_2
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    move-object v4, p1

    .line 83
    check-cast v4, Ljava/lang/Boolean;

    .line 84
    .line 85
    :cond_4
    if-eqz v4, :cond_5

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    :cond_5
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->h:Z

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :pswitch_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->b()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->g:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 99
    .line 100
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->g()V

    .line 101
    .line 102
    .line 103
    goto :goto_5

    .line 104
    :pswitch_4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->b()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->g:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 109
    .line 110
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->e()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_9

    .line 115
    .line 116
    sget-object v1, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->J:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$a;

    .line 117
    .line 118
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$a;->b(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-eqz p1, :cond_6

    .line 126
    .line 127
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    goto :goto_3

    .line 132
    :cond_6
    move-object p1, v4

    .line 133
    :goto_3
    instance-of v1, p1, Ljava/lang/String;

    .line 134
    .line 135
    if-eqz v1, :cond_7

    .line 136
    .line 137
    move-object v4, p1

    .line 138
    check-cast v4, Ljava/lang/String;

    .line 139
    .line 140
    :cond_7
    if-nez v4, :cond_8

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_8
    move-object v2, v4

    .line 144
    :goto_4
    iput-object v2, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->d:Ljava/lang/String;

    .line 145
    .line 146
    const-string p1, "ShortsFragment"

    .line 147
    .line 148
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_9

    .line 153
    .line 154
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 155
    .line 156
    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 157
    .line 158
    .line 159
    new-instance v1, Lhf/r;

    .line 160
    .line 161
    invoke-direct {v1}, Lhf/r;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, p1, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->i:Landroidx/activity/result/ActivityResultLauncher;

    .line 169
    .line 170
    :cond_9
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {p1, p0}, Lau/c;->p(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    goto :goto_5

    .line 178
    :pswitch_5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->b()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->g:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 183
    .line 184
    :goto_5
    return-void

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final receiveAppStateEvent(Lcom/startshorts/androidplayer/bean/eventbus/AppStateEvent;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/AppStateEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "receive AppStateEvent -> event("

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ") "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "PipFeature"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/AppStateEvent;->getState()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/4 v0, 0x2

    .line 40
    if-ne p1, v0, :cond_2

    .line 41
    .line 42
    sget-object p1, Lud/a;->a:Lud/a;

    .line 43
    .line 44
    invoke-virtual {p1}, Lud/a;->l()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->h:Z

    .line 51
    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->f:Z

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->o1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    sget-object p1, Lkf/b;->a:Lkf/b;

    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    invoke-virtual {p1, v0}, Lkf/b;->h(Z)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->e()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const/4 v0, 0x0

    .line 91
    if-nez p1, :cond_0

    .line 92
    .line 93
    move p1, v0

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    :goto_0
    sget-object v1, Lud/b;->a:Lud/b;

    .line 100
    .line 101
    invoke-virtual {v1, p1}, Lud/b;->i1(Z)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_2

    .line 106
    .line 107
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->d:Ljava/lang/String;

    .line 108
    .line 109
    const-string v1, "ShortsFragment"

    .line 110
    .line 111
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_1

    .line 116
    .line 117
    const-string p1, "immersion_auto"

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    const-string/jumbo p1, "short_auto"

    .line 121
    .line 122
    .line 123
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->j(ZLjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_2
    return-void
.end method

.method public final receiveGooglePayDialogVisibleEvent(Lcom/startshorts/androidplayer/bean/eventbus/GooglePayDialogVisibleEvent;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/GooglePayDialogVisibleEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "receive GooglePayDialogVisibleEvent -> "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "PipFeature"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/GooglePayDialogVisibleEvent;->getVisible()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->o1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->f:Z

    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/l;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Lau/c;->r(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public type()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;->MINI_WINDOW:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
