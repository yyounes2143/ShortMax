.class public final Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g$a;
.super Ljava/lang/Object;
.source "BlackFridayCoinSkuAdapter.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g;->k(ILcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g$a;->a:Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onExpired()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter$g$a;->a:Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;->F()Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/startshorts/androidplayer/ui/view/purchase/BlackFridayCoinSkuView$b;->onExpired()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
