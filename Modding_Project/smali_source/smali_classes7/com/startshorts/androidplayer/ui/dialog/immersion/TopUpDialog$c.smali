.class public final Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$c;
.super Ljava/lang/Object;
.source "TopUpDialog.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->K0()Lcom/startshorts/androidplayer/adapter/purchase/TopUpSku7Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b<",
        "Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$c;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$c;->b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;I)V
    .locals 1

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "sku"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$c;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->F0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$c;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->B0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const/4 p3, -0x1

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$c;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 26
    .line 27
    invoke-static {p1, p3}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->H0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
