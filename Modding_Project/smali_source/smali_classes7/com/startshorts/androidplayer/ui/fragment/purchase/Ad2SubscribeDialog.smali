.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;
.source "Ad2SubscribeDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAd2SubscribeDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ad2SubscribeDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Color.kt\nandroidx/core/graphics/ColorKt\n+ 4 ColorDrawable.kt\nandroidx/core/graphics/drawable/ColorDrawableKt\n*L\n1#1,470:1\n1#2:471\n470#3:472\n470#3:473\n470#3:474\n28#4:475\n*S KotlinDebug\n*F\n+ 1 Ad2SubscribeDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog\n*L\n311#1:472\n355#1:473\n405#1:474\n444#1:475\n*E\n"
    }
.end annotation


# static fields
.field public static final o:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private b:Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lkotlin/jvm/functions/Function0;
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

.field private d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Z

.field private final m:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final n:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->o:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/g;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/g;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->c:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/h;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/h;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->d:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->e:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/i;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/i;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->m:Lms/i;

    .line 32
    .line 33
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/j;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/j;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->n:Lms/i;

    .line 43
    .line 44
    return-void
.end method

.method private final A()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->G()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;

    .line 6
    .line 7
    const-string v2, "ad_2_sub_dialog"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final B(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    new-instance p2, Landroid/graphics/LinearGradient;

    .line 10
    .line 11
    const-string v0, "#C85A11"

    .line 12
    .line 13
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "#582D01"

    .line 18
    .line 19
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    filled-new-array {v0, v1}, [I

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    const/4 v7, 0x0

    .line 28
    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    move-object v1, p2

    .line 34
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private final C(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/2addr v0, v1

    .line 7
    sget-object v2, Lfk/u;->a:Lfk/u;

    .line 8
    .line 9
    sget v3, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 10
    .line 11
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {v2, v3, p2}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 20
    .line 21
    invoke-direct {v2, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    .line 25
    .line 26
    const/16 v4, 0x28

    .line 27
    .line 28
    invoke-direct {v3, v4, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    const/16 v5, 0x21

    .line 33
    .line 34
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    .line 38
    .line 39
    const/16 v4, 0x14

    .line 40
    .line 41
    invoke-direct {v3, v4, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v2, v3, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$b;

    .line 59
    .line 60
    invoke-direct {v1, p1, p0, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$b;-><init>(Landroid/widget/TextView;Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private final D(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x7

    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    const-string p1, ""

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 23
    .line 24
    sget v0, Lcom/startshorts/androidplayer/R$string;->ad2pay_subscribe_btn_unit_year:I

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lfk/u;->d(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 32
    .line 33
    sget v0, Lcom/startshorts/androidplayer/R$string;->ad2pay_subscribe_btn_unit_month:I

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lfk/u;->d(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 41
    .line 42
    sget v0, Lcom/startshorts/androidplayer/R$string;->ad2pay_subscribe_btn_unit_week:I

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lfk/u;->d(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_0
    return-object p1
.end method

.method private final E(ILjava/lang/String;)Ljava/lang/String;
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
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 30
    .line 31
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_view_renew_per_year:I

    .line 32
    .line 33
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, v0, p2}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 43
    .line 44
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_view_renew_per_month:I

    .line 45
    .line 46
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, v0, p2}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 56
    .line 57
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_view_renew_per_week:I

    .line 58
    .line 59
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p1, v0, p2}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    :goto_0
    return-object p2

    .line 68
    :cond_4
    :goto_1
    const-string p1, ""

    .line 69
    .line 70
    return-object p1
.end method

.method private final F()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->e:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "mission_center"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v0, "c"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v1, "immerse_page"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v1, ""

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->g:Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "A"

    .line 27
    .line 28
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const-string v0, "a"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->g:Ljava/lang/String;

    .line 38
    .line 39
    const-string v2, "B"

    .line 40
    .line 41
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    const-string v0, "b"

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move-object v0, v1

    .line 51
    :goto_0
    return-object v0
.end method

.method private final G()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->n:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final J()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->m:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/ViewModelProvider;

    .line 8
    .line 9
    return-object v0
.end method

.method private final K(ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->l:Z

    .line 5
    .line 6
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 7
    .line 8
    sget v2, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_subs_success:I

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-static {v1, v2, v5, v3, v4}, Lfk/u;->j(Lfk/u;IIILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object v6, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 17
    .line 18
    iget-object v8, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 19
    .line 20
    iget-object v11, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->f:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 21
    .line 22
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v14

    .line 26
    const/16 v17, 0x360

    .line 27
    .line 28
    const/16 v18, 0x0

    .line 29
    .line 30
    const-string v7, "ad_to_subscription"

    .line 31
    .line 32
    const/4 v12, 0x0

    .line 33
    const/4 v13, 0x0

    .line 34
    const/4 v15, 0x0

    .line 35
    const/16 v16, 0x0

    .line 36
    .line 37
    move-object/from16 v9, p4

    .line 38
    .line 39
    move-object/from16 v10, p2

    .line 40
    .line 41
    invoke-static/range {v6 .. v18}, Lcom/startshorts/androidplayer/manager/event/EventManager;->U0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->c:Lkotlin/jvm/functions/Function0;

    .line 45
    .line 46
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->dismiss()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private final L(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0, p1}, Ljk/u;->k(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->N(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private final M()V
    .locals 5

    .line 1
    new-instance v0, Lfk/e;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "getViewLifecycleOwner(...)"

    .line 17
    .line 18
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->G()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$c;

    .line 26
    .line 27
    invoke-direct {v4, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1, v2, v3, v4}, Lfk/e;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lfk/e$a;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lfk/e;->d()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private final N(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->W()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->b:Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;->f:Landroid/widget/ImageView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$d;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->b:Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$e;

    .line 29
    .line 30
    invoke-direct {v1, p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method private static final O(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->J()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-class v0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final P(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final Q(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->dismiss()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final R(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final S()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method private final T()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    const-string v0, ""

    .line 12
    .line 13
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->dismiss()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lzc/g;

    .line 29
    .line 30
    sget-object v3, Lle/h;->a:Lle/h;

    .line 31
    .line 32
    invoke-virtual {v3}, Lle/h;->b()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    filled-new-array {v0}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {v2, v3, v0}, Lzc/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->U(Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final V()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->h:Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->getSubscribeResp()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->getOriginalPrice()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {v1}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->j:Ljava/lang/Float;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->getCurrencySymbol()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->k:Ljava/lang/String;

    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->j()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private final d0(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->G()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$g;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$g;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic m(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->O(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->S()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic o(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->R(Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)Landroidx/lifecycle/ViewModelProvider;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->P(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->Q(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic r(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->B(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic s(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->F()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic t(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->G()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic u(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic v(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->K(ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic w(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->L(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic x(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->T()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic y(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->d0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->h:Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->getSubscribeResp()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method


# virtual methods
.method public final H()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->f:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final U(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzc/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->G()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;-><init>(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final W()V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuDetails()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    instance-of v2, v1, Lzc/e;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    check-cast v1, Lzc/e;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v1, v3

    .line 18
    :goto_0
    const-wide/16 v4, 0x0

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-static {v1}, Ljk/k;->j(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getOriginPriceAmountMicros()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-wide v1, v4

    .line 34
    :goto_1
    long-to-float v1, v1

    .line 35
    const v2, 0x49742400    # 1000000.0f

    .line 36
    .line 37
    .line 38
    div-float/2addr v1, v2

    .line 39
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuDetails()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    instance-of v7, v6, Lzc/e;

    .line 44
    .line 45
    if-eqz v7, :cond_2

    .line 46
    .line 47
    move-object v3, v6

    .line 48
    check-cast v3, Lzc/e;

    .line 49
    .line 50
    :cond_2
    if-eqz v3, :cond_3

    .line 51
    .line 52
    invoke-static {v3}, Ljk/k;->j(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getDiscountPriceAmountMicros()J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    :cond_3
    long-to-float v3, v4

    .line 63
    div-float/2addr v3, v2

    .line 64
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    const-string v4, ""

    .line 69
    .line 70
    if-eqz v2, :cond_5

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-nez v2, :cond_4

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    move-object v4, v2

    .line 80
    goto :goto_2

    .line 81
    :cond_5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    if-nez v2, :cond_4

    .line 86
    .line 87
    :goto_2
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_6

    .line 92
    .line 93
    move v1, v3

    .line 94
    :cond_6
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->k:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {v4}, Ljk/v;->q(Ljava/lang/String;)Lkotlin/Pair;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    if-eqz v3, :cond_7

    .line 105
    .line 106
    invoke-virtual {v3}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    :cond_7
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->b:Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;

    .line 111
    .line 112
    if-eqz v3, :cond_10

    .line 113
    .line 114
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->e:Ljava/lang/String;

    .line 115
    .line 116
    const-string v5, "mission_center"

    .line 117
    .line 118
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_8

    .line 123
    .line 124
    sget-object v4, Lfk/u;->a:Lfk/u;

    .line 125
    .line 126
    sget v5, Lcom/startshorts/androidplayer/R$string;->ad2pay_rewards_subscribe_title:I

    .line 127
    .line 128
    invoke-virtual {v4, v5}, Lfk/u;->d(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    iget-object v6, v3, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 133
    .line 134
    sget v7, Lcom/startshorts/androidplayer/R$string;->ad2pay_rewards_subscribe_desc:I

    .line 135
    .line 136
    invoke-virtual {v4, v7}, Lfk/u;->d(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_8
    sget-object v4, Lfk/u;->a:Lfk/u;

    .line 145
    .line 146
    sget v5, Lcom/startshorts/androidplayer/R$string;->ad2pay_immersion_subscribe_title:I

    .line 147
    .line 148
    invoke-virtual {v4, v5}, Lfk/u;->d(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    iget-object v6, v3, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 153
    .line 154
    sget v7, Lcom/startshorts/androidplayer/R$string;->ad2pay_immersion_subscribe_desc:I

    .line 155
    .line 156
    invoke-virtual {v4, v7}, Lfk/u;->d(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    :goto_3
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;->t:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 164
    .line 165
    const-string v6, "tvTitle"

    .line 166
    .line 167
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const-string v6, "#582D01"

    .line 171
    .line 172
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    const/high16 v8, 0x3f800000    # 1.0f

    .line 177
    .line 178
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    invoke-static {v4, v5, v7, v8, v6}, Ljk/y;->m(Landroid/widget/TextView;Ljava/lang/String;IFI)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    const/4 v5, 0x1

    .line 190
    const/4 v6, 0x0

    .line 191
    if-eqz v4, :cond_b

    .line 192
    .line 193
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->j:Ljava/lang/Float;

    .line 194
    .line 195
    if-eqz v4, :cond_b

    .line 196
    .line 197
    if-eqz v4, :cond_9

    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    goto :goto_4

    .line 204
    :cond_9
    move v4, v6

    .line 205
    :goto_4
    cmpl-float v4, v4, v6

    .line 206
    .line 207
    if-lez v4, :cond_b

    .line 208
    .line 209
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->j:Ljava/lang/Float;

    .line 210
    .line 211
    if-eqz v4, :cond_c

    .line 212
    .line 213
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    sub-float v7, v4, v1

    .line 218
    .line 219
    div-float/2addr v7, v4

    .line 220
    const/16 v8, 0x64

    .line 221
    .line 222
    int-to-float v8, v8

    .line 223
    mul-float/2addr v7, v8

    .line 224
    new-instance v8, Ljava/math/BigDecimal;

    .line 225
    .line 226
    float-to-double v9, v7

    .line 227
    invoke-direct {v8, v9, v10}, Ljava/math/BigDecimal;-><init>(D)V

    .line 228
    .line 229
    .line 230
    const/4 v7, 0x0

    .line 231
    sget-object v9, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 232
    .line 233
    invoke-virtual {v8, v7, v9}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    invoke-virtual {v7}, Ljava/math/BigDecimal;->intValue()I

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    if-lez v8, :cond_a

    .line 242
    .line 243
    iget-object v8, v3, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 244
    .line 245
    const-string v9, "tvDiscountDesc"

    .line 246
    .line 247
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v7}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    const-string v9, "toString(...)"

    .line 255
    .line 256
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-direct {p0, v8, v7}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->C(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object v7, v3, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 263
    .line 264
    new-instance v8, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    iget-object v9, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->k:Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    .line 283
    .line 284
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 285
    .line 286
    const-string v7, "tvOriginPrice"

    .line 287
    .line 288
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-static {v4, v5}, Ljk/y;->j(Landroid/widget/TextView;Z)V

    .line 292
    .line 293
    .line 294
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 295
    .line 296
    invoke-static {v4}, Ljk/b0;->l(Landroid/view/View;)V

    .line 297
    .line 298
    .line 299
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 300
    .line 301
    invoke-static {v4}, Ljk/b0;->l(Landroid/view/View;)V

    .line 302
    .line 303
    .line 304
    goto :goto_5

    .line 305
    :cond_a
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 306
    .line 307
    invoke-static {v4}, Ljk/b0;->d(Landroid/view/View;)V

    .line 308
    .line 309
    .line 310
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 311
    .line 312
    invoke-static {v4}, Ljk/b0;->d(Landroid/view/View;)V

    .line 313
    .line 314
    .line 315
    goto :goto_5

    .line 316
    :cond_b
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 317
    .line 318
    invoke-static {v4}, Ljk/b0;->d(Landroid/view/View;)V

    .line 319
    .line 320
    .line 321
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 322
    .line 323
    invoke-static {v4}, Ljk/b0;->d(Landroid/view/View;)V

    .line 324
    .line 325
    .line 326
    :cond_c
    :goto_5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    const/4 v7, 0x2

    .line 331
    if-eq v4, v5, :cond_f

    .line 332
    .line 333
    if-eq v4, v7, :cond_e

    .line 334
    .line 335
    const/4 v5, 0x4

    .line 336
    if-eq v4, v5, :cond_d

    .line 337
    .line 338
    const/4 v5, 0x5

    .line 339
    if-eq v4, v5, :cond_f

    .line 340
    .line 341
    const/4 v5, 0x6

    .line 342
    if-eq v4, v5, :cond_e

    .line 343
    .line 344
    const/4 v5, 0x7

    .line 345
    if-eq v4, v5, :cond_d

    .line 346
    .line 347
    goto :goto_7

    .line 348
    :cond_d
    const v4, 0x43b68000    # 365.0f

    .line 349
    .line 350
    .line 351
    :goto_6
    div-float v6, v1, v4

    .line 352
    .line 353
    goto :goto_7

    .line 354
    :cond_e
    const/high16 v4, 0x41f00000    # 30.0f

    .line 355
    .line 356
    goto :goto_6

    .line 357
    :cond_f
    const/high16 v4, 0x40e00000    # 7.0f

    .line 358
    .line 359
    goto :goto_6

    .line 360
    :goto_7
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .line 364
    .line 365
    move-object v5, v2

    .line 366
    check-cast v5, Ljava/lang/String;

    .line 367
    .line 368
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    new-instance v5, Ljava/math/BigDecimal;

    .line 372
    .line 373
    float-to-double v8, v6

    .line 374
    invoke-direct {v5, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    .line 375
    .line 376
    .line 377
    sget-object v6, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 378
    .line 379
    invoke-virtual {v5, v7, v6}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 380
    .line 381
    .line 382
    move-result-object v5

    .line 383
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v8

    .line 390
    sget-object v4, Lfk/u;->a:Lfk/u;

    .line 391
    .line 392
    sget v5, Lcom/startshorts/androidplayer/R$string;->ad2pay_subscribe_day:I

    .line 393
    .line 394
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    invoke-virtual {v4, v5, v6}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v7

    .line 402
    iget-object v6, v3, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 403
    .line 404
    const-string v4, "tvDescSub"

    .line 405
    .line 406
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    const-string v4, "#F6610F"

    .line 410
    .line 411
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 412
    .line 413
    .line 414
    move-result v9

    .line 415
    const/16 v12, 0x10

    .line 416
    .line 417
    const/4 v13, 0x0

    .line 418
    const v10, 0x3fb5c28f    # 1.42f

    .line 419
    .line 420
    .line 421
    const/4 v11, 0x0

    .line 422
    invoke-static/range {v6 .. v13}, Lxd/b;->d(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;IFZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .line 424
    .line 425
    goto :goto_8

    .line 426
    :catch_0
    iget-object v4, v3, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 427
    .line 428
    invoke-static {v4}, Ljk/b0;->d(Landroid/view/View;)V

    .line 429
    .line 430
    .line 431
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    .line 436
    check-cast v2, Ljava/lang/String;

    .line 437
    .line 438
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    iget-object v2, v3, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;->r:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 449
    .line 450
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    .line 452
    .line 453
    iget-object v1, v3, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;->s:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 454
    .line 455
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    invoke-direct {p0, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->D(I)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    .line 465
    .line 466
    iget-object v1, v3, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;->q:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 467
    .line 468
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->j:Ljava/lang/Float;

    .line 473
    .line 474
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    invoke-direct {p0, v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->E(ILjava/lang/String;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    .line 484
    .line 485
    :cond_10
    return-void
.end method

.method public final X(Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->h:Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 2
    .line 3
    return-void
.end method

.method public final Y(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->f:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-void
.end method

.method public final Z(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->e:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final a0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final b0(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->d:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method

.method public final c0(Lkotlin/jvm/functions/Function0;)V
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->c:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->d:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->l:Z

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;->j()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->A()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "onCreateDialog(...)"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p3, Lcom/startshorts/androidplayer/R$layout;->ad_to_subscribe_dialog:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;->f:Landroid/widget/ImageView;

    .line 18
    .line 19
    const-string p2, "icCloseDialog"

    .line 20
    .line 21
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/purchase/f;

    .line 25
    .line 26
    invoke-direct {v3, p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)V

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    const/4 v5, 0x0

    .line 31
    const-wide/16 v1, 0x0

    .line 32
    .line 33
    invoke-static/range {v0 .. v5}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p1, Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;->j:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 37
    .line 38
    const-string p3, "pageStateView"

    .line 39
    .line 40
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;->k(Lcom/hades/aar/pagestate/StateViewGroup;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    :goto_0
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->b:Lcom/startshorts/androidplayer/databinding/AdToSubscribeDialogBinding;

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string p2, "getRoot(...)"

    .line 58
    .line 59
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
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
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->z()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;->l()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->M()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->V()V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->e:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->f:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    move-object v5, p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    goto :goto_0

    .line 39
    :goto_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->F()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const-string v2, "ad_to_subscription"

    .line 44
    .line 45
    invoke-virtual/range {v1 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->X(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
