.class public final synthetic Lcom/startshorts/androidplayer/ui/view/purchase/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:I

.field public final synthetic c:Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;


# direct methods
.method public synthetic constructor <init>(ZILcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/n;->a:Z

    .line 5
    .line 6
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/purchase/n;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/n;->c:Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/n;->a:Z

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/n;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/purchase/n;->c:Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {v0, v1, v2, p1}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->r(ZILcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;I)Lkotlin/Unit;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
