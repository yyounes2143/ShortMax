.class public final Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$e;
.super Ljava/lang/Object;
.source "TopUpDialog.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/dialog/immersion/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$e;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog$e;->a:Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;->y0(Lcom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog;)Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$i;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x3

    .line 11
    invoke-direct {v1, v2, v2, v3, v2}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$i;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->Y(Lcom/startshorts/androidplayer/viewmodel/purchase/a;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .line 1
    return-void
.end method
