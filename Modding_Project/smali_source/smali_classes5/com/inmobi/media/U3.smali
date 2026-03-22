.class public abstract Lcom/inmobi/media/U3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/inmobi/media/V3;

.field public static final b:Lcom/inmobi/media/T3;

.field public static c:Ljava/lang/String;

.field public static d:F

.field public static e:Z

.field public static f:Lorg/json/JSONObject;

.field public static g:Ljava/lang/Integer;

.field public static h:Ljava/lang/Float;

.field public static final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/inmobi/media/V3;

    .line 2
    .line 3
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v1, v2}, Lcom/inmobi/media/V3;-><init>(IFI)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/inmobi/media/U3;->a:Lcom/inmobi/media/V3;

    .line 10
    .line 11
    new-instance v0, Lcom/inmobi/media/T3;

    .line 12
    .line 13
    invoke-direct {v0, v2, v2}, Lcom/inmobi/media/T3;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/inmobi/media/U3;->b:Lcom/inmobi/media/T3;

    .line 17
    .line 18
    const/high16 v0, -0x40800000    # -1.0f

    .line 19
    .line 20
    sput v0, Lcom/inmobi/media/U3;->d:F

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    sput-boolean v0, Lcom/inmobi/media/U3;->e:Z

    .line 24
    .line 25
    sget-object v0, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/inmobi/media/L3;->F()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sput-boolean v0, Lcom/inmobi/media/U3;->i:Z

    .line 32
    .line 33
    return-void
.end method

