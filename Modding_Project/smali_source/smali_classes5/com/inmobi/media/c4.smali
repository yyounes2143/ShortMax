.class public final Lcom/inmobi/media/c4;
.super Lcom/inmobi/media/Y1;
.source "SourceFile"


# instance fields
.field public final f:Ljava/lang/String;

.field public final g:Lkotlin/jvm/internal/Lambda;

.field public final h:Lkotlin/jvm/internal/Lambda;

.field public final i:Lkotlin/jvm/internal/Lambda;

.field public j:Lcom/inmobi/media/R6;

.field public k:Lcom/inmobi/media/O6;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lcom/inmobi/media/z5;)V
    .locals 1

    .line 1
    const-string v0, "api"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onUserLandingCompleted"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "onLpLifecycleEvent"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "fireLandingPageTracker"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p5}, Lcom/inmobi/media/Y1;-><init>(Lcom/inmobi/media/z5;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/inmobi/media/c4;->f:Ljava/lang/String;

    .line 25
    .line 26
    check-cast p2, Lkotlin/jvm/internal/Lambda;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/inmobi/media/c4;->g:Lkotlin/jvm/internal/Lambda;

    .line 29
    .line 30
    check-cast p3, Lkotlin/jvm/internal/Lambda;

    .line 31
    .line 32
    iput-object p3, p0, Lcom/inmobi/media/c4;->h:Lkotlin/jvm/internal/Lambda;

    .line 33
    .line 34
    check-cast p4, Lkotlin/jvm/internal/Lambda;

    .line 35
    .line 36
    iput-object p4, p0, Lcom/inmobi/media/c4;->i:Lkotlin/jvm/internal/Lambda;

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic a(Lcom/inmobi/media/c4;IZLjava/lang/String;I)V
    .locals 1

    and-int/lit8 p4, p4, 0x4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p3, v0

    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/inmobi/media/c4;->a(IZLjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final a(IZLjava/lang/String;Ljava/lang/Integer;)V
    .locals 7

    .line 33
    iget-object v0, p0, Lcom/inmobi/media/c4;->k:Lcom/inmobi/media/O6;

    if-eqz v0, :cond_8

    .line 34
    :try_start_0
    iget-boolean v1, v0, Lcom/inmobi/media/O6;->e:Z

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 35
    :cond_0
    iget-object v1, v0, Lcom/inmobi/media/O6;->a:Lcom/inmobi/media/R6;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "IN_CUSTOM"

    .line 36
    iput-object v2, v1, Lcom/inmobi/media/R6;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v2, 0x1f46

    const/16 v3, 0x1fa4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "funnelState"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 37
    :pswitch_0
    :try_start_1
    iput-boolean v5, v0, Lcom/inmobi/media/O6;->e:Z

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    const/16 v3, 0x2134

    goto :goto_1

    :pswitch_2
    const/16 v3, 0x2198

    goto :goto_1

    :pswitch_3
    const/16 v3, 0x20d0

    goto :goto_1

    :pswitch_4
    const/16 v3, 0x206c

    goto :goto_1

    :pswitch_5
    const/16 v3, 0x2008

    .line 38
    :goto_1
    iget-object p2, v0, Lcom/inmobi/media/O6;->c:Ljava/util/LinkedHashSet;

    const/4 p3, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    add-int/2addr v3, p3

    .line 39
    iget-object p2, v0, Lcom/inmobi/media/O6;->b:Lcom/inmobi/media/c4;

    .line 40
    sget-object p3, Lcom/inmobi/media/F6;->j:Lcom/inmobi/media/F6;

    .line 41
    iget-object p4, v0, Lcom/inmobi/media/O6;->a:Lcom/inmobi/media/R6;

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object p2, p2, Lcom/inmobi/media/c4;->i:Lkotlin/jvm/internal/Lambda;

    invoke-static {p3, p4, v1, p2}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :pswitch_6
    if-eqz p2, :cond_7

    .line 46
    iput-object p3, v0, Lcom/inmobi/media/O6;->d:Ljava/lang/String;

    goto/16 :goto_3

    :pswitch_7
    if-nez p2, :cond_3

    if-eqz p3, :cond_7

    .line 47
    iget-object p2, v0, Lcom/inmobi/media/O6;->d:Ljava/lang/String;

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 48
    :cond_3
    iput-boolean v5, v0, Lcom/inmobi/media/O6;->e:Z

    .line 49
    iget-object p2, v0, Lcom/inmobi/media/O6;->c:Ljava/util/LinkedHashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 50
    iget-object p2, v0, Lcom/inmobi/media/O6;->b:Lcom/inmobi/media/c4;

    .line 51
    sget-object p3, Lcom/inmobi/media/F6;->h:Lcom/inmobi/media/F6;

    .line 52
    iget-object v1, v0, Lcom/inmobi/media/O6;->a:Lcom/inmobi/media/R6;

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 54
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object p2, p2, Lcom/inmobi/media/c4;->i:Lkotlin/jvm/internal/Lambda;

    invoke-static {p3, v1, v2, p2}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 57
    :cond_4
    iget-object p2, v0, Lcom/inmobi/media/O6;->b:Lcom/inmobi/media/c4;

    .line 58
    sget-object p3, Lcom/inmobi/media/F6;->j:Lcom/inmobi/media/F6;

    .line 59
    iget-object v1, v0, Lcom/inmobi/media/O6;->a:Lcom/inmobi/media/R6;

    if-eqz p4, :cond_5

    .line 60
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 61
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object p2, p2, Lcom/inmobi/media/c4;->i:Lkotlin/jvm/internal/Lambda;

    invoke-static {p3, v1, p4, p2}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    goto :goto_3

    :pswitch_8
    if-eqz p2, :cond_7

    .line 64
    iput-object p3, v0, Lcom/inmobi/media/O6;->d:Ljava/lang/String;

    .line 65
    iput-boolean v5, v0, Lcom/inmobi/media/O6;->e:Z

    .line 66
    iget-object p2, v0, Lcom/inmobi/media/O6;->c:Ljava/util/LinkedHashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 67
    iget-object p2, v0, Lcom/inmobi/media/O6;->b:Lcom/inmobi/media/c4;

    .line 68
    sget-object p3, Lcom/inmobi/media/F6;->h:Lcom/inmobi/media/F6;

    .line 69
    iget-object p4, v0, Lcom/inmobi/media/O6;->a:Lcom/inmobi/media/R6;

    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object p2, p2, Lcom/inmobi/media/c4;->i:Lkotlin/jvm/internal/Lambda;

    invoke-static {p3, p4, v1, p2}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 74
    :cond_6
    iget-object p2, v0, Lcom/inmobi/media/O6;->b:Lcom/inmobi/media/c4;

    .line 75
    iget-object p2, p2, Lcom/inmobi/media/c4;->g:Lkotlin/jvm/internal/Lambda;

    .line 76
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 77
    iget-object p2, v0, Lcom/inmobi/media/O6;->b:Lcom/inmobi/media/c4;

    .line 78
    sget-object p3, Lcom/inmobi/media/F6;->i:Lcom/inmobi/media/F6;

    .line 79
    iget-object p4, v0, Lcom/inmobi/media/O6;->a:Lcom/inmobi/media/R6;

    .line 80
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object p2, p2, Lcom/inmobi/media/c4;->i:Lkotlin/jvm/internal/Lambda;

    invoke-static {p3, p4, v4, p2}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    goto :goto_3

    :pswitch_9
    if-eqz p2, :cond_7

    .line 83
    iput-object p3, v0, Lcom/inmobi/media/O6;->d:Ljava/lang/String;

    .line 84
    iget-object p2, v0, Lcom/inmobi/media/O6;->b:Lcom/inmobi/media/c4;

    .line 85
    sget-object p3, Lcom/inmobi/media/F6;->h:Lcom/inmobi/media/F6;

    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    invoke-static {p3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object p2, p2, Lcom/inmobi/media/c4;->i:Lkotlin/jvm/internal/Lambda;

    invoke-static {p3, v1, v4, p2}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 89
    :cond_7
    :goto_3
    iget-object p2, v0, Lcom/inmobi/media/O6;->c:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 90
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_8
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Y1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Y1;->a:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1

    .line 4
    const-string v2, "onShouldOverrideUrlLoading: "

    invoke-static {v2, p2}, Lcom/inmobi/media/h0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    check-cast v0, Lcom/inmobi/media/A5;

    const-string v3, "EmbeddedBrowserViewClient"

    invoke-virtual {v0, v3, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    instance-of v0, p1, Lcom/inmobi/media/X1;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/inmobi/media/X1;

    invoke-virtual {v0}, Lcom/inmobi/media/X1;->getLandingPageHandler()Lcom/inmobi/media/M6;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/inmobi/media/c4;->f:Ljava/lang/String;

    .line 8
    iget-object v7, p0, Lcom/inmobi/media/c4;->j:Lcom/inmobi/media/R6;

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v5, 0x0

    move-object v6, p2

    .line 9
    invoke-static/range {v3 .. v9}, Lcom/inmobi/media/M6;->a(Lcom/inmobi/media/M6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;ZI)Lcom/inmobi/media/K6;

    move-result-object v0

    .line 10
    iget-object v3, v0, Lcom/inmobi/media/K6;->b:Ljava/lang/Integer;

    .line 11
    iget v0, v0, Lcom/inmobi/media/K6;->a:I

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    move v0, v2

    :goto_0
    const/4 v4, 0x2

    if-eq v0, v1, :cond_5

    const/4 p1, 0x3

    if-eq v0, v4, :cond_3

    if-eq v0, p1, :cond_3

    move v1, v2

    goto/16 :goto_3

    :cond_3
    if-eqz v3, :cond_4

    .line 12
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_4
    const/16 v0, 0xa

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v2, p2, v0}, Lcom/inmobi/media/c4;->a(IZLjava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 13
    :cond_5
    instance-of v0, p1, Lcom/inmobi/media/h4;

    if-eqz v0, :cond_6

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/inmobi/media/h4;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 16
    instance-of v3, v0, Lcom/inmobi/media/Y3;

    if-eqz v3, :cond_6

    .line 17
    check-cast v0, Lcom/inmobi/media/Y3;

    invoke-virtual {v0}, Lcom/inmobi/media/Y3;->getUserLeftApplicationListener()Lcom/inmobi/media/Fe;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/inmobi/media/Fe;->a()V

    .line 18
    :cond_6
    iget-object v0, p0, Lcom/inmobi/media/c4;->h:Lkotlin/jvm/internal/Lambda;

    sget-object v3, Lcom/inmobi/media/ec;->Y0:Lcom/inmobi/media/Gb;

    iget-object v5, p0, Lcom/inmobi/media/c4;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "onNavigatingAway"

    invoke-static {v5, v3}, Lcom/inmobi/media/Gb;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Y1;->a(Landroid/webkit/WebView;)V

    .line 20
    invoke-static {p2}, Lcom/inmobi/media/z2;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 21
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_2

    .line 23
    :cond_7
    instance-of v0, p1, Lcom/inmobi/media/h4;

    if-eqz v0, :cond_8

    .line 24
    check-cast p1, Lcom/inmobi/media/h4;

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 26
    instance-of v0, p1, Lcom/inmobi/media/Y3;

    if-eqz v0, :cond_8

    .line 27
    check-cast p1, Lcom/inmobi/media/Y3;

    .line 28
    iget-object p1, p1, Lcom/inmobi/media/Y3;->d:Lcom/inmobi/media/b4;

    if-eqz p1, :cond_8

    .line 29
    check-cast p1, Lcom/inmobi/media/i5;

    .line 30
    iget-object p1, p1, Lcom/inmobi/media/i5;->a:Lcom/inmobi/media/j5;

    invoke-static {p1}, Lcom/inmobi/media/j5;->a(Lcom/inmobi/media/j5;)V

    :cond_8
    :goto_2
    const/16 p1, 0x8

    .line 31
    invoke-static {p0, v4, v2, p2, p1}, Lcom/inmobi/media/c4;->a(Lcom/inmobi/media/c4;IZLjava/lang/String;I)V

    :goto_3
    return v1
.end method

.method public final onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/Y1;->a:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string v0, "onPageCommitVisible: "

    .line 6
    .line 7
    invoke-static {v0, p2}, Lcom/inmobi/media/h0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast p1, Lcom/inmobi/media/A5;

    .line 12
    .line 13
    const-string v1, "EmbeddedBrowserViewClient"

    .line 14
    .line 15
    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 p1, 0x1

    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    invoke-static {p0, v1, p1, p2, v0}, Lcom/inmobi/media/c4;->a(Lcom/inmobi/media/c4;IZLjava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/inmobi/media/Y1;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/inmobi/media/Y1;->a:Lcom/inmobi/media/z5;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string v0, "onPageFinished: "

    .line 9
    .line 10
    invoke-static {v0, p2}, Lcom/inmobi/media/h0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast p1, Lcom/inmobi/media/A5;

    .line 15
    .line 16
    const-string v1, "EmbeddedBrowserViewClient"

    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p1, 0x1

    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-static {p0, v1, p1, p2, v0}, Lcom/inmobi/media/c4;->a(Lcom/inmobi/media/c4;IZLjava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/inmobi/media/Y1;->a:Lcom/inmobi/media/z5;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string p3, "onPageStarted: "

    .line 9
    .line 10
    invoke-static {p3, p2}, Lcom/inmobi/media/h0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    check-cast p1, Lcom/inmobi/media/A5;

    .line 15
    .line 16
    const-string v0, "EmbeddedBrowserViewClient"

    .line 17
    .line 18
    invoke-virtual {p1, v0, p3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/c4;->h:Lkotlin/jvm/internal/Lambda;

    .line 22
    .line 23
    sget-object p3, Lcom/inmobi/media/ec;->Y0:Lcom/inmobi/media/Gb;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/inmobi/media/c4;->f:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-string p3, "onPageStart"

    .line 31
    .line 32
    invoke-static {v0, p3}, Lcom/inmobi/media/Gb;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const/16 p1, 0x8

    .line 40
    .line 41
    const/4 p3, 0x1

    .line 42
    invoke-static {p0, p3, p3, p2, p1}, Lcom/inmobi/media/c4;->a(Lcom/inmobi/media/c4;IZLjava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "description"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "failingUrl"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/inmobi/media/c4;->a(IZLjava/lang/String;Ljava/lang/Integer;)V

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/Y1;->a:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_0

    .line 3
    const-string p2, "onReceivedError: "

    invoke-static {p2, p4}, Lcom/inmobi/media/h0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    check-cast p1, Lcom/inmobi/media/A5;

    const-string p3, "EmbeddedBrowserViewClient"

    invoke-virtual {p1, p3, p2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/inmobi/media/Y1;->a:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceivedError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "EmbeddedBrowserViewClient"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 9
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0, p2, p1}, Lcom/inmobi/media/c4;->a(IZLjava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 4

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "detail"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lcom/inmobi/media/Y1;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v1, 0x1a

    .line 18
    .line 19
    if-lt v0, v1, :cond_0

    .line 20
    .line 21
    const/16 v0, 0x1f47

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x3

    .line 30
    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/inmobi/media/c4;->a(IZLjava/lang/String;Ljava/lang/Integer;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "source"

    .line 34
    .line 35
    const-string v1, "embedded_browser"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {p2}, Lcom/applovin/impl/adview/e0;->a(Landroid/webkit/RenderProcessGoneDetail;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const-string v1, "isCrashed"

    .line 50
    .line 51
    invoke-static {v1, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    filled-new-array {v0, p2}, [Lkotlin/Pair;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {p2}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    sget-object v0, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 64
    .line 65
    sget-object v0, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 66
    .line 67
    const-string v1, "WebViewRenderProcessGoneEvent"

    .line 68
    .line 69
    invoke-static {v1, p2, v0}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Y1;->a:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "EmbeddedBrowserViewClient"

    const-string v2, "shouldOverrideUrlLoading Called"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/inmobi/media/L3;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    :cond_1
    const-string p2, ""

    :cond_2
    if-eqz p1, :cond_3

    .line 5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/c4;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/Y1;->a:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 8
    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "EmbeddedBrowserViewClient"

    const-string v2, "shouldOverrideUrlLoading Called"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/c4;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
