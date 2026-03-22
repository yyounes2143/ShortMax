.class public final Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder$a;
.super Lyd/d;
.source "BaseAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "TD;>;"
        }
    .end annotation
.end field

.field final synthetic f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field final synthetic g:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Ljava/lang/Object;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "TD;>;TD;IJ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder$a;->e:Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder$a;->f:Ljava/lang/Object;

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder$a;->g:I

    .line 6
    .line 7
    invoke-direct {p0, p4, p5}, Lyd/d;-><init>(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "v"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder$a;->e:Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->n()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder$a;->f:Ljava/lang/Object;

    .line 16
    .line 17
    iget v2, p0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder$a;->g:I

    .line 18
    .line 19
    invoke-interface {v0, p1, v1, v2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;->a(Landroid/view/View;Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
