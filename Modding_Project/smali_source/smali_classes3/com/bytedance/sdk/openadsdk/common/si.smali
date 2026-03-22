.class public Lcom/bytedance/sdk/openadsdk/common/si;
.super Landroid/app/Dialog;
.source "SourceFile"


# static fields
.field private static final ZYk:[Ljava/lang/String;


# instance fields
.field private Pfn:Landroid/widget/Button;

.field private ba:Landroid/widget/ImageView;

.field private ex:Landroid/widget/TextView;

.field private final oJ:Landroid/os/Handler;

.field private tB:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v4, "Device"

    .line 2
    .line 3
    const-string v5, "Creative info"

    .line 4
    .line 5
    const-string v0, "SDK version"

    .line 6
    .line 7
    const-string v1, "App"

    .line 8
    .line 9
    const-string v2, "App version"

    .line 10
    .line 11
    const-string v3, "OS"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/bytedance/sdk/openadsdk/common/si;->ZYk:[Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tt_privacy_dialog_theme_ad_report"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/cY;->ba(Landroid/content/Context;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/si;->oJ:Landroid/os/Handler;

    .line 20
    .line 21
    const-string p1, ""

    .line 22
    .line 23
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/si;->tB:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/common/si;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/common/si;->ex:Landroid/widget/TextView;

    return-object p0
.end method

.method private ZYk()V
    .locals 8

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ba()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->so()Ljava/lang/String;

    move-result-object v3

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/common/si;->Pfn:Landroid/widget/Button;

    new-instance v7, Lcom/bytedance/sdk/openadsdk/common/si$1;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/common/si$1;-><init>(Lcom/bytedance/sdk/openadsdk/common/si;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/si;->ba:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/si$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/common/si$2;-><init>(Lcom/bytedance/sdk/openadsdk/common/si;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private oJ(F)I
    .locals 1

    .line 110
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method private oJ(Landroid/content/Context;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 8
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 10
    const-string v5, "tt_ad_report_info_bg"

    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/utils/dLZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x1

    .line 11
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/Pfn/cFZ;

    invoke-direct {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/cFZ;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v7, 0x42300000    # 44.0f

    invoke-direct {v0, v7}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(F)I

    move-result v8

    invoke-direct {v6, v4, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 15
    invoke-virtual {v3, v6}, Lcom/bytedance/sdk/openadsdk/core/Pfn/cFZ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-direct {v6, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v9, 0x433f0000    # 191.0f

    invoke-direct {v0, v9}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(F)I

    move-result v9

    const/high16 v10, 0x41c00000    # 24.0f

    invoke-direct {v0, v10}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xd

    .line 18
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v9, 0x11

    .line 19
    invoke-virtual {v6, v9}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;->setGravity(I)V

    .line 20
    const-string v9, "Ad Report"

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    const-string v9, "#161823"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41880000    # 17.0f

    .line 22
    invoke-virtual {v6, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 23
    invoke-virtual {v6, v8}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    invoke-direct {v8, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/bytedance/sdk/openadsdk/common/si;->ba:Landroid/widget/ImageView;

    .line 25
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v9, 0x42200000    # 40.0f

    invoke-direct {v0, v9}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(F)I

    move-result v9

    invoke-direct {v0, v7}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(F)I

    move-result v7

    invoke-direct {v8, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xb

    .line 26
    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v7, 0xf

    .line 27
    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v7, 0x41000000    # 8.0f

    .line 28
    invoke-direct {v0, v7}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(F)I

    move-result v7

    iput v7, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 29
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/common/si;->ba:Landroid/widget/ImageView;

    const/high16 v9, 0x41400000    # 12.0f

    invoke-direct {v0, v9}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(F)I

    move-result v10

    const/high16 v11, 0x41600000    # 14.0f

    invoke-direct {v0, v11}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(F)I

    move-result v12

    invoke-direct {v0, v9}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(F)I

    move-result v9

    invoke-direct {v0, v11}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(F)I

    move-result v13

    invoke-virtual {v7, v10, v12, v9, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 30
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/common/si;->ba:Landroid/widget/ImageView;

    const-string v9, "tt_ad_xmark"

    invoke-static {v1, v9}, Lcom/bytedance/sdk/component/utils/cY;->ex(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/common/si;->ba:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct {v0, v9}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(F)I

    move-result v9

    invoke-direct {v8, v4, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 34
    const-string v9, "#1F161823"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 35
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    new-instance v8, Landroid/widget/ScrollView;

    invoke-direct {v8, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    invoke-direct {v9, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v10, 0x41800000    # 16.0f

    .line 38
    invoke-direct {v0, v10}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(F)I

    move-result v12

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 39
    invoke-direct {v0, v10}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(F)I

    move-result v12

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/high16 v12, 0x3f800000    # 1.0f

    .line 40
    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 41
    invoke-direct {v0, v10}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(F)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 42
    invoke-direct {v0, v10}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(F)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 43
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    invoke-direct {v9, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v12, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 46
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47
    invoke-virtual {v9, v12}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ba()Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->so()Ljava/lang/String;

    move-result-object v12

    .line 50
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Android "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 51
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 52
    const-string v15, "SDK version"

    const-string v11, "7.5.0.4"

    invoke-direct {v0, v1, v15, v11}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    move-result-object v11

    .line 53
    const-string v15, "App"

    invoke-direct {v0, v1, v15, v5}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    move-result-object v5

    .line 54
    const-string v15, "App version"

    invoke-direct {v0, v1, v15, v12}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    move-result-object v12

    .line 55
    const-string v15, "OS"

    invoke-direct {v0, v1, v15, v13}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    move-result-object v13

    .line 56
    const-string v15, "Device"

    invoke-direct {v0, v1, v15, v14}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    move-result-object v14

    .line 57
    const-string v15, "Creative info"

    const-string v10, "loading ..."

    invoke-direct {v0, v1, v15, v10}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    move-result-object v10

    .line 58
    new-instance v15, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    invoke-direct {v15, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v16, v10

    const/high16 v10, 0x42980000    # 76.0f

    invoke-direct {v0, v10}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(F)I

    move-result v10

    move-object/from16 v17, v14

    const/4 v14, -0x1

    invoke-direct {v4, v14, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60
    invoke-virtual {v15, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    invoke-virtual {v15, v4}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/bytedance/sdk/openadsdk/common/si;->Pfn:Landroid/widget/Button;

    .line 63
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v10, 0x41800000    # 16.0f

    .line 64
    invoke-direct {v0, v10}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(F)I

    move-result v10

    .line 65
    invoke-virtual {v4, v10, v10, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 66
    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/common/si;->Pfn:Landroid/widget/Button;

    const-string v14, "tt_ad_report_info_button_bg"

    invoke-static {v1, v14}, Lcom/bytedance/sdk/openadsdk/utils/dLZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/common/si;->Pfn:Landroid/widget/Button;

    const-string v10, "copy all"

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/common/si;->Pfn:Landroid/widget/Button;

    const-string v10, "#333333"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/common/si;->Pfn:Landroid/widget/Button;

    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 70
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/common/si;->Pfn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/common/si;->ba:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 77
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v1, v17

    .line 81
    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v1, v16

    .line 82
    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/common/si;->Pfn:Landroid/widget/Button;

    invoke-virtual {v15, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method private oJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;
    .locals 9

    .line 85
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const-string v2, "Creative info"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x2

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/high16 v3, 0x42940000    # 74.0f

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(F)I

    move-result v3

    :goto_0
    const/4 v5, -0x1

    invoke-direct {v1, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x1

    .line 87
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x41800000    # 16.0f

    .line 88
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(F)I

    move-result v6

    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v6, v8, v7}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;->setPadding(IIII)V

    .line 89
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/Pfn;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x40e00000    # 7.0f

    .line 92
    invoke-direct {p0, v7}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 93
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 94
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const-string v7, "#333333"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 97
    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 98
    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 102
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/si;->ex:Landroid/widget/TextView;

    .line 103
    :cond_1
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 104
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 105
    const-string p2, "#666666"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41600000    # 14.0f

    .line 107
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 108
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/common/si;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/common/si;->tB:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic oJ()[Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/common/si;->ZYk:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 1

    .line 3
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Efd()Lorg/json/JSONObject;

    move-result-object p2

    .line 6
    :goto_0
    invoke-static {p2}, Lcom/bytedance/sdk/component/utils/oJ;->oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/si;->tB:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 7
    :goto_1
    const-string p2, "TTPrivacyAdReportDialog"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(Landroid/content/Context;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/content/Context;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    int-to-double v2, v2

    .line 31
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    mul-double/2addr v2, v4

    .line 37
    double-to-int v2, v2

    .line 38
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/si;->ZYk()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const/16 v0, 0x50

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/si;->oJ:Landroid/os/Handler;

    .line 5
    .line 6
    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/si$3;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/common/si$3;-><init>(Lcom/bytedance/sdk/openadsdk/common/si;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v2, 0x3e8

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    const-string v1, "showPrivacyAdReportDialogError"

    .line 19
    .line 20
    invoke-static {v1, v1, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
