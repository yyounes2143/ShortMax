.class public final Lcom/inmobi/media/zf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/inmobi/media/zf;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/inmobi/media/zf;->b:Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    sget-object v0, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/inmobi/media/L3;->F()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    new-instance v0, Lub/r8;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lub/r8;-><init>(Lcom/inmobi/media/zf;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public static final a(Lcom/inmobi/media/zf;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    const-string v0, "WindowInsetsHandler"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "<anonymous parameter 0>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "windowInsets"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/inmobi/media/zf;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p2

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/inmobi/media/zf;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/yf;

    .line 4
    check-cast v1, Lcom/inmobi/media/Df;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v2, v1, Lcom/inmobi/media/Df;->a:Lcom/inmobi/media/Af;

    invoke-virtual {v2, p2}, Lcom/inmobi/media/Af;->a(Landroid/view/WindowInsets;)V

    .line 7
    :try_start_0
    iget-object v2, v1, Lcom/inmobi/media/Df;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 8
    iget-object v3, v1, Lcom/inmobi/media/Df;->a:Lcom/inmobi/media/Af;

    invoke-virtual {v3}, Lcom/inmobi/media/Af;->a()Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    iget-object v2, v1, Lcom/inmobi/media/Df;->b:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_1

    const-string v3, "listener is not interested in computing insets, skipping"

    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v0, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_4

    :cond_2
    if-nez v2, :cond_3

    .line 10
    iget-object v2, v1, Lcom/inmobi/media/Df;->b:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_1

    const-string v3, "Activity is null, skipping safeArea computation"

    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v0, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {v2}, Lcom/inmobi/media/B2;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    invoke-static {p2}, Lcom/inmobi/media/pc;->b(Landroid/view/WindowInsets;)Lcom/inmobi/media/Bf;

    move-result-object v2

    goto :goto_1

    .line 13
    :cond_4
    invoke-static {p2}, Lcom/inmobi/media/pc;->a(Landroid/view/WindowInsets;)Lcom/inmobi/media/Bf;

    move-result-object v2

    .line 14
    :goto_1
    invoke-static {}, Lcom/inmobi/media/U3;->f()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    .line 15
    :cond_5
    invoke-static {p2}, Lcom/inmobi/media/U3;->a(Landroid/view/WindowInsets;)I

    move-result v3

    .line 16
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/inmobi/media/U3;->a(Ljava/lang/Integer;)V

    .line 17
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/Df;->a(Lcom/inmobi/media/Bf;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 18
    :goto_3
    iget-object v1, v1, Lcom/inmobi/media/Df;->b:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in getting safeArea "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v0, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 19
    :goto_4
    iget-object v1, v1, Lcom/inmobi/media/Df;->b:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_1

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v3, "Exception in getting safeArea"

    invoke-virtual {v1, v0, v3, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_6
    return-object p2
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/inmobi/media/zf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 21
    sget-object v0, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {v0}, Lcom/inmobi/media/L3;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/inmobi/media/zf;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method
