.class public final Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;
.source "CheckInFailedDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final o:Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
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
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;->o:Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final J()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const/16 v2, 0x2b

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v2, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;->k:I

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;->l:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;->i:I

    .line 45
    .line 46
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;->j:I

    .line 47
    .line 48
    if-lt v0, v1, :cond_0

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;->l:Landroid/view/View;

    .line 57
    .line 58
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;->h:Landroid/widget/ImageView;

    .line 68
    .line 69
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 79
    .line 80
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 90
    .line 91
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;->M()V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 99
    .line 100
    sget v2, Lcom/startshorts/androidplayer/R$string;->check_in_dialog_get_now_watch_ad_nums:I

    .line 101
    .line 102
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget v3, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;->j:I

    .line 107
    .line 108
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v1, v2, v0}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;

    .line 125
    .line 126
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 127
    .line 128
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    :goto_0
    return-void
.end method

.method private final K()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;->f:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 24
    .line 25
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog$c;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private final M()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;->b:Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 19
    .line 20
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogCheckInFailedBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 30
    .line 31
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 32
    .line 33
    sget v2, Lcom/startshorts/androidplayer/R$string;->check_in_dialog_check_more:I

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final F()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;->n:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public final H()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public final I()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;->m:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;->m:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public k()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_check_in_failed:I

    .line 2
    .line 3
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string v1, "completeNum"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p1, v0

    .line 19
    :goto_0
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;->i:I

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const-string v1, "sumNum"

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move p1, v0

    .line 35
    :goto_1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;->j:I

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    const-string v0, "nextRewardsBonus"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    :cond_2
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;->k:I

    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    const-string v0, "nextTaskDescription"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    const/4 p1, 0x0

    .line 65
    :goto_2
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;->l:Ljava/lang/String;

    .line 66
    .line 67
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;->J()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInFailedDialog;->K()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    const/high16 v0, 0x438c0000    # 280.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
