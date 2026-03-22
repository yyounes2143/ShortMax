.class public final Lcom/inmobi/media/q5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Lcom/inmobi/ads/InMobiAudio;


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/InMobiAudio;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/q5;->a:Lcom/inmobi/ads/InMobiAudio;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/q5;->a:Lcom/inmobi/ads/InMobiAudio;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    div-float/2addr v1, v2

    .line 13
    invoke-static {v1}, Lcom/inmobi/media/B2;->b(F)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v0, v1}, Lcom/inmobi/ads/InMobiAudio;->access$setMViewWidthInDp$p(Lcom/inmobi/ads/InMobiAudio;I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/inmobi/media/q5;->a:Lcom/inmobi/ads/InMobiAudio;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-float v1, v1

    .line 27
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    div-float/2addr v1, v2

    .line 32
    invoke-static {v1}, Lcom/inmobi/media/B2;->b(F)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {v0, v1}, Lcom/inmobi/ads/InMobiAudio;->access$setMViewHeightInDp$p(Lcom/inmobi/ads/InMobiAudio;I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/inmobi/media/q5;->a:Lcom/inmobi/ads/InMobiAudio;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/inmobi/ads/InMobiAudio;->access$hasValidSize(Lcom/inmobi/ads/InMobiAudio;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Lcom/inmobi/media/q5;->a:Lcom/inmobi/ads/InMobiAudio;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    const-string v0, "InMobiAudio"

    .line 58
    .line 59
    const-string v1, "InMobiAudio$1.onGlobalLayout() handler threw unexpected error"

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    invoke-static {v2, v0, v1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    :goto_0
    return-void
.end method
