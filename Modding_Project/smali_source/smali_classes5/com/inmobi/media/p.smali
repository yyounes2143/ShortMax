.class public final Lcom/inmobi/media/p;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/p;->a:Landroid/content/Context;

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
    sget-object v0, Lcom/inmobi/media/s;->c:Lcom/inmobi/media/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/inmobi/media/p;->a:Landroid/content/Context;

    .line 7
    .line 8
    new-instance v3, Lcom/inmobi/media/o;

    .line 9
    .line 10
    invoke-direct {v3, v2, v0}, Lcom/inmobi/media/o;-><init>(Landroid/content/Context;Lcom/inmobi/media/n;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v3}, Lcom/inmobi/media/C2;->a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sput-object v1, Lcom/inmobi/media/s;->c:Lcom/inmobi/media/n;

    .line 17
    .line 18
    :cond_0
    sget-object v0, Lcom/inmobi/media/s;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    sget-object v0, Lcom/inmobi/media/s;->h:Lcom/inmobi/media/q;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-static {}, Lcom/inmobi/media/Uc;->f()Lcom/inmobi/media/H7;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2, v0}, Lcom/inmobi/media/H7;->a(Lkotlin/jvm/functions/Function1;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    sput-object v1, Lcom/inmobi/media/s;->h:Lcom/inmobi/media/q;

    .line 38
    .line 39
    sput-object v1, Lcom/inmobi/media/s;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 40
    .line 41
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object v0
.end method
