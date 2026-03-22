.class public final Lcom/inmobi/media/A0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/u1;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/B0;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/B0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/A0;->a:Lcom/inmobi/media/B0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final a(Lcom/inmobi/media/B0;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/inmobi/media/B0;->a:Lcom/inmobi/media/S0;

    .line 5
    iget-object p0, p0, Lcom/inmobi/media/B0;->c:Lcom/inmobi/media/Z;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p0, v1, v2}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/Z;ZS)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/B0;B)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/B0;->a:Lcom/inmobi/media/S0;

    .line 2
    iget-object p0, p0, Lcom/inmobi/media/B0;->c:Lcom/inmobi/media/Z;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 p1, 0x4e

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/16 p1, 0x4f

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    const/16 p1, 0x50

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    const/16 p1, 0x51

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    move p1, v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    if-ne p1, v1, :cond_5

    const/16 p1, 0x4d

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    if-ne p1, v1, :cond_6

    const/16 p1, 0x1f

    goto :goto_0

    :cond_6
    const/16 v1, 0x8

    if-ne p1, v1, :cond_7

    const/16 p1, 0x1b

    goto :goto_0

    :cond_7
    const/16 p1, 0x52

    :goto_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p0, v1, p1}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/Z;ZS)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/k;)V
    .locals 3

    const-string v0, "assetBatch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/inmobi/media/A0;->a:Lcom/inmobi/media/B0;

    .line 19
    iget-object v0, v0, Lcom/inmobi/media/B0;->h:Lcom/inmobi/media/z0;

    .line 20
    invoke-virtual {v0, p1}, Lcom/inmobi/media/z0;->a(Lcom/inmobi/media/k;)V

    .line 21
    iget-object p1, p0, Lcom/inmobi/media/A0;->a:Lcom/inmobi/media/B0;

    .line 22
    iget-object v0, p1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 23
    iget-object p1, p1, Lcom/inmobi/media/B0;->d:Ljava/lang/String;

    .line 24
    const-string v1, "access$getTAG$p(...)"

    const-string v2, "Notifying ad unit with placement ID ("

    invoke-static {p1, v1, v2}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/inmobi/media/A0;->a:Lcom/inmobi/media/B0;

    .line 26
    iget-object v2, v2, Lcom/inmobi/media/B0;->c:Lcom/inmobi/media/Z;

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/inmobi/media/A0;->a:Lcom/inmobi/media/B0;

    new-instance v1, Lub/c;

    invoke-direct {v1, v0}, Lub/c;-><init>(Lcom/inmobi/media/B0;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/inmobi/media/k;B)V
    .locals 3

    const-string v0, "assetBatch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/A0;->a:Lcom/inmobi/media/B0;

    .line 8
    iget-object v0, v0, Lcom/inmobi/media/B0;->h:Lcom/inmobi/media/z0;

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/inmobi/media/z0;->a(Lcom/inmobi/media/k;B)V

    .line 10
    iget-object p1, p0, Lcom/inmobi/media/A0;->a:Lcom/inmobi/media/B0;

    .line 11
    iget-object v0, p1, Lcom/inmobi/media/B0;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 12
    iget-object p1, p1, Lcom/inmobi/media/B0;->d:Ljava/lang/String;

    .line 13
    const-string v1, "access$getTAG$p(...)"

    const-string v2, "Notifying failure  to ad unit with placement ID ("

    invoke-static {p1, v1, v2}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/inmobi/media/A0;->a:Lcom/inmobi/media/B0;

    .line 15
    iget-object v2, v2, Lcom/inmobi/media/B0;->c:Lcom/inmobi/media/Z;

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/inmobi/media/A0;->a:Lcom/inmobi/media/B0;

    new-instance v1, Lub/b;

    invoke-direct {v1, v0, p2}, Lub/b;-><init>(Lcom/inmobi/media/B0;B)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
