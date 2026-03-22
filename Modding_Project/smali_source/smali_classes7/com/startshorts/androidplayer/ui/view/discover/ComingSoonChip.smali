.class public Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;
.super Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;
.source "ComingSoonChip.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final i:Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->i:Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->e:I

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic D(Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->H(Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method private final G(ZILkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "doReservationOperation_"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x5f

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v8, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    move-object v2, v8

    .line 32
    move v3, p1

    .line 33
    move-object v4, p0

    .line 34
    move v5, p2

    .line 35
    move-object v6, p3

    .line 36
    invoke-direct/range {v2 .. v7}, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;-><init>(ZLcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;ILkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 37
    .line 38
    .line 39
    const/4 v4, 0x2

    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v2, 0x0

    .line 42
    move-object v3, v8

    .line 43
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private static final H(Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    const/4 p4, 0x1

    .line 4
    invoke-direct {p0, p4, p1, p2}, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->G(ZILkotlin/jvm/functions/Function1;)V

    .line 5
    .line 6
    .line 7
    :cond_0
    if-eqz p3, :cond_1

    .line 8
    .line 9
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static synthetic J(Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;Landroidx/fragment/app/FragmentManager;ILjava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 12

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    if-nez p10, :cond_4

    .line 4
    .line 5
    and-int/lit8 v1, v0, 0x10

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object v8, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object/from16 v8, p5

    .line 13
    .line 14
    :goto_0
    and-int/lit8 v1, v0, 0x20

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    move-object v9, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object/from16 v9, p6

    .line 21
    .line 22
    :goto_1
    and-int/lit8 v1, v0, 0x40

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    move-object v10, v2

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move-object/from16 v10, p7

    .line 29
    .line 30
    :goto_2
    and-int/lit16 v0, v0, 0x80

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    move-object v11, v2

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move-object/from16 v11, p8

    .line 37
    .line 38
    :goto_3
    move-object v3, p0

    .line 39
    move-object v4, p1

    .line 40
    move v5, p2

    .line 41
    move-object v6, p3

    .line 42
    move/from16 v7, p4

    .line 43
    .line 44
    invoke-virtual/range {v3 .. v11}, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->I(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 49
    .line 50
    const-string v1, "Super calls with default arguments not supported in this target, function: init"

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method


# virtual methods
.method public B()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;->A()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget v1, Lcom/startshorts/androidplayer/R$string;->discover_fragment_reserved:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget v1, Lcom/startshorts/androidplayer/R$string;->discover_fragment_remind_me:I

    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "getString(...)"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public final F(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/fragment/app/DialogFragment;
    .locals 9
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
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
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->f:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v1, "remind_me_click"

    .line 11
    .line 12
    :goto_0
    move-object v3, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const-string v1, "reserved_click"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :goto_1
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 18
    .line 19
    new-instance v4, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "scene"

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->K()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v4, v1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    const-string v1, "reel_id"

    .line 36
    .line 37
    invoke-virtual {v4, v1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    const/4 v7, 0x4

    .line 43
    const/4 v8, 0x0

    .line 44
    const-wide/16 v5, 0x0

    .line 45
    .line 46
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const/4 p3, 0x0

    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    sget-object v0, Lmk/a;->a:Lmk/a;

    .line 53
    .line 54
    new-instance v1, Lgj/a;

    .line 55
    .line 56
    invoke-direct {v1, p0, p2, p4, p6}, Lgj/a;-><init>(Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 57
    .line 58
    .line 59
    const-string v2, "coming_soon"

    .line 60
    .line 61
    invoke-virtual {v0, p1, v2, p3, v1}, Lmk/a;->e(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)Landroidx/fragment/app/DialogFragment;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    invoke-direct {p0, p1, p2, p4}, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->G(ZILkotlin/jvm/functions/Function1;)V

    .line 69
    .line 70
    .line 71
    if-eqz p6, :cond_5

    .line 72
    .line 73
    invoke-interface {p6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    if-eqz p5, :cond_3

    .line 78
    .line 79
    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_3
    return-object p1

    .line 83
    :cond_4
    invoke-direct {p0, p3, p2, p4}, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->G(ZILkotlin/jvm/functions/Function1;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 87
    return-object p1
.end method

.method public final I(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 11
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "I",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v9, p0

    .line 2
    move v0, p4

    .line 3
    const-string v1, "fragmentManager"

    .line 4
    .line 5
    move-object v3, p1

    .line 6
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    move v4, p2

    .line 10
    iput v4, v9, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->e:I

    .line 11
    .line 12
    iput-boolean v0, v9, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->f:Z

    .line 13
    .line 14
    invoke-virtual {p0, p4}, Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;->setChecked(Z)V

    .line 15
    .line 16
    .line 17
    new-instance v10, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$b;

    .line 18
    .line 19
    move-object v0, v10

    .line 20
    move-object/from16 v1, p6

    .line 21
    .line 22
    move-object v2, p0

    .line 23
    move-object v5, p3

    .line 24
    move-object/from16 v6, p5

    .line 25
    .line 26
    move-object/from16 v7, p7

    .line 27
    .line 28
    move-object/from16 v8, p8

    .line 29
    .line 30
    invoke-direct/range {v0 .. v8}, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$b;-><init>(Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public K()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "discover"

    .line 2
    .line 3
    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_coming_soon_chip:I

    .line 2
    .line 3
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->h:Z

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->g:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->g:Z

    .line 12
    .line 13
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Lau/c;->p(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->e:I

    .line 21
    .line 22
    const/4 v1, -0x1

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->f:Z

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;->setChecked(Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->h:Z

    .line 6
    .line 7
    return-void
.end method

.method public final receiveRefreshReservationEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshReservationEvent;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshReservationEvent;
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "receiveRefreshReservationEvent -> event("

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ") mShortsId("

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->e:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 v1, 0x29

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->s(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->e:I

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshReservationEvent;->getShortsId()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-ne v0, v1, :cond_0

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshReservationEvent;->getReservation()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->f:Z

    .line 54
    .line 55
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->h:Z

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshReservationEvent;->getReservation()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;->setChecked(Z)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method public z()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/discover/BaseChip;->A()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_discover_2_reserved:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_discover_2_remind_me:I

    .line 11
    .line 12
    :goto_0
    return v0
.end method
