.class public final Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView$d;
.super Lyd/d;
.source "SkuSubscribeUnlockView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView$d;->e:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;

    .line 2
    .line 3
    const-wide/16 v0, 0x5dc

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lyd/d;-><init>(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView$d;->e:Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView;->getMListener()Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView$a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/unlock/SkuSubscribeUnlockView$a;->c()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
