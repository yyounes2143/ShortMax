.class Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$a;
.super Ljava/lang/Object;
.source "SimpleViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$a;->a:Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$a;->a:Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;->c(Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;)Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$a;->a:Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;->c(Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;)Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$a;->a:Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;

    .line 16
    .line 17
    iget v2, v1, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;->d:I

    .line 18
    .line 19
    iget-object v1, v1, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;->e:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-interface {v0, p1, v2, v1}, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$c;->a(Landroid/view/View;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
