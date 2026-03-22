.class public final Lmk/a;
.super Ljava/lang/Object;
.source "PermissionDialogUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lmk/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmk/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lmk/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lmk/a;->a:Lmk/a;

    .line 7
    .line 8
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

.method public static synthetic b(Lmk/a;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/fragment/app/DialogFragment;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x4

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 7
    .line 8
    if-eqz p5, :cond_1

    .line 9
    .line 10
    const/4 p4, 0x0

    .line 11
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lmk/a;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)Landroidx/fragment/app/DialogFragment;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static synthetic d(Lmk/a;Ljava/lang/String;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmk/a;->c(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static synthetic g(Lmk/a;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x4

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 7
    .line 8
    if-eqz p5, :cond_1

    .line 9
    .line 10
    const/4 p4, 0x0

    .line 11
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lmk/a;->f(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)Landroidx/fragment/app/DialogFragment;
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/fragment/app/DialogFragment;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "fragmentManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "scene"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->a:Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->g(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    invoke-virtual {p1, p2, v0}, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->k(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    sparse-switch p1, :sswitch_data_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :sswitch_0
    const-string p1, "check_in"

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :sswitch_1
    const-string p1, "discover"

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/permission/AppNotificationPermissionDialog;

    .line 51
    .line 52
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/permission/AppNotificationPermissionDialog;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string p3, "customize"

    .line 56
    .line 57
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->T(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :sswitch_2
    const-string p1, "immersion_back"

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :sswitch_3
    const-string p1, "coming_soon"

    .line 71
    .line 72
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :sswitch_4
    const-string p1, "favorite_click"

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_2

    .line 86
    .line 87
    :goto_0
    const/4 p1, 0x0

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;

    .line 90
    .line 91
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string p3, "noti_select"

    .line 95
    .line 96
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->T(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    if-eqz p1, :cond_3

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->W(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance p3, Lmk/a$a;

    .line 105
    .line 106
    invoke-direct {p3, p2, p4}, Lmk/a$a;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->V(Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$b;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    return-object p1

    .line 113
    :sswitch_data_0
    .sparse-switch
        -0x558ab2db -> :sswitch_4
        -0x5316dc07 -> :sswitch_3
        -0x19a17145 -> :sswitch_2
        0x104877e9 -> :sswitch_1
        0x5b9b0fbc -> :sswitch_0
    .end sparse-switch
.end method

.method public final c(Ljava/lang/String;Z)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->a:Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->g(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, ",count="

    .line 13
    .line 14
    const-string v2, "PermissionDialogUtil"

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    if-gtz v0, :cond_0

    .line 19
    .line 20
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v4, "enableShow -> ignore, scene="

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p2, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    return p1

    .line 50
    :cond_0
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 51
    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v5, "enableShow -> scene="

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, ",showInCountLimit="

    .line 72
    .line 73
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v3, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget-object p1, Lmk/c;->a:Lmk/c;

    .line 87
    .line 88
    invoke-virtual {p1}, Lmk/c;->d()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    xor-int/lit8 p1, p1, 0x1

    .line 93
    .line 94
    return p1
.end method

.method public final e(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)Landroidx/fragment/app/DialogFragment;
    .locals 2
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/fragment/app/DialogFragment;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "fragmentManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "scene"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lmk/a;->c(Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lmk/a;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)Landroidx/fragment/app/DialogFragment;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p1

    .line 24
    :catch_0
    move-exception p1

    .line 25
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 26
    .line 27
    new-instance p3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string p4, "tryCreateNotificationPermissionDialogFragment exception -> "

    .line 33
    .line 34
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string p3, "PermissionDialogUtil"

    .line 49
    .line 50
    invoke-virtual {p2, p3, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method public final f(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)Z
    .locals 2
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "fragmentManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "scene"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lae/a;->a:Lae/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lae/a;->h()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lmk/a;->e(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)Landroidx/fragment/app/DialogFragment;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    :try_start_0
    const-string p3, "NotificationPermissionDialog"

    .line 28
    .line 29
    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 35
    .line 36
    new-instance p3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string p4, "tryShowNotificationPermissionDialog exception -> "

    .line 42
    .line 43
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string p3, "PermissionDialogUtil"

    .line 58
    .line 59
    invoke-virtual {p2, p3, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return v1

    .line 63
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    :cond_2
    return v1
.end method
