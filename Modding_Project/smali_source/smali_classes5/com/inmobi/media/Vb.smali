.class public final Lcom/inmobi/media/Vb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/w;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/ec;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/ec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Vb;->a:Lcom/inmobi/media/ec;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Vb;->a:Lcom/inmobi/media/ec;

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 4
    const-string v2, "access$getTAG$cp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "onAdScreenDisplayFailed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Vb;->a:Lcom/inmobi/media/ec;

    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getListener()Lcom/inmobi/media/gc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/media/gc;->c()V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 6
    iget-object p1, p0, Lcom/inmobi/media/Vb;->a:Lcom/inmobi/media/ec;

    .line 7
    iget-object p1, p1, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_0

    .line 8
    sget-object v0, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 9
    const-string v1, "access$getTAG$cp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "onAdScreenDisplayed"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/Vb;->a:Lcom/inmobi/media/ec;

    .line 11
    iget-byte v0, p1, Lcom/inmobi/media/ec;->b:B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p1, Lcom/inmobi/media/ec;->M:Z

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/media/ec;->getListener()Lcom/inmobi/media/gc;

    move-result-object p1

    iget-object v0, p0, Lcom/inmobi/media/Vb;->a:Lcom/inmobi/media/ec;

    invoke-virtual {p1, v0}, Lcom/inmobi/media/gc;->e(Lcom/inmobi/media/ec;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/Vb;->a:Lcom/inmobi/media/ec;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "access$getTAG$cp(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast p1, Lcom/inmobi/media/A5;

    .line 15
    .line 16
    const-string v1, "onAdScreenDismissed"

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/Vb;->a:Lcom/inmobi/media/ec;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/inmobi/media/ec;->getViewState()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "Default"

    .line 28
    .line 29
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/inmobi/media/Vb;->a:Lcom/inmobi/media/ec;

    .line 36
    .line 37
    const-string v0, "Hidden"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/inmobi/media/ec;->setAndUpdateViewState(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/Vb;->a:Lcom/inmobi/media/ec;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/inmobi/media/ec;->z()V

    .line 45
    .line 46
    .line 47
    return-void
.end method
