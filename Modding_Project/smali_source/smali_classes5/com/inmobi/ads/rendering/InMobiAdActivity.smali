.class public final Lcom/inmobi/ads/rendering/InMobiAdActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInMobiAdActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InMobiAdActivity.kt\ncom/inmobi/ads/rendering/InMobiAdActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,632:1\n1#2:633\n*E\n"
    }
.end annotation


# static fields
.field public static final k:Landroid/util/SparseArray;

.field public static l:Lcom/inmobi/media/ec;

.field public static m:Lcom/inmobi/media/gc;


# instance fields
.field public a:Lcom/inmobi/media/l5;

.field public b:Lcom/inmobi/media/j5;

.field public c:Lcom/inmobi/media/ec;

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Lcom/inmobi/media/z5;

.field public i:Lcom/inmobi/media/Df;

.field public j:Landroid/window/OnBackInvokedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a(Lcom/inmobi/ads/rendering/InMobiAdActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a()V

    return-void
.end method

.method public static final a(Lcom/inmobi/ads/rendering/InMobiAdActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const p2, -0x777778

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 35
    iget-object p1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p1, Lcom/inmobi/media/ec;->z0:Lcom/inmobi/media/c4;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/16 v0, 0xc

    const/4 v2, 0x5

    .line 37
    invoke-static {p1, v2, v1, p2, v0}, Lcom/inmobi/media/c4;->a(Lcom/inmobi/media/c4;IZLjava/lang/String;I)V

    .line 38
    :cond_0
    iput-boolean v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->e:Z

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    .line 40
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_2

    const p0, -0xff0001

    .line 41
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    return v1
.end method

.method public static final b(Lcom/inmobi/ads/rendering/InMobiAdActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    const p2, -0x777778

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p1, Lcom/inmobi/media/ec;->z0:Lcom/inmobi/media/c4;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    const/16 v0, 0xc

    .line 29
    .line 30
    const/4 v2, 0x6

    .line 31
    invoke-static {p1, v2, v1, p2, v0}, Lcom/inmobi/media/c4;->a(Lcom/inmobi/media/c4;IZLjava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/webkit/WebView;->reload()V

    .line 39
    .line 40
    .line 41
    :cond_1
    return v1

    .line 42
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_3

    .line 47
    .line 48
    const p0, -0xff0001

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    .line 53
    .line 54
    :cond_3
    return v1
.end method

.method public static final c(Lcom/inmobi/ads/rendering/InMobiAdActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_3

    .line 12
    .line 13
    const p2, -0x777778

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-ne p1, v1, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 30
    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p1, Lcom/inmobi/media/ec;->z0:Lcom/inmobi/media/c4;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    const/16 v0, 0xc

    .line 47
    .line 48
    const/4 v2, 0x5

    .line 49
    invoke-static {p1, v2, v1, p2, v0}, Lcom/inmobi/media/c4;->a(Lcom/inmobi/media/c4;IZLjava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iput-boolean v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->e:Z

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    return v1

    .line 58
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-nez p0, :cond_4

    .line 63
    .line 64
    const p0, -0xff0001

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 68
    .line 69
    .line 70
    :cond_4
    return v1
.end method

.method public static final d(Lcom/inmobi/ads/rendering/InMobiAdActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    const p2, -0x777778

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-ne p1, v1, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/webkit/WebView;->goForward()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return v1

    .line 37
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_2

    .line 42
    .line 43
    const p0, -0xff0001

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    const-string v2, "InMobiAdActivity"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v3, "onBackPressed"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    iget v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->d:I

    const/16 v3, 0x66

    if-ne v0, v3, :cond_2

    .line 44
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "back pressed on ad"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/j5;

    if-eqz v0, :cond_5

    .line 46
    iget-object v0, v0, Lcom/inmobi/media/j5;->c:Lcom/inmobi/media/P;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/inmobi/media/P;->a()V

    goto :goto_0

    :cond_2
    const/16 v3, 0x64

    if-ne v0, v3, :cond_5

    .line 47
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "back pressed in browser"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 49
    iget-object v0, v0, Lcom/inmobi/media/ec;->z0:Lcom/inmobi/media/c4;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    const/16 v3, 0xc

    const/4 v4, 0x7

    .line 50
    invoke-static {v0, v4, v1, v2, v3}, Lcom/inmobi/media/c4;->a(Lcom/inmobi/media/c4;IZLjava/lang/String;I)V

    .line 51
    :cond_4
    iput-boolean v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->e:Z

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final a(Landroid/widget/RelativeLayout;)V
    .locals 6

    .line 2
    invoke-static {}, Lcom/inmobi/media/U3;->d()Lcom/inmobi/media/V3;

    move-result-object v0

    .line 3
    iget v0, v0, Lcom/inmobi/media/V3;->c:F

    .line 4
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x30

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v0, v3

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v0, 0xfffd

    .line 7
    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 8
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    const v0, 0x108009a

    .line 9
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, -0x777778

    .line 10
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v0, 0xc

    .line 12
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13
    invoke-static {p0}, Lcom/inmobi/media/B2;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->i:Lcom/inmobi/media/Df;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/media/Df;->a()V

    .line 15
    :cond_0
    new-instance v0, Lcom/inmobi/media/Df;

    new-instance v4, Lcom/inmobi/media/n5;

    invoke-direct {v4, v2}, Lcom/inmobi/media/n5;-><init>(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 16
    iget-object v5, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/z5;

    .line 17
    invoke-direct {v0, p0, v4, v5}, Lcom/inmobi/media/Df;-><init>(Landroid/app/Activity;Lcom/inmobi/media/Af;Lcom/inmobi/media/z5;)V

    iput-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->i:Lcom/inmobi/media/Df;

    .line 18
    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x41c80000    # 25.0f

    .line 20
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 21
    new-instance v0, Lcom/inmobi/media/y3;

    iget-object v2, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/z5;

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3, v2}, Lcom/inmobi/media/y3;-><init>(Landroid/content/Context;BLcom/inmobi/media/z5;)V

    .line 22
    new-instance v2, Ltb/a;

    invoke-direct {v2, p0}, Ltb/a;-><init>(Lcom/inmobi/ads/rendering/InMobiAdActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 23
    invoke-virtual {v1, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    new-instance v0, Lcom/inmobi/media/y3;

    iget-object v2, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/z5;

    const/4 v3, 0x3

    invoke-direct {v0, p0, v3, v2}, Lcom/inmobi/media/y3;-><init>(Landroid/content/Context;BLcom/inmobi/media/z5;)V

    .line 25
    new-instance v2, Ltb/b;

    invoke-direct {v2, p0}, Ltb/b;-><init>(Lcom/inmobi/ads/rendering/InMobiAdActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 26
    invoke-virtual {v1, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    new-instance v0, Lcom/inmobi/media/y3;

    iget-object v2, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/z5;

    const/4 v3, 0x4

    invoke-direct {v0, p0, v3, v2}, Lcom/inmobi/media/y3;-><init>(Landroid/content/Context;BLcom/inmobi/media/z5;)V

    .line 28
    new-instance v2, Ltb/c;

    invoke-direct {v2, p0}, Ltb/c;-><init>(Lcom/inmobi/ads/rendering/InMobiAdActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 29
    invoke-virtual {v1, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    new-instance v0, Lcom/inmobi/media/y3;

    iget-object v2, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/z5;

    const/4 v3, 0x6

    invoke-direct {v0, p0, v3, v2}, Lcom/inmobi/media/y3;-><init>(Landroid/content/Context;BLcom/inmobi/media/z5;)V

    .line 31
    new-instance v2, Ltb/d;

    invoke-direct {v2, p0}, Ltb/d;-><init>(Lcom/inmobi/ads/rendering/InMobiAdActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 32
    invoke-virtual {v1, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    const-string v0, "newConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "TAG"

    .line 11
    .line 12
    const-string v2, "InMobiAdActivity"

    .line 13
    .line 14
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v0, Lcom/inmobi/media/A5;

    .line 18
    .line 19
    const-string v1, "onConfigChanged"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a:Lcom/inmobi/media/l5;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/inmobi/media/l5;->b()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 40

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, v15, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    const-string v14, "TAG"

    .line 9
    .line 10
    const-string v13, "InMobiAdActivity"

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v0, Lcom/inmobi/media/A5;

    .line 18
    .line 19
    const-string v1, "onCreate called"

    .line 20
    .line 21
    invoke-virtual {v0, v13, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Uc;->q()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v12, 0x2

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 32
    .line 33
    .line 34
    iget-object v0, v15, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/z5;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    check-cast v0, Lcom/inmobi/media/A5;

    .line 42
    .line 43
    const-string v1, "session not found. close"

    .line 44
    .line 45
    invoke-virtual {v0, v13, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    const-string v0, "InMobi"

    .line 49
    .line 50
    const-string v1, "Session not found, AdActivity will be closed"

    .line 51
    .line 52
    invoke-static {v12, v0, v1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    const/4 v0, 0x0

    .line 57
    iput-boolean v0, v15, Lcom/inmobi/ads/rendering/InMobiAdActivity;->f:Z

    .line 58
    .line 59
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 60
    .line 61
    const/16 v2, 0x1d

    .line 62
    .line 63
    if-lt v1, v2, :cond_3

    .line 64
    .line 65
    invoke-static/range {p0 .. p0}, Lcom/inmobi/media/U3;->b(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    .line 73
    .line 74
    const/16 v3, 0x66

    .line 75
    .line 76
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    iput v1, v15, Lcom/inmobi/ads/rendering/InMobiAdActivity;->d:I

    .line 81
    .line 82
    new-instance v1, Lcom/inmobi/media/l5;

    .line 83
    .line 84
    invoke-direct {v1, v15}, Lcom/inmobi/media/l5;-><init>(Lcom/inmobi/ads/rendering/InMobiAdActivity;)V

    .line 85
    .line 86
    .line 87
    iput-object v1, v15, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a:Lcom/inmobi/media/l5;

    .line 88
    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "loggerCacheKey"

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const/16 v16, 0x0

    .line 100
    .line 101
    if-eqz v1, :cond_6

    .line 102
    .line 103
    sget-object v2, Lcom/inmobi/media/m5;->a:Ljava/util/HashMap;

    .line 104
    .line 105
    const-string v2, "key"

    .line 106
    .line 107
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :try_start_0
    sget-object v2, Lcom/inmobi/media/m5;->a:Ljava/util/HashMap;

    .line 111
    .line 112
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 117
    .line 118
    if-eqz v1, :cond_4

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_0

    .line 125
    :cond_4
    move-object/from16 v1, v16

    .line 126
    .line 127
    :goto_0
    if-nez v1, :cond_5

    .line 128
    .line 129
    :catch_0
    move-object/from16 v1, v16

    .line 130
    .line 131
    :cond_5
    check-cast v1, Lcom/inmobi/media/z5;

    .line 132
    .line 133
    iput-object v1, v15, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/z5;

    .line 134
    .line 135
    :cond_6
    iget v1, v15, Lcom/inmobi/ads/rendering/InMobiAdActivity;->d:I

    .line 136
    .line 137
    const/16 v2, 0x64

    .line 138
    .line 139
    const-string v11, "orientationListener"

    .line 140
    .line 141
    const-string v17, "orientationHandler"

    .line 142
    .line 143
    if-eq v1, v2, :cond_a

    .line 144
    .line 145
    if-eq v1, v3, :cond_7

    .line 146
    .line 147
    :goto_1
    move-object v1, v15

    .line 148
    goto/16 :goto_e

    .line 149
    .line 150
    :cond_7
    new-instance v0, Lcom/inmobi/media/j5;

    .line 151
    .line 152
    invoke-direct {v0, v15}, Lcom/inmobi/media/j5;-><init>(Lcom/inmobi/ads/rendering/InMobiAdActivity;)V

    .line 153
    .line 154
    .line 155
    iget-object v1, v15, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/z5;

    .line 156
    .line 157
    if-eqz v1, :cond_8

    .line 158
    .line 159
    const-string v2, "logger"

    .line 160
    .line 161
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iput-object v1, v0, Lcom/inmobi/media/j5;->h:Lcom/inmobi/media/z5;

    .line 165
    .line 166
    :cond_8
    iget-object v1, v15, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a:Lcom/inmobi/media/l5;

    .line 167
    .line 168
    if-nez v1, :cond_9

    .line 169
    .line 170
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    move-object/from16 v1, v16

    .line 174
    .line 175
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-object v2, v1, Lcom/inmobi/media/l5;->b:Ljava/util/HashSet;

    .line 182
    .line 183
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Lcom/inmobi/media/l5;->a()V

    .line 187
    .line 188
    .line 189
    iput-object v0, v15, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/j5;

    .line 190
    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    const-string v2, "getIntent(...)"

    .line 196
    .line 197
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    sget-object v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 201
    .line 202
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/j5;->a(Landroid/content/Intent;Landroid/util/SparseArray;)V

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    const-string v2, "com.inmobi.ads.rendering.InMobiAdActivity.IN_APP_BROWSER_URL"

    .line 211
    .line 212
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    const-string v2, "placementId"

    .line 221
    .line 222
    const-wide/high16 v3, -0x8000000000000000L

    .line 223
    .line 224
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 225
    .line 226
    .line 227
    move-result-wide v8

    .line 228
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    const-string v2, "viewTouchTimestamp"

    .line 233
    .line 234
    const-wide/16 v3, -0x1

    .line 235
    .line 236
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 237
    .line 238
    .line 239
    move-result-wide v1

    .line 240
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    const-string v4, "allowAutoRedirection"

    .line 245
    .line 246
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    const-string v4, "impressionId"

    .line 255
    .line 256
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    const-string v4, "creativeId"

    .line 265
    .line 266
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    const-string v4, "supportLockScreen"

    .line 275
    .line 276
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    :try_start_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 281
    .line 282
    const/16 v4, 0x21

    .line 283
    .line 284
    const-string v12, "lpTelemetryControlInfo"

    .line 285
    .line 286
    if-lt v3, v4, :cond_b

    .line 287
    .line 288
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    const-class v4, Lcom/inmobi/media/R6;

    .line 293
    .line 294
    invoke-static {v3, v12, v4}, Landroidx/credentials/provider/c0;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    check-cast v3, Lcom/inmobi/media/R6;

    .line 299
    .line 300
    goto :goto_2

    .line 301
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {v3, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    instance-of v4, v3, Lcom/inmobi/media/R6;

    .line 310
    .line 311
    if-eqz v4, :cond_c

    .line 312
    .line 313
    check-cast v3, Lcom/inmobi/media/R6;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 314
    .line 315
    :goto_2
    move-object v12, v3

    .line 316
    goto :goto_3

    .line 317
    :catch_1
    :cond_c
    move-object/from16 v12, v16

    .line 318
    .line 319
    :goto_3
    if-eqz v0, :cond_e

    .line 320
    .line 321
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    const/4 v3, 0x1

    .line 329
    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 330
    .line 331
    .line 332
    sget-object v0, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    .line 333
    .line 334
    invoke-virtual {v0}, Lcom/inmobi/media/L3;->w()Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_d

    .line 339
    .line 340
    invoke-static {v15, v3}, Lcom/google/android/gms/ads/internal/overlay/a;->a(Landroid/app/Activity;Z)V

    .line 341
    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    const/high16 v3, 0x80000

    .line 349
    .line 350
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 351
    .line 352
    .line 353
    :cond_e
    :goto_4
    sget-object v0, Lcom/inmobi/media/ec;->Z0:Lcom/inmobi/media/Eb;

    .line 354
    .line 355
    sget-object v3, Lcom/inmobi/ads/rendering/InMobiAdActivity;->l:Lcom/inmobi/media/ec;

    .line 356
    .line 357
    if-eqz v3, :cond_f

    .line 358
    .line 359
    invoke-virtual {v3}, Lcom/inmobi/media/ec;->getListener()Lcom/inmobi/media/gc;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {v3}, Lcom/inmobi/media/ec;->getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 368
    .line 369
    goto :goto_5

    .line 370
    :cond_f
    move-object/from16 v3, v16

    .line 371
    .line 372
    move-object v4, v3

    .line 373
    :goto_5
    if-nez v4, :cond_10

    .line 374
    .line 375
    sget-object v3, Lcom/inmobi/media/D3;->a:Ljava/util/HashMap;

    .line 376
    .line 377
    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    const-string v4, "ads"

    .line 382
    .line 383
    invoke-static {v3, v4}, Lcom/inmobi/media/D3;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    const-string v4, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    .line 388
    .line 389
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    check-cast v3, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 393
    .line 394
    sget-object v4, Lcom/inmobi/ads/rendering/InMobiAdActivity;->m:Lcom/inmobi/media/gc;

    .line 395
    .line 396
    if-eqz v4, :cond_10

    .line 397
    .line 398
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    :goto_6
    move-object v0, v3

    .line 402
    goto :goto_7

    .line 403
    :cond_10
    move-object v4, v0

    .line 404
    goto :goto_6

    .line 405
    :goto_7
    const-wide/16 v18, 0x4

    .line 406
    .line 407
    add-long v18, v1, v18

    .line 408
    .line 409
    :try_start_3
    iget-object v3, v15, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/z5;

    .line 410
    .line 411
    new-instance v2, Lcom/inmobi/media/tf;

    .line 412
    .line 413
    invoke-direct {v2, v3}, Lcom/inmobi/media/tf;-><init>(Lcom/inmobi/media/z5;)V

    .line 414
    .line 415
    .line 416
    new-instance v1, Lcom/inmobi/media/Cc;

    .line 417
    .line 418
    move-object/from16 v20, v2

    .line 419
    .line 420
    const-string v2, "default"

    .line 421
    .line 422
    move-object/from16 v21, v3

    .line 423
    .line 424
    const-string v3, "browser"

    .line 425
    .line 426
    invoke-direct {v1, v2, v3}, Lcom/inmobi/media/Cc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    new-instance v3, Lcom/inmobi/media/ec;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 430
    .line 431
    const/16 v22, 0x0

    .line 432
    .line 433
    const/16 v23, 0xa4

    .line 434
    .line 435
    const/16 v24, 0x1

    .line 436
    .line 437
    const/16 v25, 0x0

    .line 438
    .line 439
    const/16 v26, 0x1

    .line 440
    .line 441
    const/16 v27, 0x0

    .line 442
    .line 443
    const/16 v28, 0x0

    .line 444
    .line 445
    move-object/from16 v29, v1

    .line 446
    .line 447
    move-object v1, v3

    .line 448
    move-object/from16 v2, p0

    .line 449
    .line 450
    move-object/from16 v30, v3

    .line 451
    .line 452
    move/from16 v3, v24

    .line 453
    .line 454
    move-object/from16 v31, v4

    .line 455
    .line 456
    move-object/from16 v4, v25

    .line 457
    .line 458
    move-object/from16 v32, v6

    .line 459
    .line 460
    move/from16 v6, v26

    .line 461
    .line 462
    move/from16 v33, v7

    .line 463
    .line 464
    move-object/from16 v7, v27

    .line 465
    .line 466
    move-wide/from16 v34, v8

    .line 467
    .line 468
    move-wide/from16 v8, v18

    .line 469
    .line 470
    move-object/from16 v18, v10

    .line 471
    .line 472
    move-object/from16 v10, v28

    .line 473
    .line 474
    move-object/from16 v36, v11

    .line 475
    .line 476
    move-object/from16 v11, v21

    .line 477
    .line 478
    move-object/from16 v37, v12

    .line 479
    .line 480
    move-object/from16 v12, v29

    .line 481
    .line 482
    move-object/from16 v38, v13

    .line 483
    .line 484
    move-object/from16 v13, v20

    .line 485
    .line 486
    move-object/from16 v39, v14

    .line 487
    .line 488
    move-object/from16 v14, v22

    .line 489
    .line 490
    move/from16 v15, v23

    .line 491
    .line 492
    :try_start_4
    invoke-direct/range {v1 .. v15}, Lcom/inmobi/media/ec;-><init>(Landroid/content/Context;BLjava/util/Set;Ljava/lang/String;ZLjava/lang/String;JLcom/inmobi/media/hc;Lcom/inmobi/media/z5;Lcom/inmobi/media/Cc;Lcom/inmobi/media/tf;Lcom/inmobi/media/Q;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 493
    .line 494
    .line 495
    move-object/from16 v1, p0

    .line 496
    .line 497
    move-object/from16 v2, v30

    .line 498
    .line 499
    :try_start_5
    iput-object v2, v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 500
    .line 501
    move-wide/from16 v3, v34

    .line 502
    .line 503
    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/ec;->setPlacementId(J)V

    .line 504
    .line 505
    .line 506
    iget-object v2, v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 507
    .line 508
    if-nez v2, :cond_11

    .line 509
    .line 510
    goto :goto_8

    .line 511
    :cond_11
    move-object/from16 v3, v32

    .line 512
    .line 513
    invoke-virtual {v2, v3}, Lcom/inmobi/media/ec;->setCreativeId(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    :goto_8
    iget-object v2, v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 517
    .line 518
    if-nez v2, :cond_12

    .line 519
    .line 520
    goto :goto_9

    .line 521
    :cond_12
    move/from16 v3, v33

    .line 522
    .line 523
    invoke-virtual {v2, v3}, Lcom/inmobi/media/ec;->setAllowAutoRedirection(Z)V

    .line 524
    .line 525
    .line 526
    :goto_9
    iget-object v2, v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 527
    .line 528
    if-eqz v2, :cond_14

    .line 529
    .line 530
    if-nez v0, :cond_13

    .line 531
    .line 532
    const-string v0, "adConfig"

    .line 533
    .line 534
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 535
    .line 536
    .line 537
    move-object/from16 v0, v16

    .line 538
    .line 539
    :cond_13
    move-object/from16 v4, v31

    .line 540
    .line 541
    goto :goto_b

    .line 542
    :catch_2
    move-exception v0

    .line 543
    :goto_a
    move-object/from16 v4, v31

    .line 544
    .line 545
    goto/16 :goto_d

    .line 546
    .line 547
    :goto_b
    :try_start_6
    invoke-virtual {v2, v4, v0}, Lcom/inmobi/media/ec;->a(Lcom/inmobi/media/gc;Lcom/inmobi/commons/core/configs/AdConfig;)V

    .line 548
    .line 549
    .line 550
    goto :goto_c

    .line 551
    :catch_3
    move-exception v0

    .line 552
    goto/16 :goto_d

    .line 553
    .line 554
    :cond_14
    move-object/from16 v4, v31

    .line 555
    .line 556
    :goto_c
    iget-object v0, v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 557
    .line 558
    if-eqz v0, :cond_15

    .line 559
    .line 560
    move-object/from16 v3, v37

    .line 561
    .line 562
    invoke-virtual {v0, v3}, Lcom/inmobi/media/ec;->setLandingPageTelemetryControlInfoOnWebViewClient(Lcom/inmobi/media/R6;)V

    .line 563
    .line 564
    .line 565
    :cond_15
    new-instance v0, Landroid/widget/RelativeLayout;

    .line 566
    .line 567
    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 568
    .line 569
    .line 570
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 571
    .line 572
    const/4 v3, -0x1

    .line 573
    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 574
    .line 575
    .line 576
    const/16 v5, 0xa

    .line 577
    .line 578
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 579
    .line 580
    .line 581
    const v5, 0xfffd

    .line 582
    .line 583
    .line 584
    const/4 v6, 0x2

    .line 585
    invoke-virtual {v2, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 589
    .line 590
    .line 591
    iget-object v3, v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 592
    .line 593
    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v1, v0}, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a(Landroid/widget/RelativeLayout;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 600
    .line 601
    .line 602
    iget-object v0, v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 603
    .line 604
    if-eqz v0, :cond_16

    .line 605
    .line 606
    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 607
    .line 608
    .line 609
    move-object/from16 v2, v18

    .line 610
    .line 611
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    :cond_16
    iget-object v0, v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 615
    .line 616
    if-eqz v0, :cond_17

    .line 617
    .line 618
    invoke-virtual {v0, v1}, Lcom/inmobi/media/ec;->setFullScreenActivityContext(Landroid/app/Activity;)V

    .line 619
    .line 620
    .line 621
    :cond_17
    iget-object v0, v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a:Lcom/inmobi/media/l5;

    .line 622
    .line 623
    if-nez v0, :cond_18

    .line 624
    .line 625
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    move-object/from16 v0, v16

    .line 629
    .line 630
    :cond_18
    iget-object v2, v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 631
    .line 632
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 636
    .line 637
    .line 638
    move-object/from16 v3, v36

    .line 639
    .line 640
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    iget-object v3, v0, Lcom/inmobi/media/l5;->b:Ljava/util/HashSet;

    .line 644
    .line 645
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    invoke-virtual {v0}, Lcom/inmobi/media/l5;->a()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 649
    .line 650
    .line 651
    goto :goto_e

    .line 652
    :catch_4
    move-exception v0

    .line 653
    move-object/from16 v1, p0

    .line 654
    .line 655
    goto :goto_a

    .line 656
    :catch_5
    move-exception v0

    .line 657
    move-object/from16 v38, v13

    .line 658
    .line 659
    move-object/from16 v39, v14

    .line 660
    .line 661
    move-object v1, v15

    .line 662
    :goto_d
    iget-object v2, v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/z5;

    .line 663
    .line 664
    if-eqz v2, :cond_19

    .line 665
    .line 666
    move-object/from16 v5, v38

    .line 667
    .line 668
    move-object/from16 v3, v39

    .line 669
    .line 670
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    check-cast v2, Lcom/inmobi/media/A5;

    .line 674
    .line 675
    const-string v3, "Exception while initializing In-App browser"

    .line 676
    .line 677
    invoke-virtual {v2, v5, v3, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 678
    .line 679
    .line 680
    :cond_19
    sget-object v2, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 681
    .line 682
    const-string v2, "event"

    .line 683
    .line 684
    invoke-static {v0, v2}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    sget-object v2, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 689
    .line 690
    invoke-virtual {v2, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v4}, Lcom/inmobi/media/gc;->c()V

    .line 694
    .line 695
    .line 696
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 697
    .line 698
    .line 699
    :goto_e
    return-void
.end method

.method public final onDestroy()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "TAG"

    .line 6
    .line 7
    const-string v2, "InMobiAdActivity"

    .line 8
    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/inmobi/media/A5;

    .line 13
    .line 14
    const-string v1, "onDestroy"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->d:I

    .line 20
    .line 21
    const-string v1, "onClose"

    .line 22
    .line 23
    const/16 v2, 0x66

    .line 24
    .line 25
    const/16 v3, 0x64

    .line 26
    .line 27
    if-ne v3, v0, :cond_1

    .line 28
    .line 29
    sget-object v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->l:Lcom/inmobi/media/ec;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    sget-object v4, Lcom/inmobi/media/ec;->Y0:Lcom/inmobi/media/Gb;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-string v4, "IN_CUSTOM_BROWSER"

    .line 39
    .line 40
    invoke-static {v4, v1}, Lcom/inmobi/media/Gb;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/inmobi/media/ec;->a(Lorg/json/JSONObject;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    if-ne v2, v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/j5;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-object v4, v0, Lcom/inmobi/media/j5;->e:Lcom/inmobi/media/Y3;

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    sget-object v4, Lcom/inmobi/media/ec;->Y0:Lcom/inmobi/media/Gb;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const-string v4, "IN_CUSTOM_EXPAND"

    .line 64
    .line 65
    invoke-static {v4, v1}, Lcom/inmobi/media/Gb;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/inmobi/media/j5;->a(Lorg/json/JSONObject;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->e:Z

    .line 73
    .line 74
    const-string v1, "orientationListener"

    .line 75
    .line 76
    const-string v4, "orientationHandler"

    .line 77
    .line 78
    const/4 v5, 0x0

    .line 79
    if-eqz v0, :cond_c

    .line 80
    .line 81
    iget v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->d:I

    .line 82
    .line 83
    if-ne v3, v0, :cond_4

    .line 84
    .line 85
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 86
    .line 87
    if-eqz v0, :cond_15

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getFullScreenEventsListener()Lcom/inmobi/media/w;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_15

    .line 94
    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 96
    .line 97
    invoke-interface {v0, v2}, Lcom/inmobi/media/w;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 101
    .line 102
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->b()V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a:Lcom/inmobi/media/l5;

    .line 109
    .line 110
    if-nez v0, :cond_3

    .line 111
    .line 112
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    move-object v0, v5

    .line 116
    :cond_3
    iget-object v2, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 117
    .line 118
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lcom/inmobi/media/l5;->b:Ljava/util/HashSet;

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/inmobi/media/l5;->a()V

    .line 133
    .line 134
    .line 135
    iput-object v5, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :cond_4
    if-ne v2, v0, :cond_15

    .line 140
    .line 141
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/j5;

    .line 142
    .line 143
    if-eqz v0, :cond_b

    .line 144
    .line 145
    iget-object v2, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a:Lcom/inmobi/media/l5;

    .line 146
    .line 147
    if-nez v2, :cond_5

    .line 148
    .line 149
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    move-object v2, v5

    .line 153
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v2, Lcom/inmobi/media/l5;->b:Ljava/util/HashSet;

    .line 160
    .line 161
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Lcom/inmobi/media/l5;->a()V

    .line 165
    .line 166
    .line 167
    iget-object v1, v0, Lcom/inmobi/media/j5;->c:Lcom/inmobi/media/P;

    .line 168
    .line 169
    if-eqz v1, :cond_6

    .line 170
    .line 171
    invoke-virtual {v1}, Lcom/inmobi/media/P;->b()V

    .line 172
    .line 173
    .line 174
    :cond_6
    iget-object v1, v0, Lcom/inmobi/media/j5;->d:Landroid/widget/RelativeLayout;

    .line 175
    .line 176
    if-eqz v1, :cond_7

    .line 177
    .line 178
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 179
    .line 180
    .line 181
    :cond_7
    iget-object v1, v0, Lcom/inmobi/media/j5;->e:Lcom/inmobi/media/Y3;

    .line 182
    .line 183
    if-eqz v1, :cond_a

    .line 184
    .line 185
    iget-object v2, v1, Lcom/inmobi/media/Y3;->c:Lcom/inmobi/media/h4;

    .line 186
    .line 187
    if-eqz v2, :cond_8

    .line 188
    .line 189
    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    .line 190
    .line 191
    .line 192
    :cond_8
    iput-object v5, v1, Lcom/inmobi/media/Y3;->c:Lcom/inmobi/media/h4;

    .line 193
    .line 194
    iput-object v5, v1, Lcom/inmobi/media/Y3;->d:Lcom/inmobi/media/b4;

    .line 195
    .line 196
    iput-object v5, v1, Lcom/inmobi/media/Y3;->e:Lcom/inmobi/media/Fe;

    .line 197
    .line 198
    iget-object v2, v1, Lcom/inmobi/media/Y3;->g:Lcom/inmobi/media/Df;

    .line 199
    .line 200
    if-eqz v2, :cond_9

    .line 201
    .line 202
    invoke-virtual {v2}, Lcom/inmobi/media/Df;->a()V

    .line 203
    .line 204
    .line 205
    :cond_9
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 206
    .line 207
    .line 208
    :cond_a
    iget-object v1, v0, Lcom/inmobi/media/j5;->a:Ljava/lang/ref/WeakReference;

    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 211
    .line 212
    .line 213
    iput-object v5, v0, Lcom/inmobi/media/j5;->b:Lcom/inmobi/media/x;

    .line 214
    .line 215
    iput-object v5, v0, Lcom/inmobi/media/j5;->c:Lcom/inmobi/media/P;

    .line 216
    .line 217
    iput-object v5, v0, Lcom/inmobi/media/j5;->d:Landroid/widget/RelativeLayout;

    .line 218
    .line 219
    iput-object v5, v0, Lcom/inmobi/media/j5;->e:Lcom/inmobi/media/Y3;

    .line 220
    .line 221
    :cond_b
    iput-object v5, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/j5;

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_c
    iget v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->d:I

    .line 225
    .line 226
    if-eq v3, v0, :cond_14

    .line 227
    .line 228
    if-ne v2, v0, :cond_14

    .line 229
    .line 230
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/j5;

    .line 231
    .line 232
    if-eqz v0, :cond_13

    .line 233
    .line 234
    iget-object v2, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a:Lcom/inmobi/media/l5;

    .line 235
    .line 236
    if-nez v2, :cond_d

    .line 237
    .line 238
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    move-object v2, v5

    .line 242
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iget-object v1, v2, Lcom/inmobi/media/l5;->b:Ljava/util/HashSet;

    .line 249
    .line 250
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2}, Lcom/inmobi/media/l5;->a()V

    .line 254
    .line 255
    .line 256
    iget-object v1, v0, Lcom/inmobi/media/j5;->c:Lcom/inmobi/media/P;

    .line 257
    .line 258
    if-eqz v1, :cond_e

    .line 259
    .line 260
    invoke-virtual {v1}, Lcom/inmobi/media/P;->b()V

    .line 261
    .line 262
    .line 263
    :cond_e
    iget-object v1, v0, Lcom/inmobi/media/j5;->d:Landroid/widget/RelativeLayout;

    .line 264
    .line 265
    if-eqz v1, :cond_f

    .line 266
    .line 267
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 268
    .line 269
    .line 270
    :cond_f
    iget-object v1, v0, Lcom/inmobi/media/j5;->e:Lcom/inmobi/media/Y3;

    .line 271
    .line 272
    if-eqz v1, :cond_12

    .line 273
    .line 274
    iget-object v2, v1, Lcom/inmobi/media/Y3;->c:Lcom/inmobi/media/h4;

    .line 275
    .line 276
    if-eqz v2, :cond_10

    .line 277
    .line 278
    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    .line 279
    .line 280
    .line 281
    :cond_10
    iput-object v5, v1, Lcom/inmobi/media/Y3;->c:Lcom/inmobi/media/h4;

    .line 282
    .line 283
    iput-object v5, v1, Lcom/inmobi/media/Y3;->d:Lcom/inmobi/media/b4;

    .line 284
    .line 285
    iput-object v5, v1, Lcom/inmobi/media/Y3;->e:Lcom/inmobi/media/Fe;

    .line 286
    .line 287
    iget-object v2, v1, Lcom/inmobi/media/Y3;->g:Lcom/inmobi/media/Df;

    .line 288
    .line 289
    if-eqz v2, :cond_11

    .line 290
    .line 291
    invoke-virtual {v2}, Lcom/inmobi/media/Df;->a()V

    .line 292
    .line 293
    .line 294
    :cond_11
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 295
    .line 296
    .line 297
    :cond_12
    iget-object v1, v0, Lcom/inmobi/media/j5;->a:Ljava/lang/ref/WeakReference;

    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 300
    .line 301
    .line 302
    iput-object v5, v0, Lcom/inmobi/media/j5;->b:Lcom/inmobi/media/x;

    .line 303
    .line 304
    iput-object v5, v0, Lcom/inmobi/media/j5;->c:Lcom/inmobi/media/P;

    .line 305
    .line 306
    iput-object v5, v0, Lcom/inmobi/media/j5;->d:Landroid/widget/RelativeLayout;

    .line 307
    .line 308
    iput-object v5, v0, Lcom/inmobi/media/j5;->e:Lcom/inmobi/media/Y3;

    .line 309
    .line 310
    :cond_13
    iput-object v5, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/j5;

    .line 311
    .line 312
    :cond_14
    iget v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->d:I

    .line 313
    .line 314
    if-ne v3, v0, :cond_15

    .line 315
    .line 316
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 317
    .line 318
    if-eqz v0, :cond_15

    .line 319
    .line 320
    iget-object v0, v0, Lcom/inmobi/media/ec;->z0:Lcom/inmobi/media/c4;

    .line 321
    .line 322
    if-eqz v0, :cond_15

    .line 323
    .line 324
    const/4 v1, 0x1

    .line 325
    const/16 v2, 0xc

    .line 326
    .line 327
    const/16 v3, 0x9

    .line 328
    .line 329
    invoke-static {v0, v3, v1, v5, v2}, Lcom/inmobi/media/c4;->a(Lcom/inmobi/media/c4;IZLjava/lang/String;I)V

    .line 330
    .line 331
    .line 332
    :catch_0
    :cond_15
    :goto_1
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->i:Lcom/inmobi/media/Df;

    .line 333
    .line 334
    if-eqz v0, :cond_16

    .line 335
    .line 336
    invoke-virtual {v0}, Lcom/inmobi/media/Df;->a()V

    .line 337
    .line 338
    .line 339
    :cond_16
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 340
    .line 341
    .line 342
    return-void
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    const-string v1, "TAG"

    const-string v2, "InMobiAdActivity"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "multiWindow mode - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/j5;

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p1, Lcom/inmobi/media/j5;->b:Lcom/inmobi/media/x;

    if-eqz p1, :cond_1

    .line 5
    instance-of v0, p1, Lcom/inmobi/media/ec;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lcom/inmobi/media/ec;

    invoke-virtual {p1}, Lcom/inmobi/media/ec;->getOrientationProperties()Lcom/inmobi/media/ra;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->a:Lcom/inmobi/media/l5;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, p1}, Lcom/inmobi/media/l5;->a(Lcom/inmobi/media/ra;)V

    :cond_2
    return-void
.end method

.method public final onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/rendering/InMobiAdActivity;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v2, "TAG"

    .line 11
    .line 12
    const-string v3, "InMobiAdActivity"

    .line 13
    .line 14
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v1, Lcom/inmobi/media/A5;

    .line 18
    .line 19
    const-string v2, "onNewIntent"

    .line 20
    .line 21
    invoke-virtual {v1, v3, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->f:Z

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/j5;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    sget-object v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "adContainers"

    .line 46
    .line 47
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1, v2}, Lcom/inmobi/media/j5;->a(Landroid/content/Intent;Landroid/util/SparseArray;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, v1, Lcom/inmobi/media/j5;->c:Lcom/inmobi/media/P;

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/inmobi/media/P;->g()V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public final onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->d:I

    .line 5
    .line 6
    const/16 v1, 0x64

    .line 7
    .line 8
    const-string v2, "onHidden"

    .line 9
    .line 10
    if-ne v1, v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->l:Lcom/inmobi/media/ec;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v1, Lcom/inmobi/media/ec;->Y0:Lcom/inmobi/media/Gb;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v1, "IN_CUSTOM_BROWSER"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lcom/inmobi/media/Gb;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/inmobi/media/ec;->a(Lorg/json/JSONObject;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/16 v1, 0x66

    .line 32
    .line 33
    if-ne v1, v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/j5;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v1, v0, Lcom/inmobi/media/j5;->e:Lcom/inmobi/media/Y3;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    sget-object v1, Lcom/inmobi/media/ec;->Y0:Lcom/inmobi/media/Gb;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    const-string v1, "IN_CUSTOM_EXPAND"

    .line 49
    .line 50
    invoke-static {v1, v2}, Lcom/inmobi/media/Gb;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/inmobi/media/j5;->a(Lorg/json/JSONObject;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "TAG"

    .line 6
    .line 7
    const-string v2, "InMobiAdActivity"

    .line 8
    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/inmobi/media/A5;

    .line 13
    .line 14
    const-string v1, "onResume"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->e:Z

    .line 23
    .line 24
    if-nez v0, :cond_4

    .line 25
    .line 26
    iget v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->d:I

    .line 27
    .line 28
    const/16 v1, 0x64

    .line 29
    .line 30
    const-string v2, "onVisible"

    .line 31
    .line 32
    if-ne v1, v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getFullScreenEventsListener()Lcom/inmobi/media/w;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    :try_start_0
    iget-boolean v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->f:Z

    .line 45
    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->f:Z

    .line 50
    .line 51
    iget-object v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->c:Lcom/inmobi/media/ec;

    .line 52
    .line 53
    invoke-interface {v0, v1}, Lcom/inmobi/media/w;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    :catch_0
    :cond_1
    sget-object v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->l:Lcom/inmobi/media/ec;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    sget-object v1, Lcom/inmobi/media/ec;->Y0:Lcom/inmobi/media/Gb;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    const-string v1, "IN_CUSTOM_BROWSER"

    .line 66
    .line 67
    invoke-static {v1, v2}, Lcom/inmobi/media/Gb;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lcom/inmobi/media/ec;->a(Lorg/json/JSONObject;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/16 v1, 0x66

    .line 76
    .line 77
    if-ne v1, v0, :cond_4

    .line 78
    .line 79
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/j5;

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    iget-object v0, v0, Lcom/inmobi/media/j5;->c:Lcom/inmobi/media/P;

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/inmobi/media/P;->c()V

    .line 88
    .line 89
    .line 90
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/j5;

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    iget-object v1, v0, Lcom/inmobi/media/j5;->e:Lcom/inmobi/media/Y3;

    .line 95
    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    sget-object v1, Lcom/inmobi/media/ec;->Y0:Lcom/inmobi/media/Gb;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    const-string v1, "IN_CUSTOM_EXPAND"

    .line 104
    .line 105
    invoke-static {v1, v2}, Lcom/inmobi/media/Gb;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/inmobi/media/j5;->a(Lorg/json/JSONObject;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "TAG"

    .line 6
    .line 7
    const-string v2, "InMobiAdActivity"

    .line 8
    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/inmobi/media/A5;

    .line 13
    .line 14
    const-string v1, "onStart"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/inmobi/media/L3;->B()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    iget-object v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->j:Landroid/window/OnBackInvokedCallback;

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    new-instance v1, Ltb/e;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Ltb/e;-><init>(Lcom/inmobi/ads/rendering/InMobiAdActivity;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->j:Landroid/window/OnBackInvokedCallback;

    .line 42
    .line 43
    :cond_1
    invoke-static {p0}, Landroidx/appcompat/app/i;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v4, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->j:Landroid/window/OnBackInvokedCallback;

    .line 48
    .line 49
    if-nez v4, :cond_2

    .line 50
    .line 51
    const-string v4, "backInvokedCallback"

    .line 52
    .line 53
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    move-object v4, v2

    .line 57
    :cond_2
    invoke-static {v1, v3, v4}, Landroidx/appcompat/app/j;->a(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-boolean v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->e:Z

    .line 61
    .line 62
    if-nez v1, :cond_7

    .line 63
    .line 64
    iget v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->d:I

    .line 65
    .line 66
    const/16 v4, 0x66

    .line 67
    .line 68
    if-ne v4, v1, :cond_7

    .line 69
    .line 70
    iget-object v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/j5;

    .line 71
    .line 72
    if-eqz v1, :cond_7

    .line 73
    .line 74
    iget-object v4, v1, Lcom/inmobi/media/j5;->c:Lcom/inmobi/media/P;

    .line 75
    .line 76
    if-eqz v4, :cond_4

    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/inmobi/media/P;->g()V

    .line 79
    .line 80
    .line 81
    :cond_4
    iget-object v4, v1, Lcom/inmobi/media/j5;->b:Lcom/inmobi/media/x;

    .line 82
    .line 83
    if-eqz v4, :cond_7

    .line 84
    .line 85
    instance-of v5, v4, Lcom/inmobi/media/ec;

    .line 86
    .line 87
    if-nez v5, :cond_5

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    check-cast v4, Lcom/inmobi/media/ec;

    .line 91
    .line 92
    iget-boolean v3, v4, Lcom/inmobi/media/ec;->S0:Z

    .line 93
    .line 94
    :goto_0
    const/4 v4, 0x1

    .line 95
    if-ne v3, v4, :cond_7

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/inmobi/media/L3;->z()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-nez v3, :cond_7

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/inmobi/media/L3;->F()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_7

    .line 108
    .line 109
    iget-object v0, v1, Lcom/inmobi/media/j5;->a:Ljava/lang/ref/WeakReference;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    instance-of v1, v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    .line 116
    .line 117
    if-eqz v1, :cond_6

    .line 118
    .line 119
    move-object v2, v0

    .line 120
    check-cast v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    .line 121
    .line 122
    :cond_6
    if-eqz v2, :cond_7

    .line 123
    .line 124
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-eqz v0, :cond_7

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const/16 v1, 0x1606

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 137
    .line 138
    .line 139
    :cond_7
    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->h:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "TAG"

    .line 6
    .line 7
    const-string v2, "InMobiAdActivity"

    .line 8
    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/inmobi/media/A5;

    .line 13
    .line 14
    const-string v1, "onStop"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/inmobi/media/L3;->B()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->j:Landroid/window/OnBackInvokedCallback;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-static {p0}, Landroidx/appcompat/app/i;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->j:Landroid/window/OnBackInvokedCallback;

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    const-string v1, "backInvokedCallback"

    .line 43
    .line 44
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    :cond_1
    invoke-static {v0, v1}, Landroidx/appcompat/app/h;->a(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-boolean v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->e:Z

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->b:Lcom/inmobi/media/j5;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    iget-object v0, v0, Lcom/inmobi/media/j5;->c:Lcom/inmobi/media/P;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/inmobi/media/P;->d()V

    .line 64
    .line 65
    .line 66
    :cond_3
    return-void
.end method
