.class public final Lcom/inmobi/media/h1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 1
    const-string v0, "looper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/inmobi/media/h1;->a:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/inmobi/media/k1;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    .line 14
    .line 15
    const/16 v0, 0x3e9

    .line 16
    .line 17
    const-string v1, "access$getTAG$p(...)"

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/inmobi/media/h1;->a:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/inmobi/media/h1;->a:Z

    .line 27
    .line 28
    sget-object v0, Lcom/inmobi/media/k1;->a:Lcom/inmobi/media/k1;

    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/inmobi/media/k1;->a(Lcom/inmobi/media/k1;Z)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/inmobi/media/k1;->b()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/16 v0, 0x3ea

    .line 42
    .line 43
    if-ne p1, v0, :cond_2

    .line 44
    .line 45
    iget-boolean p1, p0, Lcom/inmobi/media/h1;->a:Z

    .line 46
    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/inmobi/media/h1;->a:Z

    .line 51
    .line 52
    sget-object v0, Lcom/inmobi/media/k1;->a:Lcom/inmobi/media/k1;

    .line 53
    .line 54
    invoke-static {v0, p1}, Lcom/inmobi/media/k1;->a(Lcom/inmobi/media/k1;Z)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/inmobi/media/k1;->b()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    return-void
.end method
