.class public final Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$a;
.super Ljava/lang/Object;
.source "SelectableAdapter.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b<",
        "TD;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter<",
            "TD;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$a;->a:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$a;->b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TD;I)V"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "v"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "d"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->getClickable()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$a;->a:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->F()Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$c;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$a;->a:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 25
    .line 26
    invoke-virtual {v0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->G(Landroid/view/View;Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
