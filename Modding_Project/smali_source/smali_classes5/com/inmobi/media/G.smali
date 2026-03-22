.class public final Lcom/inmobi/media/G;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/I;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/I;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/G;->a:Lcom/inmobi/media/I;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/G;->a:Lcom/inmobi/media/I;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/inmobi/media/I;->k:Ljava/util/concurrent/ScheduledFuture;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/G;->a:Lcom/inmobi/media/I;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/inmobi/media/I;->l:Lcom/inmobi/media/Df;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/inmobi/media/Df;->a()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/G;->a:Lcom/inmobi/media/I;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, v0, Lcom/inmobi/media/I;->l:Lcom/inmobi/media/Df;

    .line 24
    .line 25
    iput-object v1, v0, Lcom/inmobi/media/I;->k:Ljava/util/concurrent/ScheduledFuture;

    .line 26
    .line 27
    new-instance v2, Lcom/inmobi/media/A4;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {v2, v3, v1, v1}, Lcom/inmobi/media/A4;-><init>(FLcom/inmobi/media/B4;Ljava/util/ArrayList;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lcom/inmobi/media/I;->a(Lcom/inmobi/media/A4;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object v0
.end method
