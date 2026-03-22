.class public final Lad-manager/a/e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public h:Lkotlin/jvm/internal/Ref$IntRef;

.field public i:I

.field public final synthetic j:Lcom/hades/aar/admanager/activity/FullScreenAdActivity;

.field public final synthetic k:Landroid/widget/TextView;

.field public final synthetic l:Landroid/view/View;

.field public final synthetic m:Lca/d;

.field public final synthetic n:Lca/f;


# direct methods
.method public constructor <init>(Lcom/hades/aar/admanager/activity/FullScreenAdActivity;Landroid/widget/TextView;Landroid/view/View;Lca/d;Lca/f;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/a/e;->j:Lcom/hades/aar/admanager/activity/FullScreenAdActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lad-manager/a/e;->k:Landroid/widget/TextView;

    .line 4
    .line 5
    iput-object p3, p0, Lad-manager/a/e;->l:Landroid/view/View;

    .line 6
    .line 7
    iput-object p4, p0, Lad-manager/a/e;->m:Lca/d;

    .line 8
    .line 9
    iput-object p5, p0, Lad-manager/a/e;->n:Lca/f;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final i(Landroid/widget/TextView;Landroid/view/View;Lcom/hades/aar/admanager/activity/FullScreenAdActivity;Lca/d;Lca/f;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance p0, Lb/e;

    .line 9
    .line 10
    invoke-direct {p0, p2, p3, p4}, Lb/e;-><init>(Lcom/hades/aar/admanager/activity/FullScreenAdActivity;Lca/d;Lca/f;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    sget-object p0, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string p1, "Ad Dismissed: "

    .line 25
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sget-object p1, Lga/a;->a:Lga/a;

    .line 37
    .line 38
    const-string v0, "AdManagerFullScreenAdActivity"

    .line 39
    .line 40
    invoke-virtual {p1, v0, p0}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object p0, Lca/k;->a:Lca/k;

    .line 44
    .line 45
    invoke-virtual {p0}, Lca/k;->a()Ld/f;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/4 p1, 0x0

    .line 50
    if-eqz p0, :cond_1

    .line 51
    .line 52
    invoke-interface {p0}, Ld/f;->b()Lda/f;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0}, Lda/f;->r()Ld/a;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move-object p0, p1

    .line 64
    :goto_0
    if-eqz p0, :cond_2

    .line 65
    .line 66
    invoke-static {p3, p4, p1}, Ld/a;->e(Lca/d;Lca/f;Ljava/lang/Boolean;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 70
    .line 71
    .line 72
    :goto_1
    return-void
.end method

.method public static final j(Landroid/widget/TextView;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    .line 1
    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static final k(Lcom/hades/aar/admanager/activity/FullScreenAdActivity;Lca/d;Lca/f;Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p3, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v0, "Ad Dismissed: "

    .line 9
    .line 10
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    sget-object v0, Lga/a;->a:Lga/a;

    .line 21
    .line 22
    const-string v1, "AdManagerFullScreenAdActivity"

    .line 23
    .line 24
    invoke-virtual {v0, v1, p3}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p3, Lca/k;->a:Lca/k;

    .line 28
    .line 29
    invoke-virtual {p3}, Lca/k;->a()Ld/f;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    const/4 v0, 0x0

    .line 34
    if-eqz p3, :cond_0

    .line 35
    .line 36
    invoke-interface {p3}, Ld/f;->b()Lda/f;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    if-eqz p3, :cond_0

    .line 41
    .line 42
    invoke-virtual {p3}, Lda/f;->r()Ld/a;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object p3, v0

    .line 48
    :goto_0
    if-eqz p3, :cond_1

    .line 49
    .line 50
    invoke-static {p1, p2, v0}, Ld/a;->e(Lca/d;Lca/f;Ljava/lang/Boolean;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7

    .line 1
    new-instance p1, Lad-manager/a/e;

    .line 2
    .line 3
    iget-object v1, p0, Lad-manager/a/e;->j:Lcom/hades/aar/admanager/activity/FullScreenAdActivity;

    .line 4
    .line 5
    iget-object v2, p0, Lad-manager/a/e;->k:Landroid/widget/TextView;

    .line 6
    .line 7
    iget-object v3, p0, Lad-manager/a/e;->l:Landroid/view/View;

    .line 8
    .line 9
    iget-object v4, p0, Lad-manager/a/e;->m:Lca/d;

    .line 10
    .line 11
    iget-object v5, p0, Lad-manager/a/e;->n:Lca/f;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lad-manager/a/e;-><init>(Lcom/hades/aar/admanager/activity/FullScreenAdActivity;Landroid/widget/TextView;Landroid/view/View;Lca/d;Lca/f;Lrs/c;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lad-manager/a/e;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lad-manager/a/e;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lad-manager/a/e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lad-manager/a/e;->i:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lad-manager/a/e;->h:Lkotlin/jvm/internal/Ref$IntRef;

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    iget-object v1, p0, Lad-manager/a/e;->h:Lkotlin/jvm/internal/Ref$IntRef;

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 39
    .line 40
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x5

    .line 44
    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 45
    .line 46
    :cond_3
    :goto_0
    iget p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 47
    .line 48
    if-lez p1, :cond_6

    .line 49
    .line 50
    iget-object p1, p0, Lad-manager/a/e;->j:Lcom/hades/aar/admanager/activity/FullScreenAdActivity;

    .line 51
    .line 52
    iget-boolean p1, p1, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->e:Z

    .line 53
    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    sget-object p1, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->g:Landroid/os/Handler;

    .line 57
    .line 58
    iget-object v4, p0, Lad-manager/a/e;->k:Landroid/widget/TextView;

    .line 59
    .line 60
    new-instance v5, Lb/c;

    .line 61
    .line 62
    invoke-direct {v5, v4, v1}, Lb/c;-><init>(Landroid/widget/TextView;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lad-manager/a/e;->h:Lkotlin/jvm/internal/Ref$IntRef;

    .line 69
    .line 70
    iput v3, p0, Lad-manager/a/e;->i:I

    .line 71
    .line 72
    const-wide/16 v4, 0x3e8

    .line 73
    .line 74
    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-ne p1, v0, :cond_4

    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_4
    :goto_1
    iget p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 82
    .line 83
    add-int/lit8 p1, p1, -0x1

    .line 84
    .line 85
    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    iput-object v1, p0, Lad-manager/a/e;->h:Lkotlin/jvm/internal/Ref$IntRef;

    .line 89
    .line 90
    iput v2, p0, Lad-manager/a/e;->i:I

    .line 91
    .line 92
    const-wide/16 v4, 0x1f4

    .line 93
    .line 94
    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-ne p1, v0, :cond_3

    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_6
    sget-object p1, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->g:Landroid/os/Handler;

    .line 102
    .line 103
    iget-object v1, p0, Lad-manager/a/e;->k:Landroid/widget/TextView;

    .line 104
    .line 105
    iget-object v2, p0, Lad-manager/a/e;->l:Landroid/view/View;

    .line 106
    .line 107
    iget-object v3, p0, Lad-manager/a/e;->j:Lcom/hades/aar/admanager/activity/FullScreenAdActivity;

    .line 108
    .line 109
    iget-object v4, p0, Lad-manager/a/e;->m:Lca/d;

    .line 110
    .line 111
    iget-object v5, p0, Lad-manager/a/e;->n:Lca/f;

    .line 112
    .line 113
    new-instance v6, Lb/d;

    .line 114
    .line 115
    move-object v0, v6

    .line 116
    invoke-direct/range {v0 .. v5}, Lb/d;-><init>(Landroid/widget/TextView;Landroid/view/View;Lcom/hades/aar/admanager/activity/FullScreenAdActivity;Lca/d;Lca/f;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    .line 121
    .line 122
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 123
    .line 124
    return-object p1
.end method
