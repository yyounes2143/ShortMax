.class public final Lli/c;
.super Lfi/a;
.source "TipDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lli/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfi/a<",
        "Lcom/startshorts/androidplayer/databinding/DialogTipBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final e:Lli/c$a;
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
    new-instance v0, Lli/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lli/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lli/c;->e:Lli/c$a;

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
    iput-object p2, p0, Lli/c;->d:Lcom/startshorts/androidplayer/bean/tip/Builder;

    .line 15
    .line 16
    return-void
.end method

.method public static final synthetic u(Lli/c;)Lcom/startshorts/androidplayer/bean/tip/Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lli/c;->d:Lcom/startshorts/androidplayer/bean/tip/Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method private final v()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogTipBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogTipBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    iget-object v1, p0, Lli/c;->d:Lcom/startshorts/androidplayer/bean/tip/Builder;

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
    iget-object v1, p0, Lli/c;->d:Lcom/startshorts/androidplayer/bean/tip/Builder;

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
    new-instance v1, Lli/c$b;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lli/c$b;-><init>(Lli/c;)V

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
    new-instance v1, Lli/c$c;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lli/c$c;-><init>(Lli/c;)V

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

.method private final w()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogTipBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogTipBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    iget-object v1, p0, Lli/c;->d:Lcom/startshorts/androidplayer/bean/tip/Builder;

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
    iget-object v1, p0, Lli/c;->d:Lcom/startshorts/androidplayer/bean/tip/Builder;

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
    new-instance v1, Lli/c$d;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lli/c$d;-><init>(Lli/c;)V

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


# virtual methods
.method public g()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_tip:I

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
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogTipBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogTipBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    iget-object v1, p0, Lli/c;->d:Lcom/startshorts/androidplayer/bean/tip/Builder;

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
    invoke-direct {p0}, Lli/c;->w()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lli/c;->v()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
