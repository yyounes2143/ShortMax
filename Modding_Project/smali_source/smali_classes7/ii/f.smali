.class public final Lii/f;
.super Lfi/a;
.source "MergeTouristFailedDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lii/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfi/a<",
        "Lcom/startshorts/androidplayer/databinding/DialogMergeTouristFailedBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final e:Lii/f$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private d:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lii/f$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lii/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lii/f;->e:Lii/f$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
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
    invoke-direct {p0, p1}, Lfi/a;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lii/e;

    .line 10
    .line 11
    invoke-direct {p1}, Lii/e;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lii/f;->d:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic u()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lii/f;->w()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final w()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public g()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_merge_tourist_failed:I

    .line 2
    .line 3
    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "MergeTouristFailedDialog"

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
    sget-object v1, Lfk/z;->a:Lfk/z;

    .line 8
    .line 9
    invoke-virtual {v1}, Lfk/z;->p()I

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
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogMergeTouristFailedBinding;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogMergeTouristFailedBinding;->a:Landroid/widget/ImageView;

    .line 12
    .line 13
    new-instance v1, Lii/f$b;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lii/f$b;-><init>(Lii/f;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogMergeTouristFailedBinding;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogMergeTouristFailedBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 28
    .line 29
    new-instance v1, Lii/f$c;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lii/f$c;-><init>(Lii/f;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final v()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lii/f;->d:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lii/f;->d:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    return-void
.end method
