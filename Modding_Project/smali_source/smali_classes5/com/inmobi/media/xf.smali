.class public abstract Lcom/inmobi/media/xf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "source"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v2, 0x1a

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-ge v1, v2, :cond_0

    .line 17
    .line 18
    return v3

    .line 19
    :cond_0
    invoke-static {v0, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-static {p1}, Lcom/applovin/impl/adview/e0;->a(Landroid/webkit/RenderProcessGoneDetail;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "isCrashed"

    .line 34
    .line 35
    invoke-static {v0, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    filled-new-array {p2, p1}, [Lkotlin/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget-object p2, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 48
    .line 49
    sget-object p2, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 50
    .line 51
    const-string v0, "WebViewRenderProcessGoneEvent"

    .line 52
    .line 53
    invoke-static {v0, p1, p2}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x1

    .line 60
    return p0
.end method
