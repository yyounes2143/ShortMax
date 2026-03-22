.class public final Lli/b;
.super Lfi/a;
.source "NewTipDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lli/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfi/a<",
        "Lcom/startshorts/androidplayer/databinding/NewDialogTipBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final e:Lli/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final d:Lcom/startshorts/androidplayer/bean/tip/Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lli/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lli/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lli/b;->e:Lli/b$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/tip/Builder;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/tip/Builder;
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
    const-string v0, "builder"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lfi/a;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lli/b;->d:Lcom/startshorts/androidplayer/bean/tip/Builder;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic u(Lli/b;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lli/b;->y(Lli/b;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic v(Lli/b;)Lcom/startshorts/androidplayer/bean/tip/Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lli/b;->d:Lcom/startshorts/androidplayer/bean/tip/Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method private final w()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/NewDialogTipBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/NewDialogTipBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    iget-object v1, p0, Lli/b;->d:Lcom/startshorts/androidplayer/bean/tip/Builder;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/tip/Builder;->getNegativeButtonText()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lli/b;->d:Lcom/startshorts/androidplayer/bean/tip/Builder;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/tip/Builder;->getNegativeButtonClickListener()Landroid/view/View$OnClickListener;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Lli/b$b;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lli/b$b;-><init>(Lli/b;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v1, Lli/b$c;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lli/b$c;-><init>(Lli/b;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method private final x()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/NewDialogTipBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/NewDialogTipBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    iget-object v1, p0, Lli/b;->d:Lcom/startshorts/androidplayer/bean/tip/Builder;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/tip/Builder;->getPositiveButtonText()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lli/b;->d:Lcom/startshorts/androidplayer/bean/tip/Builder;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/tip/Builder;->getPositiveButtonClickListener()Landroid/view/View$OnClickListener;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Lli/b$d;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lli/b$d;-><init>(Lli/b;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private static final y(Lli/b;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lfi/a;->dismiss()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public g()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->new_dialog_tip:I

    .line 2
    .line 3
    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "TipDialog"

    .line 2
    .line 3
    return-object v0
.end method

.method public n()I
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x42700000    # 60.0f

    .line 8
    .line 9
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    mul-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public p()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/NewDialogTipBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/NewDialogTipBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    iget-object v1, p0, Lli/b;->d:Lcom/startshorts/androidplayer/bean/tip/Builder;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/tip/Builder;->getContent()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lli/b;->x()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lli/b;->w()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/startshorts/androidplayer/databinding/NewDialogTipBinding;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/NewDialogTipBinding;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 31
    .line 32
    const-string v0, "ivClose"

    .line 33
    .line 34
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lli/a;

    .line 38
    .line 39
    invoke-direct {v4, p0}, Lli/a;-><init>(Lli/b;)V

    .line 40
    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    const/4 v6, 0x0

    .line 44
    const-wide/16 v2, 0x0

    .line 45
    .line 46
    invoke-static/range {v1 .. v6}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
