.class public final Lgi/e;
.super Lfi/a;
.source "SubsUpdateDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgi/e$a;,
        Lgi/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfi/a<",
        "Lcom/startshorts/androidplayer/databinding/DialogSubsUpdateBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final h:Lgi/e$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final d:Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Lgi/e$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgi/e$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgi/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgi/e;->h:Lgi/e$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;Lgi/e$b;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lgi/e$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "currentSku"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "newSku"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "updateMode"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "listener"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lfi/a;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lgi/e;->d:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 30
    .line 31
    iput-object p3, p0, Lgi/e;->e:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 32
    .line 33
    iput-object p4, p0, Lgi/e;->f:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 34
    .line 35
    iput-object p5, p0, Lgi/e;->g:Lgi/e$b;

    .line 36
    .line 37
    return-void
.end method

.method private final u(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    if-eq p1, v0, :cond_3

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p1, v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x5

    .line 20
    if-eq p1, v0, :cond_3

    .line 21
    .line 22
    const/4 v0, 0x6

    .line 23
    if-eq p1, v0, :cond_2

    .line 24
    .line 25
    const/4 v0, 0x7

    .line 26
    if-eq p1, v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sget p1, Lcom/startshorts/androidplayer/R$string;->subs_type_view_per_year_new:I

    .line 30
    .line 31
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p0, p1, p2}, Lfi/a;->m(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    sget p1, Lcom/startshorts/androidplayer/R$string;->subs_type_view_per_month_new:I

    .line 41
    .line 42
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p0, p1, p2}, Lfi/a;->m(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    sget p1, Lcom/startshorts/androidplayer/R$string;->subs_type_view_per_week_new:I

    .line 52
    .line 53
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p0, p1, p2}, Lfi/a;->m(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    :goto_0
    return-object p2

    .line 62
    :cond_4
    :goto_1
    const-string p1, ""

    .line 63
    .line 64
    return-object p1
.end method

.method private final w()V
    .locals 2

    .line 1
    new-instance v0, Lgi/e$d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lgi/e$d;-><init>(Lgi/e;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogSubsUpdateBinding;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogSubsUpdateBinding;->b:Landroid/widget/ImageView;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogSubsUpdateBinding;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogSubsUpdateBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogSubsUpdateBinding;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogSubsUpdateBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 35
    .line 36
    new-instance v1, Lgi/e$c;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lgi/e$c;-><init>(Lgi/e;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private final x()V
    .locals 8

    .line 1
    iget-object v0, p0, Lgi/e;->f:Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;->getChangeMode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->o0()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->e()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v6, 0x4

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/utils/TimeUtil;->e(Lcom/startshorts/androidplayer/utils/TimeUtil;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogSubsUpdateBinding;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogSubsUpdateBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 37
    .line 38
    sget v2, Lcom/startshorts/androidplayer/R$string;->subs_update_dialog_downgrade_content:I

    .line 39
    .line 40
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p0, v2, v0}, Lfi/a;->m(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogSubsUpdateBinding;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogSubsUpdateBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 59
    .line 60
    sget v1, Lcom/startshorts/androidplayer/R$string;->subs_update_dialog_upgrade_content:I

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lfi/a;->l(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void
.end method

.method private final y()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogSubsUpdateBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogSubsUpdateBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    iget-object v1, p0, Lgi/e;->d:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lgi/e;->d:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-direct {p0, v1, v2}, Lgi/e;->u(ILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogSubsUpdateBinding;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogSubsUpdateBinding;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 35
    .line 36
    iget-object v1, p0, Lgi/e;->e:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget-object v2, p0, Lgi/e;->e:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    iget-object v2, p0, Lgi/e;->e:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v2, p0, Lgi/e;->e:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :goto_0
    invoke-direct {p0, v1, v2}, Lgi/e;->u(ILjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private final z()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogSubsUpdateBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogSubsUpdateBinding;->k:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget v2, Lcom/startshorts/androidplayer/R$color;->color_subs_update_dialog_title_start:I

    .line 14
    .line 15
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget v3, Lcom/startshorts/androidplayer/R$color;->color_subs_update_dialog_title_end:I

    .line 24
    .line 25
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor(II)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public g()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_subs_update:I

    .line 2
    .line 3
    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "SubsUpdateDialog"

    .line 2
    .line 3
    return-object v0
.end method

.method public n()I
    .locals 1

    .line 1
    const/high16 v0, 0x43910000    # 290.0f

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

.method public p()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lgi/e;->z()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lgi/e;->x()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lgi/e;->y()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lgi/e;->w()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final v()Lgi/e$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgi/e;->g:Lgi/e$b;

    .line 2
    .line 3
    return-object v0
.end method
