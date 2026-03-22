.class public final Lcom/inmobi/media/E3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/Ba;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/F3;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/F3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/F3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/Da;)V
    .locals 2

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/F3;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/inmobi/media/Ma;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/inmobi/media/Da;->a:Lcom/inmobi/media/za;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/inmobi/media/za;->h:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/inmobi/media/La;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-static {p1}, Lcom/inmobi/media/Ga;->a(Lcom/inmobi/media/Da;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/F3;

    .line 37
    .line 38
    invoke-virtual {v1, p1, v0}, Lcom/inmobi/media/Ma;->b(Lcom/inmobi/media/Da;Lcom/inmobi/media/La;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/F3;

    .line 43
    .line 44
    invoke-virtual {v1, p1, v0}, Lcom/inmobi/media/Ma;->a(Lcom/inmobi/media/Da;Lcom/inmobi/media/La;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    return-void
.end method
