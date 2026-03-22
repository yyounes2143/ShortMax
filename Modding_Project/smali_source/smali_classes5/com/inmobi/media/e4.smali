.class public final Lcom/inmobi/media/e4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/h4;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/h4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/e4;->a:Lcom/inmobi/media/h4;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/e4;->a:Lcom/inmobi/media/h4;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/inmobi/media/Y3;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/inmobi/media/Y3;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v2

    .line 16
    :goto_0
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, v0, Lcom/inmobi/media/Y3;->d:Lcom/inmobi/media/b4;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    check-cast v0, Lcom/inmobi/media/i5;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/inmobi/media/i5;->a:Lcom/inmobi/media/j5;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/inmobi/media/j5;->b:Lcom/inmobi/media/x;

    .line 27
    .line 28
    instance-of v1, v0, Lcom/inmobi/media/ec;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    move-object v2, v0

    .line 33
    check-cast v2, Lcom/inmobi/media/ec;

    .line 34
    .line 35
    :cond_1
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/inmobi/media/ec;->p()V

    .line 38
    .line 39
    .line 40
    :cond_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object v0
.end method
