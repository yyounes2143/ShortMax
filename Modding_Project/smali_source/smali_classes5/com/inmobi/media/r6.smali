.class public final Lcom/inmobi/media/r6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final a:Landroid/widget/FrameLayout;

.field public final b:Lcom/inmobi/media/z5;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Lcom/inmobi/media/z5;)V
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
    iput-object p1, p0, Lcom/inmobi/media/r6;->a:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/inmobi/media/r6;->b:Lcom/inmobi/media/z5;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/r6;->b:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/inmobi/media/w6;->a:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "access$getTAG$p(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "close called"

    .line 13
    .line 14
    check-cast v0, Lcom/inmobi/media/A5;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/r6;->a:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    int-to-float v0, v0

    .line 29
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    div-float/2addr v0, v1

    .line 34
    invoke-static {v0}, Lcom/inmobi/media/B2;->b(F)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/inmobi/media/r6;->c:I

    .line 39
    .line 40
    iget-object v0, p0, Lcom/inmobi/media/r6;->a:Landroid/widget/FrameLayout;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    int-to-float v0, v0

    .line 47
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    div-float/2addr v0, v1

    .line 52
    invoke-static {v0}, Lcom/inmobi/media/B2;->b(F)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput v0, p0, Lcom/inmobi/media/r6;->d:I

    .line 57
    .line 58
    iget-object v0, p0, Lcom/inmobi/media/r6;->a:Landroid/widget/FrameLayout;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 68
    .line 69
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 71
    .line 72
    .line 73
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    :try_start_2
    monitor-exit v0

    .line 76
    goto :goto_2

    .line 77
    :catchall_0
    move-exception v1

    .line 78
    monitor-exit v0

    .line 79
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    :goto_1
    iget-object v1, p0, Lcom/inmobi/media/r6;->b:Lcom/inmobi/media/z5;

    .line 81
    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    sget-object v2, Lcom/inmobi/media/w6;->a:Ljava/lang/String;

    .line 85
    .line 86
    const-string v3, "access$getTAG$p(...)"

    .line 87
    .line 88
    const-string v4, "SDK encountered unexpected error in JavaScriptBridge$1.onGlobalLayout(); "

    .line 89
    .line 90
    invoke-static {v2, v3, v4}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v0, v3}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v1, Lcom/inmobi/media/A5;

    .line 99
    .line 100
    invoke-virtual {v1, v2, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_1
    :goto_2
    return-void
.end method
