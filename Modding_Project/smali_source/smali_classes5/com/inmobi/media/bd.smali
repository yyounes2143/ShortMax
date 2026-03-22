.class public final Lcom/inmobi/media/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/tf;

.field public final b:Lcom/inmobi/media/z5;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/tf;Lcom/inmobi/media/z5;)V
    .locals 1

    .line 1
    const-string v0, "wvFactory"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/inmobi/media/bd;->a:Lcom/inmobi/media/tf;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/inmobi/media/bd;->b:Lcom/inmobi/media/z5;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Lcom/inmobi/media/ec;
    .locals 3

    .line 1
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/inmobi/media/bd;->a(Ljava/lang/String;)Lcom/inmobi/media/ec;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/bd;->b:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    const-string v1, "TAG"

    const-string v2, "bd"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "AdRenderView is null, cannot initialize webview."

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/inmobi/media/ec;
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/bd;->a:Lcom/inmobi/media/tf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v1, "id"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Lcom/inmobi/media/tf;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/ec;

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/inmobi/media/bd;->b:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    const-string v1, "TAG"

    const-string v2, "bd"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "View with ID: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final a(Lcom/inmobi/media/ec;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/inmobi/media/bd;->b:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 77
    const-string v1, "TAG"

    const-string v2, "Cannot perform operations on default WebView with ID: "

    const-string v3, "bd"

    invoke-static {v3, v1, v2, p2}, Lcom/inmobi/media/I6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x12f

    .line 79
    invoke-static {p2, v0}, Lcom/inmobi/media/pc;->a(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p2

    .line 80
    invoke-virtual {p1, p3, p2}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "sourceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/inmobi/media/bd;->a(Ljava/lang/String;)Lcom/inmobi/media/ec;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-virtual {p0, p2}, Lcom/inmobi/media/bd;->a(Ljava/lang/String;)Lcom/inmobi/media/ec;

    move-result-object v1

    const-string v2, "errorCode"

    const-string v3, "targetViewId"

    const-string v4, "destroyWebView"

    const-string v5, "id"

    if-nez v1, :cond_1

    .line 55
    sget-object v0, Lcom/inmobi/media/pc;->a:Lms/i;

    .line 56
    invoke-static {p2, v3, v5, p2}, Lcom/inmobi/media/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const/16 v0, 0x130

    .line 57
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    invoke-virtual {p1, v4, p2}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 59
    :cond_1
    const-string v6, "default"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 60
    invoke-virtual {p0, p1, p2, v4}, Lcom/inmobi/media/bd;->a(Lcom/inmobi/media/ec;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_2
    invoke-virtual {v1}, Lcom/inmobi/media/ec;->getWvStateMachine()Lcom/inmobi/media/Bd;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/inmobi/media/Bd;->a(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 62
    sget-object v1, Lcom/inmobi/media/pc;->a:Lms/i;

    .line 63
    invoke-static {p2, v3, v5, p2}, Lcom/inmobi/media/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 64
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    invoke-virtual {p1, v4, p2}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 66
    :cond_3
    invoke-virtual {v1}, Lcom/inmobi/media/ec;->b()V

    .line 67
    const-string v1, "sourceView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p1, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    if-eqz v0, :cond_4

    sget-object v2, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 69
    const-string v3, "fireDestroyWebViewSuccess "

    invoke-static {p1, v2, v1, v3}, Lcom/inmobi/media/Ob;->a(Lcom/inmobi/media/ec;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 72
    invoke-virtual {v0, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "window.imraidview.broadcastEvent(\'destroyWebView\',"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, Lcom/inmobi/media/ec;->c(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/inmobi/media/bd;->b:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_5

    const-string v0, "bd"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebView with ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " removed from parent."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const-string v1, "sourceId"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "targetId"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "html"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, v0, Lcom/inmobi/media/bd;->b:Lcom/inmobi/media/z5;

    const-string v15, "TAG"

    const-string v12, "bd"

    if-eqz v1, :cond_0

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadWebView "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v12, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/bd;->a()Lcom/inmobi/media/ec;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/inmobi/media/ec;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 9
    iget-object v1, v0, Lcom/inmobi/media/bd;->b:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_2

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v3, "Context is null, cannot initialize webview."

    invoke-virtual {v1, v12, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    move-object v10, v1

    :goto_1
    if-nez v10, :cond_4

    return-void

    .line 10
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/bd;->a(Ljava/lang/String;)Lcom/inmobi/media/ec;

    move-result-object v9

    if-nez v9, :cond_5

    return-void

    .line 11
    :cond_5
    const-string v1, "default"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v8, "loadWebView"

    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {v0, v9, v13, v8}, Lcom/inmobi/media/bd;->a(Lcom/inmobi/media/ec;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/bd;->a()Lcom/inmobi/media/ec;

    move-result-object v1

    if-nez v1, :cond_7

    const/16 v1, 0x130

    .line 14
    invoke-static {v13, v1}, Lcom/inmobi/media/pc;->a(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    .line 15
    invoke-virtual {v9, v8, v1}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 16
    :cond_7
    invoke-virtual {v0, v13}, Lcom/inmobi/media/bd;->a(Ljava/lang/String;)Lcom/inmobi/media/ec;

    move-result-object v2

    const-string v7, "errorCode"

    const-string v6, "id"

    const-string v5, "targetViewId"

    if-eqz v2, :cond_8

    .line 17
    invoke-virtual {v2}, Lcom/inmobi/media/ec;->getWvStateMachine()Lcom/inmobi/media/Bd;

    move-result-object v1

    .line 18
    iget v1, v1, Lcom/inmobi/media/Bd;->b:I

    .line 19
    sget-object v2, Lcom/inmobi/media/pc;->a:Lms/i;

    .line 20
    invoke-static {v13, v5, v6, v13}, Lcom/inmobi/media/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 21
    invoke-virtual {v2, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v9, v8, v2}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 23
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 24
    invoke-virtual {v1}, Lcom/inmobi/media/ec;->getAdMetaData()Lcom/inmobi/media/Q;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 25
    invoke-virtual {v1}, Lcom/inmobi/media/ec;->getAdMetaData()Lcom/inmobi/media/Q;

    move-result-object v1

    .line 26
    iget-object v1, v1, Lcom/inmobi/media/Q;->t:Lcom/inmobi/media/hc;

    if-eqz v1, :cond_9

    .line 27
    iget-object v11, v1, Lcom/inmobi/media/hc;->a:Lcom/inmobi/media/Z;

    move-wide/from16 v16, v3

    iget-object v3, v1, Lcom/inmobi/media/hc;->b:Ljava/lang/String;

    iget-object v4, v1, Lcom/inmobi/media/hc;->c:Ljava/lang/String;

    move-object/from16 p1, v5

    iget v5, v1, Lcom/inmobi/media/hc;->d:I

    move-object/from16 v18, v6

    iget-object v6, v1, Lcom/inmobi/media/hc;->e:Ljava/lang/String;

    move-object/from16 v19, v7

    iget-object v7, v1, Lcom/inmobi/media/hc;->f:Ljava/lang/String;

    move-object/from16 v20, v8

    iget-boolean v8, v1, Lcom/inmobi/media/hc;->g:Z

    move-object/from16 v21, v9

    iget v9, v1, Lcom/inmobi/media/hc;->h:I

    move-object/from16 v22, v10

    iget-object v10, v1, Lcom/inmobi/media/hc;->i:Lcom/inmobi/media/T0;

    iget-object v1, v1, Lcom/inmobi/media/hc;->j:Lcom/inmobi/media/mc;

    move-object/from16 v23, v1

    .line 28
    const-string v1, "placement"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "markupType"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "telemetryMetadataBlob"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "creativeType"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "creativeId"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v24, Lcom/inmobi/media/hc;

    move-object/from16 v1, v24

    move-object v14, v2

    move-object v2, v11

    move-wide/from16 v25, v16

    move-object/from16 v11, p1

    move-object/from16 v27, v18

    move-object/from16 v28, v19

    move-object/from16 v29, v20

    move-object/from16 p1, v21

    move-object/from16 v30, v22

    move-object/from16 v31, v11

    move-object/from16 v11, v23

    move-object v13, v12

    move-object/from16 v12, p2

    invoke-direct/range {v1 .. v12}, Lcom/inmobi/media/hc;-><init>(Lcom/inmobi/media/Z;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILcom/inmobi/media/T0;Lcom/inmobi/media/mc;Ljava/lang/String;)V

    move-object/from16 v11, v24

    goto :goto_2

    :cond_9
    move-object v14, v2

    move-wide/from16 v25, v3

    move-object/from16 v31, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 p1, v9

    move-object/from16 v30, v10

    move-object v13, v12

    const/4 v11, 0x0

    :goto_2
    const v1, 0x37eeff

    .line 29
    invoke-static {v14, v11, v1}, Lcom/inmobi/media/Q;->a(Lcom/inmobi/media/Q;Lcom/inmobi/media/hc;I)Lcom/inmobi/media/Q;

    move-result-object v11

    goto :goto_3

    :cond_a
    move-wide/from16 v25, v3

    move-object/from16 v31, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 p1, v9

    move-object/from16 v30, v10

    move-object v13, v12

    const/4 v11, 0x0

    :goto_3
    if-nez v11, :cond_c

    .line 30
    iget-object v1, v0, Lcom/inmobi/media/bd;->b:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_b

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v2, "AdMetaData is null, cannot initialize webview."

    invoke-virtual {v1, v13, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_4
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 31
    :cond_c
    iget-object v1, v0, Lcom/inmobi/media/bd;->a:Lcom/inmobi/media/tf;

    .line 32
    new-instance v2, Lcom/inmobi/media/Cc;

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/media/ec;->getRoute()Lcom/inmobi/media/Cc;

    move-result-object v3

    .line 33
    iget-object v3, v3, Lcom/inmobi/media/Cc;->b:Ljava/lang/String;

    move-object/from16 v4, p2

    move-object v5, v13

    .line 34
    invoke-direct {v2, v3, v4}, Lcom/inmobi/media/Cc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    move-object/from16 v6, v30

    .line 35
    invoke-virtual {v1, v2, v6, v3, v11}, Lcom/inmobi/media/tf;->a(Lcom/inmobi/media/Cc;Landroid/content/Context;SLcom/inmobi/media/Q;)Lcom/inmobi/media/ec;

    move-result-object v1

    instance-of v2, v1, Lcom/inmobi/media/lc;

    if-eqz v2, :cond_d

    move-object v11, v1

    check-cast v11, Lcom/inmobi/media/lc;

    goto :goto_5

    :cond_d
    const/4 v11, 0x0

    :goto_5
    if-nez v11, :cond_f

    .line 36
    iget-object v1, v0, Lcom/inmobi/media/bd;->b:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_e

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Failed to create Sibling WebView with ID: "

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v5, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_e
    sget-object v1, Lcom/inmobi/media/pc;->a:Lms/i;

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    .line 38
    invoke-static {v4, v2, v1, v4}, Lcom/inmobi/media/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/16 v2, 0x139

    move-object/from16 v5, v28

    .line 39
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v6, p1

    move-object/from16 v7, v29

    .line 40
    invoke-virtual {v6, v7, v1}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_4

    :cond_f
    move-object/from16 v6, p1

    move-object/from16 v1, v27

    move-object/from16 v5, v28

    move-object/from16 v7, v29

    move-object/from16 v2, v31

    .line 41
    invoke-virtual {v11}, Lcom/inmobi/media/ec;->getWvStateMachine()Lcom/inmobi/media/Bd;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/inmobi/media/Bd;->a(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 42
    sget-object v8, Lcom/inmobi/media/pc;->a:Lms/i;

    .line 43
    invoke-static {v4, v2, v1, v4}, Lcom/inmobi/media/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 44
    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    invoke-virtual {v6, v7, v1}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 46
    :cond_10
    sget-object v1, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 47
    const-string v1, "ads"

    const-string v2, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/inmobi/media/p5;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v1

    .line 48
    check-cast v1, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 49
    invoke-virtual {v11, v1}, Lcom/inmobi/media/lc;->a(Lcom/inmobi/commons/core/configs/AdConfig;)V

    .line 50
    invoke-virtual {v11}, Lcom/inmobi/media/ec;->getRenderViewTelemetry()Lcom/inmobi/media/nc;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_6

    :cond_11
    move-wide/from16 v2, v25

    .line 51
    iput-wide v2, v1, Lcom/inmobi/media/nc;->b:J

    :goto_6
    if-eqz v11, :cond_12

    move-object/from16 v1, p3

    .line 52
    invoke-virtual {v11, v1}, Lcom/inmobi/media/ec;->d(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "sourceId"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "targetId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lcom/inmobi/media/bd;->b:Lcom/inmobi/media/z5;

    const-string v4, "TAG"

    const-string v5, "bd"

    if-eqz v2, :cond_0

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "showWebView "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v5, v6}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/bd;->a(Ljava/lang/String;)Lcom/inmobi/media/ec;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0, v1}, Lcom/inmobi/media/bd;->a(Ljava/lang/String;)Lcom/inmobi/media/ec;

    move-result-object v3

    const-string v6, "errorCode"

    const-string v7, "id"

    const-string v8, "targetViewId"

    const-string v9, "showWebView"

    if-nez v3, :cond_2

    .line 4
    sget-object v3, Lcom/inmobi/media/pc;->a:Lms/i;

    .line 5
    invoke-static {v1, v8, v7, v1}, Lcom/inmobi/media/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/16 v3, 0x130

    .line 6
    invoke-virtual {v1, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v2, v9, v1}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 8
    :cond_2
    const-string v10, "default"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 9
    invoke-virtual {v0, v2, v1, v9}, Lcom/inmobi/media/bd;->a(Lcom/inmobi/media/ec;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_3
    instance-of v11, v3, Lcom/inmobi/media/lc;

    const/16 v12, 0x131

    if-nez v11, :cond_4

    .line 11
    sget-object v3, Lcom/inmobi/media/pc;->a:Lms/i;

    .line 12
    invoke-static {v1, v8, v7, v1}, Lcom/inmobi/media/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {v2, v9, v1}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 15
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/bd;->a()Lcom/inmobi/media/ec;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 16
    invoke-virtual {v11}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v11

    if-nez v11, :cond_5

    .line 17
    sget-object v3, Lcom/inmobi/media/pc;->a:Lms/i;

    .line 18
    invoke-static {v1, v8, v7, v1}, Lcom/inmobi/media/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    invoke-virtual {v2, v9, v1}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 21
    :cond_5
    invoke-virtual {v3}, Lcom/inmobi/media/ec;->getWvStateMachine()Lcom/inmobi/media/Bd;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Lcom/inmobi/media/Bd;->a(I)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 22
    sget-object v4, Lcom/inmobi/media/pc;->a:Lms/i;

    .line 23
    invoke-static {v1, v8, v7, v1}, Lcom/inmobi/media/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 24
    invoke-virtual {v1, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    invoke-virtual {v2, v9, v1}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 26
    :cond_6
    iget-object v11, v0, Lcom/inmobi/media/bd;->a:Lcom/inmobi/media/tf;

    .line 27
    iget-object v11, v11, Lcom/inmobi/media/tf;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    invoke-static {v11}, Lkotlin/collections/p0;->x(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    .line 29
    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Lcom/inmobi/media/ec;

    .line 30
    invoke-virtual {v14}, Lcom/inmobi/media/ec;->getWvStateMachine()Lcom/inmobi/media/Bd;

    move-result-object v15

    .line 31
    iget v15, v15, Lcom/inmobi/media/Bd;->b:I

    const/16 v13, 0x69

    if-ne v15, v13, :cond_7

    .line 32
    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 33
    invoke-virtual {v14}, Lcom/inmobi/media/ec;->getRoute()Lcom/inmobi/media/Cc;

    move-result-object v13

    .line 34
    iget-object v13, v13, Lcom/inmobi/media/Cc;->b:Ljava/lang/String;

    .line 35
    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    goto :goto_0

    :cond_8
    const/4 v12, 0x0

    .line 36
    :goto_0
    check-cast v12, Lcom/inmobi/media/ec;

    if-nez v12, :cond_9

    goto :goto_1

    .line 37
    :cond_9
    invoke-virtual {v12}, Lcom/inmobi/media/ec;->getWvStateMachine()Lcom/inmobi/media/Bd;

    move-result-object v10

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Lcom/inmobi/media/Bd;->a(I)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 38
    sget-object v11, Lcom/inmobi/media/pc;->a:Lms/i;

    .line 39
    invoke-static {v1, v8, v7, v1}, Lcom/inmobi/media/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 40
    invoke-virtual {v11, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {v2, v9, v11}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 42
    :cond_a
    :goto_1
    move-object v10, v3

    check-cast v10, Lcom/inmobi/media/lc;

    invoke-virtual {v10}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v11

    const/4 v12, -0x1

    if-eqz v11, :cond_f

    .line 43
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    instance-of v11, v10, Landroid/view/ViewGroup;

    if-eqz v11, :cond_b

    move-object v13, v10

    check-cast v13, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_b
    const/4 v13, 0x0

    :goto_2
    if-nez v13, :cond_c

    .line 44
    sget-object v3, Lcom/inmobi/media/pc;->a:Lms/i;

    .line 45
    invoke-static {v1, v8, v7, v1}, Lcom/inmobi/media/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/16 v3, 0x133

    .line 46
    invoke-virtual {v1, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    invoke-virtual {v2, v9, v1}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_7

    .line 48
    :cond_c
    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-eq v6, v12, :cond_d

    .line 49
    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 50
    iget-object v6, v0, Lcom/inmobi/media/bd;->b:Lcom/inmobi/media/z5;

    if-eqz v6, :cond_e

    .line 51
    const-string v7, "Sibling view brought to front: "

    invoke-static {v3, v5, v4, v7}, Lcom/inmobi/media/Ob;->a(Lcom/inmobi/media/ec;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    check-cast v6, Lcom/inmobi/media/A5;

    invoke-virtual {v6, v5, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 53
    :cond_d
    iget-object v6, v0, Lcom/inmobi/media/bd;->b:Lcom/inmobi/media/z5;

    if-eqz v6, :cond_e

    .line 54
    const-string v7, "Sibling view not found in parent: "

    invoke-static {v3, v5, v4, v7}, Lcom/inmobi/media/Ob;->a(Lcom/inmobi/media/ec;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    check-cast v6, Lcom/inmobi/media/A5;

    invoke-virtual {v6, v5, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_e
    :goto_3
    invoke-virtual {v2, v2, v1}, Lcom/inmobi/media/ec;->a(Lcom/inmobi/media/ec;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 57
    :cond_f
    iget-object v1, v0, Lcom/inmobi/media/bd;->b:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_10

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setUpLayoutForAd "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v5, v6}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/bd;->a()Lcom/inmobi/media/ec;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/inmobi/media/ec;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_4

    :cond_11
    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_13

    .line 59
    iget-object v1, v0, Lcom/inmobi/media/bd;->b:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_12

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v6, "Context is null, cannot initialize webview."

    invoke-virtual {v1, v5, v6}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const/4 v13, 0x0

    goto :goto_5

    :cond_13
    move-object v13, v1

    :goto_5
    if-nez v13, :cond_14

    goto/16 :goto_6

    .line 60
    :cond_14
    instance-of v1, v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    if-nez v1, :cond_16

    .line 61
    iget-object v1, v0, Lcom/inmobi/media/bd;->b:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_15

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v6, "Context is not an instance of InMobiAdActivity."

    invoke-virtual {v1, v5, v6}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_15
    invoke-virtual {v10}, Lcom/inmobi/media/ec;->getRoute()Lcom/inmobi/media/Cc;

    move-result-object v1

    .line 63
    iget-object v1, v1, Lcom/inmobi/media/Cc;->b:Ljava/lang/String;

    .line 64
    const-string v6, "loadWebView"

    invoke-virtual {v0, v2, v1, v6}, Lcom/inmobi/media/bd;->a(Lcom/inmobi/media/ec;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 65
    :cond_16
    move-object v1, v13

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v10, v1}, Lcom/inmobi/media/ec;->setFullScreenActivityContext(Landroid/app/Activity;)V

    .line 66
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    .line 67
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    iget-object v2, v0, Lcom/inmobi/media/bd;->b:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_17

    .line 69
    const-string v6, "target View\'s Viewable ad - "

    invoke-static {v5, v4, v6}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 70
    invoke-virtual {v10}, Lcom/inmobi/media/lc;->getViewableAd()Lcom/inmobi/media/Xe;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v5, v6}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_17
    invoke-virtual {v10}, Lcom/inmobi/media/lc;->getViewableAd()Lcom/inmobi/media/Xe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/media/Xe;->d()Landroid/view/View;

    move-result-object v2

    .line 72
    check-cast v13, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    const v6, 0xfffe

    invoke-virtual {v13, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 73
    invoke-virtual {v6, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v1, v0, Lcom/inmobi/media/bd;->b:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_18

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Target View added - the inflatedView is - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v5, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_18
    :goto_6
    iget-object v1, v0, Lcom/inmobi/media/bd;->b:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_19

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Add renderViewSibling as friendlyView for omsdkTracking  "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v5, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/inmobi/media/bd;->a()Lcom/inmobi/media/ec;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/inmobi/media/ec;->getViewableAd()Lcom/inmobi/media/Xe;

    move-result-object v1

    if-eqz v1, :cond_1a

    sget-object v2, Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;

    invoke-virtual {v1, v3, v2}, Lcom/inmobi/media/Xe;->a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V

    .line 77
    :cond_1a
    invoke-virtual {v3}, Lcom/inmobi/media/ec;->getViewableAd()Lcom/inmobi/media/Xe;

    move-result-object v1

    invoke-virtual {v3}, Lcom/inmobi/media/ec;->getFriendlyViews()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1b

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_1b
    invoke-virtual {v1, v2}, Lcom/inmobi/media/Xe;->a(Ljava/util/Map;)V

    :goto_7
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "sourceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/inmobi/media/bd;->a(Ljava/lang/String;)Lcom/inmobi/media/ec;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-virtual {p0, p2}, Lcom/inmobi/media/bd;->a(Ljava/lang/String;)Lcom/inmobi/media/ec;

    move-result-object v0

    const-string v1, "sendMessage"

    const-string v2, "errorCode"

    const-string v3, "id"

    const-string v4, "targetViewId"

    if-nez v0, :cond_1

    .line 80
    sget-object p3, Lcom/inmobi/media/pc;->a:Lms/i;

    .line 81
    invoke-static {p2, v4, v3, p2}, Lcom/inmobi/media/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const/16 p3, 0x130

    .line 82
    invoke-virtual {p2, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    invoke-virtual {p1, v1, p2}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 84
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getWvStateMachine()Lcom/inmobi/media/Bd;

    move-result-object v5

    .line 85
    iget v5, v5, Lcom/inmobi/media/Bd;->b:I

    .line 86
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getRoute()Lcom/inmobi/media/Cc;

    move-result-object v6

    .line 87
    iget-object v6, v6, Lcom/inmobi/media/Cc;->b:Ljava/lang/String;

    .line 88
    const-string v7, "default"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "TAG"

    const-string v8, "bd"

    if-nez v6, :cond_3

    const/16 v6, 0x65

    .line 89
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v9, 0x68

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x6b

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v6, v9, v10}, [Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 90
    iget-object p3, p0, Lcom/inmobi/media/bd;->b:Lcom/inmobi/media/z5;

    if-eqz p3, :cond_2

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "WebView is not in state to receive messages: "

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    check-cast p3, Lcom/inmobi/media/A5;

    invoke-virtual {p3, v8, v5}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_2
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getWvStateMachine()Lcom/inmobi/media/Bd;

    move-result-object p3

    .line 92
    iget p3, p3, Lcom/inmobi/media/Bd;->b:I

    .line 93
    sget-object v0, Lcom/inmobi/media/pc;->a:Lms/i;

    .line 94
    invoke-static {p2, v4, v3, p2}, Lcom/inmobi/media/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 95
    invoke-virtual {p2, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    invoke-virtual {p1, v1, p2}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 97
    :cond_3
    iget-object p1, p0, Lcom/inmobi/media/bd;->b:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_4

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Sending message to WebView ID: "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v8, p2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_4
    invoke-virtual {v0, p3}, Lcom/inmobi/media/ec;->c(Ljava/lang/String;)V

    return-void
.end method
