.class final Lio/bidmachine/media3/ui/WebViewSubtitleOutput;
.super Landroid/widget/FrameLayout;
.source "WebViewSubtitleOutput.java"

# interfaces
.implements Lio/bidmachine/media3/ui/SubtitleView$a;


# instance fields
.field private final a:Lio/bidmachine/media3/ui/CanvasSubtitleOutput;

.field private final b:Landroid/webkit/WebView;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbn/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lio/bidmachine/media3/ui/a;

.field private e:F

.field private f:I

.field private g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->c:Ljava/util/List;

    .line 4
    sget-object v0, Lio/bidmachine/media3/ui/a;->g:Lio/bidmachine/media3/ui/a;

    iput-object v0, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->d:Lio/bidmachine/media3/ui/a;

    const v0, 0x3d5a511a    # 0.0533f

    .line 5
    iput v0, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->e:F

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->f:I

    const v1, 0x3da3d70a    # 0.08f

    .line 7
    iput v1, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->g:F

    .line 8
    new-instance v1, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;

    invoke-direct {v1, p1, p2}, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->a:Lio/bidmachine/media3/ui/CanvasSubtitleOutput;

    .line 9
    new-instance v2, Lio/bidmachine/media3/ui/WebViewSubtitleOutput$a;

    invoke-direct {v2, p0, p1, p2}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput$a;-><init>(Lio/bidmachine/media3/ui/WebViewSubtitleOutput;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->b:Landroid/webkit/WebView;

    .line 10
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 12
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static b(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    const/16 p0, -0x64

    .line 10
    .line 11
    return p0

    .line 12
    :cond_1
    const/16 p0, -0x32

    .line 13
    .line 14
    return p0
.end method

.method private static c(Landroid/text/Layout$Alignment;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "center"

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    sget-object v1, Lio/bidmachine/media3/ui/WebViewSubtitleOutput$b;->a:[I

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    aget p0, v1, p0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq p0, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq p0, v1, :cond_1

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    const-string p0, "end"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_2
    const-string p0, "start"

    .line 25
    .line 26
    return-object p0
.end method

.method private static d(Lio/bidmachine/media3/ui/a;)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/media3/ui/a;->d:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const-string p0, "unset"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    iget p0, p0, Lio/bidmachine/media3/ui/a;->e:I

    .line 19
    .line 20
    invoke-static {p0}, Lio/bidmachine/media3/ui/f;->b(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "-0.05em -0.05em 0.15em %s"

    .line 29
    .line 30
    invoke-static {v0, p0}, Lcn/m0;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_1
    iget p0, p0, Lio/bidmachine/media3/ui/a;->e:I

    .line 36
    .line 37
    invoke-static {p0}, Lio/bidmachine/media3/ui/f;->b(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v0, "0.06em 0.08em 0.15em %s"

    .line 46
    .line 47
    invoke-static {v0, p0}, Lcn/m0;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_2
    iget p0, p0, Lio/bidmachine/media3/ui/a;->e:I

    .line 53
    .line 54
    invoke-static {p0}, Lio/bidmachine/media3/ui/f;->b(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string v0, "0.1em 0.12em 0.15em %s"

    .line 63
    .line 64
    invoke-static {v0, p0}, Lcn/m0;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :cond_3
    iget p0, p0, Lio/bidmachine/media3/ui/a;->e:I

    .line 70
    .line 71
    invoke-static {p0}, Lio/bidmachine/media3/ui/f;->b(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string v0, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s"

    .line 80
    .line 81
    invoke-static {v0, p0}, Lcn/m0;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method private e(IF)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sub-int/2addr v1, v2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sub-int/2addr v1, v2

    .line 19
    invoke-static {p1, p2, v0, v1}, Lio/bidmachine/media3/ui/i1;->h(IFII)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const p2, -0x800001

    .line 24
    .line 25
    .line 26
    cmpl-float p2, p1, p2

    .line 27
    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    const-string p1, "unset"

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 46
    .line 47
    div-float/2addr p1, p2

    .line 48
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string p2, "%.2fpx"

    .line 57
    .line 58
    invoke-static {p2, p1}, Lcn/m0;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method private static f(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const-string p0, "horizontal-tb"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string p0, "vertical-lr"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    const-string p0, "vertical-rl"

    .line 14
    .line 15
    return-object p0
.end method

.method private static h(Lbn/a;)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lbn/a;->q:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    iget p0, p0, Lbn/a;->p:I

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq p0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne p0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p0, "skewX"

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const-string p0, "skewY"

    .line 21
    .line 22
    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v0, "%s(%.2fdeg)"

    .line 31
    .line 32
    invoke-static {v0, p0}, Lcn/m0;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_2
    const-string p0, ""

    .line 38
    .line 39
    return-object p0
.end method

.method private i()V
    .locals 31

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v2, v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->d:Lio/bidmachine/media3/ui/a;

    iget v2, v2, Lio/bidmachine/media3/ui/a;->a:I

    .line 3
    invoke-static {v2}, Lio/bidmachine/media3/ui/f;->b(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->f:I

    iget v4, v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->e:F

    .line 4
    invoke-direct {v0, v3, v4}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->e(IF)Ljava/lang/String;

    move-result-object v3

    const v4, 0x3f99999a    # 1.2f

    .line 5
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v6, v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->d:Lio/bidmachine/media3/ui/a;

    .line 6
    invoke-static {v6}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->d(Lio/bidmachine/media3/ui/a;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v2, v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    .line 7
    const-string v3, "<body><div style=\'-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;\'>"

    invoke-static {v3, v2}, Lcn/m0;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 10
    const-string v3, "default_bg"

    invoke-static {v3}, Lio/bidmachine/media3/ui/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->d:Lio/bidmachine/media3/ui/a;

    iget v6, v6, Lio/bidmachine/media3/ui/a;->b:I

    .line 11
    invoke-static {v6}, Lio/bidmachine/media3/ui/f;->b(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "background-color:%s;"

    invoke-static {v7, v6}, Lcn/m0;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    .line 13
    :goto_0
    iget-object v7, v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_12

    .line 14
    iget-object v7, v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->c:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbn/a;

    .line 15
    iget v9, v7, Lbn/a;->h:F

    const v10, -0x800001

    cmpl-float v11, v9, v10

    const/high16 v12, 0x42c80000    # 100.0f

    if-eqz v11, :cond_0

    mul-float/2addr v9, v12

    goto :goto_1

    :cond_0
    const/high16 v9, 0x42480000    # 50.0f

    .line 16
    :goto_1
    iget v11, v7, Lbn/a;->i:I

    invoke-static {v11}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->b(I)I

    move-result v11

    .line 17
    iget v13, v7, Lbn/a;->e:F

    cmpl-float v14, v13, v10

    const/high16 v15, 0x3f800000    # 1.0f

    const-string v5, "%.2f%%"

    if-eqz v14, :cond_4

    .line 18
    iget v14, v7, Lbn/a;->f:I

    if-eq v14, v8, :cond_2

    mul-float/2addr v13, v12

    .line 19
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v5, v13}, Lcn/m0;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 20
    iget v14, v7, Lbn/a;->p:I

    if-ne v14, v8, :cond_1

    .line 21
    iget v14, v7, Lbn/a;->g:I

    invoke-static {v14}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->b(I)I

    move-result v14

    neg-int v14, v14

    goto :goto_2

    .line 22
    :cond_1
    iget v14, v7, Lbn/a;->g:I

    invoke-static {v14}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->b(I)I

    move-result v14

    :goto_2
    move-object/from16 v20, v13

    const/4 v8, 0x0

    goto :goto_4

    :cond_2
    const/4 v14, 0x0

    cmpl-float v14, v13, v14

    .line 23
    const-string v8, "%.2fem"

    if-ltz v14, :cond_3

    mul-float/2addr v13, v4

    .line 24
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v8, v13}, Lcn/m0;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v20, v13

    const/4 v8, 0x0

    :goto_3
    const/4 v14, 0x0

    goto :goto_4

    :cond_3
    neg-float v13, v13

    sub-float/2addr v13, v15

    mul-float/2addr v13, v4

    .line 25
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v8, v13}, Lcn/m0;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v20, v13

    const/4 v8, 0x1

    goto :goto_3

    .line 26
    :cond_4
    iget v8, v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->g:F

    sub-float/2addr v15, v8

    mul-float/2addr v15, v12

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v8}, Lcn/m0;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, -0x64

    goto :goto_2

    .line 27
    :goto_4
    iget v13, v7, Lbn/a;->j:F

    cmpl-float v10, v13, v10

    if-eqz v10, :cond_5

    mul-float/2addr v13, v12

    .line 28
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v5, v10}, Lcn/m0;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_5
    move-object/from16 v22, v5

    goto :goto_6

    .line 29
    :cond_5
    const-string v5, "fit-content"

    goto :goto_5

    .line 30
    :goto_6
    iget-object v5, v7, Lbn/a;->b:Landroid/text/Layout$Alignment;

    invoke-static {v5}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->c(Landroid/text/Layout$Alignment;)Ljava/lang/String;

    move-result-object v23

    .line 31
    iget v5, v7, Lbn/a;->p:I

    invoke-static {v5}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->f(I)Ljava/lang/String;

    move-result-object v24

    .line 32
    iget v5, v7, Lbn/a;->n:I

    iget v10, v7, Lbn/a;->o:F

    invoke-direct {v0, v5, v10}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->e(IF)Ljava/lang/String;

    move-result-object v25

    .line 33
    iget-boolean v5, v7, Lbn/a;->l:Z

    if-eqz v5, :cond_6

    iget v5, v7, Lbn/a;->m:I

    goto :goto_7

    :cond_6
    iget-object v5, v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->d:Lio/bidmachine/media3/ui/a;

    iget v5, v5, Lio/bidmachine/media3/ui/a;->c:I

    :goto_7
    invoke-static {v5}, Lio/bidmachine/media3/ui/f;->b(I)Ljava/lang/String;

    move-result-object v26

    .line 34
    iget v5, v7, Lbn/a;->p:I

    const-string v10, "right"

    const/4 v12, 0x2

    const-string v13, "top"

    const-string v15, "left"

    const/4 v4, 0x1

    if-eq v5, v4, :cond_b

    if-eq v5, v12, :cond_8

    if-eqz v8, :cond_7

    .line 35
    const-string v13, "bottom"

    :cond_7
    move-object/from16 v19, v13

    move-object/from16 v17, v15

    goto :goto_a

    :cond_8
    if-eqz v8, :cond_9

    goto :goto_9

    :cond_9
    :goto_8
    move-object v10, v15

    :cond_a
    :goto_9
    move-object/from16 v19, v10

    move-object/from16 v17, v13

    goto :goto_a

    :cond_b
    if-eqz v8, :cond_a

    goto :goto_8

    :goto_a
    if-eq v5, v12, :cond_d

    const/4 v4, 0x1

    if-ne v5, v4, :cond_c

    goto :goto_b

    .line 36
    :cond_c
    const-string v4, "width"

    move-object/from16 v21, v4

    goto :goto_c

    .line 37
    :cond_d
    :goto_b
    const-string v4, "height"

    move-object/from16 v21, v4

    move/from16 v30, v14

    move v14, v11

    move/from16 v11, v30

    .line 38
    :goto_c
    iget-object v4, v7, Lbn/a;->a:Ljava/lang/CharSequence;

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 40
    invoke-static {v4, v5}, Lio/bidmachine/media3/ui/c1;->a(Ljava/lang/CharSequence;F)Lio/bidmachine/media3/ui/c1$b;

    move-result-object v4

    .line 41
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 42
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v2, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_f

    .line 43
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_e

    :cond_e
    const/4 v8, 0x0

    goto :goto_f

    :cond_f
    :goto_e
    const/4 v8, 0x1

    .line 44
    :goto_f
    invoke-static {v8}, Lcn/a;->g(Z)V

    goto :goto_d

    .line 45
    :cond_10
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 46
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    .line 47
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 48
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 49
    invoke-static {v7}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->h(Lbn/a;)Ljava/lang/String;

    move-result-object v29

    filled-new-array/range {v16 .. v29}, [Ljava/lang/Object;

    move-result-object v5

    .line 50
    const-string v8, "<div style=\'position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;\'>"

    invoke-static {v8, v5}, Lcn/m0;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<span class=\'%s\'>"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v8

    .line 52
    invoke-static {v5, v8}, Lcn/m0;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v5, v7, Lbn/a;->c:Landroid/text/Layout$Alignment;

    const-string v7, "</span>"

    if-eqz v5, :cond_11

    .line 54
    invoke-static {v5}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->c(Landroid/text/Layout$Alignment;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 55
    const-string v8, "<span style=\'display:inline-block; text-align:%s;\'>"

    invoke-static {v8, v5}, Lcn/m0;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lio/bidmachine/media3/ui/c1$b;->a:Ljava/lang/String;

    .line 57
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 59
    :cond_11
    iget-object v4, v4, Lio/bidmachine/media3/ui/c1$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :goto_10
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</div>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    const v4, 0x3f99999a    # 1.2f

    goto/16 :goto_0

    .line 61
    :cond_12
    const-string v3, "</div></body></html>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const-string v4, "<html><head><style>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 65
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "{"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 66
    :cond_13
    const-string v2, "</style></head>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v2, v0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->b:Landroid/webkit/WebView;

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "base64"

    .line 70
    invoke-virtual {v2, v1, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Lio/bidmachine/media3/ui/a;FIF)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbn/a;",
            ">;",
            "Lio/bidmachine/media3/ui/a;",
            "FIF)V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->d:Lio/bidmachine/media3/ui/a;

    .line 2
    .line 3
    iput p3, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->e:F

    .line 4
    .line 5
    iput p4, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->f:I

    .line 6
    .line 7
    iput p5, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->g:F

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ge v2, v3, :cond_1

    .line 25
    .line 26
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lbn/a;

    .line 31
    .line 32
    iget-object v4, v3, Lbn/a;->d:Landroid/graphics/Bitmap;

    .line 33
    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->c:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    :cond_2
    iput-object v0, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->c:Ljava/util/List;

    .line 61
    .line 62
    invoke-direct {p0}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->i()V

    .line 63
    .line 64
    .line 65
    :cond_3
    iget-object v0, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->a:Lio/bidmachine/media3/ui/CanvasSubtitleOutput;

    .line 66
    .line 67
    move-object v2, p2

    .line 68
    move v3, p3

    .line 69
    move v4, p4

    .line 70
    move v5, p5

    .line 71
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/ui/CanvasSubtitleOutput;->a(Ljava/util/List;Lio/bidmachine/media3/ui/a;FIF)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->b:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->c:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lio/bidmachine/media3/ui/WebViewSubtitleOutput;->i()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
