.class public final Lcom/inmobi/media/dc;
.super Lcom/inmobi/media/Af;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/inmobi/media/ec;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/ec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/dc;->a:Lcom/inmobi/media/ec;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/inmobi/media/Af;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/pa;Lcom/inmobi/media/Cf;)V
    .locals 7

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "finalInsets"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/dc;->a:Lcom/inmobi/media/ec;

    .line 3
    iget-object v2, v1, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_0

    .line 4
    sget-object v3, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 5
    const-string v4, "TAG"

    const-string v5, "fireOnSafeAreaChanged "

    invoke-static {v1, v3, v4, v5}, Lcom/inmobi/media/Ob;->a(Lcom/inmobi/media/ec;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "window.imraid.broadcastEvent(\'onSafeAreaChange\', "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v3, "<this>"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v5, p2, Lcom/inmobi/media/Cf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/media/Bf;

    if-eqz v5, :cond_1

    .line 12
    invoke-virtual {v5}, Lcom/inmobi/media/Bf;->a()Lorg/json/JSONObject;

    move-result-object v5

    .line 13
    invoke-static {p1}, Lcom/inmobi/media/qa;->a(Lcom/inmobi/media/pa;)I

    move-result v6

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    move-object v5, v4

    .line 14
    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Lcom/inmobi/media/ec;->c(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/inmobi/media/dc;->a:Lcom/inmobi/media/ec;

    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object p2, p2, Lcom/inmobi/media/Cf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inmobi/media/Bf;

    if-nez p1, :cond_2

    goto/16 :goto_5

    .line 20
    :cond_2
    iget p2, p1, Lcom/inmobi/media/Bf;->b:I

    if-nez p2, :cond_3

    .line 21
    iget p2, p1, Lcom/inmobi/media/Bf;->c:I

    if-nez p2, :cond_3

    goto/16 :goto_5

    .line 22
    :cond_3
    invoke-virtual {v1, p1}, Lcom/inmobi/media/ec;->setCloseAssetArea(Lcom/inmobi/media/Bf;)V

    .line 23
    sget-object p1, Lcom/inmobi/media/pc;->a:Lms/i;

    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Lcom/inmobi/media/ec;->getRoute()Lcom/inmobi/media/Cc;

    move-result-object p1

    .line 26
    iget-object p1, p1, Lcom/inmobi/media/Cc;->b:Ljava/lang/String;

    .line 27
    const-string p2, "default"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 28
    invoke-virtual {v1}, Lcom/inmobi/media/ec;->getWebViewFactory()Lcom/inmobi/media/tf;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object p1, p1, Lcom/inmobi/media/tf;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inmobi/media/ec;

    goto :goto_1

    :cond_4
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_d

    .line 31
    const-string p2, "renderView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p2, v1, Lcom/inmobi/media/ec;->X0:Lcom/inmobi/media/Bf;

    .line 33
    const-string v0, "insets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0xfffb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/inmobi/media/y3;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/inmobi/media/y3;

    goto :goto_2

    :cond_5
    move-object v0, v4

    :goto_2
    if-nez v0, :cond_6

    goto :goto_5

    .line 35
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v1, p1, Lcom/inmobi/media/y3;

    if-eqz v1, :cond_7

    check-cast p1, Lcom/inmobi/media/y3;

    goto :goto_3

    :cond_7
    move-object p1, v4

    :goto_3
    if-nez p1, :cond_8

    goto :goto_5

    .line 36
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_9

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_4

    :cond_9
    move-object v0, v4

    :goto_4
    if-nez v0, :cond_a

    goto :goto_5

    .line 37
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_b

    move-object v4, p1

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    :cond_b
    if-nez v4, :cond_c

    goto :goto_5

    .line 38
    :cond_c
    iget p1, p2, Lcom/inmobi/media/Bf;->b:I

    .line 39
    iget v1, p2, Lcom/inmobi/media/Bf;->c:I

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v2, p1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 41
    iget p1, p2, Lcom/inmobi/media/Bf;->b:I

    .line 42
    iget p2, p2, Lcom/inmobi/media/Bf;->c:I

    .line 43
    invoke-virtual {v4, v2, p1, p2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_d
    :goto_5
    return-void
.end method

.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/dc;->a:Lcom/inmobi/media/ec;

    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getViewState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hidden"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
