.class public final Lcom/inmobi/media/d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Lambda;

.field public final synthetic b:Lcom/inmobi/media/p0;

.field public final synthetic c:Lcom/inmobi/media/Va;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/inmobi/media/p0;Lcom/inmobi/media/Va;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlin/jvm/internal/Lambda;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/inmobi/media/d;->a:Lkotlin/jvm/internal/Lambda;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/inmobi/media/d;->b:Lcom/inmobi/media/p0;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/inmobi/media/d;->c:Lcom/inmobi/media/Va;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/d;->a:Lkotlin/jvm/internal/Lambda;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/inmobi/media/d;->b:Lcom/inmobi/media/p0;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/inmobi/media/p0;->a()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/inmobi/media/d;->c:Lcom/inmobi/media/Va;

    .line 22
    .line 23
    invoke-interface {v1, v0}, Lcom/inmobi/media/Va;->a(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/d;->c:Lcom/inmobi/media/Va;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/Exception;

    .line 32
    .line 33
    const-string v2, "Capture Aborted: Should Capture not satisfied"

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v1}, Lcom/inmobi/media/Va;->onError(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :goto_0
    iget-object v1, p0, Lcom/inmobi/media/d;->c:Lcom/inmobi/media/Va;

    .line 43
    .line 44
    invoke-interface {v1, v0}, Lcom/inmobi/media/Va;->onError(Ljava/lang/Exception;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object v0
.end method
