.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$b;
.super Lyd/d;
.source "UnlockTemplate22Dialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->X0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$b;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, p1, v0}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$b;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;->x0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 12
    .line 13
    sget-object v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->MEDIA_VIDEO:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a0(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Lkotlinx/coroutines/r;

    .line 16
    .line 17
    .line 18
    return-void
.end method