.method public static a(Landroid/view/WindowInsets;)I
    .locals 3

    const-string v0, "insets"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {v0}, Lcom/inmobi/media/L3;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-static {}, Lcom/inmobi/media/U3;->g()B

    move-result v0

    invoke-static {v0}, Lcom/inmobi/media/qa;->a(B)Lcom/inmobi/media/pa;

    move-result-object v0

    .line 16
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemGestures()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/core/view/v1;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p0

    const-string v1, "getInsets(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 18
    invoke-static {p0}, Landroidx/appcompat/widget/l;->a(Landroid/graphics/Insets;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Landroidx/appcompat/widget/m;->a(Landroid/graphics/Insets;)I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 20
    :cond_1
    invoke-static {p0}, Landroidx/appcompat/widget/j;->a(Landroid/graphics/Insets;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Landroidx/appcompat/widget/m;->a(Landroid/graphics/Insets;)I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    .line 21
    :cond_2
    invoke-static {p0}, Landroidx/appcompat/widget/j;->a(Landroid/graphics/Insets;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Landroidx/appcompat/widget/l;->a(Landroid/graphics/Insets;)I

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 22
    :cond_4
    const-string p0, "U3"

    const-string v0, "TAG"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return v1
.end method

.method public static a(Landroid/content/Context;)Landroid/view/Display;
    .locals 2

    .line 10
    sget-object v0, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {v0}, Lcom/inmobi/media/L3;->E()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 11
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_3

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    goto :goto_2

    .line 13
    :cond_1
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/WindowManager;

    goto :goto_1

    :cond_2
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    :cond_3
    :goto_2
    return-object v1
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "0x0"

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/inmobi/media/U3;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 6
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x78

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/WindowInsets;Landroid/content/Context;)V
    .locals 1

    const-string v0, "insets"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-boolean v0, Lcom/inmobi/media/U3;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance v0, Lub/j2;

    invoke-direct {v0, p0, p1}, Lub/j2;-><init>(Landroid/view/WindowInsets;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/Integer;)V
    .locals 2

    .line 33
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    new-instance v1, Lub/i2;

    invoke-direct {v1, p0, v0}, Lub/i2;-><init>(Ljava/lang/Integer;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final a(Ljava/lang/Integer;Landroid/content/Context;)V
    .locals 7

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const-string v0, "U3"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sput-object p0, Lcom/inmobi/media/U3;->g:Ljava/lang/Integer;

    .line 37
    sget-object v0, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, "display_info_store"

    invoke-static {p1, v0}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v1

    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    move v3, p0

    goto :goto_1

    :cond_0
    const/4 p0, -0x1

    goto :goto_0

    :goto_1
    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "nav_bar_type"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/util/LinkedHashMap;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    new-instance v1, Lub/k2;

    invoke-direct {v1, p0, v0}, Lub/k2;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final a(Ljava/util/Map;Landroid/content/Context;)V
    .locals 6

    const-string v0, "$value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    const-string v0, "U3"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/inmobi/media/U3;->f:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/inmobi/media/U3;->f:Lorg/json/JSONObject;

    .line 28
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 30
    sget-object v2, Lcom/inmobi/media/U3;->f:Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 31
    :cond_2
    sget-object p0, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string p0, "display_info_store"

    invoke-static {p1, p0}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v0

    .line 32
    sget-object p0, Lcom/inmobi/media/U3;->f:Lorg/json/JSONObject;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    move-object v2, p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :goto_2
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "safe_area"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static b()F
    .locals 3

    .line 1
    sget v0, Lcom/inmobi/media/U3;->d:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_3

    .line 2
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/inmobi/media/U3;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-nez v2, :cond_2

    return v1

    .line 5
    :cond_2
    sput v0, Lcom/inmobi/media/U3;->d:F

    .line 6
    :cond_3
    sget v0, Lcom/inmobi/media/U3;->d:F

    return v0
.end method

.method public static final b(Landroid/content/Context;)V
    .locals 1

    .line 7
    sget-boolean v0, Lcom/inmobi/media/U3;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_1

    return-void

    .line 9
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 11
    :cond_3
    invoke-static {v0, p0}, Lcom/inmobi/media/U3;->a(Landroid/view/WindowInsets;Landroid/content/Context;)V

    return-void
.end method

.method public static final b(Landroid/view/WindowInsets;Landroid/content/Context;)V
    .locals 9

    const/4 v0, 0x1

    const-string v1, "$insets"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :try_start_0
    invoke-static {p0}, Landroidx/core/view/t1;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p0}, Lub/h2;->a(Landroid/graphics/Insets;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toString(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "Insets"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lkotlin/text/Regex;->q(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p0

    .line 14
    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .line 15
    check-cast p0, [Ljava/lang/String;

    .line 16
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 17
    array-length v3, p0

    if-le v3, v0, :cond_2

    .line 18
    aget-object p0, p0, v0

    new-instance v3, Lkotlin/text/Regex;

    const-string v4, "[^0-9,=a-zA-Z]*"

    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v4, ""

    invoke-virtual {v3, p0, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Lkotlin/text/Regex;

    const-string v4, ","

    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, v2}, Lkotlin/text/Regex;->q(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p0

    .line 19
    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {p0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 20
    const-string v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    array-length v3, p0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    .line 22
    aget-object v5, p0, v4

    new-instance v6, Lkotlin/text/Regex;

    const-string v7, "="

    invoke-direct {v6, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5, v2}, Lkotlin/text/Regex;->q(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v5

    .line 23
    new-array v6, v2, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .line 24
    check-cast v5, [Ljava/lang/String;

    .line 25
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 26
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v8, v5, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    aget-object v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    .line 29
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    move-result v6

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/inmobi/media/B2;->b(F)I

    move-result v5

    .line 30
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 31
    array-length v5, p0

    sub-int/2addr v5, v0

    if-ge v4, v5, :cond_0

    .line 32
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/2addr v4, v0

    goto :goto_0

    .line 33
    :cond_1
    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/inmobi/media/U3;->c:Ljava/lang/String;

    .line 36
    sget-object p0, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p0, "display_info_store"

    invoke-static {p1, p0}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v2

    const-string v3, "gesture_margin"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 37
    :catch_0
    const-string p0, "U3"

    const-string p1, "TAG"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static c()Ljava/util/HashMap;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "d-device-screen-density"

    .line 7
    .line 8
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const-string v1, "d-device-screen-size"

    .line 20
    .line 21
    invoke-static {}, Lcom/inmobi/media/U3;->d()Lcom/inmobi/media/V3;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    iget v4, v2, Lcom/inmobi/media/V3;->a:I

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 v4, 0x58

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v2, v2, Lcom/inmobi/media/V3;->b:I

    .line 41
    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    const-string v1, "d-density-dependent-screen-size"

    .line 53
    .line 54
    invoke-static {}, Lcom/inmobi/media/U3;->a()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    const-string v1, "d-orientation"

    .line 62
    .line 63
    invoke-static {}, Lcom/inmobi/media/U3;->g()B

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const-string v1, "d-textsize"

    .line 75
    .line 76
    sget-object v2, Lcom/inmobi/media/U3;->h:Ljava/lang/Float;

    .line 77
    .line 78
    if-eqz v2, :cond_0

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const/high16 v2, 0x42140000    # 37.0f

    .line 86
    .line 87
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catch_0
    const-string v1, "U3"

    .line 96
    .line 97
    const-string v2, "TAG"

    .line 98
    .line 99
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_1
    return-object v0
.end method

.method public static d()Lcom/inmobi/media/V3;
    .locals 4

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/inmobi/media/U3;->a:Lcom/inmobi/media/V3;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-static {v0}, Lcom/inmobi/media/U3;->a(Landroid/content/Context;)Landroid/view/Display;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lcom/inmobi/media/U3;->a:Lcom/inmobi/media/V3;

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 25
    .line 26
    .line 27
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 28
    .line 29
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 30
    .line 31
    int-to-float v2, v2

    .line 32
    div-float/2addr v2, v0

    .line 33
    float-to-int v2, v2

    .line 34
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 35
    .line 36
    int-to-float v1, v1

    .line 37
    div-float/2addr v1, v0

    .line 38
    float-to-int v1, v1

    .line 39
    new-instance v3, Lcom/inmobi/media/V3;

    .line 40
    .line 41
    invoke-direct {v3, v2, v0, v1}, Lcom/inmobi/media/V3;-><init>(IFI)V

    .line 42
    .line 43
    .line 44
    return-object v3
.end method

.method public static e()Ljava/lang/String;
    .locals 4

    .line 1
    sget-boolean v0, Lcom/inmobi/media/U3;->e:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    sget-object v0, Lcom/inmobi/media/U3;->c:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    sget-object v2, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    const-string v2, "display_info_store"

    .line 22
    .line 23
    invoke-static {v0, v2}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v2, "key"

    .line 28
    .line 29
    const-string v3, "gesture_margin"

    .line 30
    .line 31
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, v0, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    .line 35
    .line 36
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_0
    sput-object v1, Lcom/inmobi/media/U3;->c:Ljava/lang/String;

    .line 41
    .line 42
    return-object v1
.end method

.method public static f()Ljava/lang/Integer;
    .locals 4

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "navigation_mode"

    .line 14
    .line 15
    const/4 v3, -0x1

    .line 16
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eq v0, v2, :cond_2

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    if-eq v0, v3, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :goto_0
    return-object v1
.end method

.method public static g()B
    .locals 4

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {v0}, Lcom/inmobi/media/U3;->a(Landroid/content/Context;)Landroid/view/Display;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_5

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    if-eq v0, v1, :cond_4

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    if-eq v0, v3, :cond_3

    .line 27
    .line 28
    if-eq v0, v2, :cond_2

    .line 29
    .line 30
    const-string v0, "U3"

    .line 31
    .line 32
    const-string v2, "TAG"

    .line 33
    .line 34
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v1

    .line 38
    :cond_2
    const/4 v0, 0x4

    .line 39
    return v0

    .line 40
    :cond_3
    return v3

    .line 41
    :cond_4
    return v2

    .line 42
    :cond_5
    return v1
.end method

.method public static h()Lcom/inmobi/media/V3;
    .locals 4

    .line 1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/inmobi/media/U3;->a:Lcom/inmobi/media/V3;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-static {v0}, Lcom/inmobi/media/U3;->a(Landroid/content/Context;)Landroid/view/Display;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lcom/inmobi/media/U3;->a:Lcom/inmobi/media/V3;

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 25
    .line 26
    .line 27
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 28
    .line 29
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 30
    .line 31
    int-to-float v2, v2

    .line 32
    div-float/2addr v2, v0

    .line 33
    float-to-int v2, v2

    .line 34
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 35
    .line 36
    int-to-float v1, v1

    .line 37
    div-float/2addr v1, v0

    .line 38
    float-to-int v1, v1

    .line 39
    new-instance v3, Lcom/inmobi/media/V3;

    .line 40
    .line 41
    invoke-direct {v3, v2, v0, v1}, Lcom/inmobi/media/V3;-><init>(IFI)V

    .line 42
    .line 43
    .line 44
    return-object v3
.end method
