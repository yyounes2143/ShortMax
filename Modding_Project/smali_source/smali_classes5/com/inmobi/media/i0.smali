.class public final Lcom/inmobi/media/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/Va;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/o0;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lcom/inmobi/media/o0;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/i0;->a:Lcom/inmobi/media/o0;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/inmobi/media/i0;->b:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/inmobi/media/i0;->a:Lcom/inmobi/media/o0;

    .line 7
    .line 8
    const-string v0, "result pushed to queue"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/inmobi/media/o0;->a(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean p1, p0, Lcom/inmobi/media/i0;->b:Z

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/inmobi/media/i0;->a:Lcom/inmobi/media/o0;

    .line 18
    .line 19
    const-string v0, "session end - cleanup"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/inmobi/media/o0;->a(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p1, Lcom/inmobi/media/o0;->g:Lcom/inmobi/adquality/models/AdQualityControl;

    .line 26
    .line 27
    iget-object v0, p1, Lcom/inmobi/media/o0;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p1, Lcom/inmobi/media/o0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Lcom/inmobi/media/o0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/i0;->a:Lcom/inmobi/media/o0;

    .line 2
    .line 3
    const-string v1, "error in pushing to queue"

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/inmobi/media/o0;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
