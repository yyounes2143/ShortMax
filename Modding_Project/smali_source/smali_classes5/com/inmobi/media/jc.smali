.class public final Lcom/inmobi/media/jc;
.super Landroid/webkit/WebViewRenderProcessClient;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/z5;

.field public final b:Lcom/inmobi/media/nc;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/z5;Lcom/inmobi/media/nc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewRenderProcessClient;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/inmobi/media/jc;->a:Lcom/inmobi/media/z5;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/inmobi/media/jc;->b:Lcom/inmobi/media/nc;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onRenderProcessResponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/jc;->a:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "onRenderProcessResponsive "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 p1, 0x20

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast v0, Lcom/inmobi/media/A5;

    .line 33
    .line 34
    const-string p2, "RenderViewRenderProcessClient"

    .line 35
    .line 36
    invoke-virtual {v0, p2, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/jc;->b:Lcom/inmobi/media/nc;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/inmobi/media/nc;->a()Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iget-object v0, p1, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/hc;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/inmobi/media/hc;->f:Ljava/lang/String;

    .line 50
    .line 51
    const-string v1, "creativeId"

    .line 52
    .line 53
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget v0, p1, Lcom/inmobi/media/nc;->e:I

    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    iput v0, p1, Lcom/inmobi/media/nc;->e:I

    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "count"

    .line 67
    .line 68
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    const-string v0, "RenderProcessResponsive"

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/inmobi/media/nc;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    sget-object v0, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 78
    .line 79
    sget-object v0, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 80
    .line 81
    invoke-static {p1, p2, v0}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    return-void
.end method

.method public final onRenderProcessUnresponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/jc;->a:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "onRenderProcessUnresponsive "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 p1, 0x20

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast v0, Lcom/inmobi/media/A5;

    .line 33
    .line 34
    const-string p2, "RenderViewRenderProcessClient"

    .line 35
    .line 36
    invoke-virtual {v0, p2, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/jc;->b:Lcom/inmobi/media/nc;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/inmobi/media/nc;->a()Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iget-object v0, p1, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/hc;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/inmobi/media/hc;->f:Ljava/lang/String;

    .line 50
    .line 51
    const-string v1, "creativeId"

    .line 52
    .line 53
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget v0, p1, Lcom/inmobi/media/nc;->d:I

    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    iput v0, p1, Lcom/inmobi/media/nc;->d:I

    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "count"

    .line 67
    .line 68
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    const-string v0, "RenderProcessUnResponsive"

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/inmobi/media/nc;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    sget-object v0, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 78
    .line 79
    sget-object v0, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 80
    .line 81
    invoke-static {p1, p2, v0}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    return-void
.end method
