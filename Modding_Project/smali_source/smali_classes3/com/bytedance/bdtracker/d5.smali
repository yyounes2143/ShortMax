.class public Lcom/bytedance/bdtracker/d5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation


# static fields
.field public static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/LruCache;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/bytedance/bdtracker/d5;->c:Landroid/util/LruCache;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    :cond_1
    return v0
.end method

.method public static a(Landroid/view/View;Z)Ljava/lang/String;
    .locals 3

    .line 2
    const v0, 0x5042b0a

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    sget-object p1, Lcom/bytedance/bdtracker/d5;->a:Landroid/util/SparseArray;

    if-nez p1, :cond_2

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    sput-object p1, Lcom/bytedance/bdtracker/d5;->a:Landroid/util/SparseArray;

    :cond_2
    sget-object p1, Lcom/bytedance/bdtracker/d5;->b:Ljava/util/Set;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    sput-object p1, Lcom/bytedance/bdtracker/d5;->b:Ljava/util/Set;

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    const/high16 v1, 0x7f000000

    if-le p1, v1, :cond_5

    sget-object v1, Lcom/bytedance/bdtracker/d5;->b:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/bytedance/bdtracker/d5;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/bytedance/bdtracker/d5;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/bytedance/bdtracker/d5;->b:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/bytedance/bdtracker/d5;->c:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Anonymous"

    :cond_0
    sget-object v1, Lcom/bytedance/bdtracker/d5;->c:Landroid/util/LruCache;

    invoke-virtual {v1, p0, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-boolean v1, Lcom/bytedance/bdtracker/k4;->h:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/bytedance/bdtracker/k4;->e:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/bytedance/bdtracker/k4;->a:Z

    if-nez v1, :cond_1

    const-string v1, "RecyclerView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {p0}, Lcom/bytedance/bdtracker/k4;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/bytedance/bdtracker/k4;->c:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    sput-object p0, Lcom/bytedance/bdtracker/k4;->b:Ljava/lang/Class;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/bytedance/bdtracker/k4;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "checkCustomRecyclerView failed"

    invoke-interface {v1, v3, p0, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const v0, 0x5042b0c

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/bytedance/bdtracker/d5;->a(Landroid/view/View;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    move-object v2, v5

    goto/16 :goto_4

    :cond_2
    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_4

    const v0, 0x5042b13

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    move-object v0, p0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v4

    and-int/lit16 v4, v4, 0xfff

    const/16 v5, 0x81

    if-eq v4, v5, :cond_e

    const/16 v5, 0xe1

    if-eq v4, v5, :cond_e

    const/16 v5, 0x12

    if-eq v4, v5, :cond_e

    const/16 v5, 0x91

    if-ne v4, v5, :cond_3

    goto/16 :goto_3

    .line 6
    :cond_3
    :try_start_0
    const-class v4, Landroid/widget/TextView;

    const-string v5, "mText"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v4

    const-string v5, "ViewUtils"

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "getEditTextText failed"

    invoke-interface {v4, v5, v6, v0, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v0, v2

    :goto_1
    if-nez v0, :cond_a

    const-string v0, ""

    goto/16 :goto_4

    .line 7
    :cond_4
    instance-of v0, p0, Landroid/widget/RatingBar;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_5
    instance-of v0, p0, Landroid/widget/Spinner;

    if-eqz v0, :cond_7

    move-object v0, p0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_6

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_e

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_e

    goto :goto_2

    :cond_7
    instance-of v0, p0, Landroid/widget/SeekBar;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_8
    instance-of v0, p0, Landroid/widget/RadioGroup;

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    instance-of v3, v0, Landroid/widget/RadioButton;

    if-eqz v3, :cond_e

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_e

    goto :goto_2

    :cond_9
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_b

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_e

    :goto_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_b
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    move-object v0, p1

    goto :goto_4

    :cond_c
    instance-of v0, p0, Landroid/webkit/WebView;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/bytedance/bdtracker/d5;->a(Landroid/webkit/WebView;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    goto :goto_4

    :cond_d
    invoke-static {p0}, Lcom/bytedance/bdtracker/k4;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, p0

    check-cast v0, Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    goto :goto_4

    :cond_e
    :goto_3
    move-object v0, v2

    :goto_4
    if-nez v2, :cond_12

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz p1, :cond_f

    goto :goto_5

    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_10
    move-object p1, v0

    :goto_5
    invoke-static {p1}, Lcom/bytedance/bdtracker/d5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_12

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    return-object v2
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 2

    .line 4
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :catch_0
    :goto_0
    return v0
.end method

.method public static a(Landroid/webkit/WebView;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/webkit/WebView;

    const-string v2, "mProvider"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "android.webkit.WebViewClassic"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mWebViewCore"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    move v0, v2

    :cond_0
    return v0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mAwContents"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "isDestroyed"

    :try_start_1
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :goto_0
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v1

    const-string v2, "ViewUtils"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Check isDestroyed failed"

    invoke-interface {v1, v2, v4, p0, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    return v0
.end method

.method public static b(Landroid/view/View;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    sget v0, Lcom/bytedance/applog/R$id;->applog_tag_ignore:I

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method
