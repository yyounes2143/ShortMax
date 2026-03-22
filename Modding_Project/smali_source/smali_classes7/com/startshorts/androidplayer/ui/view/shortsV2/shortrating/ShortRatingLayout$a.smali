.class public final Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout$a;
.super Lz2/a;
.source "ShortRatingLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;->v(Lcom/startshorts/androidplayer/bean/shorts/ShortContentRatingInfo;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/a<",
        "Ly3/m;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

.field final synthetic c:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout$a;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout$a;->c:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;

    .line 4
    .line 5
    invoke-direct {p0}, Lz2/a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .line 1
    check-cast p2, Ly3/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout$a;->g(Ljava/lang/String;Ly3/m;Landroid/graphics/drawable/Animatable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(Ljava/lang/String;Ly3/m;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lz2/a;->d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-interface {p2}, Ly3/m;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object p3, p1

    .line 17
    :goto_0
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-interface {p2}, Ly3/m;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_1
    if-eqz p3, :cond_2

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    int-to-float p2, p2

    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    int-to-float p1, p1

    .line 41
    div-float/2addr p2, p1

    .line 42
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout$a;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout$a;->c:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;

    .line 49
    .line 50
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;->getMResizeHeight()I

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    int-to-float p3, p3

    .line 55
    mul-float/2addr p2, p3

    .line 56
    float-to-int p2, p2

    .line 57
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 58
    .line 59
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout$a;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-void
.end method
